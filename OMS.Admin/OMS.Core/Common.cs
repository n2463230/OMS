using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OMS.Core
{
    class Common
    {
    }

    public enum GeneralDatabaseResponse
    {
        SuccessfullInsert = 1,
        UnsuccessfullInsert = 2,
        SuccessfullUpdate = 3,
        UnsuccessfullUpdate = 4,
        UnsuccessfullTransaction = 5,
        SuccessfullDelete = 6,
    }
}
