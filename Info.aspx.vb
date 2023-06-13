Imports System.Data.SqlClient
Imports System.Data
Partial Class Info
    Inherits System.Web.UI.Page
    Dim connStr As String = ConfigurationManager.ConnectionStrings("jonny").ConnectionString
    Dim con As New SqlConnection(connStr)
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim kk As Integer = CInt(Request.QueryString("Item"))
        Dim adj3 As New SqlDataAdapter
        Dim dsj3 As New DataSet
        adj3.SelectCommand = New SqlCommand("select * from Product where ID='" & kk & "'", con)
        adj3.Fill(dsj3, "Product")
        Title1.Text = dsj3.Tables(0).Rows(0)(1).ToString

        price.Text = dsj3.Tables(0).Rows(0)(8).ToString
        Image1.ImageUrl = "./Product/" & dsj3.Tables(0).Rows(0)(13).ToString
        Image2.ImageUrl = "./Product/" & dsj3.Tables(0).Rows(0)(13).ToString

        DataList1.DataSource = dsj3
        DataList1.DataBind()
        Dim ad As New SqlDataAdapter
        Dim ds As New DataSet
        ad.SelectCommand = New SqlCommand("select top 4 *  from Product where cat='" & dsj3.Tables(0).Rows(0)(10).ToString & "' and Subcat='" & dsj3.Tables(0).Rows(0)(11).ToString & "' and status='Published'", con)
        ad.Fill(ds, "Product")

        ListView1.DataSource = dsj3
        ListView1.DataBind()

        Label1.Text = dsj3.Tables(0).Rows(0)(3).ToString

        Dim adg As New SqlDataAdapter
        Dim dsg As New DataSet
        adg.SelectCommand = New SqlCommand("select *  from ProductSnap where ID='" & kk & "'", con)
        adg.Fill(dsg, "ProductSnap")
        ImageButton10.ImageUrl = "./Product/" & dsg.Tables(0).Rows(0)(1).ToString
        ImageButton2.ImageUrl = "./Product/" & dsg.Tables(0).Rows(0)(2).ToString
        ImageButton3.ImageUrl = "./Product/" & dsg.Tables(0).Rows(0)(3).ToString
        ImageButton4.ImageUrl = "./Product/" & dsg.Tables(0).Rows(0)(4).ToString
        ImageButton5.ImageUrl = "./Product/" & dsg.Tables(0).Rows(0)(5).ToString
        ImageButton6.ImageUrl = "./Product/" & dsg.Tables(0).Rows(0)(6).ToString
        ImageButton7.ImageUrl = "./Product/" & dsg.Tables(0).Rows(0)(7).ToString
        ImageButton8.ImageUrl = "./Product/" & dsg.Tables(0).Rows(0)(8).ToString
        ImageButton9.ImageUrl = "./Product/" & dsg.Tables(0).Rows(0)(9).ToString

    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click


        Dim ItemID As Integer = CInt(Request.QueryString("Item"))
        Try


            Dim cookie As HttpCookie = Request.Cookies("User")
            Dim username As String = cookie.Value
            Dim cookieEm As HttpCookie = Request.Cookies("Email")
            Dim useremail As String = cookieEm.Value



            Dim cmd As New SqlCommand("select * from cart where email=@a and ID=@b", con)
            cmd.Parameters.AddWithValue("@a", useremail)
            cmd.Parameters.AddWithValue("@b", ItemID)
            Dim dr As SqlDataReader
            con.Open()
            dr = cmd.ExecuteReader()
            If dr.Read() Then
                con.Close()
                errorr.Text = "Item Already Exist in the Cart"

            Else
                con.Close()
                Dim aa As New SqlCommand("INSERT INTO cart values(@a,@b,@c,@d,@e,@f)", con)
                aa.Parameters.AddWithValue("@a", useremail)
                aa.Parameters.AddWithValue("@b", ItemID)
                aa.Parameters.AddWithValue("@c", Title1.Text)
                aa.Parameters.AddWithValue("@d", price.Text)
                aa.Parameters.AddWithValue("@e", "1")
                aa.Parameters.AddWithValue("@f", Label1.Text)

                con.Open()
                aa.ExecuteNonQuery()
                con.Close()
                errorr.Text = "Item Added to Cart"
                errorr.ForeColor = Drawing.Color.Green


            End If




        Catch ex As Exception
            Response.Redirect("Login.aspx")
        End Try




    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Image1.ImageUrl = ImageButton2.ImageUrl
        Image2.ImageUrl = ImageButton2.ImageUrl
    End Sub

    Protected Sub ImageButton10_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton10.Click
        Image1.ImageUrl = ImageButton10.ImageUrl
        Image2.ImageUrl = ImageButton10.ImageUrl
    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click
        Image1.ImageUrl = ImageButton3.ImageUrl
        Image2.ImageUrl = ImageButton3.ImageUrl
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton4.Click
        Image1.ImageUrl = ImageButton4.ImageUrl
        Image2.ImageUrl = ImageButton4.ImageUrl
    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton5.Click
        Image1.ImageUrl = ImageButton5.ImageUrl
        Image2.ImageUrl = ImageButton5.ImageUrl
    End Sub

    Protected Sub ImageButton6_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton6.Click
        Image1.ImageUrl = ImageButton6.ImageUrl
        Image2.ImageUrl = ImageButton6.ImageUrl
    End Sub

    Protected Sub ImageButton7_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton7.Click
        Image1.ImageUrl = ImageButton7.ImageUrl
        Image2.ImageUrl = ImageButton7.ImageUrl
    End Sub

    Protected Sub ImageButton8_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton8.Click
        Image1.ImageUrl = ImageButton8.ImageUrl
        Image2.ImageUrl = ImageButton8.ImageUrl
    End Sub

    Protected Sub ImageButton9_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton9.Click
        Image1.ImageUrl = ImageButton9.ImageUrl
        Image2.ImageUrl = ImageButton9.ImageUrl
    End Sub
End Class
