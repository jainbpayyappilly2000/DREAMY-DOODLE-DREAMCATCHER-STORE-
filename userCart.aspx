<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="userCart.aspx.cs" Inherits="dreamydoodleProject.userCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server">

         <HeaderTemplate>
                        <table border="1" id="example" class="table table-striped table-fixed table-dark">
                            <thead>
                                <tr>
                                    <th>PRODUCT</th>
                                    
                                    <th>IMAGE</th>
                                    <th>PRICE PER UNIT</th>
                                    <th>QTY</th>
                                    
                                    <th>ACTION</th>
                                    <th>ACTION</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("dcname") %></td>
                            <td><asp:Image ID="Image2" runat="server" Height="70px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("dcimage"),0,((byte[])Eval("dcimage")).Length) %>' Width="124px" /></td>
                            <td><%# Eval("dcprice") %></td>
                            
                            <td><%# Eval("dcqty") %></td>
                           
                            <td>
                                <asp:Button ID="btn_edit" OnClick="btn_order_Click" CommandName='<%# Eval("cart_id") %>' runat="server" Text="CHECK OUT" /></td>
                            <td>
                                <asp:Button ID="btn_delete" OnClick="btn_delete_Click" CommandName='<%# Eval("cart_id") %>' runat="server" Text="REMOVE" /></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                        </tbody>
                    </FooterTemplate>

    </asp:Repeater>
</asp:Content>
