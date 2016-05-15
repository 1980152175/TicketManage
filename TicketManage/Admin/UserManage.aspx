

     <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserManage.aspx.cs" Inherits="TicketManage.Admin.UserManage" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="CSS/TableStyle.css" rel="stylesheet" />
        </asp:Content>
        <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
      <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" >
        <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="用户标识号" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="UserTypeId" HeaderText="用户类型号" SortExpression="UserTypeId" />
        <asp:BoundField DataField="UserName" HeaderText="用户名" SortExpression="UserName" />
        <asp:BoundField DataField="LoginName" HeaderText="登录名" SortExpression="LoginName" />
        <asp:BoundField DataField="Password" HeaderText="密码" SortExpression="Password" />
        <asp:BoundField DataField="IdentityNum" HeaderText="身份证号" SortExpression="IdentityNum" />
        <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
        <asp:BoundField DataField="Birthday" HeaderText="出生日期" SortExpression="Birthday" />
        <asp:BoundField DataField="Age" HeaderText="年龄" SortExpression="Age" />
        <asp:BoundField DataField="Telphone" HeaderText="电话号码" SortExpression="Telphone" />
        <asp:BoundField DataField="Email" HeaderText="邮箱" SortExpression="Email" />
        <asp:BoundField DataField="QuestionTypeId" HeaderText="问题类型" SortExpression="QuestionTypeId" />
        <asp:BoundField DataField="Answer" HeaderText="问题答案" SortExpression="Answer" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TicketManageConnectionString %>" DeleteCommand="DELETE FROM [UserInfo] WHERE [Id] = @original_Id AND (([UserTypeId] = @original_UserTypeId) OR ([UserTypeId] IS NULL AND @original_UserTypeId IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([LoginName] = @original_LoginName) OR ([LoginName] IS NULL AND @original_LoginName IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([IdentityNum] = @original_IdentityNum) OR ([IdentityNum] IS NULL AND @original_IdentityNum IS NULL)) AND (([Sex] = @original_Sex) OR ([Sex] IS NULL AND @original_Sex IS NULL)) AND (([Birthday] = @original_Birthday) OR ([Birthday] IS NULL AND @original_Birthday IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([Telphone] = @original_Telphone) OR ([Telphone] IS NULL AND @original_Telphone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([QuestionTypeId] = @original_QuestionTypeId) OR ([QuestionTypeId] IS NULL AND @original_QuestionTypeId IS NULL)) AND (([Answer] = @original_Answer) OR ([Answer] IS NULL AND @original_Answer IS NULL))" InsertCommand="INSERT INTO [UserInfo] ([UserTypeId], [UserName], [LoginName], [Password], [IdentityNum], [Sex], [Birthday], [Age], [Telphone], [Email], [QuestionTypeId], [Answer]) VALUES (@UserTypeId, @UserName, @LoginName, @Password, @IdentityNum, @Sex, @Birthday, @Age, @Telphone, @Email, @QuestionTypeId, @Answer)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserInfo]" UpdateCommand="UPDATE [UserInfo] SET [UserTypeId] = @UserTypeId, [UserName] = @UserName, [LoginName] = @LoginName, [Password] = @Password, [IdentityNum] = @IdentityNum, [Sex] = @Sex, [Birthday] = @Birthday, [Age] = @Age, [Telphone] = @Telphone, [Email] = @Email, [QuestionTypeId] = @QuestionTypeId, [Answer] = @Answer WHERE [Id] = @original_Id AND (([UserTypeId] = @original_UserTypeId) OR ([UserTypeId] IS NULL AND @original_UserTypeId IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([LoginName] = @original_LoginName) OR ([LoginName] IS NULL AND @original_LoginName IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([IdentityNum] = @original_IdentityNum) OR ([IdentityNum] IS NULL AND @original_IdentityNum IS NULL)) AND (([Sex] = @original_Sex) OR ([Sex] IS NULL AND @original_Sex IS NULL)) AND (([Birthday] = @original_Birthday) OR ([Birthday] IS NULL AND @original_Birthday IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([Telphone] = @original_Telphone) OR ([Telphone] IS NULL AND @original_Telphone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([QuestionTypeId] = @original_QuestionTypeId) OR ([QuestionTypeId] IS NULL AND @original_QuestionTypeId IS NULL)) AND (([Answer] = @original_Answer) OR ([Answer] IS NULL AND @original_Answer IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int64" />
            <asp:Parameter Name="original_UserTypeId" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_LoginName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_IdentityNum" Type="String" />
            <asp:Parameter Name="original_Sex" Type="String" />
            <asp:Parameter Name="original_Birthday" Type="String" />
            <asp:Parameter Name="original_Age" Type="Int32" />
            <asp:Parameter Name="original_Telphone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_QuestionTypeId" Type="Int32" />
            <asp:Parameter Name="original_Answer" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserTypeId" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="LoginName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="IdentityNum" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter Name="Birthday" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Telphone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="QuestionTypeId" Type="Int32" />
            <asp:Parameter Name="Answer" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserTypeId" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="LoginName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="IdentityNum" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter Name="Birthday" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Telphone" Type="String" />                           
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="QuestionTypeId" Type="Int32" />
            <asp:Parameter Name="Answer" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int64" />
            <asp:Parameter Name="original_UserTypeId" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_LoginName" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_IdentityNum" Type="String" />
            <asp:Parameter Name="original_Sex" Type="String" />
            <asp:Parameter Name="original_Birthday" Type="String" />
            <asp:Parameter Name="original_Age" Type="Int32" />
            <asp:Parameter Name="original_Telphone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_QuestionTypeId" Type="Int32" />
            <asp:Parameter Name="original_Answer" Type="String" />
           </UpdateParameters>
          </asp:SqlDataSource>
        </div>
       <div>
           <asp:Button ID="Button1" runat="server" Text="确定" /></div>
     </div>
    </asp:Content>
