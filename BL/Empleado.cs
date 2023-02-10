using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class Empleado
    {
        public static ML.Result GetAll()
        {
            ML.Result result = new ML.Result();

            try
            {
                using (DL.EIgnacioSDIEntities context=new DL.EIgnacioSDIEntities())
                {
                    var query=context.GetAll().ToList();
                    result.ObjectList = new List<object>();

                }
            }
            catch (Exception ex)
            {

                throw;
            }

            return result;
        }
    }
}
