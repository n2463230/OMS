using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OMS.Admin.Models;
using OMS.BLL;
using OMS.Core;

namespace OMS.Admin.Controllers
{
    public class MedicalController : Controller
    {
        [HttpGet]
        public ActionResult Medical()
        {
            MedicineService medicineService = new MedicineService();
            List<MedicalModel> medicalModels = ConvertCoreToModel(medicineService.GetAllMedicines());
            return View(medicalModels);
        }

        [HttpPost]
        public ActionResult GetMedicineDetailsById(int id)
        {
            var medicineService = new MedicineService();
            var medicalModel = ConvertCoreToModel(medicineService.GetAllMedicines().Where(medicine => medicine.MedicineId == id).ToList());
            return new JsonResult { Data = medicalModel };
        }

        [HttpPost]
        public ActionResult Save(MedicalModel data)
        {
            if (data!=null)
            {
                if (data.MedicineId == 0)
                {
                    data.CreatedAt = DateTime.Now;
                    data.CreatedBy = (Guid)(Session["AdminSession"]);
                }
                else
                {
                    data.UpdatedAt = DateTime.Now;
                    data.UpdatedBy = (Guid)(Session["AdminSession"]);
                }
                var medicineService = new MedicineService();
                var medicineData = ConvertModelToCore(data);
                GeneralDatabaseResponse databaseResponse = medicineService.Save(medicineData);
                return new JsonResult {Data = databaseResponse};
            }
            return new JsonResult {Data = GeneralDatabaseResponse.UnsuccessfullTransaction};
        }

        [HttpPost]
        public ActionResult Delete(int id)
        {
            MedicineService medicineService = new MedicineService();
            GeneralDatabaseResponse databaseResponse = medicineService.DeleteMedicine(id);
            return new JsonResult { Data = GeneralDatabaseResponse.SuccessfullDelete };
        }

        private Medicine ConvertModelToCore(MedicalModel medicalModel)
        {
            Medicine medicine = new Medicine();
            medicine.MedicineId = medicalModel.MedicineId;
            medicine.CompanyName = medicalModel.CompanyName;
            medicine.CreatedAt = medicalModel.CreatedAt;
            medicine.CreatedBy = medicalModel.CreatedBy;
            medicine.UpdatedAt = medicalModel.UpdatedAt; 
            medicine.UpdatedBy = medicalModel.UpdatedBy;
            medicine.GenericName = medicalModel.GenericName;
            medicine.IsDeleted = medicalModel.IsDeleted;
            medicine.IsPrescriptionRequired = medicalModel.IsPrescriptionRequired;
            medicine.MedicineName = medicalModel.MedicineName;
            medicine.ToBeDisplayedInFrontEnd = medicalModel.ToBeDisplayedInFrontEnd;
            return medicine;
        }

        private List<MedicalModel> ConvertCoreToModel(List<Medicine> list)
        {
            MedicalModel medicalModel = null;
            List<MedicalModel> medicalModels = new List<MedicalModel>();
            foreach (var medicine in list)
            {
                medicalModel = new MedicalModel();
                medicalModel.MedicineId = medicine.MedicineId;
                medicalModel.CompanyName = medicine.CompanyName;
                medicalModel.CreatedAt = medicine.CreatedAt;
                medicalModel.CreatedBy = medicine.CreatedBy;
                medicalModel.GenericName = medicine.GenericName;
                medicalModel.IsDeleted = medicine.IsDeleted;
                medicalModel.IsPrescriptionRequired = medicine.IsPrescriptionRequired;
                medicalModel.MedicineName = medicine.MedicineName;
                medicalModel.ToBeDisplayedInFrontEnd = medicine.ToBeDisplayedInFrontEnd;
                medicalModels.Add(medicalModel);
            }
            return medicalModels;
        }

    }
}
