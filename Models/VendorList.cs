using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FMApp.Models
{
    public class VendorList
    {
        public List<Vendor> sList { get; set; }

        public VendorList()
        {
            sList = new List<Vendor>();
        }

        public int Count
        {
            get { return sList.Count; }
        }

        public Vendor this[int index]
        {
            get { return sList[index]; }
        }

        public Vendor this[string vname]
        {
            get
            {
                foreach (Vendor d in sList)
                    if (d.VendorName == vname) return d;
                return null;
            }
        }
        public static VendorList GetVendors()
        {
            VendorList sList = (VendorList)HttpContext.Current.Session["sList"];
            if (sList == null)
                HttpContext.Current.Session["sList"] = new VendorList();
            return (VendorList)HttpContext.Current.Session["sList"];
        }

        public void AddVendor(string vname, string address, string city, string state, string zip, string county, string media, string email)
        {
            Vendor d = new Vendor(vname, address, city, state, zip, county, media, email);
            sList.Add(d);
        }

        public Vendor GetVendorAddress(string address)
        {
            foreach (Vendor d in sList) if (d.VendorStreet == address)
                {
                    return d;
                }
            return null;
        }

        public Vendor GetVendorCity(string city)
        {
            foreach (Vendor d in sList) if (d.VendorCity == city)
                {
                    return d;
                }
            return null;
        }
    }
}