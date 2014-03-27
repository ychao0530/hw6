<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipy.aspx.vb" Inherits="DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yahong Ding</title>
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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_RecipyWeb %>" DeleteCommand="DELETE FROM [Table] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Table] ([recipyName], [subBy], [ing1], [ing2], [ing3], [ing4], [ing5], [prep], [note]) VALUES (@recipyName, @subBy, @ing1, @ing2, @ing3, @ing4, @ing5, @prep, @note)" ProviderName="<%$ ConnectionStrings:cs_RecipyWeb.ProviderName %>" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [recipyName] = @recipyName, [subBy] = @subBy, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [prep] = @prep, [note] = @note WHERE [ID] = @ID">
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

            <asp:Label ID="lbladdRecipe" runat="server" Text=""></asp:Label>

            <asp:Label ID="lblmessageRequired" runat="server" Text=""></asp:Label>

             <br />

        <asp:DetailsView ID="DetailsView1" runat="server" CSSClass="cc" 
            AlternatingRowStyle-CssClass="alt" 
            FieldHeaderStyle-CssClass="ccfieldheader"
            ItemStyle-CssClass="ccitem"
            PagerStyle-CssClass="ccpager"
            CommandRowStyle-CssClass="cccommand"
            AllowPaging="True" 
            AutoGenerateRows="False" AutoGenerateColumns="False"  
            DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="500px" 
            DefaultMode="Insert">
            <AlternatingRowStyle CssClass="alt" />

<CommandRowStyle CssClass="cccommand"></CommandRowStyle>

<FieldHeaderStyle CssClass="ccfieldheader"></FieldHeaderStyle>
            <Fields>
                <asp:BoundField DataField="recipyName" ItemStyle-CssClass="textright"  HeaderText="Recipe Name" SortExpression="recipyName" >
<ItemStyle CssClass="textright"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="subBy" ItemStyle-CssClass="textright" HeaderText="Submitted By" SortExpression="subBy" >
<ItemStyle CssClass="textright"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ing1" ItemStyle-CssClass="textright" HeaderText="Ingredient #1" SortExpression="ing1" >
<ItemStyle CssClass="textright"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ing2" ItemStyle-CssClass="textright" HeaderText="Ingredient #2" SortExpression="ing2" >
<ItemStyle CssClass="textright"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ing3" ItemStyle-CssClass="textright" HeaderText="Ingredient #3" SortExpression="ing3" >
<ItemStyle CssClass="textright"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ing4" ItemStyle-CssClass="textright"  HeaderText="Ingredient #4" SortExpression="ing4" >
<ItemStyle CssClass="textright"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ing5" ItemStyle-CssClass="textright" HeaderText="Ingredient #5" SortExpression="ing5" >
<ItemStyle CssClass="textright"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="prep" ItemStyle-CssClass="textright" HeaderText="Preparation" SortExpression="prep" >
<ItemStyle CssClass="textright"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="note" ItemStyle-CssClass="textright" HeaderText="Note" SortExpression="note" >
<ItemStyle CssClass="textright"></ItemStyle>
                </asp:BoundField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>

<PagerStyle CssClass="ccpager"></PagerStyle>
        </asp:DetailsView>
        </center>
       
    </div>
       <div id="footer">
         <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &copy; 2014 &nbsp; &nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</p>

       </div>


    </div>
    </form>
</body>
</html>
