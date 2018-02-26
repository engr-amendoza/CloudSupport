<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CloudSupport._Default" %>

<%@ Register Src="~/Controls/OutageControl.ascx" TagPrefix="uc1" TagName="OutageControl" %>
<%@ Register Src="~/Controls/EmailControl.ascx" TagPrefix="uc1" TagName="EmailControl" %>
<%@ Register Src="~/Controls/KBControl.ascx" TagPrefix="uc1" TagName="KBControl" %>
<%@ Register Src="~/Controls/ExcelControl.ascx" TagPrefix="uc1" TagName="ExcelControl" %>





<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">   
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>   
    
    <head>
        <link rel="alternate stylesheet" href="Content/apriso.css">
        <link rel="stylesheet" href="Content/style.css">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="Scripts/script.js"></script>
    </head>
            
    <!------------------------------------------------------------------------------------------------------------->
    
    <body>
        <div id="page">
            <div id="header">
                <div id="logo"></div>
                <span id="title"><b>DELMIA</b> Apriso | Cloud Support Message Generator</span>
                <span align="right"><asp:Label id="CurrentUserLabel" runat="server" Text="TEST" style="text-align:right"></asp:Label></span>
            </div>

            <div class="content" id="userInput">

                <div class="menuItem">
                    <asp:RadioButtonList ID="Outage_RadioButtonList" runat="server" OnSelectedIndexChanged="Outage_RadioButtonList_SelectedIndexChanged" RepeatDirection="Horizontal" EnableViewState="False" AutoPostBack="true">
                        <asp:ListItem>Ongoing</asp:ListItem>
                        <asp:ListItem>Update</asp:ListItem>
                        <asp:ListItem>Recovery</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <br />

                <asp:UpdatePanel ID="userInputPanel" runat="server">


                    <ContentTemplate>
                        <div id="Outage" class="tabcontent active" style="display: block;">
                            <br />
                            <uc1:OutageControl runat="server" ID="OutageControl"/>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>

            <div id="separator"></div>
            <!------------------------------------------------------------------------------------------------------------->
                <div class="content" id="generatedPreview">
                    <div class="menuItem">
                        <asp:RadioButtonList ID="Preview_RadioButtonList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="Preview_RadioButtonList_SelectedIndexChanged" EnableViewState="False" TextAlign="Right" BorderStyle="None" AutoPostBack="true">
                            <asp:ListItem>Email</asp:ListItem>
                            <asp:ListItem>KB</asp:ListItem>
                            <asp:ListItem>Excel</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <br />

                    <asp:UpdatePanel ID="generatedPreviewPanel" runat="server">
                    <ContentTemplate>

                            <div id="Email" class="tabcontent active" style="display: block;">                               
                                <uc1:EmailControl ID="EmailControl" runat="server" />
                                <uc1:KBControl ID="KBControl" runat="server" />    
                                <uc1:ExcelControl runat="server" id="ExcelControl" />
                            </div>
                   </ContentTemplate>
                </asp:UpdatePanel>
                </div>
        </div>

    </body> 
</asp:Content>

