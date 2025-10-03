<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="datalistcategory.aspx.cs" Inherits="dreamydoodleProject.datalistcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 98%;
            height: 376px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Height="754px" Width="1375px">
                    <ItemTemplate>
                        <table class="auto-style2" style="background-color: #FFCCCC; font-size: x-large;">
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="280px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("cimage"),0,((byte[])Eval("cimage")).Length) %>' Width="369px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("cname") %>' Font-Bold="False" Font-Names="Algerian" ForeColor="Black" ></asp:Label>
                                </td>
                            </tr>
                            <tr style="text-align:center;">
                                <td>&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("cid") %>' OnClick="LinkButton1_Click" Font-Names="Algerian">view</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
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
