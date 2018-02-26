<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OutageControl.ascx.cs" Inherits="CloudSupport.OutageControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/TR/REC-html40">

<head>
     <link rel="stylesheet" href="Content/style.css">
    <title></title>
</head>


<body>

        <br>
        <b>Select a customer:</b>
        <br>
        <asp:DropDownList ID="platformSelect" runat="server" OnSelectedIndexChanged="OnChange" AutoPostBack="True">
            <asp:ListItem>Customers</asp:ListItem>
            <asp:ListItem>Academia</asp:ListItem>
        </asp:DropDownList>
        <br/>
        <br/>


        <b>Incident Start Time:</b>
        <br>
        <asp:TextBox ID="startTime" runat="server" type="datetime-local" OnTextChanged="OnChange" AutoPostBack="true"></asp:TextBox>
        <br/>
        <br/>
        <b>Incident Est. Return Time:</b>
        <br/>
        
        <asp:TextBox ID="returnTime" runat="server" type="datetime-local" OnTextChanged="OnChange" AutoPostBack="true"></asp:TextBox>
            
        <br/>
        <br/>

        <b>Check affected location(s):</b>
        <br />


         <asp:CheckBoxList runat="server" id="locationsCheckbox" AutoPostBack="true" OnSelectedIndexChanged="OnChange">
            <asp:ListItem runat="server">Europe</asp:ListItem>
            <asp:ListItem runat="server">China</asp:ListItem>
            <asp:ListItem runat="server">Hong-Kong</asp:ListItem>
            <asp:ListItem runat="server">Singapore</asp:ListItem>
            <asp:ListItem runat="server">Korea</asp:ListItem>
            <asp:ListItem runat="server">Tokyo</asp:ListItem>
            <asp:ListItem runat="server">US-West</asp:ListItem>
            <asp:ListItem runat="server">US-East</asp:ListItem>
         </asp:CheckBoxList>
        <br/>


        <b>Enter service(s) impacted:</b><br>
        
         <asp:TextBox ID="servicesImpacted" runat="server" OnTextChanged="OnChange" AutoPostBack="true" TextMode="MultiLine" Rows="4" MaxLength="500" Width="500px"></asp:TextBox>
         
        <br>
        <br>

        <b>Enter summary of the problem:</b><br>
        
         <asp:TextBox ID="problemSummary" runat="server"  OnTextChanged="OnChange" AutoPostBack="true" TextMode="MultiLine" Rows="4" MaxLength="500" Width="500px"></asp:TextBox>
  
    <p>
        &nbsp;</p>
</body>
</html>
