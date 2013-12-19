using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OMS.Core
{
    public class Medicine
    {
        public int MedicineId { get; set; }

        public string MedicineName { get; set; }

        public string GenericName { get; set; }

        public string CompanyName { get; set; }

        public Guid? CreatedBy { get; set; }

        public DateTime CreatedAt { get; set; }

        public Guid? UpdatedBy { get; set; }

        public DateTime? UpdatedAt { get; set; }

        public bool IsDeleted { get; set; }

        public bool IsPrescriptionRequired { get; set; }

        public bool ToBeDisplayedInFrontEnd { get; set; }
    }
}
