<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="blood.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  padding: 10px;
  background: #f3f5f7;
}

/* Header/Blog Title */
.header {
  padding:10px;
  text-align: center;
  background: rgb(36, 60, 72);
 border-radius: 10px;

}

.header h2 {
  font-size: 20px;
  color: aqua;
  
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #c9e6ec;
  border-radius:10px;
}

/* Style the topnav links */
.topnav a {
  float:left;
  text-align:left;
  align-items:normal;
  color: #030303;
  display: block;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
 /*background-color: white;*/
 color: #868f64;
  border-radius:10px ;
}
#Button1{
    color:brown;
    background-color:aqua;
}
#Button1:hover{
    color:aquamarine;
}
#tb1{
    background-image:url("https://tse2.explicit.bing.net/th?id=OIP.X8ntYE4Htr_6fGmfNHM3FQHaFP&pid=Api&P=0&h=180");
    background-repeat:no-repeat;
    background-size:cover;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 75%;
}

Right column 
.rightcolumn {
  float: left;
  width: 25%;
  background-color: #f1f1f1;
  padding-left: 20px;
}

/* Fake image */
.fakeimg {
 /* background-color: #aaa;*/
  width: 97%;
  padding: 2px;
  height:200px;

}

/* Add a card effect for articles */
.card {
  background-color: white;
  padding: 20px;
  margin-top: 20px;
 
}

/* Clear floats after the columns */
.row::after {
  content: "";
  display: table;
  clear: both;
}

/* Footer */
.footer {
  padding: 20px;
 /* text-align: center;*/
  background: #ddd;
  margin-top: 20px;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}

/*Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        
                    <div class="header"><!--this is header div open -->
          <h2>Blood Bank</h2>     
       </div><!--this is header div close -->
<div class="topnav"><!--this is topnav div open -->
    <a href="Home.aspx" runat="server" id="a">Home</a>&nbsp;&nbsp;&nbsp;
    <a href="Register.aspx" runat="server" id="a1">Register</a>&nbsp;&nbsp;&nbsp;
    <a href="Login.aspx" runat="server" id="a2">Login</a>&nbsp;&nbsp;&nbsp;
    <a href="donars.aspx" runat="server" id="a3">Search</a>
</div><!--this is topnav div close -->
 <div class="row"><!--this is row div open -->
  <div class="leftcolumn"><!--this is leftcolum div open -->
    <div class="card"><!--this is card div open -->
      <h2  align="center" style="color:darkred;">Admin</h2>
      <h1 style="color: aqua;"></h1>
         <h5>
         </h5>
          <div class="fakeimg" style="height: 500px;"><!--this is fakeimg div open -->
          <div id="Admin1">
              <table border="0" align="center" id="tb1" height="500px" width="500px">
                  <tr>
                      <th>Admin ID</th>
                        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <th>Password</th>
                     <td> <asp:TextBox ID="TextBox2" runat="server" Height="28px"></asp:TextBox></td>
                      </tr>
                        <tr>
                          <td rowspan="2" colspan="2"><center><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search"/></center></td>
                     </tr>
                  </table>
               </div>
          </div>
         
               <p></p>
      </div><!--this is card div close -->
    <div class="card"><!--this is card div close -->
             <h2 style="color:blue;">// OUR SERVICES</h2>
            <h3 style="color: rgb(41, 191, 202);"> We Offer a Wide Variety of IT Services</h3>
      <div class="fakeimg" style="height:500px;"><!--this is fakeimg div open -->
            <img src="https://tse2.explicit.bing.net/th?id=OIP.X8ntYE4Htr_6fGmfNHM3FQHaFP&pid=Api&P=0&h=180" style="width: 961px; height: 541px"/>
      </div><!--this is fakeimg div close -->
      <p> 
      </p>
         <p></p>
    </div><!--this is card div close -->
  </div><!--this is leftcolumn div close -->
  <div class="rightcolumn"><!--this is frightcolumn div open-->
    <div class="card"><!--this is card div open -->
      <h2 id="about" style="color: aquamarine;">About Me</h2>
      <div class="fakeimg" style="height:100px;"><!--this is fakeimg div open -->
           <img width="160" height="100"  src="https://ultrakeyit.com/wp-content/uploads/2024/02/20943892-2048x2048.webp"/>
     </div><!--this is fakeimg div close -->
      <p></p>
    </div><!--this is card div close -->
    <div class="card"><!--this is card div open -->
      <h3 style="color: aquamarine;">Popular Post</h3>
      <div class="fakeimg"><img  width="150" height="150" src="https://st4.depositphotos.com/1907633/19725/i/450/depositphotos_197254116-stock-photo-coding-software-developer-work-augmented.jpg"/></div>
      <div class="fakeimg"><img width="150" height="150" src="https://thumbs.dreamstime.com/b/software-development-business-process-automation-internet-technology-concept-virtual-screen-software-development-173476965.jpg"/></div>
      <div class="fakeimg"><img width="150" height="150" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAypMVDS2eUL1qxCxgvmek77RB2Vf9qhdSX7xMBeMLL5LBya39Cw-JSuzjqE1K7-sQ1II&usqp=CAU"/></div>
    </div><!--this is cord div close -->
    <div class="card"><!--this is card div open -->
      <h3 id="Contact" style="color: aquamarine;">Contact Me</h3>
      <p>Contact:+91 7660092378 
    Email:Ultrakey@gmail.com</p>
    </div><!--this is cord div close-->
  </div><!--this is rightcolumn div close -->
</div><!--this is row div open-->

<div class="footer">
  <img id="img2" src="C:\Users\vikra\Downloads\Ultrakey_IT_Solutions_Private_Limited_Logo_Color.webp" width="100" height="30"/>
  <pre>we are Providing Services like – Website Design & Development,
Graphic Designs, 
Digital Marketing Services etc…</pre>
<h2 style="color:rgb(90, 192, 192)">Popular Services</h2>
<ul>
<li>Web Design & Development</li>
<li>Digital Marketing Services</li>
<li>Graphic Designs</li>
<li>Google Ads</li>
<li>Fb & Instagram Ads</li>
</ul>
</div>
          
    </form>
</body>
</html>
