using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OMS.Core;

namespace OMS.Data
{
    public class UserRepository
    {
        public GeneralDatabaseResponse UnlockUser(string userName)
        {
            using (OMSDataContext onlineMedicalStoreDataAccess = new OMSDataContext())
            {
                try
                {
                    var userToUnlock = (from membership in onlineMedicalStoreDataAccess.aspnet_Memberships
                                        join user in onlineMedicalStoreDataAccess.aspnet_Users on membership.UserId equals user.UserId
                                        where user.UserName == userName
                                        select membership).FirstOrDefault();
                    if (userToUnlock != null)
                    {
                        userToUnlock.IsLockedOut = false;
                    }
                    onlineMedicalStoreDataAccess.SubmitChanges();
                    return GeneralDatabaseResponse.SuccessfullUpdate;
                }
                catch (Exception)
                {
                    return GeneralDatabaseResponse.UnsuccessfullUpdate;
                }
            }
        }

        public Guid GetUserId(string userName)
        {
            using (OMSDataContext onlineMedicalStoreDataAccess = new OMSDataContext())
            {
                try
                {
                    var userId = (from membership in onlineMedicalStoreDataAccess.aspnet_Memberships
                                        join user in onlineMedicalStoreDataAccess.aspnet_Users on membership.UserId equals user.UserId
                                        where user.UserName == userName
                                        select membership).FirstOrDefault().UserId;

                    return userId;
                }
                catch (Exception)
                {
                    return new Guid();
                }
            }
        }
    }
}
