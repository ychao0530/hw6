<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>

      <link rel="stylesheet" type="text/css" href="StyleSheet.css" />

</head>
<body>
    <form runat="server">
    <div id="wrap" style="text-align:center">
        <h1 class="title"> <a href="Default.aspx"> Wicked Easy Recipes </a></h1>
           <h3>Using 5 Ingedients or Less!</h3>
    <div id="nav">

            <a href="gridview.aspx">Home</a>&nbsp; |&nbsp; 
            <a href="NewRecipy.aspx">New Recipe</a>&nbsp; |&nbsp; 
            <a href="AboutUs.aspx">About Us</a>&nbsp; |&nbsp; 
            <a href="Contact.aspx">Contact </a>
    </div>
    <div>
        <asp:SqlDataSource ID="RecipyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_RecipyWeb %>" DeleteCommand="DELETE FROM [Table] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Table] ([recipyName], [subBy], [ing1], [ing2], [ing3], [ing4], [ing5], [prep], [note]) VALUES (@recipyName, @subBy, @ing1, @ing2, @ing3, @ing4, @ing5, @prep, @note)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [recipyName] = @recipyName, [subBy] = @subBy, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [prep] = @prep, [note] = @note WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipyName" Type="String" />
                <asp:Parameter Name="subBy" Type="String" />
                <asp:Parameter Name="ing1" Type="String" />
                <asp:Parameter Name="ing2" Type="String" />
                <asp:Parameter Name="ing3" Type="String" />
                <asp:Parameter Name="ing4" Type="String" />
                <asp:Parameter Name="ing5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="note" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipyName" Type="String" />
                <asp:Parameter Name="subBy" Type="String" />
                <asp:Parameter Name="ing1" Type="String" />
                <asp:Parameter Name="ing2" Type="String" />
                <asp:Parameter Name="ing3" Type="String" />
                <asp:Parameter Name="ing4" Type="String" />
                <asp:Parameter Name="ing5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="note" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <center>
        
      <asp:GridView ID="GridView1" runat="server" CSSClass="gv" 
          AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="RecipyDataSource" 
          Width="946px" AllowSorting="True" AllowPaging="True"
          Gridlines="None">
            <Columns>
                <asp:BoundField DataField="recipyName" HeaderText="Recipe Name" SortExpression="recipyName" />
                <asp:BoundField DataField="subBy" HeaderText="Submitted By" SortExpression="subBy" />
                <asp:HyperLinkField HeaderText="Detail View" SortExpression="ID" Text="Select" DataNavigateUrlFields="ID" DataNavigateUrlFormatString="DetailsView.aspx?ID={0}" />
            </Columns>
        </asp:GridView>

        </center>
    </div>
    <br />
        <br />

        <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>
        <div id="footer">
         <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &copy; <asp:Label ID="lblCopy" runat="server" Text=""></asp:Label>&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development&nbsp; </p>

       </div>

    </div>
    </form>
</body>
</html>
