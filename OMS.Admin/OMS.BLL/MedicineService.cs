using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OMS.Core;
using OMS.Data;

namespace OMS.BLL
{
    public class MedicineService
    {
        public List<Core.Medicine> GetAllMedicines()
        {
            MedicineRepository medicineRepository = new MedicineRepository();
            List<Core.Medicine> medicines = medicineRepository.GetAllMedicines();
            return medicines;
        }

        public Core.GeneralDatabaseResponse Save(Core.Medicine data)
        {
            MedicineRepository medicineRepository = new MedicineRepository();
            GeneralDatabaseResponse databaseResponse = medicineRepository.Save(data);
            return databaseResponse;
        }

        public GeneralDatabaseResponse DeleteMedicine(int id)
        {
            MedicineRepository medicineRepository = new MedicineRepository();
            GeneralDatabaseResponse databaseResponse = medicineRepository.DeleteMedicine(id);
            return databaseResponse;
        }
    }
}
