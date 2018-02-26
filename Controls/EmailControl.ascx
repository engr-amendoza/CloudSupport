<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmailControl.ascx.cs" Inherits="CloudSupport.Controls.EmailControl" %>

<!DOCTYPE html>

<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <meta name="ProgId" content="Word.Document">
    <meta name="Generator" content="Microsoft Word 14">
    <meta name="Originator" content="Microsoft Word 14">
    <link rel="File-List" href="images/filelist.xml">
    <link rel="Edit-Time-Data" href="images/editdata.mso">
    <link rel="themeData" href="images/themedata.thmx">
    <link rel="colorSchemeMapping" href="images/colorschememapping.xml">

    <style>
    </style>

</head>

<body bgcolor="#F2F2F2" lang=EN-US link=blue vlink=purple style='tab-interval:
.5in'>

<div class=WordSection1>



<div align=center>
    </br>
    <div style="border: 2px;  position:relative;">
        </br>
    <asp:Label ID="EmailSubject_Label" runat="server" Text="Email Subject: " Font-Bold="True" Font-Names="Arial" ></asp:Label>

    <asp:TextBox ID="EmailSubject_Textbox" runat="server" TextMode="SingleLine" MaxLength="100" Columns="100" Font-Names="Arial" ReadOnly="True" Wrap="False" BorderStyle="Double" Width="600px"></asp:TextBox>
    </div>
    <hr>
    
