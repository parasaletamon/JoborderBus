Imports System
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Imports System.Web.UI
Imports System.Security.Policy
Imports ASP

Partial Public Class MasterPage
    Inherits System.Web.UI.MasterPage

    Private Const AntiXsrfTokenKey As String = "__AntiXsrfToken"
    Private Const AntiXsrfUserNameKey As String = "__AntiXsrfUserName"
    Private _antiXsrfTokenValue As String
    'Dim conn As New SqlConnection
    'Dim cmd As SqlCommand
    'Dim adp As SqlDataAdapter
    'Dim commandText As String = ""
    'Dim receffected As Integer = 0
    'Dim dc As SqlCommand
    'Dim dr As SqlDataReader

    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Try
            If Not Session("user") Is Nothing Then
                liJob.Visible = True

                liFrmBuild.Visible = True
                liFrmUser.Visible = True
                lbluserids.Text = Session("user")

            End If
        Catch ex As Exception

        End Try
    End Sub
End Class

