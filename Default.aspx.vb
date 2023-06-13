Imports System.Data.SqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim connStr As String = ConfigurationManager.ConnectionStrings("Jonny").ConnectionString
    Dim con As New SqlConnection(connStr)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim adj As New SqlDataAdapter
        Dim dsj As New DataSet
        adj.SelectCommand = New SqlCommand("SELECT TOP 12 * from Product where status='Published'", con)
        adj.Fill(dsj, "Product")
        ListView1.DataSource = dsj
        ListView1.DataBind()

      

    End Sub

    Protected Sub ListView1_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ListViewCommandEventArgs) Handles ListView1.ItemCommand
        If e.CommandName = "answer" Then
            Dim index As String = Convert.ToString(e.CommandArgument)

            Dim a As Label = e.Item.FindControl("Label13")

            Response.Redirect("info.aspx?Item=" & a.Text)
        End If
    End Sub
End Class
