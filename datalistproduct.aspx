<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="datalistproduct.aspx.cs" Inherits="dreamydoodleProject.datalistproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 291px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="1523px" BackColor="#FFCCFF">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Image ID="Image1" runat="server" Height="270px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("dcimage"),0,((byte[])Eval("dcimage")).Length) %>' Width="340px" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" style="text-align:center;">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("dcname") %>' Font-Names="Algerian"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" style="text-align:center;">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("dcprice") %>' Font-Names="Algerian"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" style="text-align: center;">
                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Castellar" OnClick="LinkButton1_Click">ADD TO CART</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
