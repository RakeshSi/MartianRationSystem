﻿using Contracts;
using Model;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using WebUI.Models;

namespace WebUI.Controllers
{
    public class RationController : Controller
    {
        private IRepositoryBase<PacketDetail> _packetDetail = null;
        private IRepositoryBase<PacketsType> _packetType = null;
        private IRepositoryBase<ErrorLog> _errorlogs = null;


        public RationController(IRepositoryBase<PacketDetail> packetDetails, IRepositoryBase<PacketsType> packetType, IRepositoryBase<ErrorLog> errorlogs)
        {
            this._packetDetail = packetDetails;
            this._packetType = packetType;
            this._errorlogs = errorlogs;
        }

        // GET: Ration
        //Retrive the all packet item  
        public ActionResult Dashboard()
        {
            try
            {

                var data = _packetDetail.GetAll().Where(x => x.IsDeleted == false).ToList().Select(item => new PacketDetail()
                {

                    Id = item.Id,
                    PacketTypeId = item.PacketTypeId,
                    PacketType = _packetType.GetByID(Convert.ToInt32(item.PacketTypeId)).PacketType,
                    PacketContent = item.PacketContent != null ? item.PacketContent : "-",
                    Calories = item.Calories != null ? item.Calories : 0,
                    ExpiryDate = item.ExpiryDate != null ? item.ExpiryDate : null,
                    LitersQty = item.LitersQty != null ? item.LitersQty : 0,
                    PacketId = item.PacketTypeId == "1" ? "F" + item.Id : "W" + item.Id
                });
                return View(data);
            }

            catch (Exception ex)
            {
                LogException(ex, "Dashboard");
                throw;
            }

        }

        //GET: Method For ADD Ration
        [HttpGet]
        public ActionResult AddRation()
        {
            try
            {
                return View();
            }
            catch (Exception ex)
            {
                LogException(ex, "AddRation");
                return RedirectToAction("Dashboard", "Ration");
                throw;
            }
        }

        //POST: Method For Insert The Ration 
        [HttpPost]
        public ActionResult AddRation(PacketDetail packetDetail)
        {
            try
            {
                IFormatProvider culture = new CultureInfo("en-US", true);
                if (packetDetail.Datestart != null)
                {
                    packetDetail.Datestart = packetDetail.Datestart.Replace("/", "-");

                    packetDetail.ExpiryDate = DateTime.ParseExact(packetDetail.Datestart, "dd-MM-yyyy", culture);
                }
                if (packetDetail.PacketTypeId == "1")
                {
                    packetDetail.IsDeleted = false;
                    _packetDetail.Insert(packetDetail);
                    _packetDetail.Save();
                }
                else if (packetDetail.PacketTypeId == "2")
                {
                    packetDetail.IsDeleted = false;
                    packetDetail.ExpiryDate = null;
                    _packetDetail.Insert(packetDetail);
                    _packetDetail.Save();
                }

                return RedirectToAction("Dashboard", "Ration");
            }
            catch (Exception ex)
            {
                LogException(ex, "AddRation");
                return RedirectToAction("Dashboard", "Ration");
                throw;
            }
        }

        //GET: Method For EDIT The Ration 
        [HttpGet]
        public ActionResult EditRation(int PacketId)
        {
            try
            {
                var RationDetails = _packetDetail.GetByID(PacketId);
                if (RationDetails.ExpiryDate!=null)
                {
                    RationDetails.Datestart = RationDetails.ExpiryDate.Value.ToString("dd/MM/yyyy");

                }
                return View(RationDetails);
            }

            catch (Exception ex)
            {

                LogException(ex, "EditRation");
                return RedirectToAction("Dashboard", "Ration");
                throw;
            }
        }

