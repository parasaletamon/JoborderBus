Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.Owin.Security
Imports System.Data
Imports Core.Admin
Imports Common.Page
Imports System.Data.SqlClient

Partial Class Frmuser
    Inherits BasePage

    Dim bllcust As New Customer
    Dim conn As New SqlConnection
    Dim userid As String
    Dim mode As String
    Dim _id As String
    Dim cont_id As String
    Dim lease_id As String
    Dim emp As String
    Dim dt As DataTable


    Protected Sub Initailize()

        If IIf(IsNothing(Session("emp_Username")), Nothing, Session("emp_Username")) = Nothing Then
            Session.RemoveAll()
            Response.Redirect("Login.aspx")

        Else
            userid = Session("emp_Username").ToString()
        End If

        Session.Remove("")
        Session.Remove("")
        Session.Remove("")
        Session.Remove("")
        Session.Remove("")
        Session.Remove("")
        Session.Remove("")

    End Sub

    Private Sub Clearcontro()
        Try
            Txtuid.Text = ""
            Txtusername.Text = ""
            Txtemail.Text = ""
            Txtdept.Text = ""
            Txtpass.Text = ""
            Txtsuper.Text = ""

        Catch ex As Exception

        End Try
    End Sub

    Private Sub BindData(ByVal id As String)
        Dim dts As New DataTable
        Try
            dts = bllcust.SelectCustomerById(id)
            If dts.Rows.Count > 0 Then
                Txtemail.Text = dts.Rows(0)("")
            End If
        Catch ex As Exception

        End Try
    End Sub


    'Private Sub Bind(ByVal page As Integer)

    '    Dim dt As New DataTable
    '    Try
    '        dt = bllcust.SelectAllCustomer(Txtusername.Text, Txtemail.Text, )
    '    Catch ex As Exception

    '    End Try
    '    dvSearch.CurrentPageIndex = page
    '    dvSearch.DataSource = dt
    '    dvSearch.DataBind()


    'End Sub


    Protected Sub Page_Load(sender As System.Object, e As System.EventArgs) Handles Me.Load

        Try
            userid = Session("emp_Username").ToString()
            Initailize()

        Catch ex As Exception

        End Try



    End Sub




End Class
