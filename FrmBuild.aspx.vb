Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.Owin.Security
Imports System.Data
Imports System.IO
Imports Core.Admin
Imports Common.Page
Imports Microsoft.VisualBasic.ApplicationServices

Partial Class FrmBuild
    Inherits System.Web.UI.Page
    Dim ds As New DataSet

    Dim bllLogin As New UserLogin
    Dim userid As String
    Dim dt As DataTable

    Protected Sub Initailize()

        If IIf(IsNothing(Session("emp_Username")), Nothing, Session("emp_Username")) = Nothing Then
            Session.RemoveAll()
            Response.Redirect("Login.aspx")
        Else
            userid = Session("emp_Username").ToString()

        End If

    End Sub

    Protected Sub Page_Load(sender As System.Object, e As System.EventArgs) Handles Me.Load

        Try
            'userid = Session("emp_Username").ToString()
            Initailize()

        Catch ex As Exception

        End Try


    End Sub

End Class
