<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ShipType.aspx.cs" Inherits="TicketManage.Admin.ShipType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ShipTypeId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ShipTypeId" HeaderText="ShipTypeId" InsertVisible="False" ReadOnly="True" SortExpression="ShipTypeId" />
            <asp:BoundField DataField="ShipTypeName" HeaderText="ShipTypeName" SortExpression="ShipTypeName" />
            <asp:BoundField DataField="PriceMultiple" HeaderText="PriceMultiple" SortExpression="PriceMultiple" />
            <asp:BoundField DataField="LoadWeight" HeaderText="LoadWeight" SortExpression="LoadWeight" />
            <asp:BoundField DataField="MaxLoadWeight" HeaderText="MaxLoadWeight" SortExpression="MaxLoadWeight" />
        </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Conn %>" DeleteCommand="DELETE FROM [ShipType] WHERE [ShipTypeId] = @original_ShipTypeId AND (([ShipTypeName] = @original_ShipTypeName) OR ([ShipTypeName] IS NULL AND @original_ShipTypeName IS NULL)) AND (([PriceMultiple] = @original_PriceMultiple) OR ([PriceMultiple] IS NULL AND @original_PriceMultiple IS NULL)) AND (([LoadWeight] = @original_LoadWeight) OR ([LoadWeight] IS NULL AND @original_LoadWeight IS NULL)) AND (([MaxLoadWeight] = @original_MaxLoadWeight) OR ([MaxLoadWeight] IS NULL AND @original_MaxLoadWeight IS NULL))" InsertCommand="INSERT INTO [ShipType] ([ShipTypeName], [PriceMultiple], [LoadWeight], [MaxLoadWeight]) VALUES (@ShipTypeName, @PriceMultiple, @LoadWeight, @MaxLoadWeight)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ShipType]" UpdateCommand="UPDATE [ShipType] SET [ShipTypeName] = @ShipTypeName, [PriceMultiple] = @PriceMultiple, [LoadWeight] = @LoadWeight, [MaxLoadWeight] = @MaxLoadWeight WHERE [ShipTypeId] = @original_ShipTypeId AND (([ShipTypeName] = @original_ShipTypeName) OR ([ShipTypeName] IS NULL AND @original_ShipTypeName IS NULL)) AND (([PriceMultiple] = @original_PriceMultiple) OR ([PriceMultiple] IS NULL AND @original_PriceMultiple IS NULL)) AND (([LoadWeight] = @original_LoadWeight) OR ([LoadWeight] IS NULL AND @original_LoadWeight IS NULL)) AND (([MaxLoadWeight] = @original_MaxLoadWeight) OR ([MaxLoadWeight] IS NULL AND @original_MaxLoadWeight IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ShipTypeId" Type="Int32" />
            <asp:Parameter Name="original_ShipTypeName" Type="String" />
            <asp:Parameter Name="original_PriceMultiple" Type="String" />
            <asp:Parameter Name="original_LoadWeight" Type="String" />
            <asp:Parameter Name="original_MaxLoadWeight" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ShipTypeName" Type="String" />
            <asp:Parameter Name="PriceMultiple" Type="String" />
            <asp:Parameter Name="LoadWeight" Type="String" />
            <asp:Parameter Name="MaxLoadWeight" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ShipTypeName" Type="String" />
            <asp:Parameter Name="PriceMultiple" Type="String" />
            <asp:Parameter Name="LoadWeight" Type="String" />
            <asp:Parameter Name="MaxLoadWeight" Type="String" />
            <asp:Parameter Name="original_ShipTypeId" Type="Int32" />
            <asp:Parameter Name="original_ShipTypeName" Type="String" />
            <asp:Parameter Name="original_PriceMultiple" Type="String" />
            <asp:Parameter Name="original_LoadWeight" Type="String" />
            <asp:Parameter Name="original_MaxLoadWeight" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
