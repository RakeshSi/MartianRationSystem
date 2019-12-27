﻿using Contracts;
using DAL.Data;
using DAL.Repositories;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebUI.Controllers
{
    public class HomeController : Controller
    {

        // This need to registered in the UnityCongig
        //IRepositoryBase<PacketDetail> _packetDetail;

        //public HomeController(IRepositoryBase<PacketDetail> packetDetails)
        //{
        //    _packetDetail = packetDetails;
        //}

        public ActionResult Index()
        {
            // Access the data repositories 
            //CustomerRepository customers = new CustomerRepository(new DataContext());
            //var abc = _packetDetail.GetAll().ToList();

            //else using interface(Best way)
            //Implement it in a constructor and dependency inject using unity
            //IRepositoryBase<Customer> customers = new CustomerRepository(new DataContext());
            //See contructor implementation above

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}