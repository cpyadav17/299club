Imports System.Data.SqlClient
Imports System.Data
Partial Class shopcart
    Inherits System.Web.UI.Page
    Dim connStr As String = ConfigurationManager.ConnectionStrings("Jonny").ConnectionString
    Dim con As New SqlConnection(connStr)
    Dim strQuery As String = String.Empty


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If (Request.Cookies("Email") IsNot Nothing) Then
            Dim cookie As HttpCookie = Request.Cookies("Email")
            Dim email As String = cookie.Value

            Dim ad As New SqlDataAdapter
            Dim ds As New DataSet
            ad.SelectCommand = New SqlCommand("select * from cart where email='" & email & "'", con)
            ad.Fill(ds, "cart")
            GridView1.DataSource = ds
            GridView1.DataBind()

        End If

       

    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
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


    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Try



            Dim cookieEm As HttpCookie = Request.Cookies("Email")
            Dim useremail As String = cookieEm.Value

            Dim adf As New SqlDataAdapter
            Dim dsf As New DataSet
            adf.SelectCommand = New SqlCommand("select * from  cart where email='" & useremail & "'", con)
            adf.Fill(dsf, "cart")

            If dsf.Tables(0).Rows.Count = 0 Then
                Label1.Text = "Cart is empty"
            Else
                Response.Redirect("Checkout.aspx")
            End If
        Catch ex As Exception

        End Try

    End Sub


End Class
