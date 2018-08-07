<%@ Page Title="" Language="C#" MasterPageFile="~/profile.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" background-image: url('css/images/header.png'); height:50px"> 
<div style="position:relative; top: -66px; left: 459px; width:300px;"><form method="get" action="/search" id="search">
  <input name="q" type="text" size="40" placeholder="Search..." /></div>
  </div>
  <br />
<div style="height:220px; ">
    <div style="margin-left:300px; width:588px; height:auto; border:medium groove #000; height:220px"><br />
        <asp:Image ID="Image1" runat="server" 
            Height="131px" ImageUrl="~/images/Prof.-D.-S-Chauhan.gif" Width="128px" 
            style="margin:0 0 0 20px"/>
            <div style="position:relative; top: -132px; left: 180px; width: 390px; height: 189px;">
            
            <table style="width: 80%; margin-left:30px; height:180px;">
        <tr>
            <td style="font-family:Segoe UI Light; font-size:30px;">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               </td>
        </tr>
        <tr>
            <td style="font-family:Segoe UI Light; font-size:25px;">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
           <td style="font-family:Segoe UI Light; font-size:22px;">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
           </td>
        </tr>
        <tr>
            <td style="font-family:Segoe UI Light; font-size:20px;">
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-family:Segoe UI Light; font-size:24px;">
                
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
           <td style="font-family:Segoe UI Light; font-size:26px;">
                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            </td>
           </tr>
    </table>
            </div>
            
            </div>
    <br />

</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<div style="height:1000px;">
</div>
</asp:Content>

