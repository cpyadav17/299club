Imports System.Data.SqlClient
Imports System.Data
Partial Class Product
    Inherits System.Web.UI.Page
    Dim connStr As String = ConfigurationManager.ConnectionStrings("Jonny").ConnectionString
    Dim con As New SqlConnection(connStr)

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Try
            Dim Category As String = Request.QueryString("Category")
            Dim SubCategory As String = Request.QueryString("SubCategory")

            Dim adj As New SqlDataAdapter
            Dim dsj As New DataSet
            Dim cmd As New SqlCommand("SELECT  * from Product where cat=@a Subcat=@b and status='Published'", con)
            cmd.Parameters.AddWithValue("@a", Category)
            cmd.Parameters.AddWithValue("@b", SubCategory)
            adj.SelectCommand = cmd
            adj.Fill(dsj, "Product")
            ListView1.DataSource = dsj
            ListView1.DataBind()
        Catch ex As Exception


            Dim adj As New SqlDataAdapter
            Dim dsj As New DataSet
            Dim cmd As New SqlCommand("SELECT  * from Product where status='Published'", con)

            adj.SelectCommand = cmd
            adj.Fill(dsj, "Product")
            ListView1.DataSource = dsj
            ListView1.DataBind()
        End Try

    End Sub
End Class
