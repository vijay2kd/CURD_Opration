<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task3.aspx.cs" Inherits="asp.net_task3.Task3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style14 {
            width: 153px;
        }

        .auto-style17 {
            width: 101%;
            height: 625px;
        }

        .auto-style18 {
            width: 153px;
            height: 37px;
        }

        .auto-style19 {
            height: 37px;
        }
        
        .auto-style20 {
            width: 518px;
            height: 613px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style20">
        <table class="auto-style17">
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="lbllid" runat="server" Text="ID :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="lbltitle" runat="server" Text="Title :"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">

                    <asp:Label ID="lblpyear" runat="server" Text="Publication Year :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpyear" runat="server" Height="27px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lblauthorname" runat="server" Text="Author Name :"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:DropDownList ID="txtauthorname" runat="server" Width="169px" Height="43px">
                        <asp:ListItem Selected="True">Ruakin bond</asp:ListItem>
                        <asp:ListItem>Vimal Jalala</asp:ListItem>
                        <asp:ListItem>BJP MP Varun Gandhi</asp:ListItem>
                        <asp:ListItem>Dr. Manmohan Singh</asp:ListItem>
                        <asp:ListItem>Dr Murali Mohan Chuntharu</asp:ListItem>
                        <asp:ListItem>Karunya Keshav and Sidhanta Pathak</asp:ListItem>
                        <asp:ListItem>Rima Hooja</asp:ListItem>
                        <asp:ListItem>Shashi Tharoor</asp:ListItem>
                        <asp:ListItem>Preeti Shenoy</asp:ListItem>
                        <asp:ListItem>Union Minister of Human Resource Development Prakash Javadekar</asp:ListItem>
                        <asp:ListItem>A Raja</asp:ListItem>
                        <asp:ListItem>Sreemoyee Piu Kundu</asp:ListItem>
                        <asp:ListItem>Neyaz Farooquee</asp:ListItem>
                        <asp:ListItem>Devendra Fadnavis</asp:ListItem>
                        <asp:ListItem>S Jaipal Reddy</asp:ListItem>
                        <asp:ListItem>Asad Durrani</asp:ListItem>
                        <asp:ListItem>Fali S Nariman</asp:ListItem>
                        <asp:ListItem>Sumana Roy</asp:ListItem>
                        <asp:ListItem>Anand Teltumbde</asp:ListItem>
                        <asp:ListItem>Sangeeta Ghosh</asp:ListItem>
                        <asp:ListItem>Saifuddin Soz</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>

                <td>
                    <asp:Button ID="lblinsert" runat="server" OnClick="btninsert" Text="Insert" Width="130px" Height="35px" />

                    <%--<asp:Button ID="btnUpdate" runat="server" OnClick="Update" Text="Update" />--%>
                    <br />
                    <br />

                    <asp:Button ID="btnDelete" runat="server" OnClick="Delete" Text="Delete" Width="130px" CssClass="auto-style3" Height="35px" />
                    <br />
                    <br />
                    <asp:Button ID="btnview" runat="server" Text="View" OnClick="btnview_Click" Width="131px" CssClass="auto-style4" Height="35px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Width="517px" Height="232px">
                    </asp:GridView></td>
            </tr>
        </table>
        
    </form>
</body>
</html>
