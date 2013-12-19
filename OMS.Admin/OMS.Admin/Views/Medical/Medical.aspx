<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<List<OMS.Admin.Models.MedicalModel>>"
    MasterPageFile="~/Views/Shared/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%= OMS.Admin.OMSen_EN.resOnlineMedicalStore %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="<%:ConfigurationManager.AppSettings["URL"]%>Scripts/Medicine/Medicine.js"
        type="text/javascript"></script>
    <div>
        <table width="100%">
            <tr>
                <td>
                    <label for="Medicine">
                        <%= OMS.Admin.OMSen_EN.resMedicineName %>
                    </label>
                </td>
                <td>
                    <input type="text" id="Text5" />
                </td>
                <td>
                    <label for="Medicine">
                        <%= OMS.Admin.OMSen_EN.resGenericName%>
                    </label>
                </td>
                <td>
                    <input type="text" id="Text4" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="Medicine">
                        <%= OMS.Admin.OMSen_EN.resCompanyName%>
                    </label>
                </td>
                <td>
                    <input type="text" id="Text6" />
                </td>
                <td>
                    <%--  <label for="Medicine">
                        Medicine Name:
                    </label>--%>
                </td>
                <td>
                    <%--<input type="text" id="Text3" />--%>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <a href="#" onclick="return AddMedicine();" class="button add">
                        <%= OMS.Admin.OMSen_EN.resAdd%></a>
                </td>
                <td>
                    <label for="count">
                        Total Medicines:
                        <%= Model.Count %>
                    </label>
                </td>
            </tr>
        </table>
    </div>
    <div class="styledTable">
        <table style="margin: 0px auto 15px auto; width: 800px; border: 1px solid #000;"
            cellspacing="0" cellpadding="0">
            <thead class="ui-widget-header">
                <tr style="cellspacing: 0">
                    <th>
                        <%= OMS.Admin.OMSen_EN.resMedicineName %>
                    </th>
                    <th>
                        <%= OMS.Admin.OMSen_EN.resCompanyName %>
                    </th>
                    <th>
                        <%= OMS.Admin.OMSen_EN.resGenericName%>
                    </th>
                    <th>
                        <%= OMS.Admin.OMSen_EN.resIsPrescriptionRequired%>
                    </th>
                    <th>
                        <%= OMS.Admin.OMSen_EN.resToBeDisplayedInFrontEnd%>
                    </th>
                    <th>
                        <%= OMS.Admin.OMSen_EN.resUpdateDelete%>
                    </th>
                </tr>
            </thead>
            <tbody class="ui-widget-content">
                <% foreach (var item in Model)
                   { %>
                <tr>
                    <td>
                        <%: item.MedicineName %>
                    </td>
                    <td>
                        <%: item.CompanyName %>
                    </td>
                    <td>
                        <%: item.GenericName %>
                    </td>
                    <td align="center">
                        <% if (item.IsPrescriptionRequired)
                           { %>
                        <img src="<%=Url.Content("~/Content/Icons/16x16/available.png") %>" alt="<%= OMS.Admin.OMSen_EN.resPrescriptionIsRequired%>"
                            title="<%= OMS.Admin.OMSen_EN.resPrescriptionIsRequired%>" />
                        <% } %>
                        <% else
                           { %>
                        <img src="<%=Url.Content("~/Content/Icons/16x16/closedelete.png") %>" alt="<%= OMS.Admin.OMSen_EN.resPrescriptionIsNotRequired%>"
                            title="<%= OMS.Admin.OMSen_EN.resPrescriptionIsNotRequired%>" />
                        <% } %>
                    </td>
                    <td align="center">
                        <% if (item.ToBeDisplayedInFrontEnd)
                           { %>
                        <img src="<%=Url.Content("~/Content/Icons/16x16/available.png") %>" alt="<%= OMS.Admin.OMSen_EN.resToBeDisplayed%>"
                            title="<%= OMS.Admin.OMSen_EN.resToBeDisplayed%>" />
                        <% } %>
                        <% else
                           { %>
                        <img src="<%=Url.Content("~/Content/Icons/16x16/closedelete.png") %>" alt="<%= OMS.Admin.OMSen_EN.resNotToDisplay%>"
                            title="<%= OMS.Admin.OMSen_EN.resNotToDisplay%>" />
                        <% } %>
                    </td>
                    <td align="center">
                        <img src="<%=Url.Content("~/Content/Icons/16x16/edit.png") %>" alt="<%= OMS.Admin.OMSen_EN.resUpdate%>"
                            style="cursor: pointer;" onclick="javascript:EditMedicine(<%: item.MedicineId %>);"
                            title="<%= OMS.Admin.OMSen_EN.resUpdate%>" id="<%: item.MedicineId %>" />
                        <img src="<%=Url.Content("~/Content/Icons/16x16/closedelete.png") %>" alt="<%= OMS.Admin.OMSen_EN.resDelete%>"
                            style="margin-left: 3px; cursor: pointer;" onclick="javascript:DeleteMedicine(<%: item.MedicineId %>);"
                            title="<%= OMS.Admin.OMSen_EN.resDelete%>" />
                    </td>
                </tr>
                <% } %>
                <tr>
                    <td colspan="6">
                        Total Medicines To Display:
                        <select>
                            <option value="10">10</option>
                            <option value="20">20</option>
                            <option value="30">30</option>
                            <option value="40">40</option>
                        </select>
                        | Page: <a href="PAge1AJAX">1</a>| <a href="PAge2AJAX">2</a>| <a href="PAge3AJAX">3</a>|
                        <a href="PAge4AJAX">4</a>| <a href="PAge4AJAX">5</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div style="display: none; width: 100px" id="addEditMedicine" title="Basic dialog">
        <table width="100%" style="background: #FFF">
            <tr style="display: none;">
                <td>
                    <input type="hidden" id="hdnMedicineId" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="txtMedicineName">
                        <%= OMS.Admin.OMSen_EN.resMedicineName %>:
                    </label>
                </td>
                <td>
                    <input type="text" id="txtMedicineName" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="txtGenericName">
                        <%= OMS.Admin.OMSen_EN.resGenericName%>:
                    </label>
                </td>
                <td>
                    <input type="text" id="txtGenericName" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="txtCompanyName">
                        <%= OMS.Admin.OMSen_EN.resCompanyName%>:
                    </label>
                </td>
                <td>
                    <input type="text" id="txtCompanyName" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="chkIsPrescriptionRequired">
                        <%= OMS.Admin.OMSen_EN.resIsPrescriptionRequired%>:
                    </label>
                </td>
                <td>
                    <input type="checkbox" id="chkIsPrescriptionRequired" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="chkDisplayInFrontEnd">
                        <%= OMS.Admin.OMSen_EN.resToBeDisplayedInFrontEnd%>:
                    </label>
                </td>
                <td>
                    <input type="checkbox" id="chkDisplayInFrontEnd" />
                </td>
            </tr>
            <tr>
                <td>
                    <a href="#" onclick="return Save();" class="button add">Add</a>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
