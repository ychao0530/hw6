
Partial Class DetailsView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

            Dim addRecipe As String = e.Values("recipyName").ToString()
            'modify the label
            lbladdRecipe.Text = "The record <span class=deletedrecipehighlight> " & addRecipe & "</span> has been added form the database."
            'show the words
            Response.AddHeader("REFRESH", "1;URL=./gridview.aspx")


    End Sub

    Protected Sub DetailsView1_ItemInserting(sender As Object, e As DetailsViewInsertEventArgs) Handles DetailsView1.ItemInserting

        Dim nameRe As String = e.Values("recipyName")
        Dim ing1 As String = e.Values("ing1")
        Dim subName As String = e.Values("subBy")
        Dim prep As String = e.Values("prep")

        If nameRe = "" And ing1 = "" And subName = "" And prep = "" Then
            lblmessageRequired.Text = "<span class=deletedrecipehighlight> You have to fill up all the required cells.</span>"
            Exit Sub
        End If

    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
       
        Response.Redirect("./gridview.aspx")

    End Sub

End Class
