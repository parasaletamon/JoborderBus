Imports System.Data
Imports Core.Admin
Imports System.Data.SqlClient

Imports Common.Page
Imports System.Windows
Imports System.Net.Mail
Imports System.Activities.Statements
Imports System.Drawing
Imports Microsoft.Office.Interop.Outlook
Imports System.Exception
Imports Exception = System.Exception
Imports FxResources.System
Imports Newtonsoft.Json.Linq
Imports System.Data.Entity.Core.Metadata.Edm
Imports System.Data.Entity.Migrations
Imports System.Net
Imports System.Web
Imports System.Collections.Specialized
Imports System.IO
Imports System.Text


Partial Class Joborder
    Inherits BasePage

    Dim OutlookMessage As Microsoft.Office.Interop.Outlook.MailItem
    Dim OutlookApplication As Microsoft.Office.Interop.Outlook.Application

    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim blldj As New Docujob
    Dim clsuser As New UserLogin
    Dim userid As String
    Dim dt As New DataTable
    Dim myp As Object
    Dim commandText As String = ""
    Dim mode As String



    Protected Sub Initailize()

        If IIf(IsNothing(Session("emp_Username")), Nothing, Session("emp_Username")) = Nothing Then
            Session.RemoveAll()
            Response.Redirect("Login.aspx")


        Else
            userid = Session("emp_Username").ToString()
        End If

    End Sub


    Protected Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Me.Load



        Try
            Initailize()
            If Not IsPostBack Then


                Txtjobid.Text = GetJobID()
                BindBuilding()
                BindType()
                Bindit()
                Bindsta()

                ClearControl()

                'Gvjob.DataSource = SqlDataSource1
                Gvjob.DataBind()

            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub SaveData()

        'Dim newId As Integer = 0

        Try


            'If mode.ToUpper() = "VIEW" Then

            blldj.Create_JobOrder(Txtjobid.Text, ddlbu.SelectedValue.Trim(), ddltyp.SelectedValue.Trim(), txtheader.Text.Trim(), txtdetal.Text.Trim(), FileUpload1.FileName.ToString(), ddlit.SelectedValue.Trim(), "", "", "", userid)
            blldj.Update_JobOrder(Txtjobid.Text, ddlbu.SelectedValue.Trim(), ddltyp.SelectedValue.Trim(), txtheader.Text.Trim(), txtdetal.Text.Trim(), FileUpload1.FileName.ToString(), ddlit.SelectedValue.Trim(), "", "", "", userid)

            'File
            '    If Not Session("FileUpload1") Is Nothing Then

            '    If Not Session("filenamebyid1") Is Nothing Then
            '        If Not Session("FileUpload1") Is Nothing Then
            '            File.Delete(Session("filenamebyid1"))
            '        End If
            '    End If


            '    Dim ful As New FileUpload
            '    ful = Session("FileUpload1")
            '    If ful.HasFile Then
            '        Files = New FileInfo(ful.PostedFile.FileName)
            '        strFileType = Files.Name.Split(".")
            '            Session("fileAttach1") = Server.MapPath("\e-Monitor\Files\dg\" + txtheader.Text.ToString() + "." + strFileType(strFileType.Length - 1))
            '            File.Copy(Session("filename1"), Session("fileAttach1"))
            '        File.Delete(Session("filename1"))
            '    End If
            '    bllDocGuarantee.UpdateAttachFile(txtid.Text, txtDoc_code.Text.ToString() + "." + strFileType(strFileType.Length - 1))
            'End If


            'Else

            '    newId = bllDocGuarantee.CreateDocGuarantee(ddlCust.SelectedValue.Trim, ddllease.SelectedValue.Trim, txtDoc_code.Text, txtdocNo.Text, ConvertDateTime(txtdocdate.Text),
            '                                               ddlBank.SelectedValue.Trim, ddlType.SelectedValue.Trim, ConvertDateTime(txtperiod_from.Text), ConvertDateTime(txtperiod_to.Text),
            '                                               txtperiod.Text, Convert.ToDouble(txtAmount.Text), "", "", ddlDocSta.SelectedValue.Trim, rbosta.SelectedValue, userid)

            '    If Not Session("FileUpload1") Is Nothing Then

            '        Dim ful As New FileUpload
            '        ful = Session("FileUpload1")
            '        If ful.HasFile Then
            '            Files = New FileInfo(ful.PostedFile.FileName)
            '            strFileType = Files.Name.Split(".")
            '            Session("fileAttach1") = Server.MapPath("\e-Monitor\Files\dg\" + txtDoc_code.Text.ToString() + "." + strFileType(strFileType.Length - 1))
            '            File.Copy(Session("filename1"), Session("fileAttach1"))
            '            File.Delete(Session("filename1"))
            '        End If
            '        bllDocGuarantee.UpdateAttachFile(newId, txtDoc_code.Text.ToString() + "." + strFileType(strFileType.Length - 1))
            '    End If


            '  End If

        Catch ex As Exception

        End Try

        'Email
        Try
            OutlookApplication = New Microsoft.Office.Interop.Outlook.Application
            OutlookMessage = OutlookApplication.CreateItem(Microsoft.Office.Interop.Outlook.OlItemType.olMailItem)
            OutlookApplication = CreateObject("Outlook.Application")
            Dim Recipents As Microsoft.Office.Interop.Outlook.Recipient = OutlookMessage.Recipients
            'Recipents.Add(commandText)
            commandText = "62201185@kmitl.ac.th"

            Recipents.Add(commandText)
            OutlookMessage.Subject = txtheader.Text
            OutlookMessage.Body = txtdetal.Text


            myp = "FileUpload1"
            OutlookMessage.Attachments.Add(myp)
            OutlookMessage.Send()
            MsgBox("Sent too ... ")

        Catch ex As Exception


        Finally
            OutlookMessage = Nothing
            OutlookApplication = Nothing
        End Try


        Dim smtp_server As New SmtpClient
        Dim e_mail As New MailMessage
        Try

            smtp_server.UseDefaultCredentials = False
            smtp_server.Credentials = New Net.NetworkCredential("picme44@gmail.com", "62201185@kmitl.ac.th", "PASSWORD!")
            smtp_server.Port = 587
            smtp_server.EnableSsl = True
            smtp_server.Host = "smtp.gmail.com"
            e_mail = New MailMessage()
            e_mail.From = New MailAddress("emp_Email")


            e_mail.Subject = txtheader.Text
            e_mail.IsBodyHtml = False
            e_mail.Body = txtdetal.Text
            smtp_server.Send(e_mail)
            'MsgBox("Email sent,Thx u", MsgBoxStyle.Information)


        Catch ex As Exception
            'MsgBox("Something failed!!", MsgBoxStyle.Critical)
        End Try
    End Sub

    Protected Sub Btnit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btnit.Click
        Try

            SaveData()
            ClearControl()


            Gvjob.DataBind()

        Catch ex As Exception

        End Try



        'Try
        '    Dim dt As New DataTable

        '    Dim apikey = "NzI1ODZhNmE0YTRhNzEzMjc0NjU2YjMzNTkzMTc4MzY="
        '    Dim message = "คุณได้ทำการส่งข้อความปัญหาการทำงานเรียบร้อยแล้ว"
        '    Dim numbers = txtheader.Text
        '    Dim strGet As String
        '    Dim senderName = "กุเองอิดอก"
        '    Dim url As String = "https://api.txtlocal.com/send/?"

        '    strGet = url + "apikey=" + apikey _
        '    + "&numbers=" + numbers _
        '    + "&message=" + WebUtility.UrlEncode(message) _
        '    + "&sender=" + senderName

        '    Dim webClient As New System.Net.WebClient
        '    Dim result As String = webClient.DownloadString(strGet)
        '    Console.WriteLine(result)
        'Catch ex As Exception

        'End Try


        'Dim dt As New DataTable
        'conn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings.Get("ConnectionString"))
        'conn.Open()

        'Dim cmd As New SqlCommand("INSERT INTO dbo.Tbl_Joborder (bu_id,Type_id,Subject,Decription,Attach_file) Values(@bu_id,@Type_id,@Subject,@Decription,@Attach_file)", conn)

        ''dt = blldj.CreateJoborder(ddlbu.Text.Trim(), ddltyp.Text.Trim(), txtheader.Text.Trim(), txtdetal.Text.Trim(), FileUpload1.AllowMultiple)


        'cmd.Parameters.AddWithValue("@bu_id", ddlbu.SelectedValue)
        'cmd.Parameters.AddWithValue("@type_id", ddltyp.SelectedValue)
        'cmd.Parameters.AddWithValue("@Subject", txtheader.Text)

        'cmd.Parameters.AddWithValue("@Decription", txtdetal.Text)
        'cmd.Parameters.AddWithValue("@Attach_file", FileUpload1.FileName)

        ''cmd = New SqlCommand("INSERT INTO Tbl_Joborder values('" & ddlbu.Text & "','" & ddltyp.Text & "','" & txtheader.Text & "','" & txtdetal.Text & "')")

        'cmd.ExecuteNonQuery()
        'conn.Close()
        'cmd.Cancel()

        'gvBib1.DataBind()

        '' MsgBox("DAta Successfull.", MsgBoxStyle.Information, "Success")





    End Sub


    Private Function GetJobID() As String


        Dim MyymId, RId As String
        Dim newjobid As String = ""
        Dim i As Integer

        Try


            dt = blldj.Selectmaxjobid()



            If dt.Rows(0)("job_id") = 0 Then

                newjobid = Date.Now.ToString("yyyyMM", New System.Globalization.CultureInfo("en-US")) + "001"
            Else
                '201901001
                newjobid = dt.Rows(0)("job_id").ToString()
                MyymId = newjobid.Substring(0, 6) '201901
                RId = newjobid.Substring(6, 3) '001

                If Date.Now.ToString("yyyyMM", New System.Globalization.CultureInfo("en-US")).Equals(MyymId) Then
                    '201901
                    i = Convert.ToInt32(RId.ToString()) + 1 '2
                    If i.ToString().Length = 1 Then
                        RId = "00" + i.ToString() '002
                    ElseIf i.ToString().Length = 2 Then
                        RId = "0" + i.ToString()
                    Else
                        RId = i.ToString()
                    End If

                    newjobid = MyymId.ToString() + RId.ToString()

                Else
                    newjobid = Date.Now.ToString("yyyyMM", New System.Globalization.CultureInfo("en-US")) + "001"

                End If
            End If

            Return newjobid


        Catch ex As Exception
            Throw ex
        Finally
            dt.Dispose()
        End Try

    End Function

    Private Sub BindBuilding()

        dt.Columns.Add("bu_id")
        dt.Columns.Add("bu_name")
        Dim dr As DataRow

        Try


            dt = blldj.ddl_Build()

            If dt.Rows.Count > 0 Then

                dr = dt.NewRow()
                dr("bu_name") = ""
                dr("bu_id") = "0"
                dt.Rows.InsertAt(dr, 0)



                ddlbu.DataSource = dt
                ddlbu.DataTextField = "bu_name"
                ddlbu.DataValueField = "bu_id"
                ddlbu.DataBind()


            End If
        Catch ex As Exception
            Throw ex
        Finally
            dt.Dispose()
        End Try
    End Sub


    Private Sub BindType()

        dt.Columns.Add("typ_id")
        dt.Columns.Add("typ_name")
        Dim dr As DataRow

        Try


            dt = blldj.ddl_type()

            ' If dt.Rows.Count > 0 Then

            dr = dt.NewRow()
            dr("typ_name") = ""
            dr("typ_id") = "0"
            dt.Rows.InsertAt(dr, 0)


            ddltyp.DataSource = dt
            ddltyp.DataTextField = "typ_name"
            ddltyp.DataValueField = "typ_id"
            ddltyp.DataBind()


            ' End If
        Catch ex As Exception
            Throw ex
        Finally
            dt.Dispose()
        End Try
    End Sub

    Private Sub Bindit()

        dt.Columns.Add("id")
        dt.Columns.Add("it_name")

        Dim dr As DataRow

        Try


            dt = blldj.ddl_uit()

            ' If dt.Rows.Count > 0 Then

            dr = dt.NewRow()
            dr("it_name") = ""
            dr("id") = "0"
            dt.Rows.InsertAt(dr, 0)


            ddlit.DataSource = dt
            ddlit.DataTextField = "it_name"
            ddlit.DataValueField = "id"
            ddlit.DataBind()


            ' End If
        Catch ex As Exception
            Throw ex
        Finally
            dt.Dispose()
        End Try
    End Sub

    Private Sub Bindsta()

        dt.Columns.Add("id")
        dt.Columns.Add("status_name")

        Dim dr As DataRow

        Try


            dt = blldj.ddl_sta()

            ' If dt.Rows.Count > 0 Then

            dr = dt.NewRow()
            dr("status_name") = ""
            dr("id") = "0"
            dt.Rows.InsertAt(dr, 0)


            ddlit.DataSource = dt
            ddlit.DataTextField = "status_name"
            ddlit.DataValueField = "id"
            ddlit.DataBind()


            ' End If
        Catch ex As Exception
            Throw ex
        Finally
            dt.Dispose()
        End Try
    End Sub

    Private Sub ClearControl()
        Try
            ddlbu.SelectedValue = 0
            ddltyp.SelectedValue = 0
            ddlit.SelectedValue = 0
            ddlsta.SelectedValue = 0

            txtheader.Text = ""
            txtdetal.Text = ""






        Catch ex As Exception

        End Try
    End Sub





End Class
