
Partial Class Contact
    Inherits System.Web.UI.Page

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
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

    End Sub
End Class
