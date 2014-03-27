<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wicked Easy Recipes</title>
        <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form runat="server">
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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_RecipyWeb %>" DeleteCommand="DELETE FROM [Table] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Table] ([recipyName], [subBy], [ing1], [ing2], [ing3], [ing4], [ing5], [prep], [note]) VALUES (@recipyName, @subBy, @ing1, @ing2, @ing3, @ing4, @ing5, @prep, @note)" SelectCommand="SELECT * FROM [Table] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [Table] SET [recipyName] = @recipyName, [subBy] = @subBy, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [prep] = @prep, [note] = @note WHERE [ID] = @ID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
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

            <asp:Label ID="lbldelRecipe" runat="server" Text=""></asp:Label>

        <asp:DetailsView ID="DetailsView1" runat="server" CSSClass="cc" 
            Headerstyle-CssClass="ccheader"
            FieldHeaderStyle-CssClass="ccfieldheader"
            ItemStyle-CssClass="ccitem"
            PagerStyle-CssClass="ccpager"
            CommandRowStyle-CssClass="cccommand"
            AlternatingRowStyle-CssClass="alt" AlternatingColumnStyle-CssClass="col" 
            AutoGenerateColumns="False" AllowPaging="True"  AutoGenerateRows="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="500px"
            >
            <Fields>
                <asp:BoundField DataField="recipyName" HeaderText="Recipe Name" SortExpression="recipyName"   />
                <asp:BoundField DataField="subBy" HeaderText="Submitted By" SortExpression="subBy" />
                <asp:BoundField DataField="ing1" HeaderText="Ingredient #1" SortExpression="ing1" />
                <asp:BoundField DataField="ing2" HeaderText="Ingredient #2" SortExpression="ing2" />
                <asp:BoundField DataField="ing3" HeaderText="Ingredient #3" SortExpression="ing3" />
                <asp:BoundField DataField="ing4" HeaderText="Ingredient #4" SortExpression="ing4" />
                <asp:BoundField DataField="ing5" HeaderText="Ingredient #5" SortExpression="ing5" />
                <asp:BoundField DataField="prep" HeaderText="Preparation" SortExpression="prep" />
                <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        </center>
        <br />
    
    </div>
        <div id="footer">
         <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &copy; <asp:Label ID="lblCopyD" runat="server" Text=""></asp:Label>&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</p>

       </div>
        
    </div>
    </form>
</body>
</html>
