
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true"CodeBehind="UserTypeManage.aspx.cs" Inherits="TicketManage.Admin.UserTypeManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/TableStyle.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserTypeId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="UserTypeId" HeaderText="用户类型号" InsertVisible="False" ReadOnly="True" SortExpression="UserTypeId" />
            <asp:BoundField DataField="UserTypeContent" HeaderText="用户类型内容" SortExpression="UserTypeContent" />
            <asp:BoundField DataField="UserTypeDiscount" HeaderText="类型对应的折扣" SortExpression="UserTypeDiscount" />
        </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TicketManageConnectionString2 %>" DeleteCommand="DELETE FROM [UserType] WHERE [UserTypeId] = @original_UserTypeId AND (([UserTypeContent] = @original_UserTypeContent) OR ([UserTypeContent] IS NULL AND @original_UserTypeContent IS NULL)) AND (([UserTypeDiscount] = @original_UserTypeDiscount) OR ([UserTypeDiscount] IS NULL AND @original_UserTypeDiscount IS NULL))" InsertCommand="INSERT INTO [UserType] ([UserTypeContent], [UserTypeDiscount]) VALUES (@UserTypeContent, @UserTypeDiscount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserType]" UpdateCommand="UPDATE [UserType] SET [UserTypeContent] = @UserTypeContent, [UserTypeDiscount] = @UserTypeDiscount WHERE [UserTypeId] = @original_UserTypeId AND (([UserTypeContent] = @original_UserTypeContent) OR ([UserTypeContent] IS NULL AND @original_UserTypeContent IS NULL)) AND (([UserTypeDiscount] = @original_UserTypeDiscount) OR ([UserTypeDiscount] IS NULL AND @original_UserTypeDiscount IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_UserTypeId" Type="Int32" />
            <asp:Parameter Name="original_UserTypeContent" Type="String" />
            <asp:Parameter Name="original_UserTypeDiscount" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserTypeContent" Type="String" />
            <asp:Parameter Name="UserTypeDiscount" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserTypeContent" Type="String" />
            <asp:Parameter Name="UserTypeDiscount" Type="String" />
            <asp:Parameter Name="original_UserTypeId" Type="Int32" />
            <asp:Parameter Name="original_UserTypeContent" Type="String" />
            <asp:Parameter Name="original_UserTypeDiscount" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    </asp:Content>