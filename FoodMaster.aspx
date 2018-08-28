<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false"
    CodeFile="FoodMaster.aspx.vb" Inherits="FlowerMaster" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <table cellpadding="5" cellspacing="5" style="font-size: 18px; background-color: #ffffff"
        width="600">
        <tr>
            <td style="width: 258px; height: 24px; text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Names="Comic Sans MS" Text="Select Flower Category"></asp:Label></td>
            <td style="width: 196px; height: 24px; text-align: left">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Medium" Width="218px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid">
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodDatabaseConnectionString %>"
                    SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 258px; height: 24px; text-align: right">
                <asp:Label ID="lblImage" runat="server" Font-Names="Comic Sans MS" Text="Image To Upload"></asp:Label>
            </td>
            <td style="width: 196px; height: 24px; text-align: left">
                <asp:FileUpload ID="FileUpload" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" /><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload"
                    ErrorMessage="No Image Selected" Font-Names="Comic Sans MS"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 258px; text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Names="Comic Sans MS" Text="Description"></asp:Label></td>
            <td style="width: 196px; text-align: left">
                <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttitle"
                    ErrorMessage="Title cannot be Empty" Font-Names="Comic Sans MS"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 258px; text-align: right">
                <asp:Label ID="Label3" runat="server" Font-Names="Comic Sans MS" Text="Price"></asp:Label></td>
            <td style="width: 196px; text-align: left">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrice"
                    ErrorMessage="Price is Required" Font-Names="Comic Sans MS"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 43px">
                <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    ForeColor="red" Width="412px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnUpload" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Large" Text="Upload" ForeColor="red" Width="117px" />
                <asp:LinkButton ID="ShowData" runat="server" BorderWidth="0px" Font-Bold="True" Font-Names="Comic Sans MS"
                    Font-Size="Large" ForeColor="red" Height="36px" Style="position: static; display: inline;"
                    Width="104px" Visible="False">Show Data</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                    AutoGenerateSelectButton="True" BackColor="White" BorderColor="#ff8080" BorderStyle="Solid"
                    BorderWidth="2px" CellPadding="10" CellSpacing="10" Font-Bold="True" ForeColor="red"
                    Style="border-right: red thick solid; border-top: red thick solid; border-left: red thick solid;
                    border-bottom: red thick solid; position: static" AutoGenerateDeleteButton="True">
                    <Columns>
                        <asp:BoundField DataField="FlowerId" HeaderText="Flower Id" />
                        <asp:BoundField DataField="FName" HeaderText="Flower Title" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:ImageField DataImageUrlField="imgFile" HeaderText="Flower Picture">
                        </asp:ImageField>
                    </Columns>
                    <SelectedRowStyle BackColor="red" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 258px">
            </td>
            <td style="width: 196px">
            </td>
        </tr>
    </table>
</asp:Content>
