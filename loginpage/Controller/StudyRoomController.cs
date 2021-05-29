using Newtonsoft.Json;
using StudyRoom.API.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;

namespace loginpage.Controller
{
    public class StudyRoomController
    {
        private static HttpClient client;

        public static Rooms GetRooms()
        {
            Rooms uc = null;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Rooms").Result;
            if (response.IsSuccessStatusCode)
            {
                var studyroom = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<Rooms>(studyroom);

            }
            else
            {
                uc = null;
            }
            return uc;
        }

        public static Rooms GetRooms(int Id)
        {
            Rooms uc = null;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Rooms/" + Id + "/").Result;
            if (response.IsSuccessStatusCode)
            {
                var studyroom = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<Rooms>(studyroom);

            }
            else
            {
                uc = null;
            }
            return uc;
        }

        public static Rooms GetRoomsByOption(string Options)
        {
            Rooms uc = null;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Rooms/GetRoomByOption/" + Options + "/").Result;
            if (response.IsSuccessStatusCode)
            {
                var studyroom = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<Rooms>(studyroom);

            }
            else
            {
                uc = null;
            }
            return uc;
        }

        public static bool DeleteRoom(int Id)
        {
            Boolean res = false;

            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            var response = client.DeleteAsync("/Rooms/" + Id + "").Result;
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

        public static bool CreateRoom(Rooms rooms)
        {
            Boolean res = false;

            client = new HttpClient();
            Rooms u = rooms;
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            var response = client.PostAsJsonAsync("/Rooms", u).Result;
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

        public static bool UpdateRoom(Rooms rooms)
        {
            Boolean res = false;

            client = new HttpClient();
            Rooms u = rooms;
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            var response = client.PutAsJsonAsync("/Rooms", u).Result;
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