<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="adminCategory.aspx.cs" Inherits="dreamydoodleProject.adminCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 311px;
        }
    </style>
      <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">    

        function showimagepreview(input) {
           
            if (input.files && input.files[0]) {
                var filerdr = new FileReader();
                filerdr.onload = function (e) {
                    $('#ContentPlaceHolder1_Image1').attr('src', e.target.result);
                }
                filerdr.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">CATEGORY NAME</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">CATEGORY IMAGE</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" onchange="showimagepreview(this)" />
                <asp:Image ID="Image1" runat="server" Height="90px" Width="186px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" Width="74px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Repeater ID="Repeater1" runat="server">
                     <HeaderTemplate>
                        <table border="1" id="example" class="table table-striped table-fixed table-dark">
                            <thead>
                                <tr>
                                    <th>CATE_ID</th>
                                    <th>CATE_NAME</th>
                                    <th>CATE_IMAGE</th>
                                    <th>CATE_STATUS</th>
                                    <th>ACTION</th>
                                    <th>ACTION</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("cid") %></td>
                            <td><%# Eval("cname") %></td>
                            <td>
                                <asp:Image ID="Image2" runat="server" Height="70px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("cimage"),0,((byte[])Eval("cimage")).Length) %>' Width="124px" /></td>
                            <td><%# Eval("cstatus") %></td>
                            <td>
                                <asp:Button ID="btn_edit" OnClick="btn_edit_Click" CommandName='<%# Eval("cid") %>' runat="server" Text="Edit" /></td>
                            <td>
                                <asp:Button ID="btn_delete" OnClick="btn_delete_Click" CommandName='<%# Eval("cid") %>' runat="server" Text="Delete" /></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                        </tbody>
                    </FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
    </table>
</asp:Content>