        //POST: Method For EDIT The Ration 
        [HttpPost]
        public ActionResult EditRation(PacketDetail packetDetail)
        {
            try
            {
                if (packetDetail.PacketTypeId == "1")
                {
                    IFormatProvider culture = new CultureInfo("en-US", true);
                    packetDetail.Datestart = packetDetail.Datestart.Replace("/", "-");
                    packetDetail.ExpiryDate = DateTime.ParseExact(packetDetail.Datestart, "dd-MM-yyyy", culture);
                    packetDetail.IsDeleted = false;
                    packetDetail.LitersQty = 0;
                    _packetDetail.Update(packetDetail);
                    _packetDetail.Save();
                }
                else if (packetDetail.PacketTypeId == "2")
                {
                    packetDetail.IsDeleted = false;
                    packetDetail.ExpiryDate = null;
                    packetDetail.Calories = 0;
                    packetDetail.PacketContent = null;
                    _packetDetail.Update(packetDetail);
                    _packetDetail.Save();
                }
                return RedirectToAction("Dashboard", "Ration");
            }
            catch (Exception ex)
            {
                LogException(ex, "EditRation");
                return RedirectToAction("EditRation", "Ration");
                throw ex;
            }
        }

        //Method For DELETE The Ration
        [HttpPost]
        public JsonResult DeleteRation(PacketDetail packetDetail)
        {
            try
            {
                var objPacketDetail = _packetDetail.GetByID(packetDetail.Id);
                objPacketDetail.IsDeleted = true;
                _packetDetail.Update(objPacketDetail);
                _packetDetail.Save();
                return Json(1);
            }
            catch (Exception ex)
            {
                LogException(ex, "DeleteRation");
                RedirectToAction("Dashboard", "Ration");
                throw ex;

            }
        }

        //GET: Method For open the Schduler page
        public ActionResult Schduled()
        {
            try
            {
                RationScheduleViewModelNew rationScheduleViewModel = new RationScheduleViewModelNew();
                rationScheduleViewModel.StartDate = DateTime.Now;
                return View(rationScheduleViewModel);
            }
            catch (Exception ex)
            {
                LogException(ex, "Schduled");
                RedirectToAction("Schduled", "Ration");
                throw ex;
            }
        }

