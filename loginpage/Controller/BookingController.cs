using Booking.API.Entities;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;

namespace loginpage.Controller
{
    public class BookingController
    {
        private static HttpClient client;

        public static Book GetBookings()
        {
            Book uc = null;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Books").Result;
            if (response.IsSuccessStatusCode)
            {
                var booking = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<Book>(booking);

            }
            else
            {
                uc = null;
            }
            return uc;
        }

        public static Book GetBookings(int Id)
        {
            Book uc = null;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Books/ " + Id + " / ").Result;
            if (response.IsSuccessStatusCode)
            {
                var booking = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<Book>(booking);

            }
            else
            {
                uc = null;
            }
            return uc;
        }

        public static Book GetBookingsbyRoom(int SID)
        {
            Book uc = null;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Books/GetBookingsByRoom/"+ SID + "/").Result;
            if (response.IsSuccessStatusCode)
            {
                var booking = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<Book>(booking);

            }
            else
            {
                uc = null;
            }
            return uc;
        }

        public static Book GetBookingsbyUser(int UID)
        {
            Book uc = null;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Books/GetBookingsByUser/" + UID + "/").Result;
            if (response.IsSuccessStatusCode)
            {
                var booking = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<Book>(booking);

            }
            else
            {
                uc = null;
            }
            return uc;
        }

        public static bool AddBooking(Book book)
        {
            Boolean res = false;

            client = new HttpClient();
            Book u = book;
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            var response = client.PostAsJsonAsync("/Books", u).Result;
            if (response.IsSuccessStatusCode)
            {
                res = true;
            }
            else
            {
                res = false;
            }

            return res;
        }

        public static bool DeleteBooking(int Id)
        {
            Boolean res = false;

            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            var response = client.DeleteAsync("/Books/" + Id + "").Result;
            if (response.IsSuccessStatusCode)
            {
                res = true;
            }
            else
            {
                res = false;
            }

            return res;
        }

        public static bool UpdateBooking(Book book)
        {
            Boolean res = false;

            client = new HttpClient();
            Book u = book;
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            var response = client.PutAsJsonAsync("/Books", u).Result;
            if (response.IsSuccessStatusCode)
            {
                res = true;
            }
            else
            {
                res = false;
            }

            return res;
        }
    }
}