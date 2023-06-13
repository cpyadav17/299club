Imports System.Data.SqlClient
Imports System.Data
Partial Class FeedBack
    Inherits System.Web.UI.Page
    Dim connStr As String = ConfigurationManager.ConnectionStrings("jonny").ConnectionString
    Dim con As New SqlConnection(connStr)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("user") IsNot Nothing Then
            Dim aa As String = Session("user").ToString
            Dim c As LinkButton = CType(Master.FindControl("LinkButton3"), LinkButton)
            c.Text = aa
            Dim c4 As LinkButton = CType(Master.FindControl("LinkButton4"), LinkButton)
            c4.Visible = True


            Dim l1 As LinkButton = CType(Master.FindControl("LinkButton1"), LinkButton)
            l1.Visible = False
            Dim l2 As LinkButton = CType(Master.FindControl("LinkButton2"), LinkButton)
            l2.Visible = False
        Else
            Dim c As LinkButton = CType(Master.FindControl("LinkButton3"), LinkButton)
            c.Text = "Guest"
            Dim c4 As LinkButton = CType(Master.FindControl("LinkButton4"), LinkButton)
            c4.Visible = False

            Dim l1 As LinkButton = CType(Master.FindControl("LinkButton1"), LinkButton)
            l1.Visible = True
            Dim l2 As LinkButton = CType(Master.FindControl("LinkButton2"), LinkButton)
            l2.Visible = True
        End If
        'Dim ad As New SqlDataAdapter
        'Dim ds As New DataSet
        'ad.SelectCommand = New SqlCommand("select Feed,Name from Feed", con)
        'ad.Fill(ds, "Feed")
        'GridView1.DataSource = ds
        'GridView1.DataBind()
        'GridView1.Attributes.Add("style", "word-break:break-all;word-wrap:break-word")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim aa As New SqlCommand("INSERT INTO Feed values(@a,@b,@c)", con)
        aa.Parameters.AddWithValue("@a", TextBox1.Text)
        aa.Parameters.AddWithValue("@b", TextBox2.Text)
        aa.Parameters.AddWithValue("@c", TextBox3.Text)
        con.Open()
        aa.ExecuteNonQuery()
        con.Close()


        Response.Write("<script>alert('Thank You For UR FEED..:)');</script>")

        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
    
    End Sub
End Class
