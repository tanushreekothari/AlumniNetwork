<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="thread_rply.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div style="width:100%";>
<table style="width:100%">
<tr>
<td style="width:20%" ></td>
<td>
<asp:Panel ID="Panel1" runat="server" 
            style="height: 263px" Width="885px">
            <div style="width: 206px"><strong>Posted BY:-&nbsp;&nbsp;</strong> <asp:Label ID="Label1" 
                    runat="server" Text="Label" style="font-weight: 700"></asp:Label> </div>
                <div style="width: 536px; position: relative; top: -15px; left: 236px; margin-bottom: 0px">
                    <asp:Label ID="Label2" runat="server" Text="Label" style="font-weight: 700"></asp:Label>
                </div>
           
            
            <div style="width: 617px; position: relative; top: 2px; left: 160px; margin-bottom: 0px; height: auto;">
                <strong>Post:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </div>
            <div style="width: 442px; position: relative; top: 15px; left: 160px; margin-bottom: 0px">
                <strong>Subject:-</strong> &nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </div>
            <br />
           <br />
           <br />
           <br />
            <asp:Button ID="Button1" runat="server" 
           Text="Reply" 
                onclick="Button1_Click" />
           
        </asp:Panel>
    
    
    <br />
           <br />
           <br />
           <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        Height="455px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" GridLines="Horizontal" 
        style="position: relative; top: 7px; left: 157px; width: 604px">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            &nbsp;<div style="position: relative; top: 0px; left: 0px; width: 149px"><asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' /></div>
            
&nbsp;<div style="position: relative; top: -3px; width: 418px; left: 84px; height: 21px;"><asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message1") %>' /></div>
            
            &nbsp;<div style="position: relative; top: 0px; left: 0px; width: 173px"><asp:Label ID="posttimeLabel" runat="server" Text='<%# Eval("posttime") %>' /></div>
            
            <div style="position: relative; top: -20px; left: 168px; width: 173px"><asp:Label ID="postdateLabel" runat="server" Text='<%# Eval("postdate") %>' /></div>
            
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB %>" 
        SelectCommand="SELECT * FROM [message1] WHERE ([threadid] = @threadid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="threadid" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
            </td>
<td style="width:20%"></td>
</tr>
</table>
                </div>

</asp:Content>

