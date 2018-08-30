# Write code for authentication API
mkdir ./Authentication/Models

cat > ./Authentication/Models/User.cs <<EOL
using System;

namespace Authentication.Models
{
    public class User
    {
        public Guid UserId { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }
    }
}
EOL

cat > ./Authentication/Controllers/UserController.cs <<EOL
using Authentication.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace Authentication.Controllers
{
    [Route("api/[controller]")]
    public class UserController : Controller
    {
        [HttpGet]
        public List<User> All()
        {
            return new List<User>()
            {
                new User() {FirstName = "Allan", LastName = "Chua", UserId = Guid.Parse("539bf338-e5de-4fc4-ac65-4a91324d8111")},
                new User() {FirstName = "Burr", LastName = "Sutter", UserId = Guid.Parse("6b2c4788-e1d5-4ef4-8edf-e7d57e31bf4f")},
                new User() {FirstName = "Josh", LastName = "Long", UserId = Guid.Parse("3a4149fa-32e9-4d4a-a051-5c49b7ed2fca")}
            };
        }
    }
}
EOL

mkdir ./Authentication/Properties

cat > ./Authentication/Properties/launchSettings.json <<EOL
{
  "iisSettings": {
    "windowsAuthentication": false,
    "anonymousAuthentication": true,
    "iisExpress": {
      "applicationUrl": "http://localhost:52792/",
      "sslPort": 0
    }
  },
  "profiles": {
    "IIS Express": {
      "commandName": "IISExpress",
      "launchBrowser": true,
      "environmentVariables": {
        "ASPNETCORE_ENVIRONMENT": "Development"
      }
    },
    "Ledger": {
      "commandName": "Project",
      "launchBrowser": true,
      "environmentVariables": {
        "ASPNETCORE_ENVIRONMENT": "Development"
      },
      "applicationUrl": "http://localhost:52792/"
    }
  }
}
EOL