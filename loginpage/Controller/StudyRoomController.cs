using Newtonsoft.Json;
using StudyRoom.API.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Reflection;
using System.Web;

namespace loginpage.Controller
{
    public class StudyRoomController
    {
        private static HttpClient client;

        public static List<Rooms> GetRooms()
        {
            List<Rooms> RoomList = new List<Rooms>();

            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Rooms").Result;
            if (response.IsSuccessStatusCode)
            {
                var studyroom = response.Content.ReadAsStringAsync().Result;
                RoomList = JsonConvert.DeserializeObject<List<Rooms>>(studyroom);

            }
            else
            {
                RoomList = null;
            }
            return RoomList;
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
                List<Rooms> ucs = JsonConvert.DeserializeObject<List<Rooms>>(studyroom);

                if (ucs != null)
                {
                    uc = ucs[0];
                }
                

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
            client.BaseAddress = new Uri("https://hivi-99-studyroomapi-kghrj.ondigitalocean.app");
            var response = client.PostAsJsonAsync("/api/v1/Rooms", u).Result;
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

        public static DataTable ToDataTable<Rooms>(List<Rooms> items)
        {
            DataTable dataTable = new DataTable(typeof(Rooms).Name);
            //Get all the properties by using reflection   
            PropertyInfo[] Props = typeof(Rooms).GetProperties(BindingFlags.Public | BindingFlags.Instance);
            foreach (PropertyInfo prop in Props)
            {
                //Setting column names as Property names  
                dataTable.Columns.Add(prop.Name);
            }
            foreach (Rooms item in items)
            {
                var values = new object[Props.Length];
                for (int i = 0; i < Props.Length; i++)
                {

                    values[i] = Props[i].GetValue(item, null);
                }
                dataTable.Rows.Add(values);
            }

            return dataTable;
        }
    }
}