using Newtonsoft.Json;
using AdminUser.API.Entities;
using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Collections.Generic;

namespace loginpage.Controller
{
    public class UserController
    {
        private static System.Net.Http.HttpClient client;

        public static UserData LoginValidate(int Id, string Password)
        {
            UserData us = null;
            List<UserData> uc;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Admin/GetUserByCredentials/" + Id + "/" + Password + "").Result;
            if (response.IsSuccessStatusCode)
            {
                var user = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<List<UserData>>(user);
                us = uc[0];

            }
            else
            {
                us = null;
            }
            return us;
        }

        public static UserData GetAdminUser()
        {
            UserData uc = null;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Admin").Result;
            if (response.IsSuccessStatusCode)
            {
                var user = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<UserData>(user);

            }
            else
            {
                uc = null;
            }
            return uc;
        }

        public static UserData GetAdminUser(int Id)
        {
            UserData uc = null;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/Admin/ " + Id + " / ").Result;
            if (response.IsSuccessStatusCode)
            {
                var user = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<UserData>(user);

            }
            else
            {
                uc = null;
            }
            return uc;
        }

        public static bool CreateAdmin(UserData user)
        {
            Boolean res = false;

            client = new HttpClient();
            UserData u = user;
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            var response = client.PostAsJsonAsync("/Admin", u).Result;
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

        public static bool DeleteAdmin(int Id)
        {
            Boolean res = false;

            client = new HttpClient();
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            var response = client.DeleteAsync("/Admin/" + Id + "").Result;
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

        public static bool UpdateAdmin(int Id, UserData user)
        {
            Boolean res = false;

            client = new System.Net.Http.HttpClient();
            UserData u = user;
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            var response = client.PutAsJsonAsync("/Admin/" + Id + u, "").Result;
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

        public static bool CreateUser(UserData user)
        {
            Boolean res = false;

            client = new HttpClient();
            UserData u = user;
            client.BaseAddress = new Uri("http://hivi-99-ocelotapigateway-r2vpq.ondigitalocean.app");
            var response = client.PostAsJsonAsync("/Users", u).Result;
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