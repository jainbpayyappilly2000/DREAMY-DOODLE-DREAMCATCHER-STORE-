<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminProduct.aspx.cs" Inherits="dreamydoodleProject.AdminProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        width: 228px;
    }
        .auto-style3 {
            width: 228px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
    </style>
     <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
      <script type="text/javascript">       
          function showimagepreview(input) {
              //alert("hai");
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
            <td class="auto-style2">DREAMCATCHER NAME</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">DESCRIPTION</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="80px" TextMode="MultiLine" Width="325px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">PRICE</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">IMAGE</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" onchange="showimagepreview(this)" />
                <asp:Image ID="Image1" runat="server" Height="164px" Width="264px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">SELLER NAME</td>
            <td>
                <asp:DropDownList ID="DropDownListseller" runat="server" Height="36px" Width="153px">
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">CATEGORY NAME</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="160px">
                    <asp:ListItem Selected="True">---select---</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" />
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
                                    <th>DC_ID</th>
                                    <th>DC_NAME</th>
                                    <th>DC_DESC</th>
                                    <th>DC_PRICE</th>
                                    <th>DC_IMAGE</th>  
                                    <th>DC_SELLER</th>
                                    <th>DC_CATEGORY</th>                                
                                    <th>DC_STATUS</th>
                                    <th>ACTION</th>                                                          
                                </tr>
                            </thead>
                    <tbody>
                    </HeaderTemplate>                    
                        <ItemTemplate>                       
                            <tr>
                                <td><%# Eval("dcid") %></td>
                                <td><%# Eval("dcname") %></td>  
                                <td><%# Eval("dcdesc") %></td>
                                <td><%# Eval("dcprice") %></td>
                                <td><asp:Image ID="Image1" runat="server" Height="70px" ImageUrl='<%# "data:image/png;base64,"+Convert.ToBase64String((byte[])Eval("dcimage"),0,((byte[])Eval("dcimage")).Length) %>' Width="124px" /></td>   
                                <td><%# Eval("seller_id") %></td>
                                <td><%# Eval("cid") %></td>                           
                                <td><%# Eval("dcstatus") %></td> 
                                <td> <asp:Button ID="btn_edit" OnClick="btn_edit_Click"  CommandName='<%# Eval("dcid") %>' runat="server" Text="Edit"  />
                                <asp:Button ID="btn_delete" OnClick="btn_delete_Click" CommandName='<%# Eval("dcid") %>' runat="server" Text="Delete"  /></td>                                                
                            </tr>                           
                        </ItemTemplate>                   
                    <FooterTemplate>
                        </table>
                    </tbody>
                    </FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
