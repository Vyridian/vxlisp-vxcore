package com.vxlisp.vx.ui.html;

import java.util.concurrent.CompletableFuture;
import java.util.LinkedHashMap;
import java.util.Map;
import com.vxlisp.vx.*;
import com.vxlisp.vx.data.*;
import com.vxlisp.vx.web.*;
import com.vxlisp.vx.ui.*;

public final class Uihtml {


  /**
   * Constant: layout-app-html
   * Html App Renderer
   * {layout}
   */
  public static class Const_layout_app_html {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "layout-app-html", // name
        Ui.t_layout
      );
      return output;
    }

    public static void const_new(Ui.Type_layout output) {
      Ui.Class_layout outval = (Ui.Class_layout)output;
      outval.vx_p_constdef = constdef();
      Ui.Type_layout value = Core.f_copy(
        Ui.c_layout_app,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":fn-layout"),
          Uihtml.t_ui_layout_app_from_ui_orig_parent
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_fn_layout = value.fn_layout();
    }

  }

  public static final Ui.Type_layout c_layout_app_html = new Ui.Class_layout();


  /**
   * Constant: layout-else-html
   * Html Default Renderer
   * {layout}
   */
  public static class Const_layout_else_html {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "layout-else-html", // name
        Ui.t_layout
      );
      return output;
    }

    public static void const_new(Ui.Type_layout output) {
      Ui.Class_layout outval = (Ui.Class_layout)output;
      outval.vx_p_constdef = constdef();
      Ui.Type_layout value = Core.f_copy(
        Ui.c_layout_else,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":fn-layout"),
          Uihtml.t_ui_layout_default_from_ui_orig_parent
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_fn_layout = value.fn_layout();
    }

  }

  public static final Ui.Type_layout c_layout_else_html = new Ui.Class_layout();


  /**
   * Constant: layout-image-html
   * Html Image Renderer
   * {layout}
   */
  public static class Const_layout_image_html {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "layout-image-html", // name
        Ui.t_layout
      );
      return output;
    }

    public static void const_new(Ui.Type_layout output) {
      Ui.Class_layout outval = (Ui.Class_layout)output;
      outval.vx_p_constdef = constdef();
      Ui.Type_layout value = Core.f_copy(
        Ui.c_layout_image,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":fn-layout"),
          Uihtml.t_ui_layout_image_from_ui_orig_parent
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_fn_layout = value.fn_layout();
    }

  }

  public static final Ui.Type_layout c_layout_image_html = new Ui.Class_layout();


  /**
   * Constant: layout-label-html
   * Html Label Renderer
   * {layout}
   */
  public static class Const_layout_label_html {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "layout-label-html", // name
        Ui.t_layout
      );
      return output;
    }

    public static void const_new(Ui.Type_layout output) {
      Ui.Class_layout outval = (Ui.Class_layout)output;
      outval.vx_p_constdef = constdef();
      Ui.Type_layout value = Core.f_copy(
        Ui.c_layout_label,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":fn-layout"),
          Uihtml.t_ui_layout_label_from_ui_orig_parent
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_fn_layout = value.fn_layout();
    }

  }

  public static final Ui.Type_layout c_layout_label_html = new Ui.Class_layout();


  /**
   * Constant: layoutenginehtml
   * Html layout engine used to render html from ui and stylesheet
   * {layoutengine}
   */
  public static class Const_layoutenginehtml {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "layoutenginehtml", // name
        Ui.t_layoutengine
      );
      return output;
    }

    public static void const_new(Ui.Type_layoutengine output) {
      Ui.Class_layoutengine outval = (Ui.Class_layoutengine)output;
      outval.vx_p_constdef = constdef();
      Ui.Type_layoutengine value = Core.f_new(
        Ui.t_layoutengine,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":layoutmap"),
          Ui.f_layoutmap_from_layoutlist(
            Core.f_new(
              Ui.t_layoutlist,
              Core.vx_new(
                Core.t_anylist,
                Uihtml.c_layout_app_html,
                Uihtml.c_layout_image_html,
                Uihtml.c_layout_label_html
              )
            )
          ),
          Core.vx_new_string(":layoutelse"),
          Uihtml.c_layout_else_html,
          Core.vx_new_string(":boolean-print"),
          Uihtml.t_boolean_print_html,
          Core.vx_new_string(":boolean-layoutremove"),
          Uihtml.t_boolean_layoutremove_html,
          Core.vx_new_string(":boolean-layoutselected"),
          Uihtml.t_boolean_layoutselected_html,
          Core.vx_new_string(":boolean-layoutvisible"),
          Uihtml.t_boolean_layoutvisible_html,
          Core.vx_new_string(":stylesheetrender"),
          Uihtml.t_stylesheet_layout_html
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_boolean_print = value.boolean_print();
      outval.vx_p_boolean_layoutremove = value.boolean_layoutremove();
      outval.vx_p_boolean_layoutselected = value.boolean_layoutselected();
      outval.vx_p_boolean_layoutvisible = value.boolean_layoutvisible();
      outval.vx_p_layoutmap = value.layoutmap();
      outval.vx_p_layoutelse = value.layoutelse();
      outval.vx_p_stylesheetrender = value.stylesheetrender();
    }

  }

  public static final Ui.Type_layoutengine c_layoutenginehtml = new Ui.Class_layoutengine();


  /**
   * Constant: style-hidden
   * {style}
   */
  public static class Const_style_hidden {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "style-hidden", // name
        Html.t_style
      );
      return output;
    }

    public static void const_new(Html.Type_style output) {
      Html.Class_style outval = (Html.Class_style)output;
      outval.vx_p_constdef = constdef();
      Html.Type_style value = Core.f_new(
        Html.t_style,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":name"),
          Core.vx_new_string(".style-hidden")
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_props = value.props();
      outval.vx_p_stylelist = value.stylelist();
    }

  }

  public static final Html.Type_style c_style_hidden = new Html.Class_style();


  /**
   * Constant: style-selected
   * {style}
   */
  public static class Const_style_selected {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "style-selected", // name
        Html.t_style
      );
      return output;
    }

    public static void const_new(Html.Type_style output) {
      Html.Class_style outval = (Html.Class_style)output;
      outval.vx_p_constdef = constdef();
      Html.Type_style value = Core.f_new(
        Html.t_style,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":name"),
          Core.vx_new_string(".style-selected")
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_props = value.props();
      outval.vx_p_stylelist = value.stylelist();
    }

  }

  public static final Html.Type_style c_style_selected = new Html.Class_style();

  /**
   * @function boolean_layoutremove_html
   * Removes html node with a given ui.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-layoutremove-html)
   */
  public interface Func_boolean_layoutremove_html extends Core.Func_any_from_any {
    public Core.Type_boolean vx_boolean_layoutremove_html(final Ui.Type_ui ui);
  }

  public static class Class_boolean_layoutremove_html extends Core.Class_base implements Func_boolean_layoutremove_html {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_boolean_layoutremove_html output = new Uihtml.Class_boolean_layoutremove_html();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_boolean_layoutremove_html output = new Uihtml.Class_boolean_layoutremove_html();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-layoutremove-html", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_boolean_layoutremove_html;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_boolean_layoutremove_html;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_boolean_layoutremove_html(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_boolean_layoutremove_html(ui);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_layoutremove_html(final Ui.Type_ui ui) {
      Core.Type_boolean output = Uihtml.f_boolean_layoutremove_html(ui);
      return output;
    }

  }

  public static final Uihtml.Func_boolean_layoutremove_html e_boolean_layoutremove_html = new Uihtml.Class_boolean_layoutremove_html();
  public static final Uihtml.Func_boolean_layoutremove_html t_boolean_layoutremove_html = new Uihtml.Class_boolean_layoutremove_html();

  public static Core.Type_boolean f_boolean_layoutremove_html(final Ui.Type_ui ui) {
    Core.Type_boolean output = Core.e_boolean;
    output = Core.f_let(
      Core.t_boolean,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string id = ui.uid();
        Core.Type_any output_1 = Htmldoc.f_boolean_remove_from_id(
          id
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function boolean_layoutselected_html
   * Removes html node with a given ui.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-layoutselected-html)
   */
  public interface Func_boolean_layoutselected_html extends Core.Func_any_from_any {
    public Core.Type_boolean vx_boolean_layoutselected_html(final Ui.Type_ui ui);
  }

  public static class Class_boolean_layoutselected_html extends Core.Class_base implements Func_boolean_layoutselected_html {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_boolean_layoutselected_html output = new Uihtml.Class_boolean_layoutselected_html();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_boolean_layoutselected_html output = new Uihtml.Class_boolean_layoutselected_html();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-layoutselected-html", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_boolean_layoutselected_html;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_boolean_layoutselected_html;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_boolean_layoutselected_html(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_boolean_layoutselected_html(ui);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_layoutselected_html(final Ui.Type_ui ui) {
      Core.Type_boolean output = Uihtml.f_boolean_layoutselected_html(ui);
      return output;
    }

  }

  public static final Uihtml.Func_boolean_layoutselected_html e_boolean_layoutselected_html = new Uihtml.Class_boolean_layoutselected_html();
  public static final Uihtml.Func_boolean_layoutselected_html t_boolean_layoutselected_html = new Uihtml.Class_boolean_layoutselected_html();

  public static Core.Type_boolean f_boolean_layoutselected_html(final Ui.Type_ui ui) {
    Core.Type_boolean output = Core.e_boolean;
    output = Uihtml.f_boolean_writeclass_from_ui(
      ui
    );
    return output;
  }

  /**
   * @function boolean_layoutvisible_html
   * Removes html node with a given ui.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-layoutvisible-html)
   */
  public interface Func_boolean_layoutvisible_html extends Core.Func_any_from_any {
    public Core.Type_boolean vx_boolean_layoutvisible_html(final Ui.Type_ui ui);
  }

  public static class Class_boolean_layoutvisible_html extends Core.Class_base implements Func_boolean_layoutvisible_html {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_boolean_layoutvisible_html output = new Uihtml.Class_boolean_layoutvisible_html();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_boolean_layoutvisible_html output = new Uihtml.Class_boolean_layoutvisible_html();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-layoutvisible-html", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_boolean_layoutvisible_html;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_boolean_layoutvisible_html;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_boolean_layoutvisible_html(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_boolean_layoutvisible_html(ui);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_layoutvisible_html(final Ui.Type_ui ui) {
      Core.Type_boolean output = Uihtml.f_boolean_layoutvisible_html(ui);
      return output;
    }

  }

  public static final Uihtml.Func_boolean_layoutvisible_html e_boolean_layoutvisible_html = new Uihtml.Class_boolean_layoutvisible_html();
  public static final Uihtml.Func_boolean_layoutvisible_html t_boolean_layoutvisible_html = new Uihtml.Class_boolean_layoutvisible_html();

  public static Core.Type_boolean f_boolean_layoutvisible_html(final Ui.Type_ui ui) {
    Core.Type_boolean output = Core.e_boolean;
    output = Uihtml.f_boolean_writeclass_from_ui(
      ui
    );
    return output;
  }

  /**
   * @function boolean_print_html
   * Create a print ready version of ui
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-print-html)
   */
  public interface Func_boolean_print_html extends Core.Func_any_from_any_context {
    public Core.Type_boolean vx_boolean_print_html(final Core.Type_context context, final Ui.Type_ui ui);
  }

  public static class Class_boolean_print_html extends Core.Class_base implements Func_boolean_print_html {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_boolean_print_html output = new Uihtml.Class_boolean_print_html();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_boolean_print_html output = new Uihtml.Class_boolean_print_html();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-print-html", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_boolean_print_html;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_boolean_print_html;
      return output;
    }

    @Override
    public Core.Func_any_from_any_context vx_fn_new(Core.Class_any_from_any_context.IFn fn) {
      return Core.e_any_from_any_context;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any_context(final T generic_any_1, final Core.Type_context context, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_boolean_print_html(context, inputval);
      output = Core.f_any_from_any_context(generic_any_1, context, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_boolean_print_html(context, ui);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_print_html(final Core.Type_context context, final Ui.Type_ui ui) {
      Core.Type_boolean output = Uihtml.f_boolean_print_html(context, ui);
      return output;
    }

  }

  public static final Uihtml.Func_boolean_print_html e_boolean_print_html = new Uihtml.Class_boolean_print_html();
  public static final Uihtml.Func_boolean_print_html t_boolean_print_html = new Uihtml.Class_boolean_print_html();

  public static Core.Type_boolean f_boolean_print_html(final Core.Type_context context, final Ui.Type_ui ui) {
    Core.Type_boolean output = Core.e_boolean;
    output = Core.f_let(
      Core.t_boolean,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string uid = ui.uid();
        Ui.Type_stylesheet stylesheetui = Ui.f_stylesheet_readstate(
          context
        );
        Html.Type_stylesheet stylesheethtml = Uihtml.f_stylesheet_from_stylesheet(
          stylesheetui
        );
        Core.Type_string styletext = Html.f_string_from_stylesheet_indent(
          stylesheethtml,
          Core.vx_new_int(0)
        );
        Core.Type_any output_1 = Htmldoc.f_boolean_print_from_id_stylesheettext(
          uid,
          styletext
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function boolean_writeclass_from_ui
   * Writes to an html node adding or removing the given hidden class.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-writeclass<-ui)
   */
  public interface Func_boolean_writeclass_from_ui extends Core.Func_any_from_any {
    public Core.Type_boolean vx_boolean_writeclass_from_ui(final Ui.Type_ui ui);
  }

  public static class Class_boolean_writeclass_from_ui extends Core.Class_base implements Func_boolean_writeclass_from_ui {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_boolean_writeclass_from_ui output = new Uihtml.Class_boolean_writeclass_from_ui();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_boolean_writeclass_from_ui output = new Uihtml.Class_boolean_writeclass_from_ui();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-writeclass<-ui", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_boolean_writeclass_from_ui;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_boolean_writeclass_from_ui;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_boolean_writeclass_from_ui(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_boolean_writeclass_from_ui(ui);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_writeclass_from_ui(final Ui.Type_ui ui) {
      Core.Type_boolean output = Uihtml.f_boolean_writeclass_from_ui(ui);
      return output;
    }

  }

  public static final Uihtml.Func_boolean_writeclass_from_ui e_boolean_writeclass_from_ui = new Uihtml.Class_boolean_writeclass_from_ui();
  public static final Uihtml.Func_boolean_writeclass_from_ui t_boolean_writeclass_from_ui = new Uihtml.Class_boolean_writeclass_from_ui();

  public static Core.Type_boolean f_boolean_writeclass_from_ui(final Ui.Type_ui ui) {
    Core.Type_boolean output = Core.e_boolean;
    output = Core.f_let(
      Core.t_boolean,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string id = ui.uid();
        Core.Type_string sclass = Uihtml.f_string_class_from_ui(
          ui
        );
        Core.Type_any output_1 = Htmldoc.f_boolean_write_from_id_attribute_value(
          id,
          Core.vx_new_string("class"),
          sclass
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function boolean_writeeventsall_from_ui
   * Write the events for ui and subui to the dom.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-writeeventsall<-ui)
   */
  public interface Func_boolean_writeeventsall_from_ui extends Core.Func_any_from_any {
    public Core.Type_boolean vx_boolean_writeeventsall_from_ui(final Ui.Type_ui ui);
  }

  public static class Class_boolean_writeeventsall_from_ui extends Core.Class_base implements Func_boolean_writeeventsall_from_ui {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_boolean_writeeventsall_from_ui output = new Uihtml.Class_boolean_writeeventsall_from_ui();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_boolean_writeeventsall_from_ui output = new Uihtml.Class_boolean_writeeventsall_from_ui();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-writeeventsall<-ui", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_boolean_writeeventsall_from_ui;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_boolean_writeeventsall_from_ui;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_boolean_writeeventsall_from_ui(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_boolean_writeeventsall_from_ui(ui);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_writeeventsall_from_ui(final Ui.Type_ui ui) {
      Core.Type_boolean output = Uihtml.f_boolean_writeeventsall_from_ui(ui);
      return output;
    }

  }

  public static final Uihtml.Func_boolean_writeeventsall_from_ui e_boolean_writeeventsall_from_ui = new Uihtml.Class_boolean_writeeventsall_from_ui();
  public static final Uihtml.Func_boolean_writeeventsall_from_ui t_boolean_writeeventsall_from_ui = new Uihtml.Class_boolean_writeeventsall_from_ui();

  public static Core.Type_boolean f_boolean_writeeventsall_from_ui(final Ui.Type_ui ui) {
    Core.Type_boolean output = Core.e_boolean;
    output = Core.f_let(
      Core.t_boolean,
      Core.t_any_from_func.vx_fn_new(() -> {
        Ui.Type_uimap uimap = ui.uimap();
        Core.Type_boolean iswrite1 = Htmldoc.f_boolean_writeevents_from_ui(
          ui
        );
        Core.Type_boolean iswrite2 = Uihtml.f_boolean_writeeventsall_from_uimap(
          uimap
        );
        Core.Type_any output_1 = Core.f_and(
          iswrite1,
          iswrite2
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function boolean_writeeventsall_from_uimap
   * Write the events for each ui and subui to the dom.
   * @param  {uimap} uimap
   * @return {boolean}
   * (func boolean-writeeventsall<-uimap)
   */
  public interface Func_boolean_writeeventsall_from_uimap extends Core.Func_any_from_any {
    public Core.Type_boolean vx_boolean_writeeventsall_from_uimap(final Ui.Type_uimap uimap);
  }

  public static class Class_boolean_writeeventsall_from_uimap extends Core.Class_base implements Func_boolean_writeeventsall_from_uimap {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_boolean_writeeventsall_from_uimap output = new Uihtml.Class_boolean_writeeventsall_from_uimap();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_boolean_writeeventsall_from_uimap output = new Uihtml.Class_boolean_writeeventsall_from_uimap();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-writeeventsall<-uimap", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_boolean_writeeventsall_from_uimap;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_boolean_writeeventsall_from_uimap;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_uimap inputval = (Ui.Type_uimap)value;
      Core.Type_any outputval = Uihtml.f_boolean_writeeventsall_from_uimap(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_uimap uimap = Core.f_any_from_any(Ui.t_uimap, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_boolean_writeeventsall_from_uimap(uimap);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_writeeventsall_from_uimap(final Ui.Type_uimap uimap) {
      Core.Type_boolean output = Uihtml.f_boolean_writeeventsall_from_uimap(uimap);
      return output;
    }

  }

  public static final Uihtml.Func_boolean_writeeventsall_from_uimap e_boolean_writeeventsall_from_uimap = new Uihtml.Class_boolean_writeeventsall_from_uimap();
  public static final Uihtml.Func_boolean_writeeventsall_from_uimap t_boolean_writeeventsall_from_uimap = new Uihtml.Class_boolean_writeeventsall_from_uimap();

  public static Core.Type_boolean f_boolean_writeeventsall_from_uimap(final Ui.Type_uimap uimap) {
    Core.Type_boolean output = Core.e_boolean;
    output = Core.f_let(
      Core.t_boolean,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_booleanlist boollist = Core.f_list_from_map_1(
          Core.t_booleanlist,
          uimap,
          Core.t_any_from_key_value.vx_fn_new((key_any, value_any) -> {
            Core.Type_string key = Core.f_any_from_any(Core.t_string, key_any);
            Ui.Type_ui value = Core.f_any_from_any(Ui.t_ui, value_any);
            Core.Type_any output_2 = Uihtml.f_boolean_writeeventsall_from_ui(
              value
            );
            return output_2;
          })
        );
        Core.Type_any output_1 = Core.f_and_1(
          boollist
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function boolean_writeselected_from_ui
   * Writes to an html node adding or removing the selected class.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-writeselected<-ui)
   */
  public interface Func_boolean_writeselected_from_ui extends Core.Func_any_from_any {
    public Core.Type_boolean vx_boolean_writeselected_from_ui(final Ui.Type_ui ui);
  }

  public static class Class_boolean_writeselected_from_ui extends Core.Class_base implements Func_boolean_writeselected_from_ui {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_boolean_writeselected_from_ui output = new Uihtml.Class_boolean_writeselected_from_ui();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_boolean_writeselected_from_ui output = new Uihtml.Class_boolean_writeselected_from_ui();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-writeselected<-ui", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_boolean_writeselected_from_ui;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_boolean_writeselected_from_ui;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_boolean_writeselected_from_ui(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_boolean_writeselected_from_ui(ui);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_writeselected_from_ui(final Ui.Type_ui ui) {
      Core.Type_boolean output = Uihtml.f_boolean_writeselected_from_ui(ui);
      return output;
    }

  }

  public static final Uihtml.Func_boolean_writeselected_from_ui e_boolean_writeselected_from_ui = new Uihtml.Class_boolean_writeselected_from_ui();
  public static final Uihtml.Func_boolean_writeselected_from_ui t_boolean_writeselected_from_ui = new Uihtml.Class_boolean_writeselected_from_ui();

  public static Core.Type_boolean f_boolean_writeselected_from_ui(final Ui.Type_ui ui) {
    Core.Type_boolean output = Core.e_boolean;
    output = Uihtml.f_boolean_writeclass_from_ui(
      ui
    );
    return output;
  }

  /**
   * @function boolean_writevisible_from_ui
   * Writes to an html node adding or removing the hidden class.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-writevisible<-ui)
   */
  public interface Func_boolean_writevisible_from_ui extends Core.Func_any_from_any {
    public Core.Type_boolean vx_boolean_writevisible_from_ui(final Ui.Type_ui ui);
  }

  public static class Class_boolean_writevisible_from_ui extends Core.Class_base implements Func_boolean_writevisible_from_ui {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_boolean_writevisible_from_ui output = new Uihtml.Class_boolean_writevisible_from_ui();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_boolean_writevisible_from_ui output = new Uihtml.Class_boolean_writevisible_from_ui();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-writevisible<-ui", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_boolean_writevisible_from_ui;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_boolean_writevisible_from_ui;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_boolean_writevisible_from_ui(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_boolean_writevisible_from_ui(ui);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_writevisible_from_ui(final Ui.Type_ui ui) {
      Core.Type_boolean output = Uihtml.f_boolean_writevisible_from_ui(ui);
      return output;
    }

  }

  public static final Uihtml.Func_boolean_writevisible_from_ui e_boolean_writevisible_from_ui = new Uihtml.Class_boolean_writevisible_from_ui();
  public static final Uihtml.Func_boolean_writevisible_from_ui t_boolean_writevisible_from_ui = new Uihtml.Class_boolean_writevisible_from_ui();

  public static Core.Type_boolean f_boolean_writevisible_from_ui(final Ui.Type_ui ui) {
    Core.Type_boolean output = Core.e_boolean;
    output = Uihtml.f_boolean_writeclass_from_ui(
      ui
    );
    return output;
  }

  /**
   * @function context_write
   * @return {context}
   * (func context-write)
   */
  public interface Func_context_write extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_context vx_context_write(final Core.Type_context context);
  }

  public static class Class_context_write extends Core.Class_base implements Func_context_write {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_context_write output = new Uihtml.Class_context_write();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_context_write output = new Uihtml.Class_context_write();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "context-write", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "context", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_context_write;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_context_write;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_context_write(context);
      return output;
    }

    @Override
    public Core.Type_context vx_context_write(final Core.Type_context context) {
      Core.Type_context output = Uihtml.f_context_write(context);
      return output;
    }

  }

  public static final Uihtml.Func_context_write e_context_write = new Uihtml.Class_context_write();
  public static final Uihtml.Func_context_write t_context_write = new Uihtml.Class_context_write();

  public static Core.Type_context f_context_write(final Core.Type_context context) {
    Core.Type_context output = Core.e_context;
    output = Htmldoc.f_context_write(
      context
    );
    return output;
  }

  /**
   * @function divchild_from_ui
   * Returns a divchild from a ui
   * @param  {ui} ui
   * @return {divchild}
   * (func divchild<-ui)
   */
  public interface Func_divchild_from_ui extends Core.Func_any_from_any {
    public Html.Type_divchild vx_divchild_from_ui(final Ui.Type_ui ui);
  }

  public static class Class_divchild_from_ui extends Core.Class_base implements Func_divchild_from_ui {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_divchild_from_ui output = new Uihtml.Class_divchild_from_ui();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_divchild_from_ui output = new Uihtml.Class_divchild_from_ui();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "divchild<-ui", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "divchild", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_divchild_from_ui;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_divchild_from_ui;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_divchild_from_ui(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_divchild_from_ui(ui);
      return output;
    }

    @Override
    public Html.Type_divchild vx_divchild_from_ui(final Ui.Type_ui ui) {
      Html.Type_divchild output = Uihtml.f_divchild_from_ui(ui);
      return output;
    }

  }

  public static final Uihtml.Func_divchild_from_ui e_divchild_from_ui = new Uihtml.Class_divchild_from_ui();
  public static final Uihtml.Func_divchild_from_ui t_divchild_from_ui = new Uihtml.Class_divchild_from_ui();

  public static Html.Type_divchild f_divchild_from_ui(final Ui.Type_ui ui) {
    Html.Type_divchild output = Html.e_divchild;
    output = Core.f_let(
      Html.t_div,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string uid = ui.uid();
        Ui.Type_uimap uimapchild = ui.uimap();
        Ui.Type_style uistyle = ui.style();
        Ui.Type_stylelist uistyles = ui.stylelist();
        Html.Type_style styleunique = Uihtml.f_style_from_style(
          uistyle
        );
        Html.Type_stylelist htmlstyles = Uihtml.f_stylelist_from_stylelist(
          uistyles
        );
        Core.Type_any output_1 = Core.f_new(
          Html.t_div,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":id"),
            uid,
            Core.vx_new_string(":style-unique"),
            styleunique,
            Core.vx_new_string(":stylelist"),
            htmlstyles
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function divchildlist_from_uimap
   * Returns a divchildlist of divs from a uimap
   * @param  {uimap} uimap
   * @return {divchildlist}
   * (func divchildlist<-uimap)
   */
  public interface Func_divchildlist_from_uimap extends Core.Func_any_from_any {
    public Html.Type_divchildlist vx_divchildlist_from_uimap(final Ui.Type_uimap uimap);
  }

  public static class Class_divchildlist_from_uimap extends Core.Class_base implements Func_divchildlist_from_uimap {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_divchildlist_from_uimap output = new Uihtml.Class_divchildlist_from_uimap();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_divchildlist_from_uimap output = new Uihtml.Class_divchildlist_from_uimap();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "divchildlist<-uimap", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "divchildlist", // name
          ":list", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Html.t_divchild), // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_divchildlist_from_uimap;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_divchildlist_from_uimap;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_uimap inputval = (Ui.Type_uimap)value;
      Core.Type_any outputval = Uihtml.f_divchildlist_from_uimap(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_uimap uimap = Core.f_any_from_any(Ui.t_uimap, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_divchildlist_from_uimap(uimap);
      return output;
    }

    @Override
    public Html.Type_divchildlist vx_divchildlist_from_uimap(final Ui.Type_uimap uimap) {
      Html.Type_divchildlist output = Uihtml.f_divchildlist_from_uimap(uimap);
      return output;
    }

  }

  public static final Uihtml.Func_divchildlist_from_uimap e_divchildlist_from_uimap = new Uihtml.Class_divchildlist_from_uimap();
  public static final Uihtml.Func_divchildlist_from_uimap t_divchildlist_from_uimap = new Uihtml.Class_divchildlist_from_uimap();

  public static Html.Type_divchildlist f_divchildlist_from_uimap(final Ui.Type_uimap uimap) {
    Html.Type_divchildlist output = Html.e_divchildlist;
    output = Core.f_list_from_map_1(
      Html.t_divchildlist,
      uimap,
      Core.t_any_from_key_value.vx_fn_new((key_any, value_any) -> {
        Core.Type_string key = Core.f_any_from_any(Core.t_string, key_any);
        Ui.Type_ui value = Core.f_any_from_any(Ui.t_ui, value_any);
        Core.Type_any output_1 = Core.f_let(
          Html.t_div,
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_string uid = value.uid();
            Core.Type_any output_2 = Core.f_new(
              Html.t_div,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":id"),
                uid
              )
            );
            return output_2;
          })
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function divchildlist_from_uimap 1
   * Returns a divchildlist of divs from a uimap
   * @param  {uimap} uimap
   * @return {divchildlist}
   * (func divchildlist<-uimap)
   */
  public interface Func_divchildlist_from_uimap_1 extends Core.Func_any_from_any {
    public Html.Type_divchildlist vx_divchildlist_from_uimap_1(final Ui.Type_uimap uimap);
  }

  public static class Class_divchildlist_from_uimap_1 extends Core.Class_base implements Func_divchildlist_from_uimap_1 {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_divchildlist_from_uimap_1 output = new Uihtml.Class_divchildlist_from_uimap_1();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_divchildlist_from_uimap_1 output = new Uihtml.Class_divchildlist_from_uimap_1();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "divchildlist<-uimap", // name
        1, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "divchildlist", // name
          ":list", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Html.t_divchild), // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_divchildlist_from_uimap_1;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_divchildlist_from_uimap_1;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_uimap inputval = (Ui.Type_uimap)value;
      Core.Type_any outputval = Uihtml.f_divchildlist_from_uimap_1(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_uimap uimap = Core.f_any_from_any(Ui.t_uimap, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_divchildlist_from_uimap_1(uimap);
      return output;
    }

    @Override
    public Html.Type_divchildlist vx_divchildlist_from_uimap_1(final Ui.Type_uimap uimap) {
      Html.Type_divchildlist output = Uihtml.f_divchildlist_from_uimap_1(uimap);
      return output;
    }

  }

  public static final Uihtml.Func_divchildlist_from_uimap_1 e_divchildlist_from_uimap_1 = new Uihtml.Class_divchildlist_from_uimap_1();
  public static final Uihtml.Func_divchildlist_from_uimap_1 t_divchildlist_from_uimap_1 = new Uihtml.Class_divchildlist_from_uimap_1();

  public static Html.Type_divchildlist f_divchildlist_from_uimap_1(final Ui.Type_uimap uimap) {
    Html.Type_divchildlist output = Html.e_divchildlist;
    output = Core.f_list_from_map_1(
      Html.t_divchildlist,
      uimap,
      Core.t_any_from_key_value.vx_fn_new((key_any, value_any) -> {
        Core.Type_string key = Core.f_any_from_any(Core.t_string, key_any);
        Ui.Type_ui value = Core.f_any_from_any(Ui.t_ui, value_any);
        Core.Type_any output_1 = Core.f_let(
          Html.t_div,
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_string uid = value.uid();
            Core.Type_any output_2 = Core.f_new(
              Html.t_div,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":id"),
                uid
              )
            );
            return output_2;
          })
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function divchildlist_from_uimap_origmap_parent
   * Returns a divchildlist of divs from a uimap
   * @param  {uimap} uimap
   * @param  {uimap} origmap
   * @param  {ui} parent
   * @return {divchildlist}
   * (func divchildlist<-uimap-origmap-parent)
   */
  public interface Func_divchildlist_from_uimap_origmap_parent extends Core.Type_func, Core.Type_replfunc {
    public Html.Type_divchildlist vx_divchildlist_from_uimap_origmap_parent(final Ui.Type_uimap uimap, final Ui.Type_uimap origmap, final Ui.Type_ui parent);
  }

  public static class Class_divchildlist_from_uimap_origmap_parent extends Core.Class_base implements Func_divchildlist_from_uimap_origmap_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_divchildlist_from_uimap_origmap_parent output = new Uihtml.Class_divchildlist_from_uimap_origmap_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_divchildlist_from_uimap_origmap_parent output = new Uihtml.Class_divchildlist_from_uimap_origmap_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "divchildlist<-uimap-origmap-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "divchildlist", // name
          ":list", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Html.t_divchild), // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_divchildlist_from_uimap_origmap_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_divchildlist_from_uimap_origmap_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_uimap uimap = Core.f_any_from_any(Ui.t_uimap, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_uimap origmap = Core.f_any_from_any(Ui.t_uimap, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_divchildlist_from_uimap_origmap_parent(uimap, origmap, parent);
      return output;
    }

    @Override
    public Html.Type_divchildlist vx_divchildlist_from_uimap_origmap_parent(final Ui.Type_uimap uimap, final Ui.Type_uimap origmap, final Ui.Type_ui parent) {
      Html.Type_divchildlist output = Uihtml.f_divchildlist_from_uimap_origmap_parent(uimap, origmap, parent);
      return output;
    }

  }

  public static final Uihtml.Func_divchildlist_from_uimap_origmap_parent e_divchildlist_from_uimap_origmap_parent = new Uihtml.Class_divchildlist_from_uimap_origmap_parent();
  public static final Uihtml.Func_divchildlist_from_uimap_origmap_parent t_divchildlist_from_uimap_origmap_parent = new Uihtml.Class_divchildlist_from_uimap_origmap_parent();

  public static Html.Type_divchildlist f_divchildlist_from_uimap_origmap_parent(final Ui.Type_uimap uimap, final Ui.Type_uimap origmap, final Ui.Type_ui parent) {
    Html.Type_divchildlist output = Html.e_divchildlist;
    output = Core.f_list_from_map_1(
      Html.t_divchildlist,
      uimap,
      Core.t_any_from_key_value.vx_fn_new((key_any, value_any) -> {
        Core.Type_string key = Core.f_any_from_any(Core.t_string, key_any);
        Ui.Type_ui value = Core.f_any_from_any(Ui.t_ui, value_any);
        Core.Type_any output_1 = Core.f_let(
          Html.t_node,
          Core.t_any_from_func.vx_fn_new(() -> {
            Ui.Type_ui origvalue = Core.f_any_from_map(
              Ui.t_ui,
              origmap,
              key
            );
            Core.Type_any output_2 = Uihtml.f_node_from_ui_orig_parent(
              value,
              origvalue,
              parent
            );
            return output_2;
          })
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function node_app_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {node}
   * (func node-app<-ui-orig-parent)
   */
  public interface Func_node_app_from_ui_orig_parent extends Core.Type_func, Core.Type_replfunc {
    public Html.Type_node vx_node_app_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent);
  }

  public static class Class_node_app_from_ui_orig_parent extends Core.Class_base implements Func_node_app_from_ui_orig_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_node_app_from_ui_orig_parent output = new Uihtml.Class_node_app_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_node_app_from_ui_orig_parent output = new Uihtml.Class_node_app_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node-app<-ui-orig-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "node", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_node_app_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_node_app_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui orig = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_node_app_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

    @Override
    public Html.Type_node vx_node_app_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
      Html.Type_node output = Uihtml.f_node_app_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

  }

  public static final Uihtml.Func_node_app_from_ui_orig_parent e_node_app_from_ui_orig_parent = new Uihtml.Class_node_app_from_ui_orig_parent();
  public static final Uihtml.Func_node_app_from_ui_orig_parent t_node_app_from_ui_orig_parent = new Uihtml.Class_node_app_from_ui_orig_parent();

  public static Html.Type_node f_node_app_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
    Html.Type_node output = Html.e_node;
    output = Core.f_let(
      Html.t_node,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string uid = ui.uid();
        Ui.Type_uimap uimap = ui.uimap();
        Ui.Type_uimap origmap = orig.uimap();
        Html.Type_divchildlist children = Uihtml.f_divchildlist_from_uimap_origmap_parent(
          uimap,
          origmap,
          ui
        );
        Core.Type_any output_1 = Core.f_new(
          Html.t_div,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":id"),
            uid,
            Core.vx_new_string(":nodes"),
            children
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function node_default_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {node}
   * (func node-default<-ui-orig-parent)
   */
  public interface Func_node_default_from_ui_orig_parent extends Core.Type_func, Core.Type_replfunc {
    public Html.Type_node vx_node_default_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent);
  }

  public static class Class_node_default_from_ui_orig_parent extends Core.Class_base implements Func_node_default_from_ui_orig_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_node_default_from_ui_orig_parent output = new Uihtml.Class_node_default_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_node_default_from_ui_orig_parent output = new Uihtml.Class_node_default_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node-default<-ui-orig-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "node", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_node_default_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_node_default_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui orig = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_node_default_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

    @Override
    public Html.Type_node vx_node_default_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
      Html.Type_node output = Uihtml.f_node_default_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

  }

  public static final Uihtml.Func_node_default_from_ui_orig_parent e_node_default_from_ui_orig_parent = new Uihtml.Class_node_default_from_ui_orig_parent();
  public static final Uihtml.Func_node_default_from_ui_orig_parent t_node_default_from_ui_orig_parent = new Uihtml.Class_node_default_from_ui_orig_parent();

  public static Html.Type_node f_node_default_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
    Html.Type_node output = Html.e_node;
    output = Core.f_let(
      Html.t_node,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string uid = ui.uid();
        Ui.Type_uimap uimap = ui.uimap();
        Ui.Type_style uistyle = ui.style();
        Ui.Type_uimap origmap = orig.uimap();
        Html.Type_style style = Uihtml.f_style_from_style(
          uistyle
        );
        Html.Type_stylelist styles = Uihtml.f_stylelist_extra_from_ui(
          ui
        );
        Html.Type_divchildlist children = Uihtml.f_divchildlist_from_uimap_origmap_parent(
          uimap,
          origmap,
          ui
        );
        Core.Type_any output_1 = Core.f_new(
          Html.t_div,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":id"),
            uid,
            Core.vx_new_string(":style-unique"),
            style,
            Core.vx_new_string(":stylelist"),
            styles,
            Core.vx_new_string(":nodes"),
            children
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function node_image_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {node}
   * (func node-image<-ui-orig-parent)
   */
  public interface Func_node_image_from_ui_orig_parent extends Core.Type_func, Core.Type_replfunc {
    public Html.Type_node vx_node_image_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent);
  }

  public static class Class_node_image_from_ui_orig_parent extends Core.Class_base implements Func_node_image_from_ui_orig_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_node_image_from_ui_orig_parent output = new Uihtml.Class_node_image_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_node_image_from_ui_orig_parent output = new Uihtml.Class_node_image_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node-image<-ui-orig-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "node", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_node_image_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_node_image_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui orig = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_node_image_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

    @Override
    public Html.Type_node vx_node_image_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
      Html.Type_node output = Uihtml.f_node_image_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

  }

  public static final Uihtml.Func_node_image_from_ui_orig_parent e_node_image_from_ui_orig_parent = new Uihtml.Class_node_image_from_ui_orig_parent();
  public static final Uihtml.Func_node_image_from_ui_orig_parent t_node_image_from_ui_orig_parent = new Uihtml.Class_node_image_from_ui_orig_parent();

  public static Html.Type_node f_node_image_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
    Html.Type_node output = Html.e_node;
    output = Core.f_let(
      Html.t_node,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string uid = ui.uid();
        Ui.Type_style uistyle = ui.style();
        Core.Type_any data = ui.data();
        File.Type_file file = Core.f_any_from_any(
          File.t_file,
          data
        );
        Core.Type_string path = File.f_pathfull_from_file(
          file
        );
        Html.Type_style style = Uihtml.f_style_from_style(
          uistyle
        );
        Html.Type_stylelist styles = Uihtml.f_stylelist_extra_from_ui(
          ui
        );
        Core.Type_any output_1 = Core.f_new(
          Html.t_img,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":id"),
            uid,
            Core.vx_new_string(":style-unique"),
            style,
            Core.vx_new_string(":stylelist"),
            styles,
            Core.vx_new_string(":src"),
            path
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function node_label_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {node}
   * (func node-label<-ui-orig-parent)
   */
  public interface Func_node_label_from_ui_orig_parent extends Core.Type_func, Core.Type_replfunc {
    public Html.Type_node vx_node_label_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent);
  }

  public static class Class_node_label_from_ui_orig_parent extends Core.Class_base implements Func_node_label_from_ui_orig_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_node_label_from_ui_orig_parent output = new Uihtml.Class_node_label_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_node_label_from_ui_orig_parent output = new Uihtml.Class_node_label_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node-label<-ui-orig-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "node", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_node_label_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_node_label_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui orig = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_node_label_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

    @Override
    public Html.Type_node vx_node_label_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
      Html.Type_node output = Uihtml.f_node_label_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

  }

  public static final Uihtml.Func_node_label_from_ui_orig_parent e_node_label_from_ui_orig_parent = new Uihtml.Class_node_label_from_ui_orig_parent();
  public static final Uihtml.Func_node_label_from_ui_orig_parent t_node_label_from_ui_orig_parent = new Uihtml.Class_node_label_from_ui_orig_parent();

  public static Html.Type_node f_node_label_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
    Html.Type_node output = Html.e_node;
    output = Core.f_let(
      Html.t_node,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string uid = ui.uid();
        Core.Type_any data = ui.data();
        Ui.Type_uimap uimap = ui.uimap();
        Ui.Type_style uistyle = ui.style();
        Ui.Type_stylelist uistyles = ui.stylelist();
        Core.Type_any datatype = Core.f_type_from_any(
          data
        );
        Html.Type_style style = Uihtml.f_style_from_style(
          uistyle
        );
        Html.Type_stylelist styles = Uihtml.f_stylelist_from_stylelist(
          uistyles
        );
        Core.Type_string text = Core.f_if_2(
          Core.t_string,
          Core.vx_new(
            Core.t_thenelselist,
            Core.f_then(
              Core.t_boolean_from_func.vx_fn_new(() -> {
                Core.Type_any output_2 = Core.f_eqeq(
                  datatype,
                  Core.t_string
                );
                return output_2;
              }),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_3 = Core.f_any_from_any(
                  Core.t_string,
                  data
                );
                return output_3;
              })
            ),
            Core.f_else(
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_4 = Core.f_string_from_any(
                  data
                );
                return output_4;
              })
            )
          )
        );
        Core.Type_any output_1 = Core.f_new(
          Html.t_p,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":id"),
            uid,
            Core.vx_new_string(":style-unique"),
            style,
            Core.vx_new_string(":stylelist"),
            styles,
            Core.vx_new_string(":text"),
            text
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function node_layout_from_node_ui_parent
   * @param  {node} node
   * @param  {ui} ui
   * @param  {ui} parent
   * @return {node}
   * (func node-layout<-node-ui-parent)
   */
  public interface Func_node_layout_from_node_ui_parent extends Core.Type_func, Core.Type_replfunc {
    public Html.Type_node vx_node_layout_from_node_ui_parent(final Html.Type_node node, final Ui.Type_ui ui, final Ui.Type_ui parent);
  }

  public static class Class_node_layout_from_node_ui_parent extends Core.Class_base implements Func_node_layout_from_node_ui_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_node_layout_from_node_ui_parent output = new Uihtml.Class_node_layout_from_node_ui_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_node_layout_from_node_ui_parent output = new Uihtml.Class_node_layout_from_node_ui_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node-layout<-node-ui-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "node", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_node_layout_from_node_ui_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_node_layout_from_node_ui_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Html.Type_node node = Core.f_any_from_any(Html.t_node, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_node_layout_from_node_ui_parent(node, ui, parent);
      return output;
    }

    @Override
    public Html.Type_node vx_node_layout_from_node_ui_parent(final Html.Type_node node, final Ui.Type_ui ui, final Ui.Type_ui parent) {
      Html.Type_node output = Uihtml.f_node_layout_from_node_ui_parent(node, ui, parent);
      return output;
    }

  }

  public static final Uihtml.Func_node_layout_from_node_ui_parent e_node_layout_from_node_ui_parent = new Uihtml.Class_node_layout_from_node_ui_parent();
  public static final Uihtml.Func_node_layout_from_node_ui_parent t_node_layout_from_node_ui_parent = new Uihtml.Class_node_layout_from_node_ui_parent();

  public static Html.Type_node f_node_layout_from_node_ui_parent(final Html.Type_node node, final Ui.Type_ui ui, final Ui.Type_ui parent) {
    Html.Type_node output = Html.e_node;
    output = Core.f_let(
      Html.t_node,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string id = ui.uid();
        Core.Type_string parentid = parent.uid();
        Core.Type_string htmltext = Html.f_string_from_node_indent(
          node,
          Core.vx_new_int(2)
        );
        Core.Type_boolean htmldone = Htmldoc.f_boolean_replace_from_id_parent_htmltext(
          id,
          parentid,
          htmltext
        );
        Core.Type_any output_1 = node;
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function node_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {node}
   * (func node<-ui-orig-parent)
   */
  public interface Func_node_from_ui_orig_parent extends Core.Type_func, Core.Type_replfunc {
    public Html.Type_node vx_node_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent);
  }

  public static class Class_node_from_ui_orig_parent extends Core.Class_base implements Func_node_from_ui_orig_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_node_from_ui_orig_parent output = new Uihtml.Class_node_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_node_from_ui_orig_parent output = new Uihtml.Class_node_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node<-ui-orig-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "node", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_node_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_node_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui orig = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_node_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

    @Override
    public Html.Type_node vx_node_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
      Html.Type_node output = Uihtml.f_node_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

  }

  public static final Uihtml.Func_node_from_ui_orig_parent e_node_from_ui_orig_parent = new Uihtml.Class_node_from_ui_orig_parent();
  public static final Uihtml.Func_node_from_ui_orig_parent t_node_from_ui_orig_parent = new Uihtml.Class_node_from_ui_orig_parent();

  public static Html.Type_node f_node_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
    Html.Type_node output = Html.e_node;
    output = Core.f_let(
      Html.t_node,
      Core.t_any_from_func.vx_fn_new(() -> {
        Ui.Type_style style = ui.style();
        Ui.Type_layout layout = style.layout();
        Core.Type_any output_1 = Core.f_switch(
          Html.t_node,
          layout,
          Core.vx_new(
            Core.t_thenelselist,
            Core.f_case_1(
              Ui.c_layout_image,
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_2 = Uihtml.f_node_image_from_ui_orig_parent(
                  ui,
                  orig,
                  parent
                );
                return output_2;
              })
            ),
            Core.f_case_1(
              Ui.c_layout_label,
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_3 = Uihtml.f_node_label_from_ui_orig_parent(
                  ui,
                  orig,
                  parent
                );
                return output_3;
              })
            ),
            Core.f_else(
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_4 = Uihtml.f_node_default_from_ui_orig_parent(
                  ui,
                  orig,
                  parent
                );
                return output_4;
              })
            )
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function string_class_from_ui
   * Returns a class string given a ui.
   * @param  {ui} ui
   * @return {string}
   * (func string-class<-ui)
   */
  public interface Func_string_class_from_ui extends Core.Func_any_from_any {
    public Core.Type_string vx_string_class_from_ui(final Ui.Type_ui ui);
  }

  public static class Class_string_class_from_ui extends Core.Class_base implements Func_string_class_from_ui {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_string_class_from_ui output = new Uihtml.Class_string_class_from_ui();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_string_class_from_ui output = new Uihtml.Class_string_class_from_ui();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "string-class<-ui", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "string", // name
          ":string", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_string_class_from_ui;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_string_class_from_ui;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_string_class_from_ui(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_string_class_from_ui(ui);
      return output;
    }

    @Override
    public Core.Type_string vx_string_class_from_ui(final Ui.Type_ui ui) {
      Core.Type_string output = Uihtml.f_string_class_from_ui(ui);
      return output;
    }

  }

  public static final Uihtml.Func_string_class_from_ui e_string_class_from_ui = new Uihtml.Class_string_class_from_ui();
  public static final Uihtml.Func_string_class_from_ui t_string_class_from_ui = new Uihtml.Class_string_class_from_ui();

  public static Core.Type_string f_string_class_from_ui(final Ui.Type_ui ui) {
    Core.Type_string output = Core.e_string;
    output = Core.f_let(
      Core.t_string,
      Core.t_any_from_func.vx_fn_new(() -> {
        Html.Type_stylelist htmlstyles = Uihtml.f_stylelist_extra_from_ui(
          ui
        );
        Core.Type_any output_1 = Html.f_string_from_stylelist(
          htmlstyles
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function string_style_from_font
   * Returns a font css string from a logical font.
   * @param  {font} font
   * @return {string}
   * (func string-style<-font)
   */
  public interface Func_string_style_from_font extends Core.Func_any_from_any {
    public Core.Type_string vx_string_style_from_font(final Ui.Type_font font);
  }

  public static class Class_string_style_from_font extends Core.Class_base implements Func_string_style_from_font {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_string_style_from_font output = new Uihtml.Class_string_style_from_font();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_string_style_from_font output = new Uihtml.Class_string_style_from_font();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "string-style<-font", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "string", // name
          ":string", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_string_style_from_font;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_string_style_from_font;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_font inputval = (Ui.Type_font)value;
      Core.Type_any outputval = Uihtml.f_string_style_from_font(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_font font = Core.f_any_from_any(Ui.t_font, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_string_style_from_font(font);
      return output;
    }

    @Override
    public Core.Type_string vx_string_style_from_font(final Ui.Type_font font) {
      Core.Type_string output = Uihtml.f_string_style_from_font(font);
      return output;
    }

  }

  public static final Uihtml.Func_string_style_from_font e_string_style_from_font = new Uihtml.Class_string_style_from_font();
  public static final Uihtml.Func_string_style_from_font t_string_style_from_font = new Uihtml.Class_string_style_from_font();

  public static Core.Type_string f_string_style_from_font(final Ui.Type_font font) {
    Core.Type_string output = Core.e_string;
    output = Core.f_let(
      Core.t_string,
      Core.t_any_from_func.vx_fn_new(() -> {
        Ui.Type_fontface face = font.fontface();
        Core.Type_int size = font.fontsize();
        Core.Type_string name = face.name();
        Core.Type_string ssize = Core.f_if_2(
          Core.t_string,
          Core.vx_new(
            Core.t_thenelselist,
            Core.f_then(
              Core.t_boolean_from_func.vx_fn_new(() -> {
                Core.Type_any output_4 = Core.f_gt(
                  size,
                  Core.vx_new_int(0)
                );
                return output_4;
              }),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_5 = Core.f_new(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.f_divide(
                      size,
                      Core.vx_new_int(100)
                    ),
                    Core.vx_new_string("em"),
                    Core.vx_new_string(" ")
                  )
                );
                return output_5;
              })
            )
          )
        );
        Core.Type_any output_1 = Core.f_if_2(
          Core.t_string,
          Core.vx_new(
            Core.t_thenelselist,
            Core.f_then(
              Core.t_boolean_from_func.vx_fn_new(() -> {
                Core.Type_any output_2 = Core.f_notempty(
                  name
                );
                return output_2;
              }),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_3 = Core.f_new(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_anylist,
                    ssize,
                    Core.c_quote,
                    name,
                    Core.c_quote
                  )
                );
                return output_3;
              })
            )
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function string_style_from_image
   * Returns an image css string from a logical image.
   * @param  {image} image
   * @return {string}
   * (func string-style<-image)
   */
  public interface Func_string_style_from_image extends Core.Func_any_from_any {
    public Core.Type_string vx_string_style_from_image(final Ui.Type_image image);
  }

  public static class Class_string_style_from_image extends Core.Class_base implements Func_string_style_from_image {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_string_style_from_image output = new Uihtml.Class_string_style_from_image();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_string_style_from_image output = new Uihtml.Class_string_style_from_image();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "string-style<-image", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "string", // name
          ":string", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_string_style_from_image;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_string_style_from_image;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_image inputval = (Ui.Type_image)value;
      Core.Type_any outputval = Uihtml.f_string_style_from_image(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_image image = Core.f_any_from_any(Ui.t_image, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_string_style_from_image(image);
      return output;
    }

    @Override
    public Core.Type_string vx_string_style_from_image(final Ui.Type_image image) {
      Core.Type_string output = Uihtml.f_string_style_from_image(image);
      return output;
    }

  }

  public static final Uihtml.Func_string_style_from_image e_string_style_from_image = new Uihtml.Class_string_style_from_image();
  public static final Uihtml.Func_string_style_from_image t_string_style_from_image = new Uihtml.Class_string_style_from_image();

  public static Core.Type_string f_string_style_from_image(final Ui.Type_image image) {
    Core.Type_string output = Core.e_string;
    output = Core.f_if_2(
      Core.t_string,
      Core.vx_new(
        Core.t_thenelselist,
        Core.f_then(
          Core.t_boolean_from_func.vx_fn_new(() -> {
            Core.Type_any output_1 = Core.f_notempty_1(
              image
            );
            return output_1;
          }),
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_any output_2 = Core.f_let(
              Core.t_string,
              Core.t_any_from_func.vx_fn_new(() -> {
                File.Type_file file = image.file();
                Core.Type_string url = File.f_pathfull_from_file(
                  file
                );
                Core.Type_any output_3 = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_4 = Core.f_notempty(
                          url
                        );
                        return output_4;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_5 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.vx_new_string("url("),
                            url,
                            Core.vx_new_string(")")
                          )
                        );
                        return output_5;
                      })
                    )
                  )
                );
                return output_3;
              })
            );
            return output_2;
          })
        )
      )
    );
    return output;
  }

  /**
   * @function string_stylename_from_name_styletype
   * @param  {string} name
   * @param  {styletype} styletype
   * @return {string}
   * (func string-stylename<-name-styletype)
   */
  public interface Func_string_stylename_from_name_styletype extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_string vx_string_stylename_from_name_styletype(final Core.Type_string name, final Ui.Type_styletype styletype);
  }

  public static class Class_string_stylename_from_name_styletype extends Core.Class_base implements Func_string_stylename_from_name_styletype {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_string_stylename_from_name_styletype output = new Uihtml.Class_string_stylename_from_name_styletype();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_string_stylename_from_name_styletype output = new Uihtml.Class_string_stylename_from_name_styletype();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "string-stylename<-name-styletype", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "string", // name
          ":string", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_string_stylename_from_name_styletype;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_string_stylename_from_name_styletype;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string name = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_styletype styletype = Core.f_any_from_any(Ui.t_styletype, arglist.vx_any(Core.vx_new_int(1)));
      output = Uihtml.f_string_stylename_from_name_styletype(name, styletype);
      return output;
    }

    @Override
    public Core.Type_string vx_string_stylename_from_name_styletype(final Core.Type_string name, final Ui.Type_styletype styletype) {
      Core.Type_string output = Uihtml.f_string_stylename_from_name_styletype(name, styletype);
      return output;
    }

  }

  public static final Uihtml.Func_string_stylename_from_name_styletype e_string_stylename_from_name_styletype = new Uihtml.Class_string_stylename_from_name_styletype();
  public static final Uihtml.Func_string_stylename_from_name_styletype t_string_stylename_from_name_styletype = new Uihtml.Class_string_stylename_from_name_styletype();

  public static Core.Type_string f_string_stylename_from_name_styletype(final Core.Type_string name, final Ui.Type_styletype styletype) {
    Core.Type_string output = Core.e_string;
    output = Core.f_if_2(
      Core.t_string,
      Core.vx_new(
        Core.t_thenelselist,
        Core.f_then(
          Core.t_boolean_from_func.vx_fn_new(() -> {
            Core.Type_any output_1 = Core.f_eq(
              Core.vx_new_string(""),
              name
            );
            return output_1;
          }),
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_any output_2 = Core.vx_new_string("");
            return output_2;
          })
        ),
        Core.f_then(
          Core.t_boolean_from_func.vx_fn_new(() -> {
            Core.Type_any output_3 = Core.f_eqeq(
              styletype,
              Ui.c_styletype_shared
            );
            return output_3;
          }),
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_any output_4 = Core.f_new(
              Core.t_string,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string("."),
                name
              )
            );
            return output_4;
          })
        ),
        Core.f_then(
          Core.t_boolean_from_func.vx_fn_new(() -> {
            Core.Type_any output_5 = Core.f_eqeq(
              styletype,
              Ui.c_styletype_system
            );
            return output_5;
          }),
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_any output_6 = Core.f_new(
              Core.t_string,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string("#"),
                name
              )
            );
            return output_6;
          })
        ),
        Core.f_else(
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_any output_7 = name;
            return output_7;
          })
        )
      )
    );
    return output;
  }

  /**
   * @function style_from_fontface
   * Returns an html style from a font
   * @param  {fontface} fontface
   * @return {style}
   * (func style<-fontface)
   */
  public interface Func_style_from_fontface extends Core.Func_any_from_any {
    public Html.Type_style vx_style_from_fontface(final Ui.Type_fontface fontface);
  }

  public static class Class_style_from_fontface extends Core.Class_base implements Func_style_from_fontface {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_style_from_fontface output = new Uihtml.Class_style_from_fontface();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_style_from_fontface output = new Uihtml.Class_style_from_fontface();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "style<-fontface", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "style", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_style_from_fontface;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_style_from_fontface;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_fontface inputval = (Ui.Type_fontface)value;
      Core.Type_any outputval = Uihtml.f_style_from_fontface(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_fontface fontface = Core.f_any_from_any(Ui.t_fontface, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_style_from_fontface(fontface);
      return output;
    }

    @Override
    public Html.Type_style vx_style_from_fontface(final Ui.Type_fontface fontface) {
      Html.Type_style output = Uihtml.f_style_from_fontface(fontface);
      return output;
    }

  }

  public static final Uihtml.Func_style_from_fontface e_style_from_fontface = new Uihtml.Class_style_from_fontface();
  public static final Uihtml.Func_style_from_fontface t_style_from_fontface = new Uihtml.Class_style_from_fontface();

  public static Html.Type_style f_style_from_fontface(final Ui.Type_fontface fontface) {
    Html.Type_style output = Html.e_style;
    output = Core.f_let(
      Html.t_style,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string name = fontface.name();
        Core.Type_string weight = fontface.weight();
        Core.Type_string unicode = fontface.unicode();
        File.Type_filelist files = fontface.filelist();
        Core.Type_stringlist urls = Core.f_list_from_list_1(
          Core.t_stringlist,
          files,
          Core.t_any_from_any.vx_fn_new((file_any) -> {
            File.Type_file file = Core.f_any_from_any(File.t_file, file_any);
            Core.Type_any output_2 = Core.f_new(
              Core.t_string,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string("url("),
                File.f_pathfull_from_file(
                  file
                ),
                Core.vx_new_string(")")
              )
            );
            return output_2;
          })
        );
        Core.Type_string fontfamily = Core.f_new(
          Core.t_string,
          Core.vx_new(
            Core.t_anylist,
            Core.c_quote,
            name,
            Core.c_quote
          )
        );
        Core.Type_string srcurls = Type.f_string_from_stringlist_join(
          urls,
          Core.vx_new_string(",")
        );
        Core.Type_string src = Core.f_new(
          Core.t_string,
          Core.vx_new(
            Core.t_anylist,
            srcurls,
            Core.vx_new_string(";")
          )
        );
        Html.Type_propmap propmap = Core.f_new(
          Html.t_propmap,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":font-family"),
            fontfamily,
            Core.vx_new_string(":font-style"),
            Core.vx_new_string("normal"),
            Core.vx_new_string(":font-weight"),
            weight,
            Core.vx_new_string(":font-display"),
            Core.vx_new_string("swap"),
            Core.vx_new_string(":src"),
            src,
            Core.vx_new_string(":unicode-range"),
            unicode
          )
        );
        Core.Type_any output_1 = Core.f_new(
          Html.t_style,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":name"),
            Core.vx_new_string("@font-face"),
            Core.vx_new_string(":props"),
            propmap
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function style_from_style
   * Returns a htmlstyle from a uistyle
   * @param  {style} uistyle
   * @return {style}
   * (func style<-style)
   */
  public interface Func_style_from_style extends Core.Func_any_from_any {
    public Html.Type_style vx_style_from_style(final Ui.Type_style uistyle);
  }

  public static class Class_style_from_style extends Core.Class_base implements Func_style_from_style {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_style_from_style output = new Uihtml.Class_style_from_style();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_style_from_style output = new Uihtml.Class_style_from_style();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "style<-style", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "style", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_style_from_style;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_style_from_style;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_style inputval = (Ui.Type_style)value;
      Core.Type_any outputval = Uihtml.f_style_from_style(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_style uistyle = Core.f_any_from_any(Ui.t_style, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_style_from_style(uistyle);
      return output;
    }

    @Override
    public Html.Type_style vx_style_from_style(final Ui.Type_style uistyle) {
      Html.Type_style output = Uihtml.f_style_from_style(uistyle);
      return output;
    }

  }

  public static final Uihtml.Func_style_from_style e_style_from_style = new Uihtml.Class_style_from_style();
  public static final Uihtml.Func_style_from_style t_style_from_style = new Uihtml.Class_style_from_style();

  public static Html.Type_style f_style_from_style(final Ui.Type_style uistyle) {
    Html.Type_style output = Html.e_style;
    output = Core.f_if_2(
      Html.t_style,
      Core.vx_new(
        Core.t_thenelselist,
        Core.f_then(
          Core.t_boolean_from_func.vx_fn_new(() -> {
            Core.Type_any output_1 = Core.f_is_empty_1(
              uistyle
            );
            return output_1;
          }),
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_any output_2 = Core.f_empty(
              Html.t_style
            );
            return output_2;
          })
        ),
        Core.f_else(
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_any output_3 = Core.f_let(
              Html.t_style,
              Core.t_any_from_func.vx_fn_new(() -> {
                Ui.Type_layout layout = uistyle.layout();
                Core.Type_string name = uistyle.name();
                Ui.Type_flip flip = uistyle.flip();
                Ui.Type_font font = uistyle.font();
                Ui.Type_pin pin = uistyle.pin();
                Ui.Type_point pointorigin = uistyle.pointorigin();
                Ui.Type_point pointpos = uistyle.pointpos();
                Ui.Type_point pointsize = uistyle.pointsize();
                Ui.Type_point pointrotate = uistyle.pointrotate();
                Ui.Type_styletype styletype = uistyle.type();
                Core.Type_string color_bkg = uistyle.color_bkg();
                Core.Type_string color_bkghover = uistyle.color_bkghover();
                Core.Type_string color_border = uistyle.color_border();
                Core.Type_string color_font = uistyle.color_font();
                Ui.Type_cursor cursor = uistyle.cursor();
                Core.Type_boolean hidden = uistyle.hidden();
                Ui.Type_align align = uistyle.align();
                Core.Type_boolean scroll_x = uistyle.scroll_x();
                Core.Type_boolean scroll_y = uistyle.scroll_y();
                Core.Type_int posx = pointpos.x();
                Core.Type_int posy = pointpos.y();
                Ui.Type_pointtype postype = pointpos.pointtype();
                Core.Type_int sizex = pointsize.x();
                Core.Type_int sizey = pointsize.y();
                Ui.Type_pointtype sizetype = pointsize.pointtype();
                Core.Type_string stylename = Uihtml.f_string_stylename_from_name_styletype(
                  name,
                  styletype
                );
                Core.Type_string bkgcolor = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_5 = Core.f_notempty(
                          color_bkg
                        );
                        return output_5;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_6 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.vx_new_string("#"),
                            color_bkg
                          )
                        );
                        return output_6;
                      })
                    )
                  )
                );
                Core.Type_string borderwidth = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_7 = Core.f_notempty(
                          color_border
                        );
                        return output_7;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_8 = Core.vx_new_string("thin");
                        return output_8;
                      })
                    )
                  )
                );
                Core.Type_string bordercolor = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_9 = Core.f_notempty(
                          color_border
                        );
                        return output_9;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_10 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.vx_new_string("#"),
                            color_border
                          )
                        );
                        return output_10;
                      })
                    )
                  )
                );
                Core.Type_string borderstyle = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_11 = Core.f_notempty(
                          color_border
                        );
                        return output_11;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_12 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.vx_new_string("solid")
                          )
                        );
                        return output_12;
                      })
                    )
                  )
                );
                Core.Type_string fontcolor = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_13 = Core.f_notempty(
                          color_font
                        );
                        return output_13;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_14 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.vx_new_string("#"),
                            color_font
                          )
                        );
                        return output_14;
                      })
                    )
                  )
                );
                Core.Type_string position = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_15 = Core.f_or_1(
                          Core.vx_new(
                            Core.t_booleanlist,
                            Core.f_eqeq(
                              layout,
                              Ui.c_layout_app
                            ),
                            Core.f_eqeq(
                              layout,
                              Ui.c_layout_background
                            ),
                            Core.f_eqeq(
                              layout,
                              Ui.c_layout_main
                            ),
                            Core.f_eqeq(
                              layout,
                              Ui.c_layout_navbar
                            ),
                            Core.f_eqeq(
                              layout,
                              Ui.c_layout_parallax
                            ),
                            Core.f_eqeq(
                              layout,
                              Ui.c_layout_statusbar
                            ),
                            Core.f_eqeq(
                              layout,
                              Ui.c_layout_titlebar
                            )
                          )
                        );
                        return output_15;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_16 = Core.vx_new_string("fixed");
                        return output_16;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_17 = Core.f_eqeq(
                          postype,
                          Ui.c_pointtype_relative
                        );
                        return output_17;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_18 = Core.vx_new_string("relative");
                        return output_18;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_19 = Core.f_eqeq(
                          postype,
                          Ui.c_pointtype_absolute
                        );
                        return output_19;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_20 = Core.vx_new_string("absolute");
                        return output_20;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_21 = Core.f_notempty_1(
                          pointpos
                        );
                        return output_21;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_22 = Core.vx_new_string("absolute");
                        return output_22;
                      })
                    ),
                    Core.f_else(
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_23 = Core.vx_new_string("");
                        return output_23;
                      })
                    )
                  )
                );
                Core.Type_string top = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_24 = Core.f_eqeq(
                          pin,
                          Ui.c_pin_expand
                        );
                        return output_24;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_25 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            posy,
                            Core.vx_new_string("mm")
                          )
                        );
                        return output_25;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_26 = Core.f_eqeq(
                          Core.vx_new_int(0),
                          posy
                        );
                        return output_26;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_27 = Core.vx_new_string("");
                        return output_27;
                      })
                    ),
                    Core.f_else(
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_28 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            posy,
                            Core.vx_new_string("mm")
                          )
                        );
                        return output_28;
                      })
                    )
                  )
                );
                Core.Type_string bottom = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_29 = Core.f_eqeq(
                          pin,
                          Ui.c_pin_expand
                        );
                        return output_29;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_30 = Core.vx_new_string("");
                        return output_30;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_31 = Core.f_eqeq(
                          pin,
                          Ui.c_pin_bottom
                        );
                        return output_31;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_32 = Core.vx_new_string("0mm");
                        return output_32;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_33 = Core.f_or(
                          Core.f_eqeq(
                            pin,
                            Ui.c_pin_left
                          ),
                          Core.f_eqeq(
                            pin,
                            Ui.c_pin_center_v
                          )
                        );
                        return output_33;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_34 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            sizey,
                            Core.vx_new_string("mm")
                          )
                        );
                        return output_34;
                      })
                    )
                  )
                );
                Core.Type_string left = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_35 = Core.f_eqeq(
                          pin,
                          Ui.c_pin_expand
                        );
                        return output_35;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_36 = Core.vx_new_string("");
                        return output_36;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_37 = Core.f_eqeq(
                          pin,
                          Ui.c_pin_bottom
                        );
                        return output_37;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_38 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            posx,
                            Core.vx_new_string("mm")
                          )
                        );
                        return output_38;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_39 = Core.f_eqeq(
                          Core.vx_new_int(0),
                          posx
                        );
                        return output_39;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_40 = Core.vx_new_string("");
                        return output_40;
                      })
                    ),
                    Core.f_else(
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_41 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            posx,
                            Core.vx_new_string("mm")
                          )
                        );
                        return output_41;
                      })
                    )
                  )
                );
                Core.Type_string right = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_42 = Core.f_eqeq(
                          pin,
                          Ui.c_pin_expand
                        );
                        return output_42;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_43 = Core.vx_new_string("");
                        return output_43;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_44 = Core.f_or_1(
                          Core.vx_new(
                            Core.t_booleanlist,
                            Core.f_eqeq(
                              pin,
                              Ui.c_pin_top
                            ),
                            Core.f_eqeq(
                              pin,
                              Ui.c_pin_bottom
                            ),
                            Core.f_eqeq(
                              pin,
                              Ui.c_pin_center_v
                            )
                          )
                        );
                        return output_44;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_45 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            sizex,
                            Core.vx_new_string("mm")
                          )
                        );
                        return output_45;
                      })
                    )
                  )
                );
                Core.Type_string height = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_46 = Core.f_eqeq(
                          pin,
                          Ui.c_pin_expand
                        );
                        return output_46;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_47 = Core.vx_new_string("100%");
                        return output_47;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_48 = Core.f_or_1(
                          Core.vx_new(
                            Core.t_booleanlist,
                            Core.f_eqeq(
                              pin,
                              Ui.c_pin_left
                            ),
                            Core.f_eqeq(
                              pin,
                              Ui.c_pin_right
                            ),
                            Core.f_eqeq(
                              pin,
                              Ui.c_pin_center_v
                            )
                          )
                        );
                        return output_48;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_49 = Core.vx_new_string("");
                        return output_49;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_50 = Core.f_eqeq(
                          sizetype,
                          Ui.c_pointtype_percent
                        );
                        return output_50;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_51 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            sizey,
                            Core.vx_new_string("%")
                          )
                        );
                        return output_51;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_52 = Core.f_eqeq(
                          Core.vx_new_int(0),
                          sizey
                        );
                        return output_52;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_53 = Core.vx_new_string("");
                        return output_53;
                      })
                    ),
                    Core.f_else(
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_54 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            sizey,
                            Core.vx_new_string("mm")
                          )
                        );
                        return output_54;
                      })
                    )
                  )
                );
                Core.Type_string width = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_55 = Core.f_eqeq(
                          pin,
                          Ui.c_pin_expand
                        );
                        return output_55;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_56 = Core.vx_new_string("100%");
                        return output_56;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_57 = Core.f_or_1(
                          Core.vx_new(
                            Core.t_booleanlist,
                            Core.f_eqeq(
                              pin,
                              Ui.c_pin_top
                            ),
                            Core.f_eqeq(
                              pin,
                              Ui.c_pin_bottom
                            ),
                            Core.f_eqeq(
                              pin,
                              Ui.c_pin_center_v
                            )
                          )
                        );
                        return output_57;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_58 = Core.vx_new_string("");
                        return output_58;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_59 = Core.f_eqeq(
                          sizetype,
                          Ui.c_pointtype_percent
                        );
                        return output_59;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_60 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            sizex,
                            Core.vx_new_string("%")
                          )
                        );
                        return output_60;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_61 = Core.f_eqeq(
                          Core.vx_new_int(0),
                          sizex
                        );
                        return output_61;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_62 = Core.vx_new_string("");
                        return output_62;
                      })
                    ),
                    Core.f_else(
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_63 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            sizex,
                            Core.vx_new_string("mm")
                          )
                        );
                        return output_63;
                      })
                    )
                  )
                );
                Core.Type_string display = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_64 = hidden;
                        return output_64;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_65 = Core.vx_new_string("none");
                        return output_65;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_66 = Core.f_eqeq(
                          layout,
                          Ui.c_layout_flow_item
                        );
                        return output_66;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_67 = Core.vx_new_string("inline-block");
                        return output_67;
                      })
                    )
                  )
                );
                Core.Type_string sfont = Uihtml.f_string_style_from_font(
                  font
                );
                Core.Type_string gap = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_68 = Core.f_or(
                          Core.f_eqeq(
                            layout,
                            Ui.c_layout_flow_columns
                          ),
                          Core.f_eqeq(
                            layout,
                            Ui.c_layout_flow_rows
                          )
                        );
                        return output_68;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_69 = Core.vx_new_string("1mm");
                        return output_69;
                      })
                    )
                  )
                );
                Core.Type_string overflowx = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_70 = scroll_x;
                        return output_70;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_71 = Core.vx_new_string("auto");
                        return output_71;
                      })
                    )
                  )
                );
                Core.Type_string overflowy = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_72 = scroll_y;
                        return output_72;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_73 = Core.vx_new_string("auto");
                        return output_73;
                      })
                    )
                  )
                );
                Core.Type_string hoverbkgrdcolor = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_74 = Core.f_ne(
                          Core.vx_new_string(""),
                          color_bkghover
                        );
                        return output_74;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_75 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.vx_new_string("#"),
                            color_bkghover
                          )
                        );
                        return output_75;
                      })
                    )
                  )
                );
                Core.Type_string scursor = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_76 = Core.f_eqeq(
                          cursor,
                          Ui.t_cursor_pointer
                        );
                        return output_76;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_77 = Core.vx_new_string("pointer");
                        return output_77;
                      })
                    )
                  )
                );
                Core.Type_string textalign = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_78 = Core.f_eqeq(
                          align,
                          Ui.c_align_left
                        );
                        return output_78;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_79 = Core.vx_new_string("left");
                        return output_79;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_80 = Core.f_eqeq(
                          align,
                          Ui.c_align_center
                        );
                        return output_80;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_81 = Core.vx_new_string("center");
                        return output_81;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_82 = Core.f_eqeq(
                          align,
                          Ui.c_align_right
                        );
                        return output_82;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_83 = Core.vx_new_string("right");
                        return output_83;
                      })
                    )
                  )
                );
                Core.Type_string transform_rotate = Core.f_if_2(
                  Core.t_string,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_84 = Core.f_is_empty_1(
                          pointrotate
                        );
                        return output_84;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_85 = Core.vx_new_string("");
                        return output_85;
                      })
                    ),
                    Core.f_else(
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_86 = Core.f_new(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.vx_new_string("rotate("),
                            pointrotate.x(),
                            Core.vx_new_string("deg)")
                          )
                        );
                        return output_86;
                      })
                    )
                  )
                );
                Core.Type_string transform_scale = Core.f_switch(
                  Core.t_string,
                  flip,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_case_1(
                      Ui.c_flip_x,
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_87 = Core.vx_new_string("scale(-1, 1)");
                        return output_87;
                      })
                    ),
                    Core.f_case_1(
                      Ui.c_flip_y,
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_88 = Core.vx_new_string("scale( 1,-1)");
                        return output_88;
                      })
                    ),
                    Core.f_case_1(
                      Ui.c_flip_xy,
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_89 = Core.vx_new_string("scale(-1,-1)");
                        return output_89;
                      })
                    )
                  )
                );
                Core.Type_stringlist transforms = Core.f_new(
                  Core.t_stringlist,
                  Core.vx_new(
                    Core.t_anylist,
                    transform_rotate,
                    transform_scale
                  )
                );
                Core.Type_string transform = Type.f_string_from_stringlist_join(
                  transforms,
                  Core.vx_new_string(" ")
                );
                Core.Type_string transformorigin = Core.f_switch(
                  Core.t_string,
                  pointorigin,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_case_1(
                      Ui.c_point_center,
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_90 = Core.vx_new_string("center");
                        return output_90;
                      })
                    ),
                    Core.f_case_1(
                      Ui.c_point_lefttop,
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_91 = Core.vx_new_string("left top");
                        return output_91;
                      })
                    ),
                    Core.f_case_1(
                      Ui.c_point_rightbottom,
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_92 = Core.vx_new_string("right bottom");
                        return output_92;
                      })
                    ),
                    Core.f_else(
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_93 = Core.f_if_2(
                          Core.t_string,
                          Core.vx_new(
                            Core.t_thenelselist,
                            Core.f_then(
                              Core.t_boolean_from_func.vx_fn_new(() -> {
                                Core.Type_any output_94 = Core.f_is_empty_1(
                                  pointrotate
                                );
                                return output_94;
                              }),
                              Core.t_any_from_func.vx_fn_new(() -> {
                                Core.Type_any output_95 = Core.vx_new_string("");
                                return output_95;
                              })
                            ),
                            Core.f_then(
                              Core.t_boolean_from_func.vx_fn_new(() -> {
                                Core.Type_any output_96 = Core.f_eqeq(
                                  layout,
                                  Ui.c_layout_label
                                );
                                return output_96;
                              }),
                              Core.t_any_from_func.vx_fn_new(() -> {
                                Core.Type_any output_97 = Core.vx_new_string("left top");
                                return output_97;
                              })
                            )
                          )
                        );
                        return output_93;
                      })
                    )
                  )
                );
                Html.Type_propmap props = Core.f_new(
                  Html.t_propmap,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.vx_new_string(":background-color"),
                    bkgcolor,
                    Core.vx_new_string(":border-color"),
                    bordercolor,
                    Core.vx_new_string(":border-style"),
                    borderstyle,
                    Core.vx_new_string(":border-width"),
                    borderwidth,
                    Core.vx_new_string(":color"),
                    fontcolor,
                    Core.vx_new_string(":cursor"),
                    scursor,
                    Core.vx_new_string(":display"),
                    display,
                    Core.vx_new_string(":font"),
                    sfont,
                    Core.vx_new_string(":gap"),
                    gap,
                    Core.vx_new_string(":position"),
                    position,
                    Core.vx_new_string(":top"),
                    top,
                    Core.vx_new_string(":bottom"),
                    bottom,
                    Core.vx_new_string(":left"),
                    left,
                    Core.vx_new_string(":right"),
                    right,
                    Core.vx_new_string(":height"),
                    height,
                    Core.vx_new_string(":width"),
                    width,
                    Core.vx_new_string(":overflow-x"),
                    overflowx,
                    Core.vx_new_string(":overflow-y"),
                    overflowy,
                    Core.vx_new_string(":text-align"),
                    textalign,
                    Core.vx_new_string(":transform"),
                    transform,
                    Core.vx_new_string(":transform-origin"),
                    transformorigin
                  )
                );
                Html.Type_propmap hoverprops = Core.f_new(
                  Html.t_propmap,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.vx_new_string(":background-color"),
                    hoverbkgrdcolor
                  )
                );
                Html.Type_stylelist substylelist = Core.f_if_2(
                  Html.t_stylelist,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_98 = Core.f_notempty_1(
                          hoverprops
                        );
                        return output_98;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_99 = Core.f_new(
                          Html.t_stylelist,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.f_new(
                              Html.t_style,
                              Core.vx_new(
                                Core.t_anylist,
                                Core.vx_new_string(":name"),
                                Core.vx_new_string("&:hover"),
                                Core.vx_new_string(":props"),
                                hoverprops
                              )
                            )
                          )
                        );
                        return output_99;
                      })
                    )
                  )
                );
                Core.Type_any output_4 = Core.f_new(
                  Html.t_style,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.vx_new_string(":name"),
                    stylename,
                    Core.vx_new_string(":props"),
                    props,
                    Core.vx_new_string(":stylelist"),
                    substylelist
                  )
                );
                return output_4;
              })
            );
            return output_3;
          })
        )
      )
    );
    return output;
  }

  /**
   * @function stylelist_extra_from_ui
   * Returns a stylelist from a ui including style-hidden and style-selected
   * @param  {ui} ui
   * @return {stylelist}
   * (func stylelist-extra<-ui)
   */
  public interface Func_stylelist_extra_from_ui extends Core.Func_any_from_any {
    public Html.Type_stylelist vx_stylelist_extra_from_ui(final Ui.Type_ui ui);
  }

  public static class Class_stylelist_extra_from_ui extends Core.Class_base implements Func_stylelist_extra_from_ui {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_stylelist_extra_from_ui output = new Uihtml.Class_stylelist_extra_from_ui();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_stylelist_extra_from_ui output = new Uihtml.Class_stylelist_extra_from_ui();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylelist-extra<-ui", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "stylelist", // name
          ":list", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Html.t_style), // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_stylelist_extra_from_ui;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_stylelist_extra_from_ui;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_ui inputval = (Ui.Type_ui)value;
      Core.Type_any outputval = Uihtml.f_stylelist_extra_from_ui(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_stylelist_extra_from_ui(ui);
      return output;
    }

    @Override
    public Html.Type_stylelist vx_stylelist_extra_from_ui(final Ui.Type_ui ui) {
      Html.Type_stylelist output = Uihtml.f_stylelist_extra_from_ui(ui);
      return output;
    }

  }

  public static final Uihtml.Func_stylelist_extra_from_ui e_stylelist_extra_from_ui = new Uihtml.Class_stylelist_extra_from_ui();
  public static final Uihtml.Func_stylelist_extra_from_ui t_stylelist_extra_from_ui = new Uihtml.Class_stylelist_extra_from_ui();

  public static Html.Type_stylelist f_stylelist_extra_from_ui(final Ui.Type_ui ui) {
    Html.Type_stylelist output = Html.e_stylelist;
    output = Core.f_let(
      Html.t_stylelist,
      Core.t_any_from_func.vx_fn_new(() -> {
        Ui.Type_stylelist uistyles = ui.stylelist();
        Core.Type_boolean selected = ui.selected();
        Core.Type_boolean hidden = ui.hidden();
        Html.Type_stylelist styles1 = Uihtml.f_stylelist_from_stylelist(
          uistyles
        );
        Html.Type_stylelist styles2 = Core.f_if_2(
          Html.t_stylelist,
          Core.vx_new(
            Core.t_thenelselist,
            Core.f_then(
              Core.t_boolean_from_func.vx_fn_new(() -> {
                Core.Type_any output_2 = hidden;
                return output_2;
              }),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_3 = Core.f_copy(
                  styles1,
                  Core.vx_new(
                    Core.t_anylist,
                    Uihtml.c_style_hidden
                  )
                );
                return output_3;
              })
            ),
            Core.f_then(
              Core.t_boolean_from_func.vx_fn_new(() -> {
                Core.Type_any output_4 = selected;
                return output_4;
              }),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_5 = Core.f_copy(
                  styles1,
                  Core.vx_new(
                    Core.t_anylist,
                    Uihtml.c_style_selected
                  )
                );
                return output_5;
              })
            ),
            Core.f_else(
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_6 = styles1;
                return output_6;
              })
            )
          )
        );
        Core.Type_any output_1 = styles2;
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function stylelist_reset
   * Returns the initial reset styles for ui framework
   * @return {stylelist}
   * (func stylelist-reset)
   */
  public interface Func_stylelist_reset extends Core.Type_func, Core.Type_replfunc {
    public Html.Type_stylelist vx_stylelist_reset();
  }

  public static class Class_stylelist_reset extends Core.Class_base implements Func_stylelist_reset {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_stylelist_reset output = new Uihtml.Class_stylelist_reset();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_stylelist_reset output = new Uihtml.Class_stylelist_reset();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylelist-reset", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "stylelist", // name
          ":list", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Html.t_style), // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_stylelist_reset;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_stylelist_reset;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      output = Uihtml.f_stylelist_reset();
      return output;
    }

    @Override
    public Html.Type_stylelist vx_stylelist_reset() {
      Html.Type_stylelist output = Uihtml.f_stylelist_reset();
      return output;
    }

  }

  public static final Uihtml.Func_stylelist_reset e_stylelist_reset = new Uihtml.Class_stylelist_reset();
  public static final Uihtml.Func_stylelist_reset t_stylelist_reset = new Uihtml.Class_stylelist_reset();

  public static Html.Type_stylelist f_stylelist_reset() {
    Html.Type_stylelist output = Html.e_stylelist;
    output = Core.f_new(
      Html.t_stylelist,
      Core.vx_new(
        Core.t_anylist,
        Core.f_new(
          Html.t_style,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":name"),
            Core.vx_new_string("html"),
            Core.vx_new_string(":props"),
            Core.f_new(
              Html.t_propmap,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":border"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":margin"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":padding"),
                Core.vx_new_string("0mm")
              )
            )
          )
        ),
        Core.f_new(
          Html.t_style,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":name"),
            Core.vx_new_string("body"),
            Core.vx_new_string(":props"),
            Core.f_new(
              Html.t_propmap,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":border"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":margin"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":padding"),
                Core.vx_new_string("0mm")
              )
            )
          )
        ),
        Core.f_new(
          Html.t_style,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":name"),
            Core.vx_new_string("div"),
            Core.vx_new_string(":props"),
            Core.f_new(
              Html.t_propmap,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":border"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":box-sizing"),
                Core.vx_new_string("border-box"),
                Core.vx_new_string(":margin"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":padding"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":position"),
                Core.vx_new_string("relative")
              )
            )
          )
        ),
        Core.f_new(
          Html.t_style,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":name"),
            Core.vx_new_string("img"),
            Core.vx_new_string(":props"),
            Core.f_new(
              Html.t_propmap,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":border"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":display"),
                Core.vx_new_string("block"),
                Core.vx_new_string(":margin"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":padding"),
                Core.vx_new_string("0mm")
              )
            )
          )
        ),
        Core.f_new(
          Html.t_style,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":name"),
            Core.vx_new_string("p"),
            Core.vx_new_string(":props"),
            Core.f_new(
              Html.t_propmap,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":margin-block-start"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":margin-block-end"),
                Core.vx_new_string("0mm"),
                Core.vx_new_string(":white-space"),
                Core.vx_new_string("pre-line")
              )
            )
          )
        ),
        Core.f_new(
          Html.t_style,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":name"),
            Core.vx_new_string("*"),
            Core.vx_new_string(":props"),
            Core.f_new(
              Html.t_propmap,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":-webkit-print-color-adjust"),
                Core.vx_new_string("exact !important"),
                Core.vx_new_string(":color-adjust"),
                Core.vx_new_string("exact !important"),
                Core.vx_new_string(":print-color-adjust"),
                Core.vx_new_string("exact !important")
              )
            )
          )
        )
      )
    );
    return output;
  }

  /**
   * @function stylelist_from_fontfacemap
   * Returns stylelist from a fontfacemap
   * @param  {fontfacemap} fontfacemap
   * @return {stylelist}
   * (func stylelist<-fontfacemap)
   */
  public interface Func_stylelist_from_fontfacemap extends Core.Func_any_from_any {
    public Html.Type_stylelist vx_stylelist_from_fontfacemap(final Ui.Type_fontfacemap fontfacemap);
  }

  public static class Class_stylelist_from_fontfacemap extends Core.Class_base implements Func_stylelist_from_fontfacemap {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_stylelist_from_fontfacemap output = new Uihtml.Class_stylelist_from_fontfacemap();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_stylelist_from_fontfacemap output = new Uihtml.Class_stylelist_from_fontfacemap();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylelist<-fontfacemap", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "stylelist", // name
          ":list", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Html.t_style), // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_stylelist_from_fontfacemap;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_stylelist_from_fontfacemap;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_fontfacemap inputval = (Ui.Type_fontfacemap)value;
      Core.Type_any outputval = Uihtml.f_stylelist_from_fontfacemap(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_fontfacemap fontfacemap = Core.f_any_from_any(Ui.t_fontfacemap, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_stylelist_from_fontfacemap(fontfacemap);
      return output;
    }

    @Override
    public Html.Type_stylelist vx_stylelist_from_fontfacemap(final Ui.Type_fontfacemap fontfacemap) {
      Html.Type_stylelist output = Uihtml.f_stylelist_from_fontfacemap(fontfacemap);
      return output;
    }

  }

  public static final Uihtml.Func_stylelist_from_fontfacemap e_stylelist_from_fontfacemap = new Uihtml.Class_stylelist_from_fontfacemap();
  public static final Uihtml.Func_stylelist_from_fontfacemap t_stylelist_from_fontfacemap = new Uihtml.Class_stylelist_from_fontfacemap();

  public static Html.Type_stylelist f_stylelist_from_fontfacemap(final Ui.Type_fontfacemap fontfacemap) {
    Html.Type_stylelist output = Html.e_stylelist;
    output = Core.f_list_from_map_1(
      Html.t_stylelist,
      fontfacemap,
      Core.t_any_from_key_value.vx_fn_new((key_any, fontface_any) -> {
        Core.Type_string key = Core.f_any_from_any(Core.t_string, key_any);
        Ui.Type_fontface fontface = Core.f_any_from_any(Ui.t_fontface, fontface_any);
        Core.Type_any output_1 = Uihtml.f_style_from_fontface(
          fontface
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function stylelist_from_stylelist
   * Returns a htmlstylelist from a uistylemap
   * @param  {stylelist} uistylelist
   * @return {stylelist}
   * (func stylelist<-stylelist)
   */
  public interface Func_stylelist_from_stylelist extends Core.Func_any_from_any {
    public Html.Type_stylelist vx_stylelist_from_stylelist(final Ui.Type_stylelist uistylelist);
  }

  public static class Class_stylelist_from_stylelist extends Core.Class_base implements Func_stylelist_from_stylelist {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_stylelist_from_stylelist output = new Uihtml.Class_stylelist_from_stylelist();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_stylelist_from_stylelist output = new Uihtml.Class_stylelist_from_stylelist();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylelist<-stylelist", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "stylelist", // name
          ":list", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Html.t_style), // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_stylelist_from_stylelist;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_stylelist_from_stylelist;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_stylelist inputval = (Ui.Type_stylelist)value;
      Core.Type_any outputval = Uihtml.f_stylelist_from_stylelist(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_stylelist uistylelist = Core.f_any_from_any(Ui.t_stylelist, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_stylelist_from_stylelist(uistylelist);
      return output;
    }

    @Override
    public Html.Type_stylelist vx_stylelist_from_stylelist(final Ui.Type_stylelist uistylelist) {
      Html.Type_stylelist output = Uihtml.f_stylelist_from_stylelist(uistylelist);
      return output;
    }

  }

  public static final Uihtml.Func_stylelist_from_stylelist e_stylelist_from_stylelist = new Uihtml.Class_stylelist_from_stylelist();
  public static final Uihtml.Func_stylelist_from_stylelist t_stylelist_from_stylelist = new Uihtml.Class_stylelist_from_stylelist();

  public static Html.Type_stylelist f_stylelist_from_stylelist(final Ui.Type_stylelist uistylelist) {
    Html.Type_stylelist output = Html.e_stylelist;
    output = Core.f_list_from_list_1(
      Html.t_stylelist,
      uistylelist,
      Uihtml.t_style_from_style
    );
    return output;
  }

  /**
   * @function stylelist_from_stylemap
   * Returns a htmlstylelist from a uistylemap
   * @param  {stylemap} uistylemap
   * @return {stylelist}
   * (func stylelist<-stylemap)
   */
  public interface Func_stylelist_from_stylemap extends Core.Func_any_from_any {
    public Html.Type_stylelist vx_stylelist_from_stylemap(final Ui.Type_stylemap uistylemap);
  }

  public static class Class_stylelist_from_stylemap extends Core.Class_base implements Func_stylelist_from_stylemap {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_stylelist_from_stylemap output = new Uihtml.Class_stylelist_from_stylemap();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_stylelist_from_stylemap output = new Uihtml.Class_stylelist_from_stylemap();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylelist<-stylemap", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "stylelist", // name
          ":list", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Html.t_style), // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_stylelist_from_stylemap;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_stylelist_from_stylemap;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_stylemap inputval = (Ui.Type_stylemap)value;
      Core.Type_any outputval = Uihtml.f_stylelist_from_stylemap(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_stylemap uistylemap = Core.f_any_from_any(Ui.t_stylemap, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_stylelist_from_stylemap(uistylemap);
      return output;
    }

    @Override
    public Html.Type_stylelist vx_stylelist_from_stylemap(final Ui.Type_stylemap uistylemap) {
      Html.Type_stylelist output = Uihtml.f_stylelist_from_stylemap(uistylemap);
      return output;
    }

  }

  public static final Uihtml.Func_stylelist_from_stylemap e_stylelist_from_stylemap = new Uihtml.Class_stylelist_from_stylemap();
  public static final Uihtml.Func_stylelist_from_stylemap t_stylelist_from_stylemap = new Uihtml.Class_stylelist_from_stylemap();

  public static Html.Type_stylelist f_stylelist_from_stylemap(final Ui.Type_stylemap uistylemap) {
    Html.Type_stylelist output = Html.e_stylelist;
    output = Core.f_list_from_map_1(
      Html.t_stylelist,
      uistylemap,
      Core.t_any_from_key_value.vx_fn_new((key_any, value_any) -> {
        Core.Type_string key = Core.f_any_from_any(Core.t_string, key_any);
        Ui.Type_style value = Core.f_any_from_any(Ui.t_style, value_any);
        Core.Type_any output_1 = Uihtml.f_style_from_style(
          value
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function stylemap_from_stylemap
   * Returns a htmlstylesheet from a uistylesheet
   * @param  {stylemap} uistylemap
   * @return {stylemap}
   * (func stylemap<-stylemap)
   */
  public interface Func_stylemap_from_stylemap extends Core.Func_any_from_any {
    public Html.Type_stylemap vx_stylemap_from_stylemap(final Ui.Type_stylemap uistylemap);
  }

  public static class Class_stylemap_from_stylemap extends Core.Class_base implements Func_stylemap_from_stylemap {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_stylemap_from_stylemap output = new Uihtml.Class_stylemap_from_stylemap();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_stylemap_from_stylemap output = new Uihtml.Class_stylemap_from_stylemap();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylemap<-stylemap", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "stylemap", // name
          ":map", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Html.t_style), // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_stylemap_from_stylemap;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_stylemap_from_stylemap;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_stylemap inputval = (Ui.Type_stylemap)value;
      Core.Type_any outputval = Uihtml.f_stylemap_from_stylemap(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_stylemap uistylemap = Core.f_any_from_any(Ui.t_stylemap, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_stylemap_from_stylemap(uistylemap);
      return output;
    }

    @Override
    public Html.Type_stylemap vx_stylemap_from_stylemap(final Ui.Type_stylemap uistylemap) {
      Html.Type_stylemap output = Uihtml.f_stylemap_from_stylemap(uistylemap);
      return output;
    }

  }

  public static final Uihtml.Func_stylemap_from_stylemap e_stylemap_from_stylemap = new Uihtml.Class_stylemap_from_stylemap();
  public static final Uihtml.Func_stylemap_from_stylemap t_stylemap_from_stylemap = new Uihtml.Class_stylemap_from_stylemap();

  public static Html.Type_stylemap f_stylemap_from_stylemap(final Ui.Type_stylemap uistylemap) {
    Html.Type_stylemap output = Html.e_stylemap;
    output = Core.f_map_from_map_1(
      Html.t_stylemap,
      uistylemap,
      Core.t_any_from_key_value.vx_fn_new((key_any, value_any) -> {
        Core.Type_string key = Core.f_any_from_any(Core.t_string, key_any);
        Ui.Type_style value = Core.f_any_from_any(Ui.t_style, value_any);
        Core.Type_any output_1 = Uihtml.f_style_from_style(
          value
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * 
   * @async
   * @function stylesheet_layout_html
   * @param  {stylesheet} stylesheetui
   * @return {stylesheet}
   * (func stylesheet-layout-html)
   */
  public interface Func_stylesheet_layout_html extends Core.Func_any_from_any_async {
    public CompletableFuture<Ui.Type_stylesheet> vx_stylesheet_layout_html(final Ui.Type_stylesheet stylesheetui);
  }

  public static class Class_stylesheet_layout_html extends Core.Class_base implements Func_stylesheet_layout_html {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_stylesheet_layout_html output = new Uihtml.Class_stylesheet_layout_html();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_stylesheet_layout_html output = new Uihtml.Class_stylesheet_layout_html();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylesheet-layout-html", // name
        0, // idx
        true, // async
        Core.typedef_new(
          "vx/ui/ui", // pkgname
          "stylesheet", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_stylesheet_layout_html;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_stylesheet_layout_html;
      return output;
    }

    @Override
    public Core.Func_any_from_any_async vx_fn_new(Core.Class_any_from_any_async.IFn fn) {
      return Core.e_any_from_any_async;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> CompletableFuture<T> vx_any_from_any_async(final T generic_any_1, final U value) {
      Ui.Type_stylesheet inputval = Core.f_any_from_any(Ui.t_stylesheet, value);
      CompletableFuture<Ui.Type_stylesheet> future = Uihtml.f_stylesheet_layout_html(inputval);
      @SuppressWarnings("unchecked")
      CompletableFuture<T> output = (CompletableFuture<T>)future;
      return output;
    }

    @Override
    public CompletableFuture<Core.Type_any> vx_repl(Core.Type_anylist arglist) {
      CompletableFuture<Core.Type_any> output = Core.vx_async_new_from_value(Core.e_any);
      Ui.Type_stylesheet stylesheetui = Core.f_any_from_any(Ui.t_stylesheet, arglist.vx_any(Core.vx_new_int(0)));
      CompletableFuture<Ui.Type_stylesheet> future = Uihtml.f_stylesheet_layout_html(stylesheetui);
      output = Core.vx_async_from_async(Core.t_any, future);
      return output;
    }

    @Override
    public CompletableFuture<Ui.Type_stylesheet> vx_stylesheet_layout_html(final Ui.Type_stylesheet stylesheetui) {
      CompletableFuture<Ui.Type_stylesheet> output = Uihtml.f_stylesheet_layout_html(stylesheetui);
      return output;
    }

  }

  public static final Uihtml.Func_stylesheet_layout_html e_stylesheet_layout_html = new Uihtml.Class_stylesheet_layout_html();
  public static final Uihtml.Func_stylesheet_layout_html t_stylesheet_layout_html = new Uihtml.Class_stylesheet_layout_html();

  public static CompletableFuture<Ui.Type_stylesheet> f_stylesheet_layout_html(final Ui.Type_stylesheet stylesheetui) {
    CompletableFuture<Ui.Type_stylesheet> output = Core.vx_async_new_from_value(Ui.e_stylesheet);
    output = Core.f_let_async(
      Ui.t_stylesheet,
      Core.t_any_from_func_async.vx_fn_new(() -> {
        Html.Type_stylesheet stylesheethtml = Uihtml.f_stylesheet_from_stylesheet(
          stylesheetui
        );
        CompletableFuture<Core.Type_boolean> future_write = Htmldoc.f_boolean_write_from_stylesheet(
          stylesheethtml
        );
        CompletableFuture<Core.Type_any> output_1 = Core.vx_async_from_async_fn(future_write, (write) -> {
          Core.Type_any output_2 = stylesheetui;
          return output_2;
        });
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function stylesheet_from_stylesheet
   * Returns a htmlstylesheet from a uistylesheet
   * @param  {stylesheet} uistylesheet
   * @return {stylesheet}
   * (func stylesheet<-stylesheet)
   */
  public interface Func_stylesheet_from_stylesheet extends Core.Func_any_from_any {
    public Html.Type_stylesheet vx_stylesheet_from_stylesheet(final Ui.Type_stylesheet uistylesheet);
  }

  public static class Class_stylesheet_from_stylesheet extends Core.Class_base implements Func_stylesheet_from_stylesheet {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_stylesheet_from_stylesheet output = new Uihtml.Class_stylesheet_from_stylesheet();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_stylesheet_from_stylesheet output = new Uihtml.Class_stylesheet_from_stylesheet();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylesheet<-stylesheet", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/web/html", // pkgname
          "stylesheet", // name
          ":struct", // extends
          Core.vx_new(Core.t_typelist, Html.t_node, Html.t_headchild), // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_stylesheet_from_stylesheet;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_stylesheet_from_stylesheet;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Ui.Type_stylesheet inputval = (Ui.Type_stylesheet)value;
      Core.Type_any outputval = Uihtml.f_stylesheet_from_stylesheet(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_stylesheet uistylesheet = Core.f_any_from_any(Ui.t_stylesheet, arglist.vx_any(Core.vx_new_int(0)));
      output = Uihtml.f_stylesheet_from_stylesheet(uistylesheet);
      return output;
    }

    @Override
    public Html.Type_stylesheet vx_stylesheet_from_stylesheet(final Ui.Type_stylesheet uistylesheet) {
      Html.Type_stylesheet output = Uihtml.f_stylesheet_from_stylesheet(uistylesheet);
      return output;
    }

  }

  public static final Uihtml.Func_stylesheet_from_stylesheet e_stylesheet_from_stylesheet = new Uihtml.Class_stylesheet_from_stylesheet();
  public static final Uihtml.Func_stylesheet_from_stylesheet t_stylesheet_from_stylesheet = new Uihtml.Class_stylesheet_from_stylesheet();

  public static Html.Type_stylesheet f_stylesheet_from_stylesheet(final Ui.Type_stylesheet uistylesheet) {
    Html.Type_stylesheet output = Html.e_stylesheet;
    output = Core.f_let(
      Html.t_stylesheet,
      Core.t_any_from_func.vx_fn_new(() -> {
        Ui.Type_stylemap uistylemap = uistylesheet.stylemap();
        Ui.Type_fontfacemap fontfacemap = uistylesheet.fontfacemap();
        Html.Type_stylelist resetlist = Uihtml.f_stylelist_reset();
        Html.Type_stylelist fontstyles = Uihtml.f_stylelist_from_fontfacemap(
          fontfacemap
        );
        Html.Type_stylelist stylelist = Uihtml.f_stylelist_from_stylemap(
          uistylemap
        );
        Html.Type_stylelist allstyles = Core.f_new(
          Html.t_stylelist,
          Core.vx_new(
            Core.t_anylist,
            resetlist,
            fontstyles,
            stylelist
          )
        );
        Core.Type_any output_1 = Core.f_new(
          Html.t_stylesheet,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":styles"),
            allstyles
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function ui_layout_app_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {ui}
   * (func ui-layout-app<-ui-orig-parent)
   */
  public interface Func_ui_layout_app_from_ui_orig_parent extends Core.Type_func, Core.Type_replfunc {
    public Ui.Type_ui vx_ui_layout_app_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent);
  }

  public static class Class_ui_layout_app_from_ui_orig_parent extends Core.Class_base implements Func_ui_layout_app_from_ui_orig_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_ui_layout_app_from_ui_orig_parent output = new Uihtml.Class_ui_layout_app_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_ui_layout_app_from_ui_orig_parent output = new Uihtml.Class_ui_layout_app_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "ui-layout-app<-ui-orig-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/ui/ui", // pkgname
          "ui", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_ui_layout_app_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_ui_layout_app_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui orig = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_ui_layout_app_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

    @Override
    public Ui.Type_ui vx_ui_layout_app_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
      Ui.Type_ui output = Uihtml.f_ui_layout_app_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

  }

  public static final Uihtml.Func_ui_layout_app_from_ui_orig_parent e_ui_layout_app_from_ui_orig_parent = new Uihtml.Class_ui_layout_app_from_ui_orig_parent();
  public static final Uihtml.Func_ui_layout_app_from_ui_orig_parent t_ui_layout_app_from_ui_orig_parent = new Uihtml.Class_ui_layout_app_from_ui_orig_parent();

  public static Ui.Type_ui f_ui_layout_app_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
    Ui.Type_ui output = Ui.e_ui;
    output = Core.f_let(
      Ui.t_ui,
      Core.t_any_from_func.vx_fn_new(() -> {
        Html.Type_node node = Uihtml.f_node_app_from_ui_orig_parent(
          ui,
          orig,
          parent
        );
        Html.Type_node nodechg = Uihtml.f_node_layout_from_node_ui_parent(
          node,
          ui,
          parent
        );
        Core.Type_boolean iswrite = Uihtml.f_boolean_writeeventsall_from_ui(
          ui
        );
        Core.Type_any output_1 = ui;
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function ui_layout_default_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {ui}
   * (func ui-layout-default<-ui-orig-parent)
   */
  public interface Func_ui_layout_default_from_ui_orig_parent extends Core.Type_func, Core.Type_replfunc {
    public Ui.Type_ui vx_ui_layout_default_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent);
  }

  public static class Class_ui_layout_default_from_ui_orig_parent extends Core.Class_base implements Func_ui_layout_default_from_ui_orig_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_ui_layout_default_from_ui_orig_parent output = new Uihtml.Class_ui_layout_default_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_ui_layout_default_from_ui_orig_parent output = new Uihtml.Class_ui_layout_default_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "ui-layout-default<-ui-orig-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/ui/ui", // pkgname
          "ui", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_ui_layout_default_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_ui_layout_default_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui orig = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_ui_layout_default_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

    @Override
    public Ui.Type_ui vx_ui_layout_default_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
      Ui.Type_ui output = Uihtml.f_ui_layout_default_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

  }

  public static final Uihtml.Func_ui_layout_default_from_ui_orig_parent e_ui_layout_default_from_ui_orig_parent = new Uihtml.Class_ui_layout_default_from_ui_orig_parent();
  public static final Uihtml.Func_ui_layout_default_from_ui_orig_parent t_ui_layout_default_from_ui_orig_parent = new Uihtml.Class_ui_layout_default_from_ui_orig_parent();

  public static Ui.Type_ui f_ui_layout_default_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
    Ui.Type_ui output = Ui.e_ui;
    output = Core.f_let(
      Ui.t_ui,
      Core.t_any_from_func.vx_fn_new(() -> {
        Ui.Type_uimap uimap = ui.uimap();
        Html.Type_node node = Uihtml.f_node_default_from_ui_orig_parent(
          ui,
          orig,
          parent
        );
        Html.Type_node nodechg = Uihtml.f_node_layout_from_node_ui_parent(
          node,
          ui,
          parent
        );
        Core.Type_boolean iswrite = Uihtml.f_boolean_writeeventsall_from_ui(
          ui
        );
        Core.Type_any output_1 = ui;
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function ui_layout_image_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {ui}
   * (func ui-layout-image<-ui-orig-parent)
   */
  public interface Func_ui_layout_image_from_ui_orig_parent extends Core.Type_func, Core.Type_replfunc {
    public Ui.Type_ui vx_ui_layout_image_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent);
  }

  public static class Class_ui_layout_image_from_ui_orig_parent extends Core.Class_base implements Func_ui_layout_image_from_ui_orig_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_ui_layout_image_from_ui_orig_parent output = new Uihtml.Class_ui_layout_image_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_ui_layout_image_from_ui_orig_parent output = new Uihtml.Class_ui_layout_image_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "ui-layout-image<-ui-orig-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/ui/ui", // pkgname
          "ui", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_ui_layout_image_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_ui_layout_image_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui orig = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_ui_layout_image_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

    @Override
    public Ui.Type_ui vx_ui_layout_image_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
      Ui.Type_ui output = Uihtml.f_ui_layout_image_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

  }

  public static final Uihtml.Func_ui_layout_image_from_ui_orig_parent e_ui_layout_image_from_ui_orig_parent = new Uihtml.Class_ui_layout_image_from_ui_orig_parent();
  public static final Uihtml.Func_ui_layout_image_from_ui_orig_parent t_ui_layout_image_from_ui_orig_parent = new Uihtml.Class_ui_layout_image_from_ui_orig_parent();

  public static Ui.Type_ui f_ui_layout_image_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
    Ui.Type_ui output = Ui.e_ui;
    output = Core.f_let(
      Ui.t_ui,
      Core.t_any_from_func.vx_fn_new(() -> {
        Html.Type_node node = Uihtml.f_node_image_from_ui_orig_parent(
          ui,
          orig,
          parent
        );
        Html.Type_node nodechg = Uihtml.f_node_layout_from_node_ui_parent(
          node,
          ui,
          parent
        );
        Core.Type_boolean iswrite = Uihtml.f_boolean_writeeventsall_from_ui(
          ui
        );
        Core.Type_any output_1 = ui;
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function ui_layout_label_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {ui}
   * (func ui-layout-label<-ui-orig-parent)
   */
  public interface Func_ui_layout_label_from_ui_orig_parent extends Core.Type_func, Core.Type_replfunc {
    public Ui.Type_ui vx_ui_layout_label_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent);
  }

  public static class Class_ui_layout_label_from_ui_orig_parent extends Core.Class_base implements Func_ui_layout_label_from_ui_orig_parent {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Uihtml.Class_ui_layout_label_from_ui_orig_parent output = new Uihtml.Class_ui_layout_label_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Uihtml.Class_ui_layout_label_from_ui_orig_parent output = new Uihtml.Class_ui_layout_label_from_ui_orig_parent();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "ui-layout-label<-ui-orig-parent", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/ui/ui", // pkgname
          "ui", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Uihtml.e_ui_layout_label_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Uihtml.t_ui_layout_label_from_ui_orig_parent;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      Ui.Type_ui orig = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(1)));
      Ui.Type_ui parent = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(2)));
      output = Uihtml.f_ui_layout_label_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

    @Override
    public Ui.Type_ui vx_ui_layout_label_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
      Ui.Type_ui output = Uihtml.f_ui_layout_label_from_ui_orig_parent(ui, orig, parent);
      return output;
    }

  }

  public static final Uihtml.Func_ui_layout_label_from_ui_orig_parent e_ui_layout_label_from_ui_orig_parent = new Uihtml.Class_ui_layout_label_from_ui_orig_parent();
  public static final Uihtml.Func_ui_layout_label_from_ui_orig_parent t_ui_layout_label_from_ui_orig_parent = new Uihtml.Class_ui_layout_label_from_ui_orig_parent();

  public static Ui.Type_ui f_ui_layout_label_from_ui_orig_parent(final Ui.Type_ui ui, final Ui.Type_ui orig, final Ui.Type_ui parent) {
    Ui.Type_ui output = Ui.e_ui;
    output = Core.f_let(
      Ui.t_ui,
      Core.t_any_from_func.vx_fn_new(() -> {
        Ui.Type_uimap uimap = ui.uimap();
        Html.Type_node node = Uihtml.f_node_label_from_ui_orig_parent(
          ui,
          orig,
          parent
        );
        Html.Type_node nodechg = Uihtml.f_node_layout_from_node_ui_parent(
          node,
          ui,
          parent
        );
        Core.Type_boolean iswrite = Uihtml.f_boolean_writeeventsall_from_ui(
          ui
        );
        Core.Type_any output_1 = ui;
        return output_1;
      })
    );
    return output;
  }


  static {
    Const_layout_app_html.const_new(c_layout_app_html);
    Const_layout_else_html.const_new(c_layout_else_html);
    Const_layout_image_html.const_new(c_layout_image_html);
    Const_layout_label_html.const_new(c_layout_label_html);
    Const_layoutenginehtml.const_new(c_layoutenginehtml);
    Const_style_hidden.const_new(c_style_hidden);
    Const_style_selected.const_new(c_style_selected);
    Map<String, Core.Type_any> maptype = new LinkedHashMap<String, Core.Type_any>();
    Map<String, Core.Type_any> mapconst = new LinkedHashMap<String, Core.Type_any>();
    Map<String, Core.Type_func> mapfunc = new LinkedHashMap<String, Core.Type_func>();
    mapconst.put("layout-app-html", Uihtml.c_layout_app_html);
    mapconst.put("layout-else-html", Uihtml.c_layout_else_html);
    mapconst.put("layout-image-html", Uihtml.c_layout_image_html);
    mapconst.put("layout-label-html", Uihtml.c_layout_label_html);
    mapconst.put("layoutenginehtml", Uihtml.c_layoutenginehtml);
    mapconst.put("style-hidden", Uihtml.c_style_hidden);
    mapconst.put("style-selected", Uihtml.c_style_selected);
    mapfunc.put("boolean-layoutremove-html", Uihtml.t_boolean_layoutremove_html);
    mapfunc.put("boolean-layoutselected-html", Uihtml.t_boolean_layoutselected_html);
    mapfunc.put("boolean-layoutvisible-html", Uihtml.t_boolean_layoutvisible_html);
    mapfunc.put("boolean-print-html", Uihtml.t_boolean_print_html);
    mapfunc.put("boolean-writeclass<-ui", Uihtml.t_boolean_writeclass_from_ui);
    mapfunc.put("boolean-writeeventsall<-ui", Uihtml.t_boolean_writeeventsall_from_ui);
    mapfunc.put("boolean-writeeventsall<-uimap", Uihtml.t_boolean_writeeventsall_from_uimap);
    mapfunc.put("boolean-writeselected<-ui", Uihtml.t_boolean_writeselected_from_ui);
    mapfunc.put("boolean-writevisible<-ui", Uihtml.t_boolean_writevisible_from_ui);
    mapfunc.put("context-write", Uihtml.t_context_write);
    mapfunc.put("divchild<-ui", Uihtml.t_divchild_from_ui);
    mapfunc.put("divchildlist<-uimap", Uihtml.t_divchildlist_from_uimap);
    mapfunc.put("divchildlist<-uimap_1", Uihtml.t_divchildlist_from_uimap_1);
    mapfunc.put("divchildlist<-uimap-origmap-parent", Uihtml.t_divchildlist_from_uimap_origmap_parent);
    mapfunc.put("node-app<-ui-orig-parent", Uihtml.t_node_app_from_ui_orig_parent);
    mapfunc.put("node-default<-ui-orig-parent", Uihtml.t_node_default_from_ui_orig_parent);
    mapfunc.put("node-image<-ui-orig-parent", Uihtml.t_node_image_from_ui_orig_parent);
    mapfunc.put("node-label<-ui-orig-parent", Uihtml.t_node_label_from_ui_orig_parent);
    mapfunc.put("node-layout<-node-ui-parent", Uihtml.t_node_layout_from_node_ui_parent);
    mapfunc.put("node<-ui-orig-parent", Uihtml.t_node_from_ui_orig_parent);
    mapfunc.put("string-class<-ui", Uihtml.t_string_class_from_ui);
    mapfunc.put("string-style<-font", Uihtml.t_string_style_from_font);
    mapfunc.put("string-style<-image", Uihtml.t_string_style_from_image);
    mapfunc.put("string-stylename<-name-styletype", Uihtml.t_string_stylename_from_name_styletype);
    mapfunc.put("style<-fontface", Uihtml.t_style_from_fontface);
    mapfunc.put("style<-style", Uihtml.t_style_from_style);
    mapfunc.put("stylelist-extra<-ui", Uihtml.t_stylelist_extra_from_ui);
    mapfunc.put("stylelist-reset", Uihtml.t_stylelist_reset);
    mapfunc.put("stylelist<-fontfacemap", Uihtml.t_stylelist_from_fontfacemap);
    mapfunc.put("stylelist<-stylelist", Uihtml.t_stylelist_from_stylelist);
    mapfunc.put("stylelist<-stylemap", Uihtml.t_stylelist_from_stylemap);
    mapfunc.put("stylemap<-stylemap", Uihtml.t_stylemap_from_stylemap);
    mapfunc.put("stylesheet-layout-html", Uihtml.t_stylesheet_layout_html);
    mapfunc.put("stylesheet<-stylesheet", Uihtml.t_stylesheet_from_stylesheet);
    mapfunc.put("ui-layout-app<-ui-orig-parent", Uihtml.t_ui_layout_app_from_ui_orig_parent);
    mapfunc.put("ui-layout-default<-ui-orig-parent", Uihtml.t_ui_layout_default_from_ui_orig_parent);
    mapfunc.put("ui-layout-image<-ui-orig-parent", Uihtml.t_ui_layout_image_from_ui_orig_parent);
    mapfunc.put("ui-layout-label<-ui-orig-parent", Uihtml.t_ui_layout_label_from_ui_orig_parent);
    Core.vx_global_package_set("vx/ui/html/uihtml", maptype, mapconst, mapfunc);
  }

}
