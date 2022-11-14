Imports System.Data
Imports Core.Admin
Imports Common.Page
Imports System.Data.SqlClient
Imports System.Activities.Statements
Imports System.Windows
Imports System.Configuration
Imports Microsoft.AspNet.Identity
Imports FxResources.System

Partial Class Login

    Inherits BasePage
    ' System.Web.UI.Page



    Dim OutlookMessage As Microsoft.Office.Interop.Outlook.MailItem
    Dim OutlookApplication As Microsoft.Office.Interop.Outlook.Application

    Dim clsuser As New UserLogin
    Dim userID As String
    Dim ds As New DataSet
    Dim dt As New DataTable
    Dim commandText As String = ""
    Dim myp As Object


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            '*** Create Session ***'
            Session.RemoveAll()
            Txtusername.Focus()

        Catch ex As Exception

        End Try
    End Sub

    Private Sub Login_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            '*** Create Session ***'
            Session.RemoveAll()
            Txtusername.Focus()

        Catch ex As Exception

        End Try
    End Sub

    'Send Mail
    Protected Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click




        If IsValid Then
            Dim dt As DataTable
            dt = clsuser.CheckUserPass(Txtusername.Text.Trim(), passTextBox1.Text.Trim())

            If Not IsNothing(dt) Then
                Session("emp_Username") = dt.Rows(0).Item("emp_Username").ToString.Trim
                Session("emp_Password") = dt.Rows(0).Item("emp_Password")

                Response.Redirect("Joborder.aspx")






            Else

                FailureText.Text = "Invalid username or password."
                ErrorMessage.Visible = True


            End If


        End If




        Try
            Dim dt As New DataTable
            dt = clsuser.sendmailJob(Txtusername.Text.Trim(), passTextBox1.Text.Trim())

            OutlookApplication = New Microsoft.Office.Interop.Outlook.Application
            OutlookMessage = OutlookApplication.CreateItem(Microsoft.Office.Interop.Outlook.OlItemType.olMailItem)
            OutlookApplication = CreateObject("outlook.Application")
            Dim Recipents As Microsoft.Office.Interop.Outlook.Recipient = OutlookMessage.Recipients
            Recipents.Add(commandText)
            OutlookMessage.Subject = Txtusername.Text
            OutlookMessage.Body = passTextBox1.Text


            myp = "file"
            OutlookMessage.Attachments.Add(myp)
            OutlookMessage.Send()

        Catch ex As Exception

        Finally
            OutlookMessage = Nothing
            OutlookApplication = Nothing
        End Try



        'dt = clsuser.CheckUserPass(Txtusername.Text, passTextBox1.Text)
        'dt = clsuser.Userlogincheck(Txtusername.Text, passTextBox1.Text)



        'If dt.Rows.Count > 0 Then
        '    MsgBox("สวัสดีคุณ  : " & dt.Rows(0)("emp_Name") & vbNewLine & "ระดับ : " & dt.Rows(0)("emp_role"))
        '    If dt.Rows(0)("emp_role") = "Admin" Then


        '    ElseIf dt.Rows(0)("emp_role") = "User" Then

        '    End If
        'ElseIf Txtusername.Text = "" Or passTextBox1.Text = "" Then
        '    MsgBox("คุณกรอกข้อมูลไม่ครบ", "แจ้งเตือน", MsgBoxResult.Ok)
        '    Txtusername.Focus()
        'Else
        '    MsgBox("ชื่อผู้ใช้ หรือ รหัสผ่านไม่ถูกต้อง", "แจ้งเตือน", MsgBoxResult.Retry)

        '    Txtusername.Focus()
        'End If

        'Dim tmpG_emp_Name = dt.Rows(0)("emp_Name")
        'Dim tmpG_id = dt.Rows(0)("emp_Username")


        'conn.Close()
        'conn = Nothing






        'Me.lbluserids.Visible = True
        'Me.lbluserids.Text = "user/password Error"





        'Try
        '    'dt = clsuser.CheckUserPass(Txtusername.Text, passTextBox1.Text)
        '    'sql = "Select * Tbl_Emplyee WHERE emp_Username ='" & Txtusername.Text & "' ADN emp_password ='" & passTextBox1.Text & "' "
        '    'With dc
        '    '    .CommandType = CommandType.Text
        '    '    .CommandText = sql
        '    '    .Connection = conn
        '    '    dr = .ExecuteReader
        '    '    dr.Read()
        '    '    Session("emp_Username") = dr.Item("emp_Username")
        '    '    Session("em-pwd") = dr.Item("emp_Password")
        '    '    Response.Redirect(" Joborder.aspx")
        '    '    Me.hplLink.NavigateUrl = "Joborder.aspx"

        '    'End With

        'Catch ex As Exception
        '    'Me.lbluserid.Visible = True
        '    'Me.lbluseris.Text = "Username/Password is Error or Wrong"
        'End Try
    End Sub










    Protected Sub btnlogin_Click1(sender As Object, e As EventArgs)

    End Sub
End Class
