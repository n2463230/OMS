<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<OMS.Admin.Models.LoginModel>"
    MasterPageFile="~/Views/Shared/LoginLayout.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Online Medical Store Admin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="<%:ConfigurationManager.AppSettings["URL"]%>Scripts/Login/Login.js"
        type="text/javascript"></script>
    <div id="container">
        <div class="titleHeader">
            Login
        </div>
        <%
            using (Html.BeginForm())
            {%>
        <%:Html.ValidationSummary(true)%>
        <p>
            <%:Html.ValidationMessageFor(m => m.UserName)%>
        </p>
        <%:Html.Label("username", "User Name")%>
        <br />
        <%:Html.TextBoxFor(m => m.UserName)%>
        <p>
            <%:Html.ValidationMessageFor(m => m.Password)%>
        </p>
        <%:Html.Label("Password", "Password")%>
        <br />
        <%:Html.PasswordFor(m => m.Password)%>
        <p>
        </p>
        <%:Html.CheckBoxFor(m => m.RememberMe, new { @class = "squaredTwo" })%>
        <%:Html.Label("Password", "Remember Me")%>
        <div class="buttons line">
            <input type="submit" value="Login" class="button1 action r_all right" />
            <input type="button" value="UnlockUser" class="button1 action r_all right" onclick="javascript:UnlockUser();" />
        </div>
        <%
            }
        %>
    </div>
</asp:Content>