        //GET: Method For Schduler page & Logic For View Schedule:
        [HttpPost]
        public ActionResult Schduled(RationScheduleViewModelNew rationScheduleView)
        {
            try
            {
                //DateTime StartDate

                List<RationScheduleViewModel> rationScheduleViewModels = new List<RationScheduleViewModel>();
                ParseDateTime(rationScheduleView);
                int NumberInventery = 0;
                var Schduledata = _packetDetail.GetAll().Where(x => x.IsDeleted == false && (EntityFunctions.TruncateTime(x.ExpiryDate) >= EntityFunctions.TruncateTime(rationScheduleView.StartDate) || x.ExpiryDate == null)).OrderBy(a => a.LitersQty).OrderBy(a => a.Calories).ToList();
                List<PacketDetail> PacketsLst = new List<PacketDetail>(); List<PacketDetail> paketDetailsItems = new List<PacketDetail>();
                int Calories = 0; int QtyForLiter = 0; var Counter = 0; var CounterLtr = 0; var CounterCalories = 0;
                int CalRequire = 0; int LtrQty = 0;


                SchduleItem:
                //foreach (var item in Schduledata)
                int intCount = Schduledata.Count;
                for (int i = 0; i < intCount; i++)
                {
                    var item = Schduledata.OrderBy(x => Convert.ToInt32(2500 - (x.Calories + Calories))).OrderBy(x => Math.Abs(Convert.ToInt32(2500 - (x.Calories + Calories))))
                        .OrderBy(x => Convert.ToInt32(2 - (x.LitersQty + QtyForLiter))).OrderBy(x => Math.Abs(Convert.ToInt32(2 - (x.LitersQty + QtyForLiter))))
                        .FirstOrDefault();

                    int PacketTypeId = Convert.ToInt32(item.PacketTypeId);
                    PacketDetail packetDetail = new PacketDetail();
                    packetDetail.Id = item.Id;
                    packetDetail.PacketTypeId = item.PacketTypeId;
                    packetDetail.PacketType = _packetType.GetByID(PacketTypeId).PacketType;
                    packetDetail.PacketContent = item.PacketContent != null ? item.PacketContent : "-";
                    packetDetail.Calories = item.Calories != null ? item.Calories : 0;
                    packetDetail.ExpiryDate = item.ExpiryDate != null ? item.ExpiryDate : null;
                    packetDetail.LitersQty = item.LitersQty != null ? item.LitersQty : 0;
                    packetDetail.PacketId = item.PacketTypeId == "1" ? "F" + item.Id : "W" + item.Id;

                    //This is for water packet type
                    if (item.PacketTypeId == "2")
                    {
                        // List for store water actucal records
                        if (QtyForLiter < 2)
                        {
                            PacketsLst.Add(packetDetail);
                            Counter = Counter + 1;
                            QtyForLiter += Convert.ToInt32(item.LitersQty);

                        }
                        // List for store water temp records
                        else
                        {
                            PacketDetail packetDetailLtrTemp = new PacketDetail();
                            packetDetailLtrTemp.Id = item.Id;
                            packetDetailLtrTemp.PacketTypeId = item.PacketTypeId;
                            packetDetailLtrTemp.PacketType = _packetType.GetByID(PacketTypeId).PacketType;
                            packetDetailLtrTemp.PacketContent = item.PacketContent != null ? item.PacketContent : "-";
                            packetDetailLtrTemp.Calories = item.Calories != null ? item.Calories : 0;
                            packetDetailLtrTemp.ExpiryDate = item.ExpiryDate != null ? item.ExpiryDate : null;
                            packetDetailLtrTemp.LitersQty = item.LitersQty != null ? item.LitersQty : 0;
                            packetDetailLtrTemp.PacketId = item.PacketTypeId == "1" ? "F" + item.Id : "W" + item.Id;

                            if (item.LitersQty != null)
                            {
                                CounterLtr = CounterLtr + 1;
                            }
                            paketDetailsItems.Add(packetDetailLtrTemp);

                        }
                    }


                    //This is for food packet type
                    else if (item.PacketTypeId == "1")
                    {
                        // List for store calories actucal records
                        if (Calories < 2500)
                        {
                            PacketsLst.Add(packetDetail);
                            Counter = Counter + 1;
                            Calories += Convert.ToInt32(item.Calories);

                        }

                        // List for store calories temp records
                        else
                        {
                            PacketDetail packetCalTempDetail = new PacketDetail();
                            packetCalTempDetail.Id = item.Id;
                            packetCalTempDetail.PacketTypeId = item.PacketTypeId;
                            packetCalTempDetail.PacketType = _packetType.GetByID(PacketTypeId).PacketType;
                            packetCalTempDetail.PacketContent = item.PacketContent != null ? item.PacketContent : "-";
                            packetCalTempDetail.Calories = item.Calories != null ? item.Calories : 0;
                            if (item.Calories != null)
                            {
                                CounterCalories = CounterCalories + 1;
                            }
                            packetCalTempDetail.ExpiryDate = item.ExpiryDate != null ? item.ExpiryDate : null;
                            packetCalTempDetail.LitersQty = item.LitersQty != null ? item.LitersQty : 0;
                            packetCalTempDetail.PacketId = item.PacketTypeId == "1" ? "F" + item.Id : "W" + item.Id;

                            paketDetailsItems.Add(packetCalTempDetail);

                        }
                    }

                    // Logic for display the row or cells based on the date
                    if (Calories >= 2500 && QtyForLiter >= 2)
                    {
                        RationScheduleViewModel rationScheduleViewModel = new RationScheduleViewModel();

                        if (rationScheduleView.StartDate != null)
                        {
                            rationScheduleViewModel.StartDate = rationScheduleView.StartDate;
                        }
                        NumberInventery = NumberInventery + 1;
                        rationScheduleViewModel.LivedLife = NumberInventery;
                        rationScheduleViewModel.CounterSpan = Counter;
                        foreach (var Packetitem in PacketsLst)
                        {
                            rationScheduleViewModel.listRation.Add(Packetitem);

                        }
                        rationScheduleViewModels.Add(rationScheduleViewModel);
                        PacketsLst = new List<PacketDetail>();
                        Counter = 0; Calories = 0; QtyForLiter = 0;
                        rationScheduleView.StartDate = rationScheduleView.StartDate.Date.AddDays(1);
                    }
                    Schduledata.Remove(item);
                }


                // this is for If actual list contain some records but not fullfill our logic condition
                if (PacketsLst.Count != 0)
                {
                    Schduledata = PacketsLst;
                    Calories = 0; QtyForLiter = 0; Counter = 0;
                    PacketsLst = new List<PacketDetail>();
                    Schduledata.AddRange(paketDetailsItems);

                }
                else
                {
                    Schduledata = paketDetailsItems;

                }


                Schduledata = Schduledata.OrderBy(a => a.LitersQty).OrderBy(a => a.Calories).ToList();

                if (Schduledata.Count != 0)
                {
                    foreach (var item in Schduledata)
                    {
                        if (item.Calories != 0)
                        {
                            CalRequire += Convert.ToInt32(item.Calories);

                        }
                        if (item.LitersQty != 0)
                        {
                            LtrQty += Convert.ToInt32(item.LitersQty);

                        }

                    }

                    //If our tempCal & tempLtQty contain calories and qtyLr more than 2500 & 2 
                    if (CalRequire >= 2500 && LtrQty >= 2)
                    {
                        CalRequire = 0; LtrQty = 0;
                        paketDetailsItems = new List<PacketDetail>();
                        CounterLtr = 0; CounterCalories = 0;

                        goto SchduleItem;

                    }

                }

                RationScheduleViewModelNew rationScheduleViewModelNew = new RationScheduleViewModelNew();
                rationScheduleViewModelNew.StartDate = rationScheduleView.StartDate;
                rationScheduleViewModelNew.lstRationScheduleViewModel = rationScheduleViewModels;
                return View(rationScheduleViewModelNew);

            }
            catch (Exception ex)
            {
                LogException(ex, "Schduled");
                return Json(null);
            }
        }


