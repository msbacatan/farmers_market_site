using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FMApp.Models
{
    public class Vendor
    {
        public Vendor(string vname, string address, string city, string state, string zip, string county, string media, string email)
        {
            VendorName = vname;
            VendorStreet = address;
            VendorCity = city;
            VendorState = state;
            VendorZip = zip;
            County = county;
            VendorMedia = media;
            Email = email;
        }

        public string VendorName { get; set; }
        public string VendorStreet { get; set; }
        public string VendorCity { get; set; }
        public string VendorState { get; set; }
        public string VendorZip { get; set; }
        public string County { get; set; }
        public string VendorMedia { get; set; }
        public string Email { get; set; }
    }
}