<table class=MsoTableGrid border=0 cellspacing=0 cellpadding=0
 style='background:white;mso-background-themecolor:background1;border-collapse:
 collapse;mso-table-layout-alt:fixed;border:none;mso-yfti-tbllook:1184;
 mso-padding-alt:0in 0in 0in 0in;mso-border-insideh:none;mso-border-insidev:
 none'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:17.1pt'>
  <td width=672 valign=top style='width:7.0in;padding:0in 0in 0in 0in;
  height:17.1pt'>
  <table class=MsoTableGrid border=0 cellspacing=0 cellpadding=0
   style='border-collapse:collapse;mso-table-layout-alt:fixed;border:none;
   mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;mso-border-insideh:
   none;mso-border-insidev:none'>
   <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes'>
    <td width=662 style='width:6.9in;padding:0in 5.4pt 0in 5.4pt'>
    <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
    .0001pt;text-align:center;line-height:normal'>
        
        
        
        <![if !vml]><img id="topLeftIcon" width=66 height=55
    src="<%= TopLeftIcon %>"
    align=left hspace=5 style='margin-left:-5px;margin-right:5px' v:shapes="Picture_x0020_5"><![endif]><span id="outageHeader"
    style='font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:3ds;
    color:#1F497D;mso-themecolor:text2'><%= OutageHeader %><o:p></o:p></span></p>
    <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
    .0001pt;text-align:center;line-height:normal'><b style='mso-bidi-font-weight:
    normal'><span id="platformHeader" style='font-size:14.0pt;mso-bidi-font-size:11.0pt;font-family:
    3ds;color:#1F497D;mso-themecolor:text2'><%= PlatformHeader %></span></b><o:p></o:p></p>
    </td>
   </tr>
   <tr style='mso-yfti-irow:1'>
    <td width=662 valign=top style='width:6.9in;padding:0in 5.4pt 0in 5.4pt'>
    <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
    .0001pt;text-align:center;line-height:normal'><b><span style='color:red'>Note:
    This email is for DS internal use only! Don't push it to your customers.<o:p></o:p></span></b></p>
    </td>
   </tr>
   <tr style='mso-yfti-irow:2;height:.3in'>
    <td width=662 valign=bottom style='width:6.9in;padding:0in 5.4pt 0in 5.4pt;
    height:.3in'>
    <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;
    line-height:normal'><span id="openingStatement" style='color:#1F497D;mso-themecolor:text2'><%= OpeningStatement %><b><o:p></o:p></b></span></p>
    </td>
   </tr>
   <tr style='mso-yfti-irow:3;mso-yfti-lastrow:yes'>
    <td width=662 valign=top style='width:6.9in;padding:0in 5.4pt 0in 5.4pt'>
    <table class=MsoTableGrid border=0 cellspacing=0 cellpadding=0
     style='border-collapse:collapse;mso-table-layout-alt:fixed;border:none;
     mso-yfti-tbllook:1184;mso-padding-alt:0in 5.4pt 0in 5.4pt;mso-border-insideh:
     none;mso-border-insidev:none'>
     <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;
      height:9.9pt'>
      <td width=658 valign=top style='width:493.8pt;padding:0in 5.4pt 0in 5.4pt;
      height:9.9pt'></td>
     </tr>
    </table>
    <table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0 align=left
     style='border-collapse:collapse;mso-table-layout-alt:fixed;border:none;
     mso-border-alt:solid windowtext .5pt;mso-yfti-tbllook:1184;mso-table-lspace:
     9.0pt;margin-left:6.75pt;mso-table-rspace:9.0pt;margin-right:6.75pt;
     mso-table-anchor-vertical:paragraph;mso-table-anchor-horizontal:column;
     mso-table-left:left;mso-table-top:.05pt;mso-padding-alt:0in 5.4pt 0in 5.4pt'>
     <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:2.1in'>
      <td width=609 colspan=2 valign=top style='width:456.45pt;border:none;
      padding:0in 5.4pt 0in 5.4pt;height:2.1in'>
      <div align=center>
      <table class=MsoTableGrid border=0 cellspacing=0 cellpadding=0
       title="Partners Platform"
       summary="Indicate here the status of the Partners Platform" width=685
       style='border-collapse:collapse;mso-table-layout-alt:fixed;border:none;
       mso-yfti-tbllook:1536;mso-padding-alt:0in 1.45pt 0in 1.45pt;mso-border-insideh:
       none;mso-border-insidev:none'>
       <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid;
        height:43.25pt'>
        <td width=103 style='width:77.2pt;padding:0in 1.45pt 0in 1.45pt;
        height:43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2;mso-no-proof:yes'>R2016X<o:p></o:p></span></b></p>
        </td>
        <td width=83 style='width:61.9pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;background:#F2F2F2;mso-background-themecolor:background1;
        mso-background-themeshade:242;padding:0in 1.45pt 0in 1.45pt;height:
        43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>Start Time<br>
        </span></b><i style='mso-bidi-font-style:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>(Paris Time)</span></i><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'><o:p></o:p></span></b></p>
        </td>
        <td width=83 style='width:61.9pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;background:#F2F2F2;mso-background-themecolor:background1;
        mso-background-themeshade:242;padding:0in 1.45pt 0in 1.45pt;height:
        43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span id="returnTimeHeader"
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'><%= ReturnTimeHeader %><br>
        </span></b><i style='mso-bidi-font-style:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>(Paris Time)</span></i><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'><o:p></o:p></span></b></p>
        </td>
        <td width=47 valign=top style='width:35.1pt;border-top:none;border-left:
        none;border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>Europe<o:p></o:p></span></b></p>
        </td>
        <td width=57 valign=top style='width:42.45pt;border-top:none;
        border-left:none;border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>Asia<o:p></o:p></span></b></p>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>China Mainland<o:p></o:p></span></b></p>
        </td>
        <td width=57 valign=top style='width:42.45pt;border-top:none;
        border-left:none;border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>Asia Hong-Kong<o:p></o:p></span></b></p>
        </td>
        <td width=59 valign=top style='width:44.15pt;border-top:none;
        border-left:none;border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>Asia Singapore<o:p></o:p></span></b></p>
        </td>
        <td width=56 valign=top style='width:41.9pt;border-top:none;border-left:
        none;border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>Asia<o:p></o:p></span></b></p>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>Korea<o:p></o:p></span></b></p>
        </td>
        <td width=49 valign=top style='width:37.0pt;border-top:none;border-left:
        none;border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>Asia Tokyo<o:p></o:p></span></b></p>
        </td>
        <td width=45 valign=top style='width:33.85pt;border-top:none;
        border-left:none;border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>US West<o:p></o:p></span></b></p>
        </td>
        <td width=48 valign=top style='width:35.8pt;border-top:none;border-left:
        none;border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:43.25pt'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'>US East<o:p></o:p></span></b></p>
        </td>
       </tr>
       <tr id="emailLocations" style='mso-yfti-irow:1;height:.7in'>
        <td width=103 style='width:77.2pt;background:#F2F2F2;mso-background-themecolor:
        background1;mso-background-themeshade:242;padding:0in 1.45pt 0in 1.45pt;
        height:.7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2;mso-no-proof:yes'>
               
            
        <![if !vml]><img width=29 height=29
        src="images/image004.png"
        v:shapes="Picture_x0020_13"><![endif]></span></b><b style='mso-bidi-font-weight:
        normal'><span style='font-size:14.0pt;mso-bidi-font-size:10.0pt;
        line-height:115%;color:#1F497D;mso-themecolor:text2'><o:p></o:p></span></b></p>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span id="platformName"
        style='font-size:14.0pt;mso-bidi-font-size:10.0pt;line-height:115%;
        color:#1F497D;mso-themecolor:text2'></span><o:p><%= Platform %></o:p></b></p>
        </td>
        <td width=83 style='width:61.9pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;background:#F2F2F2;mso-background-themecolor:background1;
        mso-background-themeshade:242;padding:0in 1.45pt 0in 1.45pt;height:
        .7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span id="customersStartTime"
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'><%= StartTime %><i style='mso-bidi-font-style:normal'><o:p></o:p></i></span></b></p>
        </td>
        <td width=83 style='width:61.9pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;background:#F2F2F2;mso-background-themecolor:background1;
        mso-background-themeshade:242;padding:0in 1.45pt 0in 1.45pt;height:
        .7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span id="customersReturnTime"
        style='font-size:10.0pt;line-height:115%;color:#1F497D;mso-themecolor:
        text2'><%= ReturnTime %><o:p></o:p></span></b></p>
        </td>
        <td width=47 style='width:35.1pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:.7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'>
                 
            
            <![if !vml]><img id="customersEurope" width=29 height=29
        src="<%= Europe %>"
        v:shapes="Rectangle_x0020_27"><![endif]>
            
        <b style='mso-bidi-font-weight:normal'><span style='font-size:10.0pt;
        line-height:115%;color:#1F497D;mso-themecolor:text2'><o:p></o:p></span></b></p>
        </td>
        <td width=57 style='width:42.45pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:.7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'>
                  
            <![if !vml]><img id="customersAsiaChinaMainland" width=29 height=29
        src="<%= China %>"
        v:shapes="Rectangle_x0020_24"><![endif]>         
            
        <span style='mso-no-proof:yes'><o:p></o:p></span></p>
        </td>
        <td width=57 style='width:42.45pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:.7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'>
            
            
            <![if !vml]><img id="customersAsiaHongKong" width=29 height=29
        src="<%= HongKong %>"
        v:shapes="Rectangle_x0020_25"><![endif]>
                      
        <b style='mso-bidi-font-weight:normal'><span style='font-size:10.0pt;
        line-height:115%;color:#1F497D;mso-themecolor:text2'><o:p></o:p></span></b></p>
        </td>
        <td width=59 style='width:44.15pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:.7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'>
                  
            <![if !vml]><img id="customersAsiaSingapore" width=29 height=29
        src="<%= Singapore %>"
        v:shapes="Rectangle_x0020_23"><![endif]><!--[if mso & !supportInlineShapes & supportFields]><v:shape
         id="_x0000_i1037" type="#_x0000_t75" style='width:21.6pt;height:21.6pt'>
         <v:imagedata croptop="-65520f" cropbottom="65520f"/>
        </v:shape><span style='mso-element:field-end'></span><![endif]--><b
        style='mso-bidi-font-weight:normal'><span style='font-size:10.0pt;
        line-height:115%;color:#1F497D;mso-themecolor:text2'><o:p></o:p></span></b></p>
        </td>
        <td width=56 style='width:41.9pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:.7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'> 
            
            <![if !vml]><img id="customersAsiaKorea" width=29 height=29
        src="<%= Korea %>"
        v:shapes="_x0000_s1034"> <![endif]>
            
            
        <span style='mso-no-proof:yes'><o:p></o:p></span></p>
        </td>
        <td width=49 style='width:37.0pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:.7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'>
           
            
            
            <![if !vml]><img id="customersAsiaTokyo" width=29 height=29
        src="<%= Tokyo %>"
        v:shapes="Rectangle_x0020_22"><![endif]><!--[if mso & !supportInlineShapes & supportFields]><v:shape
         id="_x0000_i1035" type="#_x0000_t75" style='width:21.6pt;height:21.6pt'>
         <v:imagedata croptop="-65520f" cropbottom="65520f"/>
        </v:shape><span style='mso-element:field-end'></span><![endif]--><b
        style='mso-bidi-font-weight:normal'><span style='font-size:10.0pt;
        line-height:115%;color:#1F497D;mso-themecolor:text2'><o:p></o:p></span></b></p>
        </td>
        <td width=45 style='width:33.85pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:.7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'>
                   
        <![if !vml]><img id="customersUSWest" width=29 height=29
        src="<%= USWest %>"
        v:shapes="Rectangle_x0020_21"><![endif]>
             
        <b style='mso-bidi-font-weight:normal'><span style='font-size:10.0pt;
        line-height:115%;color:#1F497D;mso-themecolor:text2'><o:p></o:p></span></b></p>
        </td>
        <td width=48 style='width:35.8pt;border-top:none;border-left:none;
        border-bottom:solid #D9D9D9 1.0pt;mso-border-bottom-themecolor:background1;
        mso-border-bottom-themeshade:217;border-right:solid #D9D9D9 1.0pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;mso-border-left-alt:solid #D9D9D9 .5pt;mso-border-left-themecolor:
        background1;mso-border-left-themeshade:217;mso-border-left-alt:solid #D9D9D9 .5pt;
        mso-border-left-themecolor:background1;mso-border-left-themeshade:217;
        mso-border-bottom-alt:solid #D9D9D9 .5pt;mso-border-bottom-themecolor:
        background1;mso-border-bottom-themeshade:217;mso-border-right-alt:solid #D9D9D9 .5pt;
        mso-border-right-themecolor:background1;mso-border-right-themeshade:
        217;padding:0in 1.45pt 0in 1.45pt;height:.7in'>
        <p class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
        .0001pt;text-align:center'>
            
            
            <![if !vml]><img id="customersUSEast" width=29 height=29
        src="<%= USEast %>"
        v:shapes="Rectangle_x0020_20"><![endif]>      
            
        <b style='mso-bidi-font-weight:normal'><span style='font-size:10.0pt;
        line-height:115%;color:#1F497D;mso-themecolor:text2'><o:p></o:p></span></b></p>
        </td>
       </tr>
	   <!-- COMMENT -->

      
	  </table>
      </div>
      </td>
     </tr>
     <tr style='mso-yfti-irow:1;height:.2in'>
      <td width=609 colspan=2 valign=top style='width:456.45pt;border:none;
      padding:0in 5.4pt 0in 5.4pt;height:.2in'>
      <div style='margin-bottom:10.0pt'>
      <div class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
      .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
      style='color:#1F497D;mso-themecolor:text2;mso-no-proof:yes'>
      <hr size=1 width="88%" noshade style='color:#D8D8D8;mso-themecolor:background1;
      mso-themeshade:216' align=center>
      </span></b></div>
      </div>
      </td>
     </tr>
     <tr style='mso-yfti-irow:2'>
      <td width=139 valign=top style='width:104.55pt;border:none;background:
      #F2F2F2;mso-background-themecolor:background1;mso-background-themeshade:
      242;padding:0in 5.4pt 0in 5.4pt'>
      <p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
      style='color:#1F497D;mso-themecolor:text2'>Service Impacted<o:p></o:p></span></b></p>
      </td>
      <td width=469 valign=top style='width:351.9pt;border:none;padding:0in 5.4pt 0in 5.4pt'>


      <p class=MsoNormal><i style='mso-bidi-font-style:normal'><span id="serviceImpactedBody"
      style='font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:115%;
      color:#7F7F7F;mso-themecolor:background1;mso-themeshade:128;mso-style-textfill-fill-color:
      #7F7F7F;mso-style-textfill-fill-themecolor:background1;mso-style-textfill-fill-alpha:
      100.0%;mso-style-textfill-fill-colortransforms:lumm=50000'><%= ServiceImpactedBody %></span><span style='color:#1F497D;mso-themecolor:text2'><o:p></o:p></span></i></p>
      </td>
     </tr>
     <tr style='mso-yfti-irow:3'>
      <td width=139 valign=top style='width:104.55pt;border:none;background:
      #F2F2F2;mso-background-themecolor:background1;mso-background-themeshade:
      242;padding:0in 5.4pt 0in 5.4pt'>
      <p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
      style='color:#1F497D;mso-themecolor:text2'>Problem Summary<o:p></o:p></span></b></p>
      </td>
      <td width=469 valign=top style='width:351.9pt;border:none;padding:0in 5.4pt 0in 5.4pt'>

      <p class=MsoNormal><i style='mso-bidi-font-style:normal'><span id="problemSummaryBody"
      style='font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:115%;
      color:#7F7F7F;mso-themecolor:background1;mso-themeshade:128;mso-style-textfill-fill-color:
      #7F7F7F;mso-style-textfill-fill-themecolor:background1;mso-style-textfill-fill-alpha:
      100.0%;mso-style-textfill-fill-colortransforms:lumm=50000'>

	  <o:p><%= ProblemSummaryBody %></o:p></span></i></p>
      </td>
     </tr>
     <tr style='mso-yfti-irow:4'>
      <td width=609 colspan=2 valign=top style='width:456.45pt;border:none;
      padding:0in 5.4pt 0in 5.4pt'>
      <p class=MsoNormal style='margin-top:12.0pt'><span style='color:#1F497D;
      mso-themecolor:text2'>We are working to resolve this issue. We will
      inform you as soon as the service will be recovered or you will receive
      an update within 2 hours.<o:p></o:p></span></p>
      <div style='margin-bottom:10.0pt'>
      <div class=MsoNormal align=center style='margin-bottom:0in;margin-bottom:
      .0001pt;text-align:center'><b style='mso-bidi-font-weight:normal'><span
      style='color:#1F497D;mso-themecolor:text2;mso-no-proof:yes'>
      <hr size=1 width="88%" noshade style='color:#D8D8D8;mso-themecolor:background1;
      mso-themeshade:216' align=center>
      </span></b></div>
      </div>
      <p class=MsoNormal><span style='color:#1F497D;mso-themecolor:text2'>Best
      Regards,<o:p></o:p></span></p>
      <p class=MsoNormal><span style='color:#1F497D;mso-themecolor:text2'>The
      Online User Excellence Center<o:p></o:p></span></p>
      </td>
     </tr>
     <tr style='mso-yfti-irow:5;mso-yfti-lastrow:yes'>
      <td width=609 colspan=2 valign=top style='width:456.45pt;border:none;
      padding:0in 5.4pt 0in 5.4pt'>
      <p class=MsoNormal><i style='mso-bidi-font-style:normal'><span
      style='font-size:9.0pt;mso-bidi-font-size:11.0pt;line-height:115%;
      color:#7F7F7F;mso-themecolor:background1;mso-themeshade:128;mso-style-textfill-fill-color:
      #7F7F7F;mso-style-textfill-fill-themecolor:background1;mso-style-textfill-fill-alpha:
      100.0%;mso-style-textfill-fill-colortransforms:lumm=50000'>You receive
      this email because you are a member of the EXTERNALProd_Outage_List. <a
      href="http://mygroups.dsone.3ds.com/pages/search/MembersView.aspx?a=unsubscribe&amp;idgroup=10435"><span
      style='color:#00007F;mso-themecolor:hyperlink;mso-themeshade:128;
      mso-style-textfill-fill-color:#00007F;mso-style-textfill-fill-themecolor:
      hyperlink;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:
      lumm=50000'>Click here</span></a> if you want to unsubscribe from this
      diffusion list.</span></i><span style='color:#1F497D;mso-themecolor:text2'><o:p></o:p></span></p>
      </td>
     </tr>
    </table>
    </td>
   </tr>
  </table>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:9.9pt'>
  <td width=672 valign=top style='width:7.0in;padding:0in 0in 0in 0in;
  height:9.9pt'></td>
 </tr>
</table>

</div>

<p class=MsoNormal style='tab-stops:536.25pt'><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>