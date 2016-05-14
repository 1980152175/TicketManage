
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PassengerManage.aspx.cs" Inherits="TicketManage.Admin.PassengerManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" Conten<asp:GridView ID="GridView1" runat="server" AllowPaging="True"    AutoGenerateColumns ="False" DataKeyNames="PassengerId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="PassengerId" HeaderText="PassengerId" InsertVisible="False" ReadOnly="True" SortExpression="PassengerId" />
            <asp:BoundField DataField="PassengerName" HeaderText="PassengerName" SortExpression="PassengerName" />
            <asp:BoundField DataField="UserTypeId" HeaderText="UserTypeId" SortExpression="UserTypeId" />
            <asp:BoundField DataField="IdentityNum" HeaderText="IdentityNum" SortExpression="IdentityNum" />
            <asp:BoundField DataField="Telphone" HeaderText="Telphone" SortExpression="Telphone" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
        </Columns>
    </asp:GridView>tPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Conn %>" DeleteCommand="DELETE FROM [Passenger] WHERE [PassengerId] = @original_PassengerId AND (([PassengerName] = @original_PassengerName) OR ([PassengerName] IS NULL AND @original_PassengerName IS NULL)) AND (([UserTypeId] = @original_UserTypeId) OR ([UserTypeId] IS NULL AND @original_UserTypeId IS NULL)) AND (([IdentityNum] = @original_IdentityNum) OR ([IdentityNum] IS NULL AND @original_IdentityNum IS NULL)) AND (([Telphone] = @original_Telphone) OR ([Telphone] IS NULL AND @original_Telphone IS NULL)) AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL))" InsertCommand="INSERT INTO [Passenger] ([PassengerName], [UserTypeId], [IdentityNum], [Telphone], [UserId]) VALUES (@PassengerName, @UserTypeId, @IdentityNum, @Telphone, @UserId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Passenger]" UpdateCommand="UPDATE [Passenger] SET [PassengerName] = @PassengerName, [UserTypeId] = @UserTypeId, [IdentityNum] = @IdentityNum, [Telphone] = @Telphone, [UserId] = @UserId WHERE [PassengerId] = @original_PassengerId AND (([PassengerName] = @original_PassengerName) OR ([PassengerName] IS NULL AND @original_PassengerName IS NULL)) AND (([UserTypeId] = @original_UserTypeId) OR ([UserTypeId] IS NULL AND @original_UserTypeId IS NULL)) AND (([IdentityNum] = @original_IdentityNum) OR ([IdentityNum] IS NULL AND @original_IdentityNum IS NULL)) AND (([Telphone] = @original_Telphone) OR ([Telphone] IS NULL AND @original_Telphone IS NULL)) AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PassengerId" Type="Int32" />
            <asp:Parameter Name="original_PassengerName" Type="String" />
            <asp:Parameter Name="original_UserTypeId" Type="Int32" />
            <asp:Parameter Name="original_IdentityNum" Type="String" />
            <asp:Parameter Name="original_Telphone" Type="String" />
            <asp:Parameter Name="original_UserId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PassengerName" Type="String" />
            <asp:Parameter Name="UserTypeId" Type="Int32" />
            <asp:Parameter Name="IdentityNum" Type="String" />
            <asp:Parameter Name="Telphone" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PassengerName" Type="String" />
            <asp:Parameter Name="UserTypeId" Type="Int32" />
            <asp:Parameter Name="IdentityNum" Type="String" />
            <asp:Parameter Name="Telphone" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
            <asp:Parameter Name="original_PassengerId" Type="Int32" />
            <asp:Parameter Name="original_PassengerName" Type="String" />
            <asp:Parameter Name="original_UserTypeId" Type="Int32" />
            <asp:Parameter Name="original_IdentityNum" Type="String" />
            <asp:Parameter Name="original_Telphone" Type="String" />
            <asp:Parameter Name="original_UserId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
