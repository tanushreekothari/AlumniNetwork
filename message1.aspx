<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="message1.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-image: url('images/gla3.jpg'); background-attachment:fixed; width:100%";>
<table style="width:100%" >
<tr>
<td style="width:20%" ></td>
<td>
   <br />
   
        <asp:Label ID="Label2" runat="server" Text="Write a New Post" CssClass="head1" ></asp:Label>
   <br /><br />
   <br />
      <asp:Label ID="Label1" runat="server" Text="Subject:-"></asp:Label>
      
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <br />
      <asp:Label ID="Label3" runat="server" Text="Message:-"></asp:Label>
        
    <asp:TextBox ID="TextBox2" runat="server" 
     
        TextMode="MultiLine" Height="109px" Width="269px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
      Text="Submit" CssClass="button" />
        </td>
<td style="width:20%"></td>
</tr>
</table>
                </div>
</asp:Content>

