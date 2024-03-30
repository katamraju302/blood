<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="blood.Home" %>

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
  background-color:white;
  border-radius:10px;
}

/* Style the topnav links */
.topnav a {
  float:left;
  text-align:right;
  align-items:normal;
  color: #030303;
 /* display: block;*/
  padding: 15px 12px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
 background-color:white;
 color: #868f64;
  border-radius:10px ;
}


/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 75%;
  margin-right: 0px;
        }

/* Right column */
.rightcolumn {
  float: left;
  width: 25%;
 /* background-color: #f1f1f1;*/
  padding-left: 20px;
}

/* Fake image */
.fakeimg {
/* background-color: #aaa;*/
  width: 94%;
  padding: 2px;
  height:392px;

}

/* Add a card effect for articles */
.card {
  /*background-color: white;*/
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
    width:100%;
  padding: 20px;
 text-align: center;
  background-color:beige;
            height: 212px;
            margin-left: 4px;
        }
.footer div{
 background-color:beige;
  width:24%;  
  float:left;
            height: 214px;
        }
.footer div p:hover{
    color:crimson;
}
.footer div h3{
   /*  width: 15px; */
  /*   line-height: 1.5;*/

 }
 h3::first-letter {
    color:red;
    /*background-color: black;
    border-radius: 2px;
    box-shadow: 3px 3px 0 red; 
    font-size: 250%; 
    padding: 6px 3px;
  margin-right: 6px; 
    float: left; */ 

 }
 



/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
/*@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}*/

/*Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
/*@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}*/
div.mycontainer {
  width:98%;
  overflow:auto;
}
div.mycontainer div {
  width:33%;  
  float:left;
            margin-top: 47px;
        }
div.mycontainer div h2{
    color:crimson;
}
div.GolbelNeed a h3:hover{
    color:crimson;
}
div.GolbelNeed a{
    text-decoration: none;
}
div.GolbelNeed a h3{
    color:gainsboro;
}
div.about-text a h3:hover{
    color:crimson;
}
div.about-text a{
    color:darkgrey;
    text-decoration:none;
}
#button1:hover{
    background-color:brown;

}


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header"><!--this is header div open -->
            &nbsp;<h2>Blood Bank</h2>     
       </div><!--this is header div close -->
<div class="topnav"><!--this is topnav div open -->
   <img src="https://tse1.mm.bing.net/th?id=OIP.yyEfoMgtlUO9lDLIZmySgwHaDV&pid=Api&P=0&h=180" align="left" width="120" height="50" />
    <a href="Home.aspx" runat="server" id="a">Home</a>&nbsp;&nbsp;&nbsp;
    <a href="Register.aspx" runat="server" id="a1">Register</a>&nbsp;&nbsp;&nbsp;
    <a href="Login.aspx" runat="server" id="a2">Login</a>&nbsp;&nbsp;&nbsp;
    <a href="donars.aspx" runat="server" id="a3">Search</a>
</div><!--this is topnav div close -->

<div class="row"><!--this is row div open -->
  <div class="leftcolumn"><!--this is leftcolum div open -->
    <div class="card"><!--this is card div open -->
      <h2 style="color: blue;">&nbsp;</h2>
      <h1 style="color:crimson;"><b>WE SAVE LIVES</b></h1>
         <p>Since our founding as a charity in 2008, Global Blood Fund has delivered millions of dollars in grants,<br />
             equipment, training and other forms of support to over 50 countries in Africa, Asia, Eastern Europe,<br />
             the Middle East, Latin America and the Caribbean.
         </p>
          <div class="fakeimg" style="height: 500px;"><!--this is fakeimg div open -->
                <img src="https://regencyhealthcare.in/wp-content/uploads/2018/08/blood-donation-3.png" style="width: 786px; height: 493px"/>
          </div>
         
     <div class="mycontainer">

            <div >
                <img src="https://globalbloodfund.org/wp-content/uploads/2020/06/donate-icon.png" />
                <h2>WE DONATE</h2>
                <p>expertise, money, and<br />
                equipment to poor nations.</p>
            </div>
            <div >
               <img src="https://globalbloodfund.org/wp-content/uploads/2020/06/resources-icon.png" />
               <h2>WE ENCOURAGE</h2>
                <p>the blood banking<br /> 
                community to share resources.</p>
            </div>
            <div >
                   <img src="https://globalbloodfund.org/wp-content/uploads/2020/06/volunteer-icon.png" />
                         <h2>WE PROMOTE</h2>
                    <p>voluntary, non­-remunerated<br />
                          blood donation.</p>
            </div>
             <div >
                 <img src="https://globalbloodfund.org/wp-content/uploads/2020/06/inform-icon.png" />
                 <h2>WE INFORM</h2>
                 <p>about the global inequalities<br />
                 for accessing safe blood.</p>
         </div>
         <div>
               <img src="https://globalbloodfund.org/wp-content/uploads/2020/06/engage-icon.png" />
               <h2>WE ENGAGE</h2>
               <p>millions of blood donors in<br />
                global aid efforts.</p>
         </div>
   </div>
      </div><!--this is card div close -->
      <div class="GolbelNeed">
          <a href="Home.aspx"><h3 align="center">Golbel Need<img src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes/128/arrow-right-circle-blue-1024.png" style="width: 29px; height: 34px; margin-left: 35px" /></h3></a>

      </div>
    <div class="card"><!--this is card div close -->
             <h2 align="center" style="color:crimson">THE RESULTS ARE IN, GHANA BLOOD STORY, 4 OF THE BEST STORIES SELECTED.</h2>
             <p style="color:darkgrey;">Take a look at these 4 meaningful stories about personal journeys in Giving and Recieving blood</p>
            <div class="uk-section-title section-title" style="background: 0px 0px rgb(247, 247, 247); border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: rgb(136, 136, 136); font-family:bold ; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <h2 style="background: 0px 0px; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: rgb(166, 31, 103); font-size: 50px; line-height: 55px; text-transform: uppercase; letter-spacing: -0.25px; font-weight: 700; font-style: normal;">DIFFERENCE</h2>
        </div>
        <div class="about-text">
            <p style="vertical-align: baseline;color: rgb(136, 136, 136); font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; font-style: normal; font-weight: 400;">
                In rich countries, when patients need blood it is usually available and safe for transfusion. In economically challenged countries, blood banks are often empty and what blood is available may put transfused patients at risk of contracting HIV or numerous other infections.</p>
           <a href="Home.aspx"><h3>Why Blood?<img src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes/128/arrow-right-circle-blue-1024.png" style="width: 29px; height: 34px; margin-left: 35px" /></h3></a>   
        </div>&nbsp;<div class="fakeimg" style="height:500px;"><!--this is fakeimg div open -->
            <img src="https://e1.pxfuel.com/desktop-wallpaper/438/512/desktop-wallpaper-donation-blood-donor.jpg" style="width: 820px; height: 500px"/>
      </div><!--this is fakeimg div close -->
     
         
    
         <p></p>
    </div><!--this is card div close -->
  </div><!--this is leftcolumn div close -->
  <div class="rightcolumn"><!--this is frightcolumn div open-->
    <div class="card"><!--this is card div open -->
        <h2 style="background: 0px 0px rgb(247, 247, 247); border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: rgb(166, 31, 103); font-size: 50px; line-height: 55px; text-transform: uppercase; letter-spacing: -0.25px; font-weight: 700; font-style: normal; font-family: &quot;Bebas Neue&quot;, sans-serif; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-indent: 0px; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;"><u style="background: 0px 0px; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;">FRIENDS OF GLOBAL BLOOD FUND</u></h2>
      <div class="fakeimg" style="height:163px;"><!--this is fakeimg div open -->
           <img  src="https://img.freepik.com/premium-photo/world-blood-donor-day-creative-background-blood-donation-photo_524159-705.jpg" style="width: 221px; height: 164px"/>
     </div><!--this is fakeimg div close -->
      <p>‘Friends of Global Blood Fund’ is a rolling-donation program, through which those who care about transfusion equality between rich and poor nations make an annual gift at a selected level. Making a forward commitment doesn’t just enable GBF’s work; surety of income for the following fiscal year helps improve efficiency and effectiveness compared to a reliance on sporadic donations.</p>
    </div><!--this is card div close -->
    <div class="card"><!--this is card div open -->
      <h3 style="color: aquamarine;">Popular Post</h3>
      <div class="fakeimg">
          <h4 style="background: 0px 0px rgb(166, 31, 103); border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: rgb(255, 255, 255); font-size: 30px; line-height: 34px; font-weight: 700; font-style: normal; letter-spacing: -0.25px; text-transform: uppercase; font-family: &quot;Bebas Neue&quot;, sans-serif; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: left; text-indent: 0px; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">CITY LEVEL SUPPORTER</h4>
          <p style="background: 0px 0px rgb(166, 31, 103); border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: rgb(136, 136, 136); font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; font-style: normal; font-weight: 400; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
              <strong style="background: 0px 0px; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;"><span style="background: 0px 0px; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: rgb(255, 255, 255); font-size: 16px; line-height: 18px;">Help health services introduce innovative new ways to promote blood donation and engage local communities</span></strong></p>
          <p style="background: 0px 0px rgb(166, 31, 103); border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: rgb(136, 136, 136); font-family: Arial, sans-serif; font-size: 16px; line-height: 24px; font-style: normal; font-weight: 400; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <strong  id="button1"style="background-color:crimson">$2000 A Year</strong>
              </p>
          

      </div>
      <div class="fakeimg"></div>
      <div class="fakeimg"></div>
    </div>
      <!--this is cord div close-->
  </div><!--this is rightcolumn div close -->
</div><!--this is row div open-->

<div class="footer">
    <div>
           <img align="left" src="https://tse1.mm.bing.net/th?id=OIP.yyEfoMgtlUO9lDLIZmySgwHaDV&pid=Api&P=0&h=180" style="height: 105px; width: 246px"/>
      <h3>4500+ donors are already connected</h3>
   </div>
    <div>
        <h2 style="color:crimson">About Us </h2>
        <p >How It Works</p>
        <p >Team</p>
        <p >About Us</p>
    </div>
   <div>
       <h2 style="color:crimson">Press</h2>
       <p>Latest news</p>
       <p>Events</p>
      <p>Awards</p>
   </div>
    <div>
    <h2 style="color:crimson">Get In Touch</h2>
    <p>Blogs </p>
    <p>Causes</p>
   <p>Make A Blood Donor</p>
</div>
</div>
</form>
</body>
</html>
