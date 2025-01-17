﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AdminUser.API.Entities
{
    public class UserData
    {
        public int UId { get; set; }

        public string F_name { get; set; }
        public string L_name { get; set; }
        public int Contact { get; set; }
        public string Address { get; set; }
        public string Batch { get; set; }
        public string Degree { get; set; }
        public string Password { get; set; }
        public int Type { get; set; }
    }
}
