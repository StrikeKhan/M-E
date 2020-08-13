using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_refer
{
    public partial class ImageUpload : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            FileUpload1.Attributes["multiple"] = "multiple";

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < Request.Files.Count; i++)
            {
                HttpPostedFile fu = Request.Files[i];
                if (fu.ContentLength > 0)
                {
                    if (fu.ContentLength < 3)
                    {
                        lblmsg.Text = "Only Three Img will be Upload";

                    }
                    else
                    {
                        try
                        {
                            string fileName = Path.GetFileName(fu.FileName);
                            fu.SaveAs(Server.MapPath("~/Images/") + fileName);
                            string imagePath = "~/Image/" + fileName;
                            Session["ImagePath"] = imagePath;

                            lblmsg.Text = "Files have been Uploaded";
                            lblmsg.ForeColor = System.Drawing.Color.Green;
                        }
                        catch (Exception ex)
                        {
                            lblmsg.Text = "File Could not be uploaded" + ex.Message;
                            lblmsg.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }

            }
        }
    }
}