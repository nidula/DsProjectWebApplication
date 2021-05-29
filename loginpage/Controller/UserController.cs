using Newtonsoft.Json;
using AdminUser.API.Entities;
using System;

using System.Web;
using System.Net.Http;

namespace loginpage.Controller
{
    public class UserController
    {
        private static HttpClient client;

        public static UserData LoginValidate(int uname, string pw)
        {
            throw new NotImplementedException();
        }

        public static bool Updateuser(UserData user)
        {
            Boolean res = false;

            client = new HttpClient();
            UserData u = user;
            client.BaseAddress = new Uri("https://hivi-99-apigateway-3oxui.ondigitalocean.app/");
            var response = client.PutAsJsonAsync("UCRDAUser", u).Result;
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