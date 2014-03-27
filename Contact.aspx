<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Web Contact Form </title>
            <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body> 
    <form id=form1 runat="server">
    <div id="wrap" style="text-align:center">
    <div id="header">
        <h1 class="title"> <a href="Default.aspx"> Wicked Easy Recipes </a></h1>

          <h3>Using 5 Ingedients or Less!</h3>
    </div>
    <div id="nav">

            <a href="gridview.aspx">Home</a>&nbsp; |&nbsp; 
            <a href="NewRecipy.aspx">New Recipe</a>&nbsp; |&nbsp; 
            <a href="AboutUs.aspx">About Us</a>&nbsp; |&nbsp; 
            <a href="Contact.aspx">Contact </a>
    </div>
    <div>
    <!-- Check to see if you are in postback. If not, display the contact form. -->
    <%If Not IsPostBack Then%>
                <h5> Your email address:</h5>
        <asp:TextBox ID="senderAddress" runat="server" Width="289px" style="margin-left: 0px"></asp:TextBox>
                <h5>Your message:</h5>
    <!-- to make your box bigger add rows, columns, and textmode -->
    <asp:TextBox ID="senderMessage" runat="server" Rows="15" Columns="35" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
    <asp:Button ID="sendMail" runat="server" Text="Send" />
    <!-- If you are in postback, display the confirmation label. -->
    <%Else%>
        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>
    <!-- End your 'If' statement. -->
    <%End If%>



    </div>
       <div id="footer">
         <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &copy; 2014&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</p>

       </div>
    </div>
    </form>
</body>
</html>
