<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="robots" content="noindex,nofollow">
    <meta name="googlebot" content="noindex">

    <style type="text/css">
        #TextArea1 {
            height: 194px;
            width: 290px;
        }

        .auto-style1 {
            width: 312px;
        }

        #TextArea2 {
            height: 94px;
            width: 311px;
        }

        .auto-style3 {
            width: 366px;
            height: 130px;
        }
        .auto-style4 {
            width: 319px;
        }
        .auto-style5 {
            width: 312px;
            height: 14px;
        }
        .auto-style6 {
            width: 319px;
            height: 14px;
        }
        .auto-style7 {
            height: 14px;
        }
        .auto-style8 {
            width: 304px;
            height: 154px;
        }
        .auto-style9 {
            height: 14px;
            width: 314px;
        }
        .auto-style10 {
            width: 314px;
        }
        .auto-style11 {
            width: 273px;
            height: 186px;
        }
        .auto-style12 {
            width: 319px;
            height: 23px;
        }
        .auto-style13 {
            width: 314px;
            height: 23px;
        }
        .auto-style14 {
            height: 23px;
        }
        .auto-style15 {
            width: 274px;
            height: 130px;
        }
        .auto-style16 {
            width: 297px;
            height: 115px;
        }
        .auto-style17 {
            width: 291px;
            height: 114px;
        }
        .auto-style18 {
            width: 296px;
            height: 102px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                <asp:ListItem>Technology</asp:ListItem>
                <asp:ListItem>Science</asp:ListItem>
                <asp:ListItem>Sports</asp:ListItem>
                <asp:ListItem>Games</asp:ListItem>
                <asp:ListItem>Apps and Software</asp:ListItem>
                <asp:ListItem>Entertainment</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            Tech:
        <asp:Label ID="Techcod" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Science:
        <asp:Label ID="Scicod" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sports:
        <asp:Label ID="Spcod" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Games:
        <asp:Label ID="Gamcod" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apps:
        <asp:Label ID="Appcod" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Entertainment:
        <asp:Label ID="Entercod" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Code"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="217px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Heading"></asp:Label>
            (100 chars)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="661px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Discription"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;<CKEditor:CKEditorControl ID="CkEditor1" BasePath="/ckeditor/" Width="1000px" Height="200px" runat="server"></CKEditor:CKEditorControl>
            <table style="width: 100%; height: 159px;">
                <tr>
                    <td class="auto-style5">Ad Code:</td>
                    <td class="auto-style6">Start Tag</td>
                    <td class="auto-style9">Quotes</td>
                    <td class="auto-style7">Image with content</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <textarea id="TextArea1" name="S1" disabled="disabled"><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- banner1 -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-6572699499693151"
     data-ad-slot="6918032621"
     data-ad-format="auto"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
<p></p></textarea></td>
                    <td class="auto-style4">
                        <textarea id="TextArea2" name="S2" class="auto-style3" disabled="disabled"><div class="profile-sub-content">	
	<div class="typography-sub-content-wrapper">
        <p>Text</p>
        </div></div>
</textarea></td>
                    <td class="auto-style10">
                        <textarea id="TextArea3" name="S3" class="auto-style8" disabled="disabled"><div class="author">
	<div class="yellow-cls">
		<span><i class="fa fa-quote-right"></i></span>
	</div>
<p>
	Quotes written here
	</p>
</div>
</textarea></td>
                    <td>
                        <textarea id="TextArea4" name="S4" class="auto-style11" disabled="disabled"><div class="profile-sub-content">
	<h2>Others Hope For Breakthroughs</h2>
	<div class="prfile-sub-content-wrapper">
		<figure>
		<img src="Image URL" width="270px" alt="#">
		</figure>
		<p>
		 Text ....
		</p>
	</div>
</div>
</textarea></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Misc:</td>
                    <td class="auto-style4">
                        Content in a block</td>
                    <td class="auto-style10">
                        List</td>
                    <td>
                        List with heading</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <textarea id="TextArea8" name="S8" class="auto-style18" disabled="disabled">For simple text put it in:
<p></p>
for heading:
<h2></h2>
for image:
<img src=PostImages/Images_Name /><p></p>
for link:
<a href=URL >Text</a>
Bold Text:
<span style=font-weight:bold >Text</span>
Italic Text:
<span style=font-style:italic >Text</span>
Insert-Video:
<div class=video-responsive >
    iframe tag of video
</div><p></p>
                        </textarea></td>
                    <td class="auto-style12">
                        <textarea id="TextArea5" name="S5" class="auto-style15" disabled="disabled"><div class="profile-inner-wrapper clearfix">
<div class="one-part">
		<p>
		Inside block
		</p>
	</div>
	<p>
Outside
</p>
</div>
</textarea></td>
                    <td class="auto-style13">
                        <textarea id="TextArea6" name="S6" class="auto-style16" disabled="disabled"><ul class="default-list list-style-one" >
	<li>20+16MP back camera</li>
	<li>Increased autofocus speed by 40%</li>
<li>Telephone lens and 16MP FRONT CAMERA</li>
	<li>PD pixel area by 100%</li>
	<li>Low light Large aperture (t/1.7) (lower the aperture number, larger the angle) </li>
	<li>Highest resolution quality</li>
</ul>
</textarea></td>
                    <td class="auto-style14">
                        <textarea id="TextArea7" name="S7" class="auto-style17" disabled="disabled"><ul class="default-list list-style-one" >
	<li><span style="font-weight:bold">Heading1</span>20+16MP back camera</li>
	<li><span style="font-weight:bold">Heading2</span>Increased autofocus speed by 40%</li>
<li><span style="font-weight:bold">Heading3</span>Telephone lens and 16MP FRONT CAMERA</li>
	<li><span style="font-weight:bold">Heading4</span>PD pixel area by 100%</li>
	<li>Low light Large aperture (t/1.7) (lower the aperture number, larger the angle) </li>
</ul>
</textarea></td>
                </tr>
                </table>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Dis1(400)"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Height="86px" TextMode="MultiLine" Width="706px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Dis2(100)"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Height="46px" Width="726px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Image"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="646px"></asp:TextBox>
            &nbsp;Image URL format: (../PostImages/Image_Name)<br />
            <br />
            Small Images<asp:TextBox ID="TextBox8" runat="server" Width="648px"></asp:TextBox>
            &nbsp;(370 X 270 pixels)<br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Author code"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox7" runat="server" Height="29px" Width="540px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
