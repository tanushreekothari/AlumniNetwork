<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="discussion.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div style="background-image: url('images/gla3.jpg'); background-attachment:fixed">
    <table style="width:100%" >
<tr>
<td style=" width:20%">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   
    </td>
<td >

<h1 style="border-bottom: medium groove #36b0d9; font-family:Segoe UI Light; font-size:55px; color:#14647d; width:450px; height: 50px;" > Discussion Topics</h1>

    <br />
    
    <div style="text-align:center; width: auto;"><asp:Button ID="Button1" runat="server" Text="Post New Topic" 
        onclick="Button1_Click" CssClass="button" Width="110px" /></div>
    
    <br />
    
<asp:DataList 
                        ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource1" GridLines="Vertical" Width="608px" 
                         ForeColor="Black">
                        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            Thread
        </HeaderTemplate>
                        <ItemStyle BackColor="#F7F7DE" />
        <ItemTemplate>
            <div style="position: relative; top: 0px; left: 0px; width: 583px; height: auto;"><asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl='<%#"thread_rply.aspx?id="+Eval("threadid") %>' 
                Text='<%# Eval("sub") %>'></asp:HyperLink></div>
            <br />
            Posted By:-&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text='<%# Eval("username") %>'></asp:Label>
            <br />
            postdate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="postdateLabel" runat="server" Text='<%# Eval("postdate") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; posttime:
            <asp:Label ID="posttimeLabel" runat="server" Text='<%# Eval("posttime") %>' />
            <br />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB %>" 
        SelectCommand="SELECT * FROM [thread]"></asp:SqlDataSource>

</td>
<td style=" width:20%"></td>
</tr>
</table></div>
</asp:Content>

