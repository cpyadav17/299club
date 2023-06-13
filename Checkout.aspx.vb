Imports System.Data.SqlClient
Imports System.Data
Partial Class Checkout
    Inherits System.Web.UI.Page
    Dim connStr As String = ConfigurationManager.ConnectionStrings("Jonny").ConnectionString
    Dim con As New SqlConnection(connStr)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Request.Cookies("Email") IsNot Nothing) Then
            Dim cookie As HttpCookie = Request.Cookies("Email")
            Dim email As String = cookie.Value

            Dim ad As New SqlDataAdapter
            Dim ds As New DataSet
            ad.SelectCommand = New SqlCommand("select * from cart where email='" & email & "'", con)
            ad.Fill(ds, "cart")
            GridView1.DataSource = ds
            GridView1.DataBind()

            Dim adf As New SqlDataAdapter
            Dim dsf As New DataSet
            adf.SelectCommand = New SqlCommand("select * from  Register where email='" & email & "'", con)
            adf.Fill(dsf, "Register")

            TextBox1.Text = dsf.Tables(0).Rows(0)(0).ToString()
            TextBox2.Text = dsf.Tables(0).Rows(0)(2).ToString()
            TextBox3.Text = dsf.Tables(0).Rows(0)(3).ToString()
            TextBox4.Text = dsf.Tables(0).Rows(0)(1).ToString()


            Dim adt As New SqlDataAdapter
            Dim dst As New DataSet
            adt.SelectCommand = New SqlCommand("select sum(Rate) from  cart where email='" & email & "'", con)
            adt.Fill(dst, "cart")
            total.Text = dst.Tables(0).Rows(0)(0).ToString()

        End If
    End Sub

    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "deletee" Then
            If (Request.Cookies("Email") IsNot Nothing) Then

                Dim cookie As HttpCookie = Request.Cookies("Email")
                Dim email As String = cookie.Value
                Try

                    Dim rowIndex As Integer = Convert.ToInt32(e.CommandArgument)
                    Dim row As GridViewRow = GridView1.Rows(rowIndex)

                    Dim Itemm As String = GridView1.Rows(e.CommandArgument).Cells(0).Text

                    Dim cm As New SqlCommand("delete from cart WHERE ID=@c and email=@a", con)

                    cm.Parameters.AddWithValue("@c", Itemm)
                    cm.Parameters.AddWithValue("@a", email)
                    con.Open()
                    cm.ExecuteNonQuery()
                    con.Close()


                    Dim adf As New SqlDataAdapter
                    Dim dsf As New DataSet
                    adf.SelectCommand = New SqlCommand("select * from  cart where email='" & email & "'", con)
                    adf.Fill(dsf, "cart")
                    GridView1.DataSource = dsf
                    GridView1.DataBind()


                    Dim ad12 As New SqlDataAdapter
                    Dim ds12 As New DataSet
                    ad12.SelectCommand = New SqlCommand("select count(ID) from  cart where email='" & email & "'", con)
                    ad12.Fill(ds12, "cart")

                    Dim op As LinkButton = CType(Master.FindControl("LinkButton7"), LinkButton)
                    op.Text = ds12.Tables(0).Rows(0)(0).ToString()



                Catch ex As Exception

                End Try
            End If
        End If
    End Sub

    

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Dim aaa As Integer
        Try

            Dim adg As New SqlDataAdapter
            Dim dsg As New DataSet
            adg.SelectCommand = New SqlCommand("select max(ID) from Orders", con)

            adg.Fill(dsg, "Orders")

            aaa = CInt(dsg.Tables("Orders").Rows(0)(0).ToString) + 1

        Catch ex As Exception
            aaa = 1001

        End Try



        Dim cookieEm As HttpCookie = Request.Cookies("Email")
        Dim useremail As String = cookieEm.Value

        Dim adf As New SqlDataAdapter
        Dim dsf As New DataSet
        adf.SelectCommand = New SqlCommand("select * from  cart where email='" & useremail & "'", con)
        adf.Fill(dsf, "cart")

        For i = 0 To dsf.Tables(0).Rows.Count - 1

            Dim aa As New SqlCommand("INSERT INTO Orders values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@ii,@k,SWITCHOFFSET(SYSDATETIMEOFFSET(), '+05:30'))", con)
            aa.Parameters.AddWithValue("@a", aaa)
            aa.Parameters.AddWithValue("@b", dsf.Tables(0).Rows(i)(1).ToString)
            aa.Parameters.AddWithValue("@c", dsf.Tables(0).Rows(i)(2).ToString)
            aa.Parameters.AddWithValue("@d", dsf.Tables(0).Rows(i)(3).ToString)
            aa.Parameters.AddWithValue("@e", dsf.Tables(0).Rows(i)(4).ToString)
            aa.Parameters.AddWithValue("@f", dsf.Tables(0).Rows(i)(5).ToString)
            aa.Parameters.AddWithValue("@g", TextBox1.Text)
            aa.Parameters.AddWithValue("@h", TextBox2.Text)
            aa.Parameters.AddWithValue("@i", TextBox3.Text)

            aa.Parameters.AddWithValue("@j", TextBox4.Text)
            aa.Parameters.AddWithValue("@ii", TextBox5.Text)
            aa.Parameters.AddWithValue("@k", "Completed")

            con.Open()
            aa.ExecuteNonQuery()
            con.Close()


        Next


        Dim cm As New SqlCommand("delete from cart WHERE email=@a", con)
        cm.Parameters.AddWithValue("@a", useremail)
        con.Open()
        cm.ExecuteNonQuery()
        con.Close()

        Response.Redirect("Thankyou.aspx")
    End Sub
End Class