        private string AddDayInCurrentDate(string date, RationScheduleViewModelNew rationScheduleView)
        {
            string[] dateFormate = date.Split('-');
            rationScheduleView.statedate = (Convert.ToInt32(dateFormate[0]) + 1).ToString() + "-" + dateFormate[1] + "-" + dateFormate[2].ToString();
            var V = Convert.ToDateTime(dateFormate[2] + "-" + dateFormate[1] + "-" + (dateFormate[0].Length == 1 ? "0" : "" + (Convert.ToInt32(dateFormate[0])).ToString())).AddDays(1);
            return V.ToString();
        }
        private void ParseDateTime(RationScheduleViewModelNew rationScheduleView)
        {
            string[] dtformat = rationScheduleView.statedate.Split('-');
            rationScheduleView.StartDate = DateTime.Parse(dtformat[2] + "-" + dtformat[1] + "-" + (dtformat[0].Length == 1 ? "0" : "") + (Convert.ToInt32(dtformat[0])).ToString());
        }

        //Method for handler an exception 
        public string getExDetails(Exception ex)
        {
            Exception e = ex;
            StringBuilder s = new StringBuilder();
            while (e != null)
            {
                s.AppendLine("Exception type: " + e.GetType().FullName);
                s.AppendLine("Message       : " + e.Message);
                s.AppendLine("Stacktrace:");
                s.AppendLine(e.StackTrace);
                s.AppendLine();
                e = e.InnerException;
            }
            return s.ToString();
        }

        //Method for log an exception
        private ActionResult LogException(Exception ex, string Method)
        {
            ErrorLog errorLogs = new ErrorLog();
            errorLogs.CreatedDate = DateTime.Now;
            errorLogs.Controller = "Ration";
            errorLogs.Method = Method;
            errorLogs.Message = getExDetails(ex);
            _errorlogs.Insert(errorLogs);
            _errorlogs.Save();
            return View();
        }

    }


}