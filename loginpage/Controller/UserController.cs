using loginpage.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;

namespace loginpage.Controller
{
    public class UserController
    {
        private static HttpClient client;

        public static Users LoginValidate(int studentId,string Password)
        {
            Users uc = null;
            client = new HttpClient();
            client.BaseAddress = new Uri("http://192.168.1.196:7000/");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("Admin/GetUserByCredentials/" + studentId + "/" + Password + "").Result;
            if (response.IsSuccessStatusCode)
            {
                var user = response.Content.ReadAsStringAsync().Result;
                uc = JsonConvert.DeserializeObject<Users>(user);

            }
            else
            {
                uc = null;
            }
            return uc;
        }

    }
}