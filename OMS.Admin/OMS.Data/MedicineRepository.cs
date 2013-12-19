using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OMS.Core;

namespace OMS.Data
{
    public class MedicineRepository
    {
        public List<Core.Medicine> GetAllMedicines()
        {
            using (OMSDataContext omsDataContext = new OMSDataContext())
            {
                List<Core.Medicine> medicinesList = (from medicines in omsDataContext.Medicines
                                                     where medicines.IsDeleted == false
                                                     select new Core.Medicine
                                                                {

                                                                    MedicineId = medicines.Id,
                                                                    CompanyName = medicines.CompanyName,
                                                                    CreatedAt = medicines.CreatedAt,
                                                                    CreatedBy = medicines.CreatedBy,
                                                                    GenericName = medicines.GenericName,
                                                                    IsDeleted = medicines.IsDeleted,
                                                                    IsPrescriptionRequired =
                                                                        medicines.IsPrescriptionRequired,
                                                                    MedicineName = medicines.MedicineName,
                                                                    ToBeDisplayedInFrontEnd = medicines.ToBeDisplayedInFrontEnd,
                                                                }).ToList();

                return medicinesList;
            }
        }

        public Core.GeneralDatabaseResponse Save(Core.Medicine data)
        {
            using (OMSDataContext omsDataContext = new OMSDataContext())
            {
                if (data.MedicineId == 0)//Add Mode
                {
                    try
                    {
                        var medicines = new Medicine();
                        medicines.CompanyName = data.CompanyName;
                        medicines.GenericName = data.GenericName;
                        medicines.IsDeleted = data.IsDeleted;
                        medicines.IsPrescriptionRequired = data.IsPrescriptionRequired;
                        medicines.MedicineName = data.MedicineName;
                        medicines.ToBeDisplayedInFrontEnd = data.ToBeDisplayedInFrontEnd;
                        medicines.CreatedAt = DateTime.Now;
                        medicines.CreatedBy = data.CreatedBy;
                        omsDataContext.Medicines.InsertOnSubmit(medicines);
                        omsDataContext.SubmitChanges();
                        return GeneralDatabaseResponse.SuccessfullInsert;
                    }
                    catch (Exception)
                    {
                        return GeneralDatabaseResponse.UnsuccessfullInsert;
                    }
                }
                else //Edit Mode
                {
                    try
                    {
                        var medicine = (from med in omsDataContext.Medicines
                                             where med.Id == data.MedicineId
                                             select med).FirstOrDefault();

                        medicine.CompanyName = data.CompanyName;
                        medicine.GenericName = data.GenericName;
                        medicine.IsDeleted = data.IsDeleted;
                        medicine.IsPrescriptionRequired = data.IsPrescriptionRequired;
                        medicine.MedicineName = data.MedicineName;
                        medicine.ToBeDisplayedInFrontEnd = data.ToBeDisplayedInFrontEnd;
                        medicine.UpdatedAt = DateTime.Now;
                        medicine.UpdatedBy = data.UpdatedBy;
                        omsDataContext.SubmitChanges();
                        return GeneralDatabaseResponse.SuccessfullUpdate;
                    }
                    catch (Exception)
                    {
                        return GeneralDatabaseResponse.UnsuccessfullUpdate;
                    }
                }
            }
        }

        public GeneralDatabaseResponse DeleteMedicine(int id)
        {
            using (OMSDataContext omsDataContext = new OMSDataContext())
            {
                try
                {
                    var medicine = (from med in omsDataContext.Medicines
                                    where med.Id == id
                                    select med).FirstOrDefault();

                    medicine.IsDeleted = true;
                    omsDataContext.SubmitChanges();
                    return GeneralDatabaseResponse.SuccessfullUpdate;
                }
                catch (Exception)
                {
                    return GeneralDatabaseResponse.UnsuccessfullUpdate;
                }
            }
        }
    }
}