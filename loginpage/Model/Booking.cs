using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace loginpage.Model
{
    public class Booking
    {
        public int BId { get; set; }
        public DateTime FromTime { get; set; }
        public DateTime ToTime { get; set; }
        public int StudentCount { get; set; }
        public DateTime ReservationDate { get; set; }
        public int UserId { get; set; }
        public int SID { get; set; }
        public string Purpose { get; set; }
    }
}