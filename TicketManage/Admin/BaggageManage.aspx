

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BaggageManage.aspx.cs" Inherits="TicketManage.Admin.BaggageManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BaggageId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="BaggageId" HeaderText="行李号" InsertVisible="False" ReadOnly="True" SortExpression="BaggageId" />
        <asp:BoundField DataField="BaggageNum" HeaderText="行李数量" SortExpression="BaggageNum" />
        <asp:BoundField DataField="PassengerId" HeaderText="PassengerId" SortExpression="PassengerId" />
        <asp:BoundField DataField="BaggageWeightTypeId" HeaderText="行李总量类型" SortExpression="BaggageWeightTypeId" />
        <asp:BoundField DataField="CheckTime" HeaderText="行李检查时间" SortExpression="CheckTime" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Conn %>" DeleteCommand="DELETE FROM [Baggage] WHERE [BaggageId] = @original_BaggageId AND (([BaggageNum] = @original_BaggageNum) OR ([BaggageNum] IS NULL AND @original_BaggageNum IS NULL)) AND (([PassengerId] = @original_PassengerId) OR ([PassengerId] IS NULL AND @original_PassengerId IS NULL)) AND (([BaggageWeightTypeId] = @original_BaggageWeightTypeId) OR ([BaggageWeightTypeId] IS NULL AND @original_BaggageWeightTypeId IS NULL)) AND (([CheckTime] = @original_CheckTime) OR ([CheckTime] IS NULL AND @original_CheckTime IS NULL))" InsertCommand="INSERT INTO [Baggage] ([BaggageNum], [PassengerId], [BaggageWeightTypeId], [CheckTime]) VALUES (@BaggageNum, @PassengerId, @BaggageWeightTypeId, @CheckTime)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Baggage]" UpdateCommand="UPDATE [Baggage] SET [BaggageNum] = @BaggageNum, [PassengerId] = @PassengerId, [BaggageWeightTypeId] = @BaggageWeightTypeId, [CheckTime] = @CheckTime WHERE [BaggageId] = @original_BaggageId AND (([BaggageNum] = @original_BaggageNum) OR ([BaggageNum] IS NULL AND @original_BaggageNum IS NULL)) AND (([PassengerId] = @original_PassengerId) OR ([PassengerId] IS NULL AND @original_PassengerId IS NULL)) AND (([BaggageWeightTypeId] = @original_BaggageWeightTypeId) OR ([BaggageWeightTypeId] IS NULL AND @original_BaggageWeightTypeId IS NULL)) AND (([CheckTime] = @original_CheckTime) OR ([CheckTime] IS NULL AND @original_CheckTime IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_BaggageId" Type="Int32" />
            <asp:Parameter Name="original_BaggageNum" Type="String" />
            <asp:Parameter Name="original_PassengerId" Type="Int32" />
            <asp:Parameter Name="original_BaggageWeightTypeId" Type="Int32" />
            <asp:Parameter Name="original_CheckTime" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BaggageNum" Type="String" />
            <asp:Parameter Name="PassengerId" Type="Int32" />
            <asp:Parameter Name="BaggageWeightTypeId" Type="Int32" />
            <asp:Parameter Name="CheckTime" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BaggageNum" Type="String" />
            <asp:Parameter Name="PassengerId" Type="Int32" />
            <asp:Parameter Name="BaggageWeightTypeId" Type="Int32" />
            <asp:Parameter Name="CheckTime" Type="DateTime" />
            <asp:Parameter Name="original_BaggageId" Type="Int32" />
            <asp:Parameter Name="original_BaggageNum" Type="String" />
            <asp:Parameter Name="original_PassengerId" Type="Int32" />
            <asp:Parameter Name="original_BaggageWeightTypeId" Type="Int32" />
            <asp:Parameter Name="original_CheckTime" Type="DateTime" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
