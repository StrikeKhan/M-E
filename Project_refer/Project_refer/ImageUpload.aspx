<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageUpload.aspx.cs" Inherits="Project_refer.ImageUpload" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 258px;
        }
        .style2
        {
            width: 168px;
        }
        .style3
        {
            text-decoration: underline;
            text-align: left;
            color: #9966FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" Height="29px" BorderStyle="None"   Width="103px" BackColor="#00A65A" Font-Size="13px" ForeColor="White" />
            </td>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
         <div id="dvPreview">
        </div>
    </form>
     <script language="javascript" type="text/javascript">
      
            var fileUpload = document.getElementById("FileUpload1");
         fileUpload.onchange = function () {
                if (typeof (FileReader) != "undefined") {
                    var dvPreview = document.getElementById("dvPreview");
                    dvPreview.innerHTML = "";
                    var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
                              document.getElementById("Button1").style.opacity ="unset";
                    if (fileUpload.files.length > 3) {
                        document.getElementById("Button1").disabled = true;
                        document.getElementById("Button1").style.opacity =.65;
                        document.getElementById("lblmsg").innerHTML = "Only 3 Image is Allowed";
                        document.getElementById("lblmsg").style.color = 'red';
                    }
                    else {
                                                document.getElementById("lblmsg").innerHTML = "";

                        document.getElementById("Button1").disabled = false;
                    }
                    for (var i = 0; i < fileUpload.files.length; i++) {
                        var file = fileUpload.files[i];
                        if (regex.test(file.name.toLowerCase())) {
                            var reader = new FileReader();
                            reader.onload = function (e) {
                                var img = document.createElement("IMG");
                                img.height = "100";
                                img.width = "100";
                                img.src = e.target.result;
                                dvPreview.appendChild(img);
                                 sessionStorage.setItem("ImgPath"+i++, e.target.result);
                            }
                            reader.readAsDataURL(file);
                        } else {
                            alert(file.name + " is not a valid image file.");
                            dvPreview.innerHTML = "";
                            return false;
                        }
                    }
                } else {
                    alert("This browser does not support HTML5 FileReader.");
                }
            }
     
    </script>
</body>
</html>
