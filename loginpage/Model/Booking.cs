using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Booking.API.Entities
{
    public class Book
    {
        [Key]
        public int BId { get; set; }
        public int slot { get; set; }
        public int StudentCount { get; set; }
        public string ReservationDate { get; set; }
        public int UserId { get; set; }
        public int SID { get; set; }
        public string Purpose { get; set; }
    }
}
