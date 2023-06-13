Imports System.Data.SqlClient
Imports System.Data
Partial Class Login
    Inherits System.Web.UI.Page
    Dim connStr As String = ConfigurationManager.ConnectionStrings("jonny").ConnectionString
    Dim con As New SqlConnection(connStr)

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox1.Text = "admin@299club.in" And TextBox2.Text = "299@123#" Then
            Dim aCookie As New HttpCookie("Admin")
            aCookie.Value = "Administrator"
            aCookie.Expires = DateTime.Now.AddDays(1)
            Response.Cookies.Add(aCookie)
            Response.Redirect("./Admin/AdProduct.aspx")

        Else
            Dim cmd As New SqlCommand("select name from Login where email=@a and Pass=@b", con)
            cmd.Parameters.AddWithValue("@a", TextBox1.Text)
            cmd.Parameters.AddWithValue("@b", TextBox2.Text)
            Dim dr As SqlDataReader
            con.Open()
            dr = cmd.ExecuteReader()
            If dr.Read() Then
                Dim kkk As String = dr(0).ToString
                Label4.Visible = False
                con.Close()
                Dim aCookie As New HttpCookie("User")
                aCookie.Value = kkk
                aCookie.Expires = DateTime.Now.AddDays(10)
                Response.Cookies.Add(aCookie)
                Dim Email As New HttpCookie("Email")
                Email.Value = TextBox1.Text
                Email.Expires = DateTime.Now.AddDays(10)
                Response.Cookies.Add(Email)
                Session("cart") = "0"
                Response.Redirect("Default.aspx?user=" & kkk & "")

            Else
                con.Close()
                Label4.Visible = True
                TextBox2.Text = ""
            End If
        End If
    End Sub

    

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim adaa As New SqlDataAdapter
        adaa.SelectCommand = New SqlCommand("select * from Register WHERE name ='" & txtname.Text & "' or email='" & txtemail.Text & "'", con)
        Dim dss1 As New DataSet
        adaa.Fill(dss1, "Register")

        Dim i As Integer = dss1.Tables("Register").Rows.Count()
        If i = 0 Then
            Dim aa As New SqlCommand("INSERT INTO Register values(@a,@b,@c,@d,@e,@f)", con)
            aa.Parameters.AddWithValue("@a", txtname.Text)
            aa.Parameters.AddWithValue("@b", comments.Text)
            aa.Parameters.AddWithValue("@c", txtemail.Text)
            aa.Parameters.AddWithValue("@d", txtcontact.Text)
            aa.Parameters.AddWithValue("@e", p1.Text)
            aa.Parameters.AddWithValue("@f", DateTime.Now.ToString())

            Dim aaa As New SqlCommand("INSERT INTO Login values(@a,@b,@k)", con)
            aaa.Parameters.AddWithValue("@a", txtemail.Text)
            aaa.Parameters.AddWithValue("@b", p1.Text)
            aaa.Parameters.AddWithValue("@k", txtname.Text)
            con.Open()
            aa.ExecuteNonQuery()
            aaa.ExecuteNonQuery()

            con.Close()
            Response.Write("<script>alert('Successful');</script>")
            p1.Text = ""
            txtcontact.Text = ""
            txtemail.Text = ""

            txtname.Text = ""
            comments.Text = ""
        Else
            Label5.Text = "Account Already Exist...!!!"
        End If
        'Try
       


        'If Session("user") IsNot Nothing Then
        '    Dim aa As New SqlCommand("update Register set name=@a,address=@b,email=@c,phone=@d where userid=@e", con)
        '    aa.Parameters.AddWithValue("@e", "")
        '    aa.Parameters.AddWithValue("@a", txtname.Text)
        '    aa.Parameters.AddWithValue("@b", comments.Text)
        '    aa.Parameters.AddWithValue("@c", txtemail.Text)
        '    aa.Parameters.AddWithValue("@d", txtcontact.Text)
        '    Dim aaa As New SqlCommand("update Login set pass=@a where userid=@e", con)
        '    aaa.Parameters.AddWithValue("@a", p1.Text)
        '    aaa.Parameters.AddWithValue("@e", "")
        '    con.Open()
        '    aa.ExecuteNonQuery()
        '    aaa.ExecuteNonQuery()
        '    con.Close()
        '    Response.Write("<script>alert('Successful update');</script>")
        '    Response.Redirect("Default.aspx")
        'End If

        'Label2.Text = "Something Went Wrong..Please Try Again!!!"

    End Sub
   
    
   
End Class
