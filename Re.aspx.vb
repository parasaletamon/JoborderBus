Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Linq.Expressions
Imports Common.Page
Imports Core.Admin

Partial Class Re
    Inherits BasePage

    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim bllemp As Employee
    Dim userid As String
    Dim blldj As Docujob

    'Protected Sub Initailize()

    '    If IIf(IsNothing(Session("emp_Username")), Nothing, Session("emp_Username")) = Nothing Then
    '        Session.RemoveAll()
    '        Response.Redirect("re.aspx")


    '    Else
    '        userid = Session("emp_Username").ToString()
    '    End If

    'End Sub

    Protected Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles Button1.Click


        Try
            SaveData()
            ClearControl()

        Catch ex As Exception

        End Try

    End Sub

    Private Sub SaveData()

        Dim newId As Integer = 0

        Try

            bllemp.Create_Employee(txtusername.Text.Trim(), Txtpassword.Text.Trim(), txtname.Text.Trim(), Txtemail.Text.Trim(), ddl1.SelectedValue.Trim(), ddl2.SelectedValue.Trim(), Txtrole.Text.Trim(), Txtsta.Text.Trim())

        Catch ex As Exception

        End Try
    End Sub

    Private Sub Re_Load(sender As Object, e As EventArgs) Handles Me.Load

        Try
            'Initailize()


            'BindBuild()
            ClearControl()


        Catch ex As Exception

        End Try
    End Sub


    Private Sub ClearControl()
        Try


            txtusername.Text = ""
            Txtpassword.Text = ""
            txtname.Text = ""
            Txtemail.Text = ""


            ddl2.SelectedValue = 0

        Catch ex As Exception

        End Try
    End Sub

    'Private Sub BindBuild()

    '    Dim dt As New DataTable

    '    dt.Columns.Add("bu_id")
    '    dt.Columns.Add("bu_name")
    '    Dim dr As DataRow

    '    Try


    '        dt = blldj.ddl_Bu()

    '        If dt.Rows.Count > 0 Then

    '            dr = dt.NewRow()
    '            dr("bu_name") = ""
    '            dr("bu_id") = "0"
    '            dt.Rows.InsertAt(dr, 0)



    '            ddl2.DataSource = dt
    '            ddl2.DataTextField = "bu_name"
    '            ddl2.DataValueField = "bu_id"
    '            ddl2.DataBind()


    '        End If
    '    Catch ex As Exception
    '        Throw ex
    '    Finally
    '        dt.Dispose()
    '    End Try
    'End Sub
End Class
