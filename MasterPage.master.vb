Imports System.Data.SqlClient
Imports System.Data
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Dim connStr As String = ConfigurationManager.ConnectionStrings("jonny").ConnectionString
    Dim con As New SqlConnection(connStr)
    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        Session.Clear()
        LinkButton3.Text = "Guest"
        LinkButton4.Visible = False

        LinkButton1.Visible = True
        LinkButton2.Visible = True
        Response.Cookies("User").Expires = DateTime.Now.AddDays(-1)
        Response.Cookies("Email").Expires = DateTime.Now.AddDays(-1)
        Response.Redirect("Default.aspx")

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        'Response.Redirect("Register.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Request.Cookies("User") IsNot Nothing) Then
            Dim cookie As HttpCookie = Request.Cookies("User")
            Dim aa As String = cookie.Value
            LinkButton3.Text = aa
            LinkButton4.Visible = True
            LinkButton1.Visible = False
            LinkButton2.Visible = False

            If (Request.Cookies("Email") IsNot Nothing) Then

                Dim cookieemail As HttpCookie = Request.Cookies("Email")
                Dim email As String = cookieemail.Value
                Dim ad As New SqlDataAdapter
                Dim ds As New DataSet
                ad.SelectCommand = New SqlCommand("select count(ID) from  cart where email='" & email & "'", con)
                ad.Fill(ds, "cart")
                 
                LinkButton7.Text = ds.Tables(0).Rows(0)(0).ToString()

            End If

        Else
            LinkButton3.Text = "Guest"
            LinkButton4.Visible = False
            LinkButton1.Visible = True
            LinkButton2.Visible = True
        End If
    End Sub

    Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton5.Click
        'Response.Redirect("Register.aspx")
    End Sub

    Protected Sub LinkButton6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton6.Click
        Response.Redirect("shopcart.aspx")
    End Sub

    Protected Sub LinkButton7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton7.Click
        Response.Redirect("used.aspx")
    End Sub

   
End Class

