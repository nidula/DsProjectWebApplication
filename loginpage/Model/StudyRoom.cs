using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace loginpage.Model
{
    public class StudyRoom
    {
        public int SId { get; set; }

        public int Floor { get; set; }
        public int Capacity { get; set; }
        public int Options { get; set; }
        public string Location { get; set; }
    }
}