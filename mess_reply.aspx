<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="mess_reply.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
<tr>
<td style="width:20%" ></td>
<td>
   <asp:Panel ID="Panel1" runat="server" Height="237px">
            <div style="width: 206px"><strong>Posted BY:-&nbsp;&nbsp;</strong> <asp:Label ID="Label1" 
                    runat="server" Text="Label" style="font-weight: 700"></asp:Label> </div>
                <div style="width: 524px; position: relative; top: -15px; left: 236px; margin-bottom: 0px">
                    <asp:Label ID="Label2" runat="server" Text="Label" style="font-weight: 700"></asp:Label>
                </div>
           
            
            <div style="width: 617px; position: relative; top: 3px; left: 138px; margin-bottom: 0px; height: auto;">
                <strong>Post:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </div>
            <div style="width: 442px; position: relative; top: 16px; left: 140px; margin-bottom: 0px">
                <strong>Subject:-</strong> &nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </div>
           
        </asp:Panel>
    
    </div>
    <asp:Panel ID="Panel2" runat="server" Height="285px">
       <div> <asp:Label ID="Label5" runat="server" Text="Message:-"></asp:Label></div>
        <asp:TextBox ID="TextBox1" runat="server" 
            
            style="position: relative; top: 6px; left: 75px; height: 87px; width: 544px;" 
            TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            style="position: relative; top: 49px; left: -34px; width: 102px" 
            Text="Submit" />
    </asp:Panel>
    

        </td>
<td style="width:20%"></td>
</tr>
</table>


</asp:Content>

