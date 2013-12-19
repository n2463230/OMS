// Type: System.Web.Mvc.Html.InputExtensions
// Assembly: System.Web.Mvc, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35
// Assembly location: E:\Nisarg Shah\Projects\Code\OMS.Admin\packages\Microsoft.AspNet.Mvc.4.0.20710.0\lib\net40\System.Web.Mvc.dll

using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Web.Mvc;

namespace System.Web.Mvc.Html
{
    public static class InputExtensions
    {
        public static MvcHtmlString CheckBox(this HtmlHelper htmlHelper, string name);
        public static MvcHtmlString CheckBox(this HtmlHelper htmlHelper, string name, bool isChecked);

        public static MvcHtmlString CheckBox(this HtmlHelper htmlHelper, string name, bool isChecked,
                                             object htmlAttributes);

        public static MvcHtmlString CheckBox(this HtmlHelper htmlHelper, string name, object htmlAttributes);

        public static MvcHtmlString CheckBox(this HtmlHelper htmlHelper, string name,
                                             IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString CheckBox(this HtmlHelper htmlHelper, string name, bool isChecked,
                                             IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString CheckBoxFor<TModel>(this HtmlHelper<TModel> htmlHelper,
                                                        Expression<Func<TModel, bool>> expression);

        public static MvcHtmlString CheckBoxFor<TModel>(this HtmlHelper<TModel> htmlHelper,
                                                        Expression<Func<TModel, bool>> expression, object htmlAttributes);

        public static MvcHtmlString CheckBoxFor<TModel>(this HtmlHelper<TModel> htmlHelper,
                                                        Expression<Func<TModel, bool>> expression,
                                                        IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString Hidden(this HtmlHelper htmlHelper, string name);
        public static MvcHtmlString Hidden(this HtmlHelper htmlHelper, string name, object value);
        public static MvcHtmlString Hidden(this HtmlHelper htmlHelper, string name, object value, object htmlAttributes);

        public static MvcHtmlString Hidden(this HtmlHelper htmlHelper, string name, object value,
                                           IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString HiddenFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                 Expression<Func<TModel, TProperty>> expression);

        public static MvcHtmlString HiddenFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                 Expression<Func<TModel, TProperty>> expression,
                                                                 object htmlAttributes);

        public static MvcHtmlString HiddenFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                 Expression<Func<TModel, TProperty>> expression,
                                                                 IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString Password(this HtmlHelper htmlHelper, string name);
        public static MvcHtmlString Password(this HtmlHelper htmlHelper, string name, object value);

        public static MvcHtmlString Password(this HtmlHelper htmlHelper, string name, object value,
                                             object htmlAttributes);

        public static MvcHtmlString Password(this HtmlHelper htmlHelper, string name, object value,
                                             IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString PasswordFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                   Expression<Func<TModel, TProperty>> expression);

        public static MvcHtmlString PasswordFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                   Expression<Func<TModel, TProperty>> expression,
                                                                   object htmlAttributes);

        public static MvcHtmlString PasswordFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                   Expression<Func<TModel, TProperty>> expression,
                                                                   IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString RadioButton(this HtmlHelper htmlHelper, string name, object value);

        public static MvcHtmlString RadioButton(this HtmlHelper htmlHelper, string name, object value,
                                                object htmlAttributes);

        public static MvcHtmlString RadioButton(this HtmlHelper htmlHelper, string name, object value,
                                                IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString RadioButton(this HtmlHelper htmlHelper, string name, object value, bool isChecked);

        public static MvcHtmlString RadioButton(this HtmlHelper htmlHelper, string name, object value, bool isChecked,
                                                object htmlAttributes);

        public static MvcHtmlString RadioButton(this HtmlHelper htmlHelper, string name, object value, bool isChecked,
                                                IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString RadioButtonFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                      Expression<Func<TModel, TProperty>> expression,
                                                                      object value);

        public static MvcHtmlString RadioButtonFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                      Expression<Func<TModel, TProperty>> expression,
                                                                      object value, object htmlAttributes);

        public static MvcHtmlString RadioButtonFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                      Expression<Func<TModel, TProperty>> expression,
                                                                      object value,
                                                                      IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString TextBox(this HtmlHelper htmlHelper, string name);
        public static MvcHtmlString TextBox(this HtmlHelper htmlHelper, string name, object value);
        public static MvcHtmlString TextBox(this HtmlHelper htmlHelper, string name, object value, string format);
        public static MvcHtmlString TextBox(this HtmlHelper htmlHelper, string name, object value, object htmlAttributes);

        public static MvcHtmlString TextBox(this HtmlHelper htmlHelper, string name, object value, string format,
                                            object htmlAttributes);

        public static MvcHtmlString TextBox(this HtmlHelper htmlHelper, string name, object value,
                                            IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString TextBox(this HtmlHelper htmlHelper, string name, object value, string format,
                                            IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString TextBoxFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                  Expression<Func<TModel, TProperty>> expression);

        public static MvcHtmlString TextBoxFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                  Expression<Func<TModel, TProperty>> expression,
                                                                  string format);

        public static MvcHtmlString TextBoxFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                  Expression<Func<TModel, TProperty>> expression,
                                                                  object htmlAttributes);

        public static MvcHtmlString TextBoxFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                  Expression<Func<TModel, TProperty>> expression,
                                                                  string format, object htmlAttributes);

        public static MvcHtmlString TextBoxFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                  Expression<Func<TModel, TProperty>> expression,
                                                                  IDictionary<string, object> htmlAttributes);

        public static MvcHtmlString TextBoxFor<TModel, TProperty>(this HtmlHelper<TModel> htmlHelper,
                                                                  Expression<Func<TModel, TProperty>> expression,
                                                                  string format,
                                                                  IDictionary<string, object> htmlAttributes);
    }
}
