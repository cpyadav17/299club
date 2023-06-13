Imports System.Data.SqlClient
Imports System.Data
Partial Class Career
    Inherits System.Web.UI.Page
    Dim connStr As String = ConfigurationManager.ConnectionStrings("jonny").ConnectionString
    Dim con As New SqlConnection(connStr)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim adf As New SqlDataAdapter
        Dim dsf As New DataSet
        adf.SelectCommand = New SqlCommand("select *  from career", con)
        adf.Fill(dsf, "career")
        dtlist.DataSource = dsf
        dtlist.DataBind()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim path As String = HttpContext.Current.Server.MapPath(".\cv")

        If FileUpload1.HasFile Then


            Dim kl As String = FileUpload1.FileName.ToString
            Dim kll As String = System.IO.Path.GetExtension(FileUpload1.FileName)
            Try

                FileUpload1.SaveAs(path & "\" & _
                  FileUpload1.FileName)


                Dim cmd As New SqlCommand("insert into applicant values(@a,@b,@c,@d,@e)", con)
                cmd.Parameters.AddWithValue("@a", TextBox2.Text)
                cmd.Parameters.AddWithValue("@b", TextBox1.Text)
                cmd.Parameters.AddWithValue("@c", TextBox3.Text)
                cmd.Parameters.AddWithValue("@d", kl)
                cmd.Parameters.AddWithValue("@e", DateTime.Today.ToShortDateString)
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()

                TextBox1.Text = ""
                TextBox2.Text = ""
                TextBox3.Text = ""
                Label12.Text = "Get Back to You soon..."
            Catch ex As Exception

            End Try

        End If
    End Sub

    
End Class
