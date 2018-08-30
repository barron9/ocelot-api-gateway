# Write code for Catalog API
mkdir ./Catalog/Models

cat > ./Catalog/Models/Product.cs <<EOL
using System;

namespace Catalog.Models
{
    public class Product
    {
        public Guid ProductId { get; set; }

        public string Name { get; set; }
    }
}
EOL

cat > ./Catalog/Controllers/ProductController.cs <<EOL
using Catalog.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace Catalog.Controllers
{
    [Route("api/[controller]")]
    public class ProductController : Controller
    {
        [HttpGet]
        public List<Product> All()
        {
            return new List<Product>()
            {
                new Product() { Name = "Azure Shirt", ProductId = Guid.Parse("ef29fc61-abcc-4ac1-9c8c-e5e17b266868") },
                new Product() { Name = "ASP.net Core Shirt", ProductId = Guid.Parse("618808a6-8466-4fd8-80da-e8651ec0c0e4") },
                new Product() { Name = "Node JS Shirt", ProductId = Guid.Parse("dc2bd686-7eaf-44a3-9fdd-b3645fef9a02") },
                new Product() { Name = "Spring Shirt", ProductId = Guid.Parse("d91d2019-e642-4b00-8b10-2bf07c383787") }
            };
        }
    }
}
EOL

mkdir ./Catalog/Properties

cat > ./Catalog/Properties/launchSettings.json <<EOL
{
  "iisSettings": {
    "windowsAuthentication": false,
    "anonymousAuthentication": true,
    "iisExpress": {
      "applicationUrl": "http://localhost:52791/",
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
      "applicationUrl": "http://localhost:52791/"
    }
  }
}
EOL