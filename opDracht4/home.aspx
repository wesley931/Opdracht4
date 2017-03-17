<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="opDracht4.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 250px;
        }
        .auto-style2 {
            width: 128px;
        }
    </style>
     <link rel="stylesheet" type="text/css" href="css.css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Het Aftellen is begonnen</h1>
        <br />
        <p>Het is vandaag:</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Literal ID="litVandaag" runat="server"></asp:Literal>
        </p>
        <p>Het is nu:</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Literal ID="litTijd" runat="server"></asp:Literal>
        </p>
        <h2>Wanneer is het Pasen?</h2>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Het Duurt nog:</td>
                <td>
                    <asp:Label ID="lblUren" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblMinutes" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblSeconds" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnVervers" runat="server" Text="Verversen" OnClick="btnVervers_Click" />
        <br />
    </div>
    </form>
</body>
</html>
