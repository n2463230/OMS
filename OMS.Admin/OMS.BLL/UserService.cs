using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OMS.Core;
using OMS.Data;

namespace OMS.BLL
{
    public class UserService
    {
        public GeneralDatabaseResponse UnlockUser(string userName)
        {
            var userRepository = new UserRepository();
            var generalDatabaseResponse = userRepository.UnlockUser(userName);
            return generalDatabaseResponse;
        }

        public Guid GetUserId(string userName)
        {
            var userRepository = new UserRepository();
            Guid userId = userRepository.GetUserId(userName);
            return userId;
        }
    }
}
