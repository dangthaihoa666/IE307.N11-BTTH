using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Lab5_WebAPI.Controllers
{
    public class ServiceController : ApiController
    {
        [Route("api/ServiceController/HelloWebAPI")]
        [HttpGet]
        public IHttpActionResult HelloWebAPI()
        {
            return Ok("Chào mừng bạn đến với Web API!");
        }


        [Route("api/ServiceController/GetAllSubject")]
        [HttpGet]
        public IHttpActionResult GetAllSubject()
        {
            try
            {
                DataTable result = Database.Database.ReadTable("Proc_GetAllSubject");
                return Ok(result);
            }
            catch
            {
                return NotFound();
            }
        }

        [Route("api/ServiceController/GetBooksBySubjectID")]
        [HttpGet]
        public IHttpActionResult GetBooksBySubjectID(int macd)
        {
            try
            {
                Dictionary<string, object> param = new Dictionary<string, object>();
                param.Add("macd", macd);

                DataTable result = Database.Database.ReadTable("Proc_GetBooksBySubjectID", param);
                return Ok(result);
            }
            catch
            {
                return NotFound();
            }
        }
    }
}
