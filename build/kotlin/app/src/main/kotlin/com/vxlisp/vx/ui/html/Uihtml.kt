package com.vxlisp.vx.ui.html

import java.util.concurrent.CompletableFuture
import com.vxlisp.vx.*
import com.vxlisp.vx.data.*
import com.vxlisp.vx.web.*
import com.vxlisp.vx.ui.*

object vx_ui_html_uihtml {

  /**
   * Constant: layout-app-html
   * Html App Renderer
   * {layout}
   */
  class Const_layout_app_html {
    constructor() {}
    companion object {

    fun constdef() : vx_core.Type_constdef {
      val output : vx_core.Type_constdef = vx_core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "layout-app-html", // name
        vx_ui_ui.t_layout
      )
      return output
    }

    fun const_new(output : vx_ui_ui.Type_layout) : Unit {
      var outval : vx_ui_ui.Class_layout = output as vx_ui_ui.Class_layout
      outval.vx_p_constdef = constdef()
      var value : vx_ui_ui.Type_layout = vx_core.f_copy(
        vx_ui_ui.c_layout_app,
        vx_core.vx_new(
          vx_core.t_anylist,
          // [
            vx_core.vx_new_string(":fn-layout"),
            vx_ui_html_uihtml.t_ui_layout_app_from_ui_orig_parent
          // ]
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_fn_layout = value.fn_layout()
    }

    }
  }

  val c_layout_app_html : vx_ui_ui.Type_layout = vx_ui_ui.Class_layout()

  /**
   * Constant: layout-else-html
   * Html Default Renderer
   * {layout}
   */
  class Const_layout_else_html {
    constructor() {}
    companion object {

    fun constdef() : vx_core.Type_constdef {
      val output : vx_core.Type_constdef = vx_core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "layout-else-html", // name
        vx_ui_ui.t_layout
      )
      return output
    }

    fun const_new(output : vx_ui_ui.Type_layout) : Unit {
      var outval : vx_ui_ui.Class_layout = output as vx_ui_ui.Class_layout
      outval.vx_p_constdef = constdef()
      var value : vx_ui_ui.Type_layout = vx_core.f_copy(
        vx_ui_ui.c_layout_else,
        vx_core.vx_new(
          vx_core.t_anylist,
          // [
            vx_core.vx_new_string(":fn-layout"),
            vx_ui_html_uihtml.t_ui_layout_default_from_ui_orig_parent
          // ]
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_fn_layout = value.fn_layout()
    }

    }
  }

  val c_layout_else_html : vx_ui_ui.Type_layout = vx_ui_ui.Class_layout()

  /**
   * Constant: layout-image-html
   * Html Image Renderer
   * {layout}
   */
  class Const_layout_image_html {
    constructor() {}
    companion object {

    fun constdef() : vx_core.Type_constdef {
      val output : vx_core.Type_constdef = vx_core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "layout-image-html", // name
        vx_ui_ui.t_layout
      )
      return output
    }

    fun const_new(output : vx_ui_ui.Type_layout) : Unit {
      var outval : vx_ui_ui.Class_layout = output as vx_ui_ui.Class_layout
      outval.vx_p_constdef = constdef()
      var value : vx_ui_ui.Type_layout = vx_core.f_copy(
        vx_ui_ui.c_layout_image,
        vx_core.vx_new(
          vx_core.t_anylist,
          // [
            vx_core.vx_new_string(":fn-layout"),
            vx_ui_html_uihtml.t_ui_layout_image_from_ui_orig_parent
          // ]
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_fn_layout = value.fn_layout()
    }

    }
  }

  val c_layout_image_html : vx_ui_ui.Type_layout = vx_ui_ui.Class_layout()

  /**
   * Constant: layout-label-html
   * Html Label Renderer
   * {layout}
   */
  class Const_layout_label_html {
    constructor() {}
    companion object {

    fun constdef() : vx_core.Type_constdef {
      val output : vx_core.Type_constdef = vx_core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "layout-label-html", // name
        vx_ui_ui.t_layout
      )
      return output
    }

    fun const_new(output : vx_ui_ui.Type_layout) : Unit {
      var outval : vx_ui_ui.Class_layout = output as vx_ui_ui.Class_layout
      outval.vx_p_constdef = constdef()
      var value : vx_ui_ui.Type_layout = vx_core.f_copy(
        vx_ui_ui.c_layout_label,
        vx_core.vx_new(
          vx_core.t_anylist,
          // [
            vx_core.vx_new_string(":fn-layout"),
            vx_ui_html_uihtml.t_ui_layout_label_from_ui_orig_parent
          // ]
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_fn_layout = value.fn_layout()
    }

    }
  }

  val c_layout_label_html : vx_ui_ui.Type_layout = vx_ui_ui.Class_layout()

  /**
   * Constant: layoutenginehtml
   * Html layout engine used to render html from ui and stylesheet
   * {layoutengine}
   */
  class Const_layoutenginehtml {
    constructor() {}
    companion object {

    fun constdef() : vx_core.Type_constdef {
      val output : vx_core.Type_constdef = vx_core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "layoutenginehtml", // name
        vx_ui_ui.t_layoutengine
      )
      return output
    }

    fun const_new(output : vx_ui_ui.Type_layoutengine) : Unit {
      var outval : vx_ui_ui.Class_layoutengine = output as vx_ui_ui.Class_layoutengine
      outval.vx_p_constdef = constdef()
      var value : vx_ui_ui.Type_layoutengine = vx_core.f_new(
        vx_ui_ui.t_layoutengine,
        vx_core.vx_new(
          vx_core.t_anylist,
          // [
            vx_core.vx_new_string(":layoutmap"),
            vx_ui_ui.f_layoutmap_from_layoutlist(
              vx_core.f_new(
                vx_ui_ui.t_layoutlist,
                vx_core.vx_new(
                  vx_core.t_anylist,
                  // [
                    vx_ui_html_uihtml.c_layout_app_html,
                    vx_ui_html_uihtml.c_layout_image_html,
                    vx_ui_html_uihtml.c_layout_label_html
                  // ]
                )
              )
            ),
            vx_core.vx_new_string(":layoutelse"),
            vx_ui_html_uihtml.c_layout_else_html,
            vx_core.vx_new_string(":boolean-print"),
            vx_ui_html_uihtml.t_boolean_print_html,
            vx_core.vx_new_string(":boolean-layoutremove"),
            vx_ui_html_uihtml.t_boolean_layoutremove_html,
            vx_core.vx_new_string(":boolean-layoutselected"),
            vx_ui_html_uihtml.t_boolean_layoutselected_html,
            vx_core.vx_new_string(":boolean-layoutvisible"),
            vx_ui_html_uihtml.t_boolean_layoutvisible_html,
            vx_core.vx_new_string(":stylesheetrender"),
            vx_ui_html_uihtml.t_stylesheet_layout_html
          // ]
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_boolean_print = value.boolean_print()
      outval.vx_p_boolean_layoutremove = value.boolean_layoutremove()
      outval.vx_p_boolean_layoutselected = value.boolean_layoutselected()
      outval.vx_p_boolean_layoutvisible = value.boolean_layoutvisible()
      outval.vx_p_layoutmap = value.layoutmap()
      outval.vx_p_layoutelse = value.layoutelse()
      outval.vx_p_stylesheetrender = value.stylesheetrender()
    }

    }
  }

  val c_layoutenginehtml : vx_ui_ui.Type_layoutengine = vx_ui_ui.Class_layoutengine()

  /**
   * Constant: style-hidden
   * {style}
   */
  class Const_style_hidden {
    constructor() {}
    companion object {

    fun constdef() : vx_core.Type_constdef {
      val output : vx_core.Type_constdef = vx_core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "style-hidden", // name
        vx_web_html.t_style
      )
      return output
    }

    fun const_new(output : vx_web_html.Type_style) : Unit {
      var outval : vx_web_html.Class_style = output as vx_web_html.Class_style
      outval.vx_p_constdef = constdef()
      var value : vx_web_html.Type_style = vx_core.f_new(
        vx_web_html.t_style,
        vx_core.vx_new(
          vx_core.t_anylist,
          // [
            vx_core.vx_new_string(":name"),
            vx_core.vx_new_string(".style-hidden")
          // ]
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_props = value.props()
      outval.vx_p_stylelist = value.stylelist()
    }

    }
  }

  val c_style_hidden : vx_web_html.Type_style = vx_web_html.Class_style()

  /**
   * Constant: style-selected
   * {style}
   */
  class Const_style_selected {
    constructor() {}
    companion object {

    fun constdef() : vx_core.Type_constdef {
      val output : vx_core.Type_constdef = vx_core.constdef_new(
        "vx/ui/html/uihtml", // pkgname
        "style-selected", // name
        vx_web_html.t_style
      )
      return output
    }

    fun const_new(output : vx_web_html.Type_style) : Unit {
      var outval : vx_web_html.Class_style = output as vx_web_html.Class_style
      outval.vx_p_constdef = constdef()
      var value : vx_web_html.Type_style = vx_core.f_new(
        vx_web_html.t_style,
        vx_core.vx_new(
          vx_core.t_anylist,
          // [
            vx_core.vx_new_string(":name"),
            vx_core.vx_new_string(".style-selected")
          // ]
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_props = value.props()
      outval.vx_p_stylelist = value.stylelist()
    }

    }
  }

  val c_style_selected : vx_web_html.Type_style = vx_web_html.Class_style()

  /**
   * @function boolean_layoutremove_html
   * Removes html node with a given ui.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-layoutremove-html)
   */
  interface Func_boolean_layoutremove_html : vx_core.Func_any_from_any {
    fun vx_boolean_layoutremove_html(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean
  }

  class Class_boolean_layoutremove_html : vx_core.Class_base, Func_boolean_layoutremove_html {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_layoutremove_html = vx_ui_html_uihtml.Class_boolean_layoutremove_html()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_layoutremove_html = vx_ui_html_uihtml.Class_boolean_layoutremove_html()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-layoutremove-html", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "boolean",
          "",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_boolean_layoutremove_html
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_boolean_layoutremove_html
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_boolean_layoutremove_html(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_boolean_layoutremove_html(ui)
      return output
    }

    override fun vx_boolean_layoutremove_html(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
      val output : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_layoutremove_html(ui)
      return output
    }

  }

  val e_boolean_layoutremove_html : vx_ui_html_uihtml.Func_boolean_layoutremove_html = vx_ui_html_uihtml.Class_boolean_layoutremove_html()
  val t_boolean_layoutremove_html : vx_ui_html_uihtml.Func_boolean_layoutremove_html = vx_ui_html_uihtml.Class_boolean_layoutremove_html()

  fun f_boolean_layoutremove_html(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
    var output : vx_core.Type_boolean = vx_core.e_boolean
    output = vx_core.f_let(
      vx_core.t_boolean,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val id : vx_core.Type_string = ui.uid()
          val output_1 : vx_core.Type_any = vx_web_htmldoc.f_boolean_remove_from_id(id)
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function boolean_layoutselected_html
   * Removes html node with a given ui.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-layoutselected-html)
   */
  interface Func_boolean_layoutselected_html : vx_core.Func_any_from_any {
    fun vx_boolean_layoutselected_html(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean
  }

  class Class_boolean_layoutselected_html : vx_core.Class_base, Func_boolean_layoutselected_html {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_layoutselected_html = vx_ui_html_uihtml.Class_boolean_layoutselected_html()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_layoutselected_html = vx_ui_html_uihtml.Class_boolean_layoutselected_html()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-layoutselected-html", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "boolean",
          "",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_boolean_layoutselected_html
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_boolean_layoutselected_html
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_boolean_layoutselected_html(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_boolean_layoutselected_html(ui)
      return output
    }

    override fun vx_boolean_layoutselected_html(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
      val output : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_layoutselected_html(ui)
      return output
    }

  }

  val e_boolean_layoutselected_html : vx_ui_html_uihtml.Func_boolean_layoutselected_html = vx_ui_html_uihtml.Class_boolean_layoutselected_html()
  val t_boolean_layoutselected_html : vx_ui_html_uihtml.Func_boolean_layoutselected_html = vx_ui_html_uihtml.Class_boolean_layoutselected_html()

  fun f_boolean_layoutselected_html(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
    var output : vx_core.Type_boolean = vx_core.e_boolean
    output = vx_ui_html_uihtml.f_boolean_writeclass_from_ui(ui)
    return output
  }

  /**
   * @function boolean_layoutvisible_html
   * Removes html node with a given ui.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-layoutvisible-html)
   */
  interface Func_boolean_layoutvisible_html : vx_core.Func_any_from_any {
    fun vx_boolean_layoutvisible_html(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean
  }

  class Class_boolean_layoutvisible_html : vx_core.Class_base, Func_boolean_layoutvisible_html {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_layoutvisible_html = vx_ui_html_uihtml.Class_boolean_layoutvisible_html()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_layoutvisible_html = vx_ui_html_uihtml.Class_boolean_layoutvisible_html()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-layoutvisible-html", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "boolean",
          "",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_boolean_layoutvisible_html
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_boolean_layoutvisible_html
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_boolean_layoutvisible_html(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_boolean_layoutvisible_html(ui)
      return output
    }

    override fun vx_boolean_layoutvisible_html(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
      val output : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_layoutvisible_html(ui)
      return output
    }

  }

  val e_boolean_layoutvisible_html : vx_ui_html_uihtml.Func_boolean_layoutvisible_html = vx_ui_html_uihtml.Class_boolean_layoutvisible_html()
  val t_boolean_layoutvisible_html : vx_ui_html_uihtml.Func_boolean_layoutvisible_html = vx_ui_html_uihtml.Class_boolean_layoutvisible_html()

  fun f_boolean_layoutvisible_html(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
    var output : vx_core.Type_boolean = vx_core.e_boolean
    output = vx_ui_html_uihtml.f_boolean_writeclass_from_ui(ui)
    return output
  }

  /**
   * @function boolean_print_html
   * Create a print ready version of ui
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-print-html)
   */
  interface Func_boolean_print_html : vx_core.Func_any_from_any_context {
    fun vx_boolean_print_html(context : vx_core.Type_context, ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean
  }

  class Class_boolean_print_html : vx_core.Class_base, Func_boolean_print_html {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_print_html = vx_ui_html_uihtml.Class_boolean_print_html()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_print_html = vx_ui_html_uihtml.Class_boolean_print_html()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-print-html", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "boolean",
          "",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_boolean_print_html
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_boolean_print_html
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any_context.IFn) : vx_core.Func_any_from_any_context {
      return vx_core.e_any_from_any_context
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any_context(generic_any_1 : T, context : vx_core.Type_context, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_boolean_print_html(context, inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val context : vx_core.Type_context = vx_core.f_any_from_any(
        vx_core.t_context,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      output = vx_ui_html_uihtml.f_boolean_print_html(context, ui)
      return output
    }

    override fun vx_boolean_print_html(context : vx_core.Type_context, ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
      val output : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_print_html(context, ui)
      return output
    }

  }

  val e_boolean_print_html : vx_ui_html_uihtml.Func_boolean_print_html = vx_ui_html_uihtml.Class_boolean_print_html()
  val t_boolean_print_html : vx_ui_html_uihtml.Func_boolean_print_html = vx_ui_html_uihtml.Class_boolean_print_html()

  fun f_boolean_print_html(context : vx_core.Type_context, ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
    var output : vx_core.Type_boolean = vx_core.e_boolean
    output = vx_core.f_let(
      vx_core.t_boolean,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uid : vx_core.Type_string = ui.uid()
          val stylesheetui : vx_ui_ui.Type_stylesheet = vx_ui_ui.f_stylesheet_readstate(context)
          val stylesheethtml : vx_web_html.Type_stylesheet = vx_ui_html_uihtml.f_stylesheet_from_stylesheet(stylesheetui)
          val styletext : vx_core.Type_string = vx_web_html.f_string_from_stylesheet_indent(
            stylesheethtml,
            vx_core.vx_new_int(0)
          )
          val output_1 : vx_core.Type_any = vx_web_htmldoc.f_boolean_print_from_id_stylesheettext(uid, styletext)
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function boolean_writeclass_from_ui
   * Writes to an html node adding or removing the given hidden class.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-writeclass<-ui)
   */
  interface Func_boolean_writeclass_from_ui : vx_core.Func_any_from_any {
    fun vx_boolean_writeclass_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean
  }

  class Class_boolean_writeclass_from_ui : vx_core.Class_base, Func_boolean_writeclass_from_ui {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_writeclass_from_ui = vx_ui_html_uihtml.Class_boolean_writeclass_from_ui()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_writeclass_from_ui = vx_ui_html_uihtml.Class_boolean_writeclass_from_ui()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-writeclass<-ui", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "boolean",
          "",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_boolean_writeclass_from_ui
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_boolean_writeclass_from_ui
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_boolean_writeclass_from_ui(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_boolean_writeclass_from_ui(ui)
      return output
    }

    override fun vx_boolean_writeclass_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
      val output : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_writeclass_from_ui(ui)
      return output
    }

  }

  val e_boolean_writeclass_from_ui : vx_ui_html_uihtml.Func_boolean_writeclass_from_ui = vx_ui_html_uihtml.Class_boolean_writeclass_from_ui()
  val t_boolean_writeclass_from_ui : vx_ui_html_uihtml.Func_boolean_writeclass_from_ui = vx_ui_html_uihtml.Class_boolean_writeclass_from_ui()

  fun f_boolean_writeclass_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
    var output : vx_core.Type_boolean = vx_core.e_boolean
    output = vx_core.f_let(
      vx_core.t_boolean,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val id : vx_core.Type_string = ui.uid()
          val sclass : vx_core.Type_string = vx_ui_html_uihtml.f_string_class_from_ui(ui)
          val output_1 : vx_core.Type_any = vx_web_htmldoc.f_boolean_write_from_id_attribute_value(
            id,
            vx_core.vx_new_string("class"),
            sclass
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function boolean_writeeventsall_from_ui
   * Write the events for ui and subui to the dom.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-writeeventsall<-ui)
   */
  interface Func_boolean_writeeventsall_from_ui : vx_core.Func_any_from_any {
    fun vx_boolean_writeeventsall_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean
  }

  class Class_boolean_writeeventsall_from_ui : vx_core.Class_base, Func_boolean_writeeventsall_from_ui {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_writeeventsall_from_ui = vx_ui_html_uihtml.Class_boolean_writeeventsall_from_ui()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_writeeventsall_from_ui = vx_ui_html_uihtml.Class_boolean_writeeventsall_from_ui()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-writeeventsall<-ui", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "boolean",
          "",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_boolean_writeeventsall_from_ui
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_boolean_writeeventsall_from_ui
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_boolean_writeeventsall_from_ui(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_boolean_writeeventsall_from_ui(ui)
      return output
    }

    override fun vx_boolean_writeeventsall_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
      val output : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_writeeventsall_from_ui(ui)
      return output
    }

  }

  val e_boolean_writeeventsall_from_ui : vx_ui_html_uihtml.Func_boolean_writeeventsall_from_ui = vx_ui_html_uihtml.Class_boolean_writeeventsall_from_ui()
  val t_boolean_writeeventsall_from_ui : vx_ui_html_uihtml.Func_boolean_writeeventsall_from_ui = vx_ui_html_uihtml.Class_boolean_writeeventsall_from_ui()

  fun f_boolean_writeeventsall_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
    var output : vx_core.Type_boolean = vx_core.e_boolean
    output = vx_core.f_let(
      vx_core.t_boolean,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uimap : vx_ui_ui.Type_uimap = ui.uimap()
          val iswrite1 : vx_core.Type_boolean = vx_web_htmldoc.f_boolean_writeevents_from_ui(ui)
          val iswrite2 : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_writeeventsall_from_uimap(uimap)
          val output_1 : vx_core.Type_any = vx_core.f_and(iswrite1, iswrite2)
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function boolean_writeeventsall_from_uimap
   * Write the events for each ui and subui to the dom.
   * @param  {uimap} uimap
   * @return {boolean}
   * (func boolean-writeeventsall<-uimap)
   */
  interface Func_boolean_writeeventsall_from_uimap : vx_core.Func_any_from_any {
    fun vx_boolean_writeeventsall_from_uimap(uimap : vx_ui_ui.Type_uimap) : vx_core.Type_boolean
  }

  class Class_boolean_writeeventsall_from_uimap : vx_core.Class_base, Func_boolean_writeeventsall_from_uimap {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_writeeventsall_from_uimap = vx_ui_html_uihtml.Class_boolean_writeeventsall_from_uimap()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_writeeventsall_from_uimap = vx_ui_html_uihtml.Class_boolean_writeeventsall_from_uimap()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-writeeventsall<-uimap", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "boolean",
          "",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_boolean_writeeventsall_from_uimap
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_boolean_writeeventsall_from_uimap
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_uimap = value as vx_ui_ui.Type_uimap
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_boolean_writeeventsall_from_uimap(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val uimap : vx_ui_ui.Type_uimap = vx_core.f_any_from_any(
        vx_ui_ui.t_uimap,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_boolean_writeeventsall_from_uimap(uimap)
      return output
    }

    override fun vx_boolean_writeeventsall_from_uimap(uimap : vx_ui_ui.Type_uimap) : vx_core.Type_boolean {
      val output : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_writeeventsall_from_uimap(uimap)
      return output
    }

  }

  val e_boolean_writeeventsall_from_uimap : vx_ui_html_uihtml.Func_boolean_writeeventsall_from_uimap = vx_ui_html_uihtml.Class_boolean_writeeventsall_from_uimap()
  val t_boolean_writeeventsall_from_uimap : vx_ui_html_uihtml.Func_boolean_writeeventsall_from_uimap = vx_ui_html_uihtml.Class_boolean_writeeventsall_from_uimap()

  fun f_boolean_writeeventsall_from_uimap(uimap : vx_ui_ui.Type_uimap) : vx_core.Type_boolean {
    var output : vx_core.Type_boolean = vx_core.e_boolean
    output = vx_core.f_let(
      vx_core.t_boolean,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val boollist : vx_core.Type_booleanlist = vx_core.f_list_from_map_1(
            vx_core.t_booleanlist,
            uimap,
            vx_core.t_any_from_key_value.vx_fn_new(
              {key_any : vx_core.Type_any, value_any : vx_core.Type_any ->
                val key : vx_core.Type_string = vx_core.f_any_from_any(
                  vx_core.t_string,
                  key_any
                )
                val value : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
                  vx_ui_ui.t_ui,
                  value_any
                )
                var output_2 : vx_core.Type_any = vx_ui_html_uihtml.f_boolean_writeeventsall_from_ui(value)
                output_2
              }
            )
          )
          val output_1 : vx_core.Type_any = vx_core.f_and_1(boollist)
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function boolean_writeselected_from_ui
   * Writes to an html node adding or removing the selected class.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-writeselected<-ui)
   */
  interface Func_boolean_writeselected_from_ui : vx_core.Func_any_from_any {
    fun vx_boolean_writeselected_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean
  }

  class Class_boolean_writeselected_from_ui : vx_core.Class_base, Func_boolean_writeselected_from_ui {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_writeselected_from_ui = vx_ui_html_uihtml.Class_boolean_writeselected_from_ui()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_writeselected_from_ui = vx_ui_html_uihtml.Class_boolean_writeselected_from_ui()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-writeselected<-ui", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "boolean",
          "",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_boolean_writeselected_from_ui
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_boolean_writeselected_from_ui
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_boolean_writeselected_from_ui(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_boolean_writeselected_from_ui(ui)
      return output
    }

    override fun vx_boolean_writeselected_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
      val output : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_writeselected_from_ui(ui)
      return output
    }

  }

  val e_boolean_writeselected_from_ui : vx_ui_html_uihtml.Func_boolean_writeselected_from_ui = vx_ui_html_uihtml.Class_boolean_writeselected_from_ui()
  val t_boolean_writeselected_from_ui : vx_ui_html_uihtml.Func_boolean_writeselected_from_ui = vx_ui_html_uihtml.Class_boolean_writeselected_from_ui()

  fun f_boolean_writeselected_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
    var output : vx_core.Type_boolean = vx_core.e_boolean
    output = vx_ui_html_uihtml.f_boolean_writeclass_from_ui(ui)
    return output
  }

  /**
   * @function boolean_writevisible_from_ui
   * Writes to an html node adding or removing the hidden class.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-writevisible<-ui)
   */
  interface Func_boolean_writevisible_from_ui : vx_core.Func_any_from_any {
    fun vx_boolean_writevisible_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean
  }

  class Class_boolean_writevisible_from_ui : vx_core.Class_base, Func_boolean_writevisible_from_ui {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_writevisible_from_ui = vx_ui_html_uihtml.Class_boolean_writevisible_from_ui()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_boolean_writevisible_from_ui = vx_ui_html_uihtml.Class_boolean_writevisible_from_ui()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "boolean-writevisible<-ui", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "boolean",
          "",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_boolean_writevisible_from_ui
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_boolean_writevisible_from_ui
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_boolean_writevisible_from_ui(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_boolean_writevisible_from_ui(ui)
      return output
    }

    override fun vx_boolean_writevisible_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
      val output : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_writevisible_from_ui(ui)
      return output
    }

  }

  val e_boolean_writevisible_from_ui : vx_ui_html_uihtml.Func_boolean_writevisible_from_ui = vx_ui_html_uihtml.Class_boolean_writevisible_from_ui()
  val t_boolean_writevisible_from_ui : vx_ui_html_uihtml.Func_boolean_writevisible_from_ui = vx_ui_html_uihtml.Class_boolean_writevisible_from_ui()

  fun f_boolean_writevisible_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_boolean {
    var output : vx_core.Type_boolean = vx_core.e_boolean
    output = vx_ui_html_uihtml.f_boolean_writeclass_from_ui(ui)
    return output
  }

  /**
   * @function context_write
   * @return {context}
   * (func context-write)
   */
  interface Func_context_write : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_context_write(context : vx_core.Type_context) : vx_core.Type_context
  }

  class Class_context_write : vx_core.Class_base, Func_context_write {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_context_write = vx_ui_html_uihtml.Class_context_write()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_context_write = vx_ui_html_uihtml.Class_context_write()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "context-write", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "context",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_context_write
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_context_write
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val context : vx_core.Type_context = vx_core.f_any_from_any(
        vx_core.t_context,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_context_write(context)
      return output
    }

    override fun vx_context_write(context : vx_core.Type_context) : vx_core.Type_context {
      val output : vx_core.Type_context = vx_ui_html_uihtml.f_context_write(context)
      return output
    }

  }

  val e_context_write : vx_ui_html_uihtml.Func_context_write = vx_ui_html_uihtml.Class_context_write()
  val t_context_write : vx_ui_html_uihtml.Func_context_write = vx_ui_html_uihtml.Class_context_write()

  fun f_context_write(context : vx_core.Type_context) : vx_core.Type_context {
    var output : vx_core.Type_context = vx_core.e_context
    output = vx_web_htmldoc.f_context_write(context)
    return output
  }

  /**
   * @function divchild_from_ui
   * Returns a divchild from a ui
   * @param  {ui} ui
   * @return {divchild}
   * (func divchild<-ui)
   */
  interface Func_divchild_from_ui : vx_core.Func_any_from_any {
    fun vx_divchild_from_ui(ui : vx_ui_ui.Type_ui) : vx_web_html.Type_divchild
  }

  class Class_divchild_from_ui : vx_core.Class_base, Func_divchild_from_ui {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_divchild_from_ui = vx_ui_html_uihtml.Class_divchild_from_ui()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_divchild_from_ui = vx_ui_html_uihtml.Class_divchild_from_ui()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "divchild<-ui", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "divchild",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_divchild_from_ui
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_divchild_from_ui
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_divchild_from_ui(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_divchild_from_ui(ui)
      return output
    }

    override fun vx_divchild_from_ui(ui : vx_ui_ui.Type_ui) : vx_web_html.Type_divchild {
      val output : vx_web_html.Type_divchild = vx_ui_html_uihtml.f_divchild_from_ui(ui)
      return output
    }

  }

  val e_divchild_from_ui : vx_ui_html_uihtml.Func_divchild_from_ui = vx_ui_html_uihtml.Class_divchild_from_ui()
  val t_divchild_from_ui : vx_ui_html_uihtml.Func_divchild_from_ui = vx_ui_html_uihtml.Class_divchild_from_ui()

  fun f_divchild_from_ui(ui : vx_ui_ui.Type_ui) : vx_web_html.Type_divchild {
    var output : vx_web_html.Type_divchild = vx_web_html.e_divchild
    output = vx_core.f_let(
      vx_web_html.t_div,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uid : vx_core.Type_string = ui.uid()
          val uimapchild : vx_ui_ui.Type_uimap = ui.uimap()
          val uistyle : vx_ui_ui.Type_style = ui.style()
          val uistyles : vx_ui_ui.Type_stylelist = ui.stylelist()
          val styleunique : vx_web_html.Type_style = vx_ui_html_uihtml.f_style_from_style(uistyle)
          val htmlstyles : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_from_stylelist(uistyles)
          val output_1 : vx_core.Type_any = vx_core.f_new(
            vx_web_html.t_div,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":id"),
                uid,
                vx_core.vx_new_string(":style-unique"),
                styleunique,
                vx_core.vx_new_string(":stylelist"),
                htmlstyles
              // ]
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function divchildlist_from_uimap
   * Returns a divchildlist of divs from a uimap
   * @param  {uimap} uimap
   * @return {divchildlist}
   * (func divchildlist<-uimap)
   */
  interface Func_divchildlist_from_uimap : vx_core.Func_any_from_any {
    fun vx_divchildlist_from_uimap(uimap : vx_ui_ui.Type_uimap) : vx_web_html.Type_divchildlist
  }

  class Class_divchildlist_from_uimap : vx_core.Class_base, Func_divchildlist_from_uimap {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_divchildlist_from_uimap = vx_ui_html_uihtml.Class_divchildlist_from_uimap()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_divchildlist_from_uimap = vx_ui_html_uihtml.Class_divchildlist_from_uimap()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "divchildlist<-uimap", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "divchildlist",
          ":list",
          vx_core.e_typelist,
          vx_core.vx_new(
            vx_core.t_typelist,
            // [
              vx_web_html.t_divchild
            // ]
          ),
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_divchildlist_from_uimap
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_divchildlist_from_uimap
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_uimap = value as vx_ui_ui.Type_uimap
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_divchildlist_from_uimap(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val uimap : vx_ui_ui.Type_uimap = vx_core.f_any_from_any(
        vx_ui_ui.t_uimap,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_divchildlist_from_uimap(uimap)
      return output
    }

    override fun vx_divchildlist_from_uimap(uimap : vx_ui_ui.Type_uimap) : vx_web_html.Type_divchildlist {
      val output : vx_web_html.Type_divchildlist = vx_ui_html_uihtml.f_divchildlist_from_uimap(uimap)
      return output
    }

  }

  val e_divchildlist_from_uimap : vx_ui_html_uihtml.Func_divchildlist_from_uimap = vx_ui_html_uihtml.Class_divchildlist_from_uimap()
  val t_divchildlist_from_uimap : vx_ui_html_uihtml.Func_divchildlist_from_uimap = vx_ui_html_uihtml.Class_divchildlist_from_uimap()

  fun f_divchildlist_from_uimap(uimap : vx_ui_ui.Type_uimap) : vx_web_html.Type_divchildlist {
    var output : vx_web_html.Type_divchildlist = vx_web_html.e_divchildlist
    output = vx_core.f_list_from_map_1(
      vx_web_html.t_divchildlist,
      uimap,
      vx_core.t_any_from_key_value.vx_fn_new(
        {key_any : vx_core.Type_any, value_any : vx_core.Type_any ->
          val key : vx_core.Type_string = vx_core.f_any_from_any(
            vx_core.t_string,
            key_any
          )
          val value : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
            vx_ui_ui.t_ui,
            value_any
          )
          var output_1 : vx_core.Type_any = vx_core.f_let(
            vx_web_html.t_div,
            vx_core.t_any_from_func.vx_fn_new(
              { ->
                val uid : vx_core.Type_string = value.uid()
                val output_2 : vx_core.Type_any = vx_core.f_new(
                  vx_web_html.t_div,
                  vx_core.vx_new(
                    vx_core.t_anylist,
                    // [
                      vx_core.vx_new_string(":id"),
                      uid
                    // ]
                  )
                )
                output_2
              }
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function divchildlist_from_uimap 1
   * Returns a divchildlist of divs from a uimap
   * @param  {uimap} uimap
   * @return {divchildlist}
   * (func divchildlist<-uimap)
   */
  interface Func_divchildlist_from_uimap_1 : vx_core.Func_any_from_any {
    fun vx_divchildlist_from_uimap_1(uimap : vx_ui_ui.Type_uimap) : vx_web_html.Type_divchildlist
  }

  class Class_divchildlist_from_uimap_1 : vx_core.Class_base, Func_divchildlist_from_uimap_1 {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_divchildlist_from_uimap_1 = vx_ui_html_uihtml.Class_divchildlist_from_uimap_1()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_divchildlist_from_uimap_1 = vx_ui_html_uihtml.Class_divchildlist_from_uimap_1()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "divchildlist<-uimap", // name
        1, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "divchildlist",
          ":list",
          vx_core.e_typelist,
          vx_core.vx_new(
            vx_core.t_typelist,
            // [
              vx_web_html.t_divchild
            // ]
          ),
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_divchildlist_from_uimap_1
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_divchildlist_from_uimap_1
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_uimap = value as vx_ui_ui.Type_uimap
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_divchildlist_from_uimap_1(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val uimap : vx_ui_ui.Type_uimap = vx_core.f_any_from_any(
        vx_ui_ui.t_uimap,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_divchildlist_from_uimap_1(uimap)
      return output
    }

    override fun vx_divchildlist_from_uimap_1(uimap : vx_ui_ui.Type_uimap) : vx_web_html.Type_divchildlist {
      val output : vx_web_html.Type_divchildlist = vx_ui_html_uihtml.f_divchildlist_from_uimap_1(uimap)
      return output
    }

  }

  val e_divchildlist_from_uimap_1 : vx_ui_html_uihtml.Func_divchildlist_from_uimap_1 = vx_ui_html_uihtml.Class_divchildlist_from_uimap_1()
  val t_divchildlist_from_uimap_1 : vx_ui_html_uihtml.Func_divchildlist_from_uimap_1 = vx_ui_html_uihtml.Class_divchildlist_from_uimap_1()

  fun f_divchildlist_from_uimap_1(uimap : vx_ui_ui.Type_uimap) : vx_web_html.Type_divchildlist {
    var output : vx_web_html.Type_divchildlist = vx_web_html.e_divchildlist
    output = vx_core.f_list_from_map_1(
      vx_web_html.t_divchildlist,
      uimap,
      vx_core.t_any_from_key_value.vx_fn_new(
        {key_any : vx_core.Type_any, value_any : vx_core.Type_any ->
          val key : vx_core.Type_string = vx_core.f_any_from_any(
            vx_core.t_string,
            key_any
          )
          val value : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
            vx_ui_ui.t_ui,
            value_any
          )
          var output_1 : vx_core.Type_any = vx_core.f_let(
            vx_web_html.t_div,
            vx_core.t_any_from_func.vx_fn_new(
              { ->
                val uid : vx_core.Type_string = value.uid()
                val output_2 : vx_core.Type_any = vx_core.f_new(
                  vx_web_html.t_div,
                  vx_core.vx_new(
                    vx_core.t_anylist,
                    // [
                      vx_core.vx_new_string(":id"),
                      uid
                    // ]
                  )
                )
                output_2
              }
            )
          )
          output_1
        }
      )
    )
    return output
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
  interface Func_divchildlist_from_uimap_origmap_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_divchildlist_from_uimap_origmap_parent(uimap : vx_ui_ui.Type_uimap, origmap : vx_ui_ui.Type_uimap, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_divchildlist
  }

  class Class_divchildlist_from_uimap_origmap_parent : vx_core.Class_base, Func_divchildlist_from_uimap_origmap_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_divchildlist_from_uimap_origmap_parent = vx_ui_html_uihtml.Class_divchildlist_from_uimap_origmap_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_divchildlist_from_uimap_origmap_parent = vx_ui_html_uihtml.Class_divchildlist_from_uimap_origmap_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "divchildlist<-uimap-origmap-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "divchildlist",
          ":list",
          vx_core.e_typelist,
          vx_core.vx_new(
            vx_core.t_typelist,
            // [
              vx_web_html.t_divchild
            // ]
          ),
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_divchildlist_from_uimap_origmap_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_divchildlist_from_uimap_origmap_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val uimap : vx_ui_ui.Type_uimap = vx_core.f_any_from_any(
        vx_ui_ui.t_uimap,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val origmap : vx_ui_ui.Type_uimap = vx_core.f_any_from_any(
        vx_ui_ui.t_uimap,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_divchildlist_from_uimap_origmap_parent(uimap, origmap, parent)
      return output
    }

    override fun vx_divchildlist_from_uimap_origmap_parent(uimap : vx_ui_ui.Type_uimap, origmap : vx_ui_ui.Type_uimap, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_divchildlist {
      val output : vx_web_html.Type_divchildlist = vx_ui_html_uihtml.f_divchildlist_from_uimap_origmap_parent(uimap, origmap, parent)
      return output
    }

  }

  val e_divchildlist_from_uimap_origmap_parent : vx_ui_html_uihtml.Func_divchildlist_from_uimap_origmap_parent = vx_ui_html_uihtml.Class_divchildlist_from_uimap_origmap_parent()
  val t_divchildlist_from_uimap_origmap_parent : vx_ui_html_uihtml.Func_divchildlist_from_uimap_origmap_parent = vx_ui_html_uihtml.Class_divchildlist_from_uimap_origmap_parent()

  fun f_divchildlist_from_uimap_origmap_parent(uimap : vx_ui_ui.Type_uimap, origmap : vx_ui_ui.Type_uimap, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_divchildlist {
    var output : vx_web_html.Type_divchildlist = vx_web_html.e_divchildlist
    output = vx_core.f_list_from_map_1(
      vx_web_html.t_divchildlist,
      uimap,
      vx_core.t_any_from_key_value.vx_fn_new(
        {key_any : vx_core.Type_any, value_any : vx_core.Type_any ->
          val key : vx_core.Type_string = vx_core.f_any_from_any(
            vx_core.t_string,
            key_any
          )
          val value : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
            vx_ui_ui.t_ui,
            value_any
          )
          var output_1 : vx_core.Type_any = vx_core.f_let(
            vx_web_html.t_node,
            vx_core.t_any_from_func.vx_fn_new(
              { ->
                val origvalue : vx_ui_ui.Type_ui = vx_core.f_any_from_map(
                  vx_ui_ui.t_ui,
                  origmap,
                  key
                )
                val output_2 : vx_core.Type_any = vx_ui_html_uihtml.f_node_from_ui_orig_parent(
                  value,
                  origvalue,
                  parent
                )
                output_2
              }
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function node_app_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {node}
   * (func node-app<-ui-orig-parent)
   */
  interface Func_node_app_from_ui_orig_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_node_app_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node
  }

  class Class_node_app_from_ui_orig_parent : vx_core.Class_base, Func_node_app_from_ui_orig_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_app_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_app_from_ui_orig_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_app_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_app_from_ui_orig_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node-app<-ui-orig-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "node",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_node_app_from_ui_orig_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_node_app_from_ui_orig_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val orig : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_node_app_from_ui_orig_parent(ui, orig, parent)
      return output
    }

    override fun vx_node_app_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
      val output : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_app_from_ui_orig_parent(ui, orig, parent)
      return output
    }

  }

  val e_node_app_from_ui_orig_parent : vx_ui_html_uihtml.Func_node_app_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_app_from_ui_orig_parent()
  val t_node_app_from_ui_orig_parent : vx_ui_html_uihtml.Func_node_app_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_app_from_ui_orig_parent()

  fun f_node_app_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
    var output : vx_web_html.Type_node = vx_web_html.e_node
    output = vx_core.f_let(
      vx_web_html.t_node,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uid : vx_core.Type_string = ui.uid()
          val uimap : vx_ui_ui.Type_uimap = ui.uimap()
          val origmap : vx_ui_ui.Type_uimap = orig.uimap()
          val children : vx_web_html.Type_divchildlist = vx_ui_html_uihtml.f_divchildlist_from_uimap_origmap_parent(uimap, origmap, ui)
          val output_1 : vx_core.Type_any = vx_core.f_new(
            vx_web_html.t_div,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":id"),
                uid,
                vx_core.vx_new_string(":nodes"),
                children
              // ]
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function node_default_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {node}
   * (func node-default<-ui-orig-parent)
   */
  interface Func_node_default_from_ui_orig_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_node_default_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node
  }

  class Class_node_default_from_ui_orig_parent : vx_core.Class_base, Func_node_default_from_ui_orig_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_default_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_default_from_ui_orig_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_default_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_default_from_ui_orig_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node-default<-ui-orig-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "node",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_node_default_from_ui_orig_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_node_default_from_ui_orig_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val orig : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_node_default_from_ui_orig_parent(ui, orig, parent)
      return output
    }

    override fun vx_node_default_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
      val output : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_default_from_ui_orig_parent(ui, orig, parent)
      return output
    }

  }

  val e_node_default_from_ui_orig_parent : vx_ui_html_uihtml.Func_node_default_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_default_from_ui_orig_parent()
  val t_node_default_from_ui_orig_parent : vx_ui_html_uihtml.Func_node_default_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_default_from_ui_orig_parent()

  fun f_node_default_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
    var output : vx_web_html.Type_node = vx_web_html.e_node
    output = vx_core.f_let(
      vx_web_html.t_node,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uid : vx_core.Type_string = ui.uid()
          val uimap : vx_ui_ui.Type_uimap = ui.uimap()
          val uistyle : vx_ui_ui.Type_style = ui.style()
          val origmap : vx_ui_ui.Type_uimap = orig.uimap()
          val style : vx_web_html.Type_style = vx_ui_html_uihtml.f_style_from_style(uistyle)
          val styles : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_extra_from_ui(ui)
          val children : vx_web_html.Type_divchildlist = vx_ui_html_uihtml.f_divchildlist_from_uimap_origmap_parent(uimap, origmap, ui)
          val output_1 : vx_core.Type_any = vx_core.f_new(
            vx_web_html.t_div,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":id"),
                uid,
                vx_core.vx_new_string(":style-unique"),
                style,
                vx_core.vx_new_string(":stylelist"),
                styles,
                vx_core.vx_new_string(":nodes"),
                children
              // ]
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function node_image_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {node}
   * (func node-image<-ui-orig-parent)
   */
  interface Func_node_image_from_ui_orig_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_node_image_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node
  }

  class Class_node_image_from_ui_orig_parent : vx_core.Class_base, Func_node_image_from_ui_orig_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_image_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_image_from_ui_orig_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_image_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_image_from_ui_orig_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node-image<-ui-orig-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "node",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_node_image_from_ui_orig_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_node_image_from_ui_orig_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val orig : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_node_image_from_ui_orig_parent(ui, orig, parent)
      return output
    }

    override fun vx_node_image_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
      val output : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_image_from_ui_orig_parent(ui, orig, parent)
      return output
    }

  }

  val e_node_image_from_ui_orig_parent : vx_ui_html_uihtml.Func_node_image_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_image_from_ui_orig_parent()
  val t_node_image_from_ui_orig_parent : vx_ui_html_uihtml.Func_node_image_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_image_from_ui_orig_parent()

  fun f_node_image_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
    var output : vx_web_html.Type_node = vx_web_html.e_node
    output = vx_core.f_let(
      vx_web_html.t_node,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uid : vx_core.Type_string = ui.uid()
          val uistyle : vx_ui_ui.Type_style = ui.style()
          val data : vx_core.Type_any = ui.data()
          val file : vx_data_file.Type_file = vx_core.f_any_from_any(
            vx_data_file.t_file,
            data
          )
          val path : vx_core.Type_string = vx_data_file.f_pathfull_from_file(file)
          val style : vx_web_html.Type_style = vx_ui_html_uihtml.f_style_from_style(uistyle)
          val styles : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_extra_from_ui(ui)
          val output_1 : vx_core.Type_any = vx_core.f_new(
            vx_web_html.t_img,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":id"),
                uid,
                vx_core.vx_new_string(":style-unique"),
                style,
                vx_core.vx_new_string(":stylelist"),
                styles,
                vx_core.vx_new_string(":src"),
                path
              // ]
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function node_label_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {node}
   * (func node-label<-ui-orig-parent)
   */
  interface Func_node_label_from_ui_orig_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_node_label_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node
  }

  class Class_node_label_from_ui_orig_parent : vx_core.Class_base, Func_node_label_from_ui_orig_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_label_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_label_from_ui_orig_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_label_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_label_from_ui_orig_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node-label<-ui-orig-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "node",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_node_label_from_ui_orig_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_node_label_from_ui_orig_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val orig : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_node_label_from_ui_orig_parent(ui, orig, parent)
      return output
    }

    override fun vx_node_label_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
      val output : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_label_from_ui_orig_parent(ui, orig, parent)
      return output
    }

  }

  val e_node_label_from_ui_orig_parent : vx_ui_html_uihtml.Func_node_label_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_label_from_ui_orig_parent()
  val t_node_label_from_ui_orig_parent : vx_ui_html_uihtml.Func_node_label_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_label_from_ui_orig_parent()

  fun f_node_label_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
    var output : vx_web_html.Type_node = vx_web_html.e_node
    output = vx_core.f_let(
      vx_web_html.t_node,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uid : vx_core.Type_string = ui.uid()
          val data : vx_core.Type_any = ui.data()
          val uimap : vx_ui_ui.Type_uimap = ui.uimap()
          val uistyle : vx_ui_ui.Type_style = ui.style()
          val uistyles : vx_ui_ui.Type_stylelist = ui.stylelist()
          val datatype : vx_core.Type_any = vx_core.f_type_from_any(data)
          val style : vx_web_html.Type_style = vx_ui_html_uihtml.f_style_from_style(uistyle)
          val styles : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_from_stylelist(uistyles)
          val text : vx_core.Type_string = vx_core.f_if_2(
            vx_core.t_string,
            vx_core.vx_new(
              vx_core.t_thenelselist,
              // [
                vx_core.f_then(
                  vx_core.t_boolean_from_func.vx_fn_new(
                    { ->
                      var output_2 : vx_core.Type_any = vx_core.f_eqeq(
                          datatype,
                          vx_core.t_string
                        )
                        output_2
                      }
                  ),
                  vx_core.t_any_from_func.vx_fn_new(
                    { ->
                      var output_3 : vx_core.Type_any = vx_core.f_any_from_any(
                          vx_core.t_string,
                          data
                        )
                        output_3
                      }
                  )
                ),
                vx_core.f_else(
                  vx_core.t_any_from_func.vx_fn_new(
                    { ->
                      var output_4 : vx_core.Type_any = vx_core.f_string_from_any(data)
                        output_4
                      }
                  )
                )
              // ]
            )
          )
          val output_1 : vx_core.Type_any = vx_core.f_new(
            vx_web_html.t_p,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":id"),
                uid,
                vx_core.vx_new_string(":style-unique"),
                style,
                vx_core.vx_new_string(":stylelist"),
                styles,
                vx_core.vx_new_string(":text"),
                text
              // ]
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function node_layout_from_node_ui_parent
   * @param  {node} node
   * @param  {ui} ui
   * @param  {ui} parent
   * @return {node}
   * (func node-layout<-node-ui-parent)
   */
  interface Func_node_layout_from_node_ui_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_node_layout_from_node_ui_parent(node : vx_web_html.Type_node, ui : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node
  }

  class Class_node_layout_from_node_ui_parent : vx_core.Class_base, Func_node_layout_from_node_ui_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_layout_from_node_ui_parent = vx_ui_html_uihtml.Class_node_layout_from_node_ui_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_layout_from_node_ui_parent = vx_ui_html_uihtml.Class_node_layout_from_node_ui_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node-layout<-node-ui-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "node",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_node_layout_from_node_ui_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_node_layout_from_node_ui_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val node : vx_web_html.Type_node = vx_core.f_any_from_any(
        vx_web_html.t_node,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_node_layout_from_node_ui_parent(node, ui, parent)
      return output
    }

    override fun vx_node_layout_from_node_ui_parent(node : vx_web_html.Type_node, ui : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
      val output : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_layout_from_node_ui_parent(node, ui, parent)
      return output
    }

  }

  val e_node_layout_from_node_ui_parent : vx_ui_html_uihtml.Func_node_layout_from_node_ui_parent = vx_ui_html_uihtml.Class_node_layout_from_node_ui_parent()
  val t_node_layout_from_node_ui_parent : vx_ui_html_uihtml.Func_node_layout_from_node_ui_parent = vx_ui_html_uihtml.Class_node_layout_from_node_ui_parent()

  fun f_node_layout_from_node_ui_parent(node : vx_web_html.Type_node, ui : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
    var output : vx_web_html.Type_node = vx_web_html.e_node
    output = vx_core.f_let(
      vx_web_html.t_node,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val id : vx_core.Type_string = ui.uid()
          val parentid : vx_core.Type_string = parent.uid()
          val htmltext : vx_core.Type_string = vx_web_html.f_string_from_node_indent(
            node,
            vx_core.vx_new_int(2)
          )
          val htmldone : vx_core.Type_boolean = vx_web_htmldoc.f_boolean_replace_from_id_parent_htmltext(
            id,
            parentid,
            htmltext
          )
          val output_1 : vx_core.Type_any = node
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function node_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {node}
   * (func node<-ui-orig-parent)
   */
  interface Func_node_from_ui_orig_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_node_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node
  }

  class Class_node_from_ui_orig_parent : vx_core.Class_base, Func_node_from_ui_orig_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_from_ui_orig_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_node_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_from_ui_orig_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "node<-ui-orig-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "node",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_node_from_ui_orig_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_node_from_ui_orig_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val orig : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_node_from_ui_orig_parent(ui, orig, parent)
      return output
    }

    override fun vx_node_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
      val output : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_from_ui_orig_parent(ui, orig, parent)
      return output
    }

  }

  val e_node_from_ui_orig_parent : vx_ui_html_uihtml.Func_node_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_from_ui_orig_parent()
  val t_node_from_ui_orig_parent : vx_ui_html_uihtml.Func_node_from_ui_orig_parent = vx_ui_html_uihtml.Class_node_from_ui_orig_parent()

  fun f_node_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_web_html.Type_node {
    var output : vx_web_html.Type_node = vx_web_html.e_node
    output = vx_core.f_let(
      vx_web_html.t_node,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val style : vx_ui_ui.Type_style = ui.style()
          val layout : vx_ui_ui.Type_layout = style.layout()
          val output_1 : vx_core.Type_any = vx_core.f_switch(
            vx_web_html.t_node,
            layout,
            vx_core.vx_new(
              vx_core.t_thenelselist,
              // [
                vx_core.f_case_1(
                  vx_ui_ui.c_layout_image,
                  vx_core.t_any_from_func.vx_fn_new(
                    { ->
                      var output_2 : vx_core.Type_any = vx_ui_html_uihtml.f_node_image_from_ui_orig_parent(ui, orig, parent)
                        output_2
                      }
                  )
                ),
                vx_core.f_case_1(
                  vx_ui_ui.c_layout_label,
                  vx_core.t_any_from_func.vx_fn_new(
                    { ->
                      var output_3 : vx_core.Type_any = vx_ui_html_uihtml.f_node_label_from_ui_orig_parent(ui, orig, parent)
                        output_3
                      }
                  )
                ),
                vx_core.f_else(
                  vx_core.t_any_from_func.vx_fn_new(
                    { ->
                      var output_4 : vx_core.Type_any = vx_ui_html_uihtml.f_node_default_from_ui_orig_parent(ui, orig, parent)
                        output_4
                      }
                  )
                )
              // ]
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function string_class_from_ui
   * Returns a class string given a ui.
   * @param  {ui} ui
   * @return {string}
   * (func string-class<-ui)
   */
  interface Func_string_class_from_ui : vx_core.Func_any_from_any {
    fun vx_string_class_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_string
  }

  class Class_string_class_from_ui : vx_core.Class_base, Func_string_class_from_ui {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_string_class_from_ui = vx_ui_html_uihtml.Class_string_class_from_ui()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_string_class_from_ui = vx_ui_html_uihtml.Class_string_class_from_ui()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "string-class<-ui", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "string",
          ":string",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_string_class_from_ui
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_string_class_from_ui
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_string_class_from_ui(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_string_class_from_ui(ui)
      return output
    }

    override fun vx_string_class_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_string {
      val output : vx_core.Type_string = vx_ui_html_uihtml.f_string_class_from_ui(ui)
      return output
    }

  }

  val e_string_class_from_ui : vx_ui_html_uihtml.Func_string_class_from_ui = vx_ui_html_uihtml.Class_string_class_from_ui()
  val t_string_class_from_ui : vx_ui_html_uihtml.Func_string_class_from_ui = vx_ui_html_uihtml.Class_string_class_from_ui()

  fun f_string_class_from_ui(ui : vx_ui_ui.Type_ui) : vx_core.Type_string {
    var output : vx_core.Type_string = vx_core.e_string
    output = vx_core.f_let(
      vx_core.t_string,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val htmlstyles : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_extra_from_ui(ui)
          val output_1 : vx_core.Type_any = vx_web_html.f_string_from_stylelist(htmlstyles)
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function string_style_from_font
   * Returns a font css string from a logical font.
   * @param  {font} font
   * @return {string}
   * (func string-style<-font)
   */
  interface Func_string_style_from_font : vx_core.Func_any_from_any {
    fun vx_string_style_from_font(font : vx_ui_ui.Type_font) : vx_core.Type_string
  }

  class Class_string_style_from_font : vx_core.Class_base, Func_string_style_from_font {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_string_style_from_font = vx_ui_html_uihtml.Class_string_style_from_font()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_string_style_from_font = vx_ui_html_uihtml.Class_string_style_from_font()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "string-style<-font", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "string",
          ":string",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_string_style_from_font
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_string_style_from_font
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_font = value as vx_ui_ui.Type_font
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_string_style_from_font(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val font : vx_ui_ui.Type_font = vx_core.f_any_from_any(
        vx_ui_ui.t_font,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_string_style_from_font(font)
      return output
    }

    override fun vx_string_style_from_font(font : vx_ui_ui.Type_font) : vx_core.Type_string {
      val output : vx_core.Type_string = vx_ui_html_uihtml.f_string_style_from_font(font)
      return output
    }

  }

  val e_string_style_from_font : vx_ui_html_uihtml.Func_string_style_from_font = vx_ui_html_uihtml.Class_string_style_from_font()
  val t_string_style_from_font : vx_ui_html_uihtml.Func_string_style_from_font = vx_ui_html_uihtml.Class_string_style_from_font()

  fun f_string_style_from_font(font : vx_ui_ui.Type_font) : vx_core.Type_string {
    var output : vx_core.Type_string = vx_core.e_string
    output = vx_core.f_let(
      vx_core.t_string,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val face : vx_ui_ui.Type_fontface = font.fontface()
          val size : vx_core.Type_int = font.fontsize()
          val name : vx_core.Type_string = face.name()
          val ssize : vx_core.Type_string = vx_core.f_if_2(
            vx_core.t_string,
            vx_core.vx_new(
              vx_core.t_thenelselist,
              // [
                vx_core.f_then(
                  vx_core.t_boolean_from_func.vx_fn_new(
                    { ->
                      var output_4 : vx_core.Type_any = vx_core.f_gt(
                          size,
                          vx_core.vx_new_int(0)
                        )
                        output_4
                      }
                  ),
                  vx_core.t_any_from_func.vx_fn_new(
                    { ->
                      var output_5 : vx_core.Type_any = vx_core.f_new(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_anylist,
                            // [
                              vx_core.f_divide(
                                size,
                                vx_core.vx_new_int(100)
                              ),
                              vx_core.vx_new_string("em"),
                              vx_core.vx_new_string(" ")
                            // ]
                          )
                        )
                        output_5
                      }
                  )
                )
              // ]
            )
          )
          val output_1 : vx_core.Type_any = vx_core.f_if_2(
            vx_core.t_string,
            vx_core.vx_new(
              vx_core.t_thenelselist,
              // [
                vx_core.f_then(
                  vx_core.t_boolean_from_func.vx_fn_new(
                    { ->
                      var output_2 : vx_core.Type_any = vx_core.f_notempty(name)
                        output_2
                      }
                  ),
                  vx_core.t_any_from_func.vx_fn_new(
                    { ->
                      var output_3 : vx_core.Type_any = vx_core.f_new(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_anylist,
                            // [
                              ssize,
                              vx_core.c_quote,
                              name,
                              vx_core.c_quote
                            // ]
                          )
                        )
                        output_3
                      }
                  )
                )
              // ]
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function string_style_from_image
   * Returns an image css string from a logical image.
   * @param  {image} image
   * @return {string}
   * (func string-style<-image)
   */
  interface Func_string_style_from_image : vx_core.Func_any_from_any {
    fun vx_string_style_from_image(image : vx_ui_ui.Type_image) : vx_core.Type_string
  }

  class Class_string_style_from_image : vx_core.Class_base, Func_string_style_from_image {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_string_style_from_image = vx_ui_html_uihtml.Class_string_style_from_image()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_string_style_from_image = vx_ui_html_uihtml.Class_string_style_from_image()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "string-style<-image", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "string",
          ":string",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_string_style_from_image
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_string_style_from_image
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_image = value as vx_ui_ui.Type_image
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_string_style_from_image(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val image : vx_ui_ui.Type_image = vx_core.f_any_from_any(
        vx_ui_ui.t_image,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_string_style_from_image(image)
      return output
    }

    override fun vx_string_style_from_image(image : vx_ui_ui.Type_image) : vx_core.Type_string {
      val output : vx_core.Type_string = vx_ui_html_uihtml.f_string_style_from_image(image)
      return output
    }

  }

  val e_string_style_from_image : vx_ui_html_uihtml.Func_string_style_from_image = vx_ui_html_uihtml.Class_string_style_from_image()
  val t_string_style_from_image : vx_ui_html_uihtml.Func_string_style_from_image = vx_ui_html_uihtml.Class_string_style_from_image()

  fun f_string_style_from_image(image : vx_ui_ui.Type_image) : vx_core.Type_string {
    var output : vx_core.Type_string = vx_core.e_string
    output = vx_core.f_if_2(
      vx_core.t_string,
      vx_core.vx_new(
        vx_core.t_thenelselist,
        // [
          vx_core.f_then(
            vx_core.t_boolean_from_func.vx_fn_new(
              { ->
                var output_1 : vx_core.Type_any = vx_core.f_notempty_1(image)
                  output_1
                }
            ),
            vx_core.t_any_from_func.vx_fn_new(
              { ->
                var output_2 : vx_core.Type_any = vx_core.f_let(
                    vx_core.t_string,
                    vx_core.t_any_from_func.vx_fn_new(
                      { ->
                        val file : vx_data_file.Type_file = image.file()
                        val url : vx_core.Type_string = vx_data_file.f_pathfull_from_file(file)
                        val output_3 : vx_core.Type_any = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_4 : vx_core.Type_any = vx_core.f_notempty(url)
                                      output_4
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_5 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            vx_core.vx_new_string("url("),
                                            url,
                                            vx_core.vx_new_string(")")
                                          // ]
                                        )
                                      )
                                      output_5
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        output_3
                      }
                    )
                  )
                  output_2
                }
            )
          )
        // ]
      )
    )
    return output
  }

  /**
   * @function string_stylename_from_name_styletype
   * @param  {string} name
   * @param  {styletype} styletype
   * @return {string}
   * (func string-stylename<-name-styletype)
   */
  interface Func_string_stylename_from_name_styletype : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_string_stylename_from_name_styletype(name : vx_core.Type_string, styletype : vx_ui_ui.Type_styletype) : vx_core.Type_string
  }

  class Class_string_stylename_from_name_styletype : vx_core.Class_base, Func_string_stylename_from_name_styletype {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_string_stylename_from_name_styletype = vx_ui_html_uihtml.Class_string_stylename_from_name_styletype()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_string_stylename_from_name_styletype = vx_ui_html_uihtml.Class_string_stylename_from_name_styletype()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "string-stylename<-name-styletype", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/core",
          "string",
          ":string",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_string_stylename_from_name_styletype
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_string_stylename_from_name_styletype
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val name : vx_core.Type_string = vx_core.f_any_from_any(
        vx_core.t_string,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val styletype : vx_ui_ui.Type_styletype = vx_core.f_any_from_any(
        vx_ui_ui.t_styletype,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      output = vx_ui_html_uihtml.f_string_stylename_from_name_styletype(name, styletype)
      return output
    }

    override fun vx_string_stylename_from_name_styletype(name : vx_core.Type_string, styletype : vx_ui_ui.Type_styletype) : vx_core.Type_string {
      val output : vx_core.Type_string = vx_ui_html_uihtml.f_string_stylename_from_name_styletype(name, styletype)
      return output
    }

  }

  val e_string_stylename_from_name_styletype : vx_ui_html_uihtml.Func_string_stylename_from_name_styletype = vx_ui_html_uihtml.Class_string_stylename_from_name_styletype()
  val t_string_stylename_from_name_styletype : vx_ui_html_uihtml.Func_string_stylename_from_name_styletype = vx_ui_html_uihtml.Class_string_stylename_from_name_styletype()

  fun f_string_stylename_from_name_styletype(name : vx_core.Type_string, styletype : vx_ui_ui.Type_styletype) : vx_core.Type_string {
    var output : vx_core.Type_string = vx_core.e_string
    output = vx_core.f_if_2(
      vx_core.t_string,
      vx_core.vx_new(
        vx_core.t_thenelselist,
        // [
          vx_core.f_then(
            vx_core.t_boolean_from_func.vx_fn_new(
              { ->
                var output_1 : vx_core.Type_any = vx_core.f_eq(
                    vx_core.vx_new_string(""),
                    name
                  )
                  output_1
                }
            ),
            vx_core.t_any_from_func.vx_fn_new(
              { ->
                var output_2 : vx_core.Type_any = vx_core.vx_new_string("")
                  output_2
                }
            )
          ),
          vx_core.f_then(
            vx_core.t_boolean_from_func.vx_fn_new(
              { ->
                var output_3 : vx_core.Type_any = vx_core.f_eqeq(
                    styletype,
                    vx_ui_ui.c_styletype_shared
                  )
                  output_3
                }
            ),
            vx_core.t_any_from_func.vx_fn_new(
              { ->
                var output_4 : vx_core.Type_any = vx_core.f_new(
                    vx_core.t_string,
                    vx_core.vx_new(
                      vx_core.t_anylist,
                      // [
                        vx_core.vx_new_string("."),
                        name
                      // ]
                    )
                  )
                  output_4
                }
            )
          ),
          vx_core.f_then(
            vx_core.t_boolean_from_func.vx_fn_new(
              { ->
                var output_5 : vx_core.Type_any = vx_core.f_eqeq(
                    styletype,
                    vx_ui_ui.c_styletype_system
                  )
                  output_5
                }
            ),
            vx_core.t_any_from_func.vx_fn_new(
              { ->
                var output_6 : vx_core.Type_any = vx_core.f_new(
                    vx_core.t_string,
                    vx_core.vx_new(
                      vx_core.t_anylist,
                      // [
                        vx_core.vx_new_string("#"),
                        name
                      // ]
                    )
                  )
                  output_6
                }
            )
          ),
          vx_core.f_else(
            vx_core.t_any_from_func.vx_fn_new(
              { ->
      val output_7 : vx_core.Type_any = name
                  output_7
                }
            )
          )
        // ]
      )
    )
    return output
  }

  /**
   * @function style_from_fontface
   * Returns an html style from a font
   * @param  {fontface} fontface
   * @return {style}
   * (func style<-fontface)
   */
  interface Func_style_from_fontface : vx_core.Func_any_from_any {
    fun vx_style_from_fontface(fontface : vx_ui_ui.Type_fontface) : vx_web_html.Type_style
  }

  class Class_style_from_fontface : vx_core.Class_base, Func_style_from_fontface {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_style_from_fontface = vx_ui_html_uihtml.Class_style_from_fontface()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_style_from_fontface = vx_ui_html_uihtml.Class_style_from_fontface()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "style<-fontface", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "style",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_style_from_fontface
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_style_from_fontface
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_fontface = value as vx_ui_ui.Type_fontface
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_style_from_fontface(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val fontface : vx_ui_ui.Type_fontface = vx_core.f_any_from_any(
        vx_ui_ui.t_fontface,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_style_from_fontface(fontface)
      return output
    }

    override fun vx_style_from_fontface(fontface : vx_ui_ui.Type_fontface) : vx_web_html.Type_style {
      val output : vx_web_html.Type_style = vx_ui_html_uihtml.f_style_from_fontface(fontface)
      return output
    }

  }

  val e_style_from_fontface : vx_ui_html_uihtml.Func_style_from_fontface = vx_ui_html_uihtml.Class_style_from_fontface()
  val t_style_from_fontface : vx_ui_html_uihtml.Func_style_from_fontface = vx_ui_html_uihtml.Class_style_from_fontface()

  fun f_style_from_fontface(fontface : vx_ui_ui.Type_fontface) : vx_web_html.Type_style {
    var output : vx_web_html.Type_style = vx_web_html.e_style
    output = vx_core.f_let(
      vx_web_html.t_style,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val name : vx_core.Type_string = fontface.name()
          val weight : vx_core.Type_string = fontface.weight()
          val unicode : vx_core.Type_string = fontface.unicode()
          val files : vx_data_file.Type_filelist = fontface.filelist()
          val urls : vx_core.Type_stringlist = vx_core.f_list_from_list_1(
            vx_core.t_stringlist,
            files,
            vx_core.t_any_from_any.vx_fn_new(
              {file_any : vx_core.Type_any ->
                val file : vx_data_file.Type_file = vx_core.f_any_from_any(
                  vx_data_file.t_file,
                  file_any
                )
                var output_2 : vx_core.Type_any = vx_core.f_new(
                  vx_core.t_string,
                  vx_core.vx_new(
                    vx_core.t_anylist,
                    // [
                      vx_core.vx_new_string("url("),
                      vx_data_file.f_pathfull_from_file(file),
                      vx_core.vx_new_string(")")
                    // ]
                  )
                )
                output_2
              }
            )
          )
          val fontfamily : vx_core.Type_string = vx_core.f_new(
            vx_core.t_string,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.c_quote,
                name,
                vx_core.c_quote
              // ]
            )
          )
          val srcurls : vx_core.Type_string = vx_type.f_string_from_stringlist_join(
            urls,
            vx_core.vx_new_string(",")
          )
          val src : vx_core.Type_string = vx_core.f_new(
            vx_core.t_string,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                srcurls,
                vx_core.vx_new_string(";")
              // ]
            )
          )
          val propmap : vx_web_html.Type_propmap = vx_core.f_new(
            vx_web_html.t_propmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":font-family"),
                fontfamily,
                vx_core.vx_new_string(":font-style"),
                vx_core.vx_new_string("normal"),
                vx_core.vx_new_string(":font-weight"),
                weight,
                vx_core.vx_new_string(":font-display"),
                vx_core.vx_new_string("swap"),
                vx_core.vx_new_string(":src"),
                src,
                vx_core.vx_new_string(":unicode-range"),
                unicode
              // ]
            )
          )
          val output_1 : vx_core.Type_any = vx_core.f_new(
            vx_web_html.t_style,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":name"),
                vx_core.vx_new_string("@font-face"),
                vx_core.vx_new_string(":props"),
                propmap
              // ]
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function style_from_style
   * Returns a htmlstyle from a uistyle
   * @param  {style} uistyle
   * @return {style}
   * (func style<-style)
   */
  interface Func_style_from_style : vx_core.Func_any_from_any {
    fun vx_style_from_style(uistyle : vx_ui_ui.Type_style) : vx_web_html.Type_style
  }

  class Class_style_from_style : vx_core.Class_base, Func_style_from_style {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_style_from_style = vx_ui_html_uihtml.Class_style_from_style()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_style_from_style = vx_ui_html_uihtml.Class_style_from_style()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "style<-style", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "style",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_style_from_style
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_style_from_style
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_style = value as vx_ui_ui.Type_style
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_style_from_style(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val uistyle : vx_ui_ui.Type_style = vx_core.f_any_from_any(
        vx_ui_ui.t_style,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_style_from_style(uistyle)
      return output
    }

    override fun vx_style_from_style(uistyle : vx_ui_ui.Type_style) : vx_web_html.Type_style {
      val output : vx_web_html.Type_style = vx_ui_html_uihtml.f_style_from_style(uistyle)
      return output
    }

  }

  val e_style_from_style : vx_ui_html_uihtml.Func_style_from_style = vx_ui_html_uihtml.Class_style_from_style()
  val t_style_from_style : vx_ui_html_uihtml.Func_style_from_style = vx_ui_html_uihtml.Class_style_from_style()

  fun f_style_from_style(uistyle : vx_ui_ui.Type_style) : vx_web_html.Type_style {
    var output : vx_web_html.Type_style = vx_web_html.e_style
    output = vx_core.f_if_2(
      vx_web_html.t_style,
      vx_core.vx_new(
        vx_core.t_thenelselist,
        // [
          vx_core.f_then(
            vx_core.t_boolean_from_func.vx_fn_new(
              { ->
                var output_1 : vx_core.Type_any = vx_core.f_is_empty_1(uistyle)
                  output_1
                }
            ),
            vx_core.t_any_from_func.vx_fn_new(
              { ->
                var output_2 : vx_core.Type_any = vx_core.f_empty(vx_web_html.t_style)
                  output_2
                }
            )
          ),
          vx_core.f_else(
            vx_core.t_any_from_func.vx_fn_new(
              { ->
                var output_3 : vx_core.Type_any = vx_core.f_let(
                    vx_web_html.t_style,
                    vx_core.t_any_from_func.vx_fn_new(
                      { ->
                        val layout : vx_ui_ui.Type_layout = uistyle.layout()
                        val name : vx_core.Type_string = uistyle.name()
                        val flip : vx_ui_ui.Type_flip = uistyle.flip()
                        val font : vx_ui_ui.Type_font = uistyle.font()
                        val pin : vx_ui_ui.Type_pin = uistyle.pin()
                        val pointorigin : vx_ui_ui.Type_point = uistyle.pointorigin()
                        val pointpos : vx_ui_ui.Type_point = uistyle.pointpos()
                        val pointsize : vx_ui_ui.Type_point = uistyle.pointsize()
                        val pointrotate : vx_ui_ui.Type_point = uistyle.pointrotate()
                        val styletype : vx_ui_ui.Type_styletype = uistyle.type()
                        val color_bkg : vx_core.Type_string = uistyle.color_bkg()
                        val color_bkghover : vx_core.Type_string = uistyle.color_bkghover()
                        val color_border : vx_core.Type_string = uistyle.color_border()
                        val color_font : vx_core.Type_string = uistyle.color_font()
                        val cursor : vx_ui_ui.Type_cursor = uistyle.cursor()
                        val hidden : vx_core.Type_boolean = uistyle.hidden()
                        val align : vx_ui_ui.Type_align = uistyle.align()
                        val scroll_x : vx_core.Type_boolean = uistyle.scroll_x()
                        val scroll_y : vx_core.Type_boolean = uistyle.scroll_y()
                        val posx : vx_core.Type_int = pointpos.x()
                        val posy : vx_core.Type_int = pointpos.y()
                        val postype : vx_ui_ui.Type_pointtype = pointpos.pointtype()
                        val sizex : vx_core.Type_int = pointsize.x()
                        val sizey : vx_core.Type_int = pointsize.y()
                        val sizetype : vx_ui_ui.Type_pointtype = pointsize.pointtype()
                        val stylename : vx_core.Type_string = vx_ui_html_uihtml.f_string_stylename_from_name_styletype(name, styletype)
                        val bkgcolor : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_5 : vx_core.Type_any = vx_core.f_notempty(color_bkg)
                                      output_5
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_6 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            vx_core.vx_new_string("#"),
                                            color_bkg
                                          // ]
                                        )
                                      )
                                      output_6
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val borderwidth : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_7 : vx_core.Type_any = vx_core.f_notempty(color_border)
                                      output_7
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_8 : vx_core.Type_any = vx_core.vx_new_string("thin")
                                      output_8
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val bordercolor : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_9 : vx_core.Type_any = vx_core.f_notempty(color_border)
                                      output_9
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_10 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            vx_core.vx_new_string("#"),
                                            color_border
                                          // ]
                                        )
                                      )
                                      output_10
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val borderstyle : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_11 : vx_core.Type_any = vx_core.f_notempty(color_border)
                                      output_11
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_12 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            vx_core.vx_new_string("solid")
                                          // ]
                                        )
                                      )
                                      output_12
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val fontcolor : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_13 : vx_core.Type_any = vx_core.f_notempty(color_font)
                                      output_13
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_14 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            vx_core.vx_new_string("#"),
                                            color_font
                                          // ]
                                        )
                                      )
                                      output_14
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val position : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_15 : vx_core.Type_any = vx_core.f_or_1(
                                        vx_core.vx_new(
                                          vx_core.t_booleanlist,
                                          // [
                                            vx_core.f_eqeq(
                                              layout,
                                              vx_ui_ui.c_layout_app
                                            ),
                                            vx_core.f_eqeq(
                                              layout,
                                              vx_ui_ui.c_layout_background
                                            ),
                                            vx_core.f_eqeq(
                                              layout,
                                              vx_ui_ui.c_layout_main
                                            ),
                                            vx_core.f_eqeq(
                                              layout,
                                              vx_ui_ui.c_layout_navbar
                                            ),
                                            vx_core.f_eqeq(
                                              layout,
                                              vx_ui_ui.c_layout_parallax
                                            ),
                                            vx_core.f_eqeq(
                                              layout,
                                              vx_ui_ui.c_layout_statusbar
                                            ),
                                            vx_core.f_eqeq(
                                              layout,
                                              vx_ui_ui.c_layout_titlebar
                                            )
                                          // ]
                                        )
                                      )
                                      output_15
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_16 : vx_core.Type_any = vx_core.vx_new_string("fixed")
                                      output_16
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_17 : vx_core.Type_any = vx_core.f_eqeq(
                                        postype,
                                        vx_ui_ui.c_pointtype_relative
                                      )
                                      output_17
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_18 : vx_core.Type_any = vx_core.vx_new_string("relative")
                                      output_18
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_19 : vx_core.Type_any = vx_core.f_eqeq(
                                        postype,
                                        vx_ui_ui.c_pointtype_absolute
                                      )
                                      output_19
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_20 : vx_core.Type_any = vx_core.vx_new_string("absolute")
                                      output_20
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_21 : vx_core.Type_any = vx_core.f_notempty_1(pointpos)
                                      output_21
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_22 : vx_core.Type_any = vx_core.vx_new_string("absolute")
                                      output_22
                                    }
                                )
                              ),
                              vx_core.f_else(
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_23 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_23
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val top : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_24 : vx_core.Type_any = vx_core.f_eqeq(
                                        pin,
                                        vx_ui_ui.c_pin_expand
                                      )
                                      output_24
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_25 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            posy,
                                            vx_core.vx_new_string("mm")
                                          // ]
                                        )
                                      )
                                      output_25
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_26 : vx_core.Type_any = vx_core.f_eqeq(
                                        vx_core.vx_new_int(0),
                                        posy
                                      )
                                      output_26
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_27 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_27
                                    }
                                )
                              ),
                              vx_core.f_else(
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_28 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            posy,
                                            vx_core.vx_new_string("mm")
                                          // ]
                                        )
                                      )
                                      output_28
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val bottom : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_29 : vx_core.Type_any = vx_core.f_eqeq(
                                        pin,
                                        vx_ui_ui.c_pin_expand
                                      )
                                      output_29
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_30 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_30
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_31 : vx_core.Type_any = vx_core.f_eqeq(
                                        pin,
                                        vx_ui_ui.c_pin_bottom
                                      )
                                      output_31
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_32 : vx_core.Type_any = vx_core.vx_new_string("0mm")
                                      output_32
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_33 : vx_core.Type_any = vx_core.f_or(
                                        vx_core.f_eqeq(
                                          pin,
                                          vx_ui_ui.c_pin_left
                                        ),
                                        vx_core.f_eqeq(
                                          pin,
                                          vx_ui_ui.c_pin_center_v
                                        )
                                      )
                                      output_33
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_34 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            sizey,
                                            vx_core.vx_new_string("mm")
                                          // ]
                                        )
                                      )
                                      output_34
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val left : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_35 : vx_core.Type_any = vx_core.f_eqeq(
                                        pin,
                                        vx_ui_ui.c_pin_expand
                                      )
                                      output_35
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_36 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_36
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_37 : vx_core.Type_any = vx_core.f_eqeq(
                                        pin,
                                        vx_ui_ui.c_pin_bottom
                                      )
                                      output_37
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_38 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            posx,
                                            vx_core.vx_new_string("mm")
                                          // ]
                                        )
                                      )
                                      output_38
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_39 : vx_core.Type_any = vx_core.f_eqeq(
                                        vx_core.vx_new_int(0),
                                        posx
                                      )
                                      output_39
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_40 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_40
                                    }
                                )
                              ),
                              vx_core.f_else(
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_41 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            posx,
                                            vx_core.vx_new_string("mm")
                                          // ]
                                        )
                                      )
                                      output_41
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val right : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_42 : vx_core.Type_any = vx_core.f_eqeq(
                                        pin,
                                        vx_ui_ui.c_pin_expand
                                      )
                                      output_42
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_43 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_43
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_44 : vx_core.Type_any = vx_core.f_or_1(
                                        vx_core.vx_new(
                                          vx_core.t_booleanlist,
                                          // [
                                            vx_core.f_eqeq(
                                              pin,
                                              vx_ui_ui.c_pin_top
                                            ),
                                            vx_core.f_eqeq(
                                              pin,
                                              vx_ui_ui.c_pin_bottom
                                            ),
                                            vx_core.f_eqeq(
                                              pin,
                                              vx_ui_ui.c_pin_center_v
                                            )
                                          // ]
                                        )
                                      )
                                      output_44
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_45 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            sizex,
                                            vx_core.vx_new_string("mm")
                                          // ]
                                        )
                                      )
                                      output_45
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val height : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_46 : vx_core.Type_any = vx_core.f_eqeq(
                                        pin,
                                        vx_ui_ui.c_pin_expand
                                      )
                                      output_46
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_47 : vx_core.Type_any = vx_core.vx_new_string("100%")
                                      output_47
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_48 : vx_core.Type_any = vx_core.f_or_1(
                                        vx_core.vx_new(
                                          vx_core.t_booleanlist,
                                          // [
                                            vx_core.f_eqeq(
                                              pin,
                                              vx_ui_ui.c_pin_left
                                            ),
                                            vx_core.f_eqeq(
                                              pin,
                                              vx_ui_ui.c_pin_right
                                            ),
                                            vx_core.f_eqeq(
                                              pin,
                                              vx_ui_ui.c_pin_center_v
                                            )
                                          // ]
                                        )
                                      )
                                      output_48
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_49 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_49
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_50 : vx_core.Type_any = vx_core.f_eqeq(
                                        sizetype,
                                        vx_ui_ui.c_pointtype_percent
                                      )
                                      output_50
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_51 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            sizey,
                                            vx_core.vx_new_string("%")
                                          // ]
                                        )
                                      )
                                      output_51
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_52 : vx_core.Type_any = vx_core.f_eqeq(
                                        vx_core.vx_new_int(0),
                                        sizey
                                      )
                                      output_52
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_53 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_53
                                    }
                                )
                              ),
                              vx_core.f_else(
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_54 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            sizey,
                                            vx_core.vx_new_string("mm")
                                          // ]
                                        )
                                      )
                                      output_54
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val width : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_55 : vx_core.Type_any = vx_core.f_eqeq(
                                        pin,
                                        vx_ui_ui.c_pin_expand
                                      )
                                      output_55
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_56 : vx_core.Type_any = vx_core.vx_new_string("100%")
                                      output_56
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_57 : vx_core.Type_any = vx_core.f_or_1(
                                        vx_core.vx_new(
                                          vx_core.t_booleanlist,
                                          // [
                                            vx_core.f_eqeq(
                                              pin,
                                              vx_ui_ui.c_pin_top
                                            ),
                                            vx_core.f_eqeq(
                                              pin,
                                              vx_ui_ui.c_pin_bottom
                                            ),
                                            vx_core.f_eqeq(
                                              pin,
                                              vx_ui_ui.c_pin_center_v
                                            )
                                          // ]
                                        )
                                      )
                                      output_57
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_58 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_58
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_59 : vx_core.Type_any = vx_core.f_eqeq(
                                        sizetype,
                                        vx_ui_ui.c_pointtype_percent
                                      )
                                      output_59
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_60 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            sizex,
                                            vx_core.vx_new_string("%")
                                          // ]
                                        )
                                      )
                                      output_60
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_61 : vx_core.Type_any = vx_core.f_eqeq(
                                        vx_core.vx_new_int(0),
                                        sizex
                                      )
                                      output_61
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_62 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_62
                                    }
                                )
                              ),
                              vx_core.f_else(
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_63 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            sizex,
                                            vx_core.vx_new_string("mm")
                                          // ]
                                        )
                                      )
                                      output_63
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val display : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
      val output_64 : vx_core.Type_any = hidden
                                      output_64
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_65 : vx_core.Type_any = vx_core.vx_new_string("none")
                                      output_65
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_66 : vx_core.Type_any = vx_core.f_eqeq(
                                        layout,
                                        vx_ui_ui.c_layout_flow_item
                                      )
                                      output_66
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_67 : vx_core.Type_any = vx_core.vx_new_string("inline-block")
                                      output_67
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val sfont : vx_core.Type_string = vx_ui_html_uihtml.f_string_style_from_font(font)
                        val gap : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_68 : vx_core.Type_any = vx_core.f_or(
                                        vx_core.f_eqeq(
                                          layout,
                                          vx_ui_ui.c_layout_flow_columns
                                        ),
                                        vx_core.f_eqeq(
                                          layout,
                                          vx_ui_ui.c_layout_flow_rows
                                        )
                                      )
                                      output_68
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_69 : vx_core.Type_any = vx_core.vx_new_string("1mm")
                                      output_69
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val overflowx : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
      val output_70 : vx_core.Type_any = scroll_x
                                      output_70
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_71 : vx_core.Type_any = vx_core.vx_new_string("auto")
                                      output_71
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val overflowy : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
      val output_72 : vx_core.Type_any = scroll_y
                                      output_72
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_73 : vx_core.Type_any = vx_core.vx_new_string("auto")
                                      output_73
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val hoverbkgrdcolor : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_74 : vx_core.Type_any = vx_core.f_ne(
                                        vx_core.vx_new_string(""),
                                        color_bkghover
                                      )
                                      output_74
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_75 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            vx_core.vx_new_string("#"),
                                            color_bkghover
                                          // ]
                                        )
                                      )
                                      output_75
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val scursor : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_76 : vx_core.Type_any = vx_core.f_eqeq(
                                        cursor,
                                        vx_ui_ui.t_cursor_pointer
                                      )
                                      output_76
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_77 : vx_core.Type_any = vx_core.vx_new_string("pointer")
                                      output_77
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val textalign : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_78 : vx_core.Type_any = vx_core.f_eqeq(
                                        align,
                                        vx_ui_ui.c_align_left
                                      )
                                      output_78
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_79 : vx_core.Type_any = vx_core.vx_new_string("left")
                                      output_79
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_80 : vx_core.Type_any = vx_core.f_eqeq(
                                        align,
                                        vx_ui_ui.c_align_center
                                      )
                                      output_80
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_81 : vx_core.Type_any = vx_core.vx_new_string("center")
                                      output_81
                                    }
                                )
                              ),
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_82 : vx_core.Type_any = vx_core.f_eqeq(
                                        align,
                                        vx_ui_ui.c_align_right
                                      )
                                      output_82
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_83 : vx_core.Type_any = vx_core.vx_new_string("right")
                                      output_83
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val transform_rotate : vx_core.Type_string = vx_core.f_if_2(
                          vx_core.t_string,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_84 : vx_core.Type_any = vx_core.f_is_empty_1(pointrotate)
                                      output_84
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_85 : vx_core.Type_any = vx_core.vx_new_string("")
                                      output_85
                                    }
                                )
                              ),
                              vx_core.f_else(
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_86 : vx_core.Type_any = vx_core.f_new(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            vx_core.vx_new_string("rotate("),
                                            pointrotate.x(),
                                            vx_core.vx_new_string("deg)")
                                          // ]
                                        )
                                      )
                                      output_86
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val transform_scale : vx_core.Type_string = vx_core.f_switch(
                          vx_core.t_string,
                          flip,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_case_1(
                                vx_ui_ui.c_flip_x,
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_87 : vx_core.Type_any = vx_core.vx_new_string("scale(-1, 1)")
                                      output_87
                                    }
                                )
                              ),
                              vx_core.f_case_1(
                                vx_ui_ui.c_flip_y,
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_88 : vx_core.Type_any = vx_core.vx_new_string("scale( 1,-1)")
                                      output_88
                                    }
                                )
                              ),
                              vx_core.f_case_1(
                                vx_ui_ui.c_flip_xy,
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_89 : vx_core.Type_any = vx_core.vx_new_string("scale(-1,-1)")
                                      output_89
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val transforms : vx_core.Type_stringlist = vx_core.f_new(
                          vx_core.t_stringlist,
                          vx_core.vx_new(
                            vx_core.t_anylist,
                            // [
                              transform_rotate,
                              transform_scale
                            // ]
                          )
                        )
                        val transform : vx_core.Type_string = vx_type.f_string_from_stringlist_join(
                          transforms,
                          vx_core.vx_new_string(" ")
                        )
                        val transformorigin : vx_core.Type_string = vx_core.f_switch(
                          vx_core.t_string,
                          pointorigin,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_case_1(
                                vx_ui_ui.c_point_center,
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_90 : vx_core.Type_any = vx_core.vx_new_string("center")
                                      output_90
                                    }
                                )
                              ),
                              vx_core.f_case_1(
                                vx_ui_ui.c_point_lefttop,
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_91 : vx_core.Type_any = vx_core.vx_new_string("left top")
                                      output_91
                                    }
                                )
                              ),
                              vx_core.f_case_1(
                                vx_ui_ui.c_point_rightbottom,
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_92 : vx_core.Type_any = vx_core.vx_new_string("right bottom")
                                      output_92
                                    }
                                )
                              ),
                              vx_core.f_else(
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_93 : vx_core.Type_any = vx_core.f_if_2(
                                        vx_core.t_string,
                                        vx_core.vx_new(
                                          vx_core.t_thenelselist,
                                          // [
                                            vx_core.f_then(
                                              vx_core.t_boolean_from_func.vx_fn_new(
                                                { ->
                                                  var output_94 : vx_core.Type_any = vx_core.f_is_empty_1(pointrotate)
                                                    output_94
                                                  }
                                              ),
                                              vx_core.t_any_from_func.vx_fn_new(
                                                { ->
                                                  var output_95 : vx_core.Type_any = vx_core.vx_new_string("")
                                                    output_95
                                                  }
                                              )
                                            ),
                                            vx_core.f_then(
                                              vx_core.t_boolean_from_func.vx_fn_new(
                                                { ->
                                                  var output_96 : vx_core.Type_any = vx_core.f_eqeq(
                                                      layout,
                                                      vx_ui_ui.c_layout_label
                                                    )
                                                    output_96
                                                  }
                                              ),
                                              vx_core.t_any_from_func.vx_fn_new(
                                                { ->
                                                  var output_97 : vx_core.Type_any = vx_core.vx_new_string("left top")
                                                    output_97
                                                  }
                                              )
                                            )
                                          // ]
                                        )
                                      )
                                      output_93
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val props : vx_web_html.Type_propmap = vx_core.f_new(
                          vx_web_html.t_propmap,
                          vx_core.vx_new(
                            vx_core.t_anylist,
                            // [
                              vx_core.vx_new_string(":background-color"),
                              bkgcolor,
                              vx_core.vx_new_string(":border-color"),
                              bordercolor,
                              vx_core.vx_new_string(":border-style"),
                              borderstyle,
                              vx_core.vx_new_string(":border-width"),
                              borderwidth,
                              vx_core.vx_new_string(":color"),
                              fontcolor,
                              vx_core.vx_new_string(":cursor"),
                              scursor,
                              vx_core.vx_new_string(":display"),
                              display,
                              vx_core.vx_new_string(":font"),
                              sfont,
                              vx_core.vx_new_string(":gap"),
                              gap,
                              vx_core.vx_new_string(":position"),
                              position,
                              vx_core.vx_new_string(":top"),
                              top,
                              vx_core.vx_new_string(":bottom"),
                              bottom,
                              vx_core.vx_new_string(":left"),
                              left,
                              vx_core.vx_new_string(":right"),
                              right,
                              vx_core.vx_new_string(":height"),
                              height,
                              vx_core.vx_new_string(":width"),
                              width,
                              vx_core.vx_new_string(":overflow-x"),
                              overflowx,
                              vx_core.vx_new_string(":overflow-y"),
                              overflowy,
                              vx_core.vx_new_string(":text-align"),
                              textalign,
                              vx_core.vx_new_string(":transform"),
                              transform,
                              vx_core.vx_new_string(":transform-origin"),
                              transformorigin
                            // ]
                          )
                        )
                        val hoverprops : vx_web_html.Type_propmap = vx_core.f_new(
                          vx_web_html.t_propmap,
                          vx_core.vx_new(
                            vx_core.t_anylist,
                            // [
                              vx_core.vx_new_string(":background-color"),
                              hoverbkgrdcolor
                            // ]
                          )
                        )
                        val substylelist : vx_web_html.Type_stylelist = vx_core.f_if_2(
                          vx_web_html.t_stylelist,
                          vx_core.vx_new(
                            vx_core.t_thenelselist,
                            // [
                              vx_core.f_then(
                                vx_core.t_boolean_from_func.vx_fn_new(
                                  { ->
                                    var output_98 : vx_core.Type_any = vx_core.f_notempty_1(hoverprops)
                                      output_98
                                    }
                                ),
                                vx_core.t_any_from_func.vx_fn_new(
                                  { ->
                                    var output_99 : vx_core.Type_any = vx_core.f_new(
                                        vx_web_html.t_stylelist,
                                        vx_core.vx_new(
                                          vx_core.t_anylist,
                                          // [
                                            vx_core.f_new(
                                              vx_web_html.t_style,
                                              vx_core.vx_new(
                                                vx_core.t_anylist,
                                                // [
                                                  vx_core.vx_new_string(":name"),
                                                  vx_core.vx_new_string("&:hover"),
                                                  vx_core.vx_new_string(":props"),
                                                  hoverprops
                                                // ]
                                              )
                                            )
                                          // ]
                                        )
                                      )
                                      output_99
                                    }
                                )
                              )
                            // ]
                          )
                        )
                        val output_4 : vx_core.Type_any = vx_core.f_new(
                          vx_web_html.t_style,
                          vx_core.vx_new(
                            vx_core.t_anylist,
                            // [
                              vx_core.vx_new_string(":name"),
                              stylename,
                              vx_core.vx_new_string(":props"),
                              props,
                              vx_core.vx_new_string(":stylelist"),
                              substylelist
                            // ]
                          )
                        )
                        output_4
                      }
                    )
                  )
                  output_3
                }
            )
          )
        // ]
      )
    )
    return output
  }

  /**
   * @function stylelist_extra_from_ui
   * Returns a stylelist from a ui including style-hidden and style-selected
   * @param  {ui} ui
   * @return {stylelist}
   * (func stylelist-extra<-ui)
   */
  interface Func_stylelist_extra_from_ui : vx_core.Func_any_from_any {
    fun vx_stylelist_extra_from_ui(ui : vx_ui_ui.Type_ui) : vx_web_html.Type_stylelist
  }

  class Class_stylelist_extra_from_ui : vx_core.Class_base, Func_stylelist_extra_from_ui {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylelist_extra_from_ui = vx_ui_html_uihtml.Class_stylelist_extra_from_ui()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylelist_extra_from_ui = vx_ui_html_uihtml.Class_stylelist_extra_from_ui()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylelist-extra<-ui", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "stylelist",
          ":list",
          vx_core.e_typelist,
          vx_core.vx_new(
            vx_core.t_typelist,
            // [
              vx_web_html.t_style
            // ]
          ),
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_stylelist_extra_from_ui
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_stylelist_extra_from_ui
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_ui = value as vx_ui_ui.Type_ui
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_stylelist_extra_from_ui(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_stylelist_extra_from_ui(ui)
      return output
    }

    override fun vx_stylelist_extra_from_ui(ui : vx_ui_ui.Type_ui) : vx_web_html.Type_stylelist {
      val output : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_extra_from_ui(ui)
      return output
    }

  }

  val e_stylelist_extra_from_ui : vx_ui_html_uihtml.Func_stylelist_extra_from_ui = vx_ui_html_uihtml.Class_stylelist_extra_from_ui()
  val t_stylelist_extra_from_ui : vx_ui_html_uihtml.Func_stylelist_extra_from_ui = vx_ui_html_uihtml.Class_stylelist_extra_from_ui()

  fun f_stylelist_extra_from_ui(ui : vx_ui_ui.Type_ui) : vx_web_html.Type_stylelist {
    var output : vx_web_html.Type_stylelist = vx_web_html.e_stylelist
    output = vx_core.f_let(
      vx_web_html.t_stylelist,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uistyles : vx_ui_ui.Type_stylelist = ui.stylelist()
          val selected : vx_core.Type_boolean = ui.selected()
          val hidden : vx_core.Type_boolean = ui.hidden()
          val styles1 : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_from_stylelist(uistyles)
          val styles2 : vx_web_html.Type_stylelist = vx_core.f_if_2(
            vx_web_html.t_stylelist,
            vx_core.vx_new(
              vx_core.t_thenelselist,
              // [
                vx_core.f_then(
                  vx_core.t_boolean_from_func.vx_fn_new(
                    { ->
      val output_2 : vx_core.Type_any = hidden
                        output_2
                      }
                  ),
                  vx_core.t_any_from_func.vx_fn_new(
                    { ->
                      var output_3 : vx_core.Type_any = vx_core.f_copy(
                          styles1,
                          vx_core.vx_new(
                            vx_core.t_anylist,
                            // [
                              vx_ui_html_uihtml.c_style_hidden
                            // ]
                          )
                        )
                        output_3
                      }
                  )
                ),
                vx_core.f_then(
                  vx_core.t_boolean_from_func.vx_fn_new(
                    { ->
      val output_4 : vx_core.Type_any = selected
                        output_4
                      }
                  ),
                  vx_core.t_any_from_func.vx_fn_new(
                    { ->
                      var output_5 : vx_core.Type_any = vx_core.f_copy(
                          styles1,
                          vx_core.vx_new(
                            vx_core.t_anylist,
                            // [
                              vx_ui_html_uihtml.c_style_selected
                            // ]
                          )
                        )
                        output_5
                      }
                  )
                ),
                vx_core.f_else(
                  vx_core.t_any_from_func.vx_fn_new(
                    { ->
      val output_6 : vx_core.Type_any = styles1
                        output_6
                      }
                  )
                )
              // ]
            )
          )
          val output_1 : vx_core.Type_any = styles2
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function stylelist_reset
   * Returns the initial reset styles for ui framework
   * @return {stylelist}
   * (func stylelist-reset)
   */
  interface Func_stylelist_reset : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_stylelist_reset() : vx_web_html.Type_stylelist
  }

  class Class_stylelist_reset : vx_core.Class_base, Func_stylelist_reset {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylelist_reset = vx_ui_html_uihtml.Class_stylelist_reset()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylelist_reset = vx_ui_html_uihtml.Class_stylelist_reset()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylelist-reset", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "stylelist",
          ":list",
          vx_core.e_typelist,
          vx_core.vx_new(
            vx_core.t_typelist,
            // [
              vx_web_html.t_style
            // ]
          ),
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_stylelist_reset
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_stylelist_reset
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      output = vx_ui_html_uihtml.f_stylelist_reset()
      return output
    }

    override fun vx_stylelist_reset() : vx_web_html.Type_stylelist {
      val output : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_reset()
      return output
    }

  }

  val e_stylelist_reset : vx_ui_html_uihtml.Func_stylelist_reset = vx_ui_html_uihtml.Class_stylelist_reset()
  val t_stylelist_reset : vx_ui_html_uihtml.Func_stylelist_reset = vx_ui_html_uihtml.Class_stylelist_reset()

  fun f_stylelist_reset() : vx_web_html.Type_stylelist {
    var output : vx_web_html.Type_stylelist = vx_web_html.e_stylelist
    output = vx_core.f_new(
      vx_web_html.t_stylelist,
      vx_core.vx_new(
        vx_core.t_anylist,
        // [
          vx_core.f_new(
            vx_web_html.t_style,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":name"),
                vx_core.vx_new_string("html"),
                vx_core.vx_new_string(":props"),
                vx_core.f_new(
                  vx_web_html.t_propmap,
                  vx_core.vx_new(
                    vx_core.t_anylist,
                    // [
                      vx_core.vx_new_string(":border"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":margin"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":padding"),
                      vx_core.vx_new_string("0mm")
                    // ]
                  )
                )
              // ]
            )
          ),
          vx_core.f_new(
            vx_web_html.t_style,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":name"),
                vx_core.vx_new_string("body"),
                vx_core.vx_new_string(":props"),
                vx_core.f_new(
                  vx_web_html.t_propmap,
                  vx_core.vx_new(
                    vx_core.t_anylist,
                    // [
                      vx_core.vx_new_string(":border"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":margin"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":padding"),
                      vx_core.vx_new_string("0mm")
                    // ]
                  )
                )
              // ]
            )
          ),
          vx_core.f_new(
            vx_web_html.t_style,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":name"),
                vx_core.vx_new_string("div"),
                vx_core.vx_new_string(":props"),
                vx_core.f_new(
                  vx_web_html.t_propmap,
                  vx_core.vx_new(
                    vx_core.t_anylist,
                    // [
                      vx_core.vx_new_string(":border"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":box-sizing"),
                      vx_core.vx_new_string("border-box"),
                      vx_core.vx_new_string(":margin"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":padding"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":position"),
                      vx_core.vx_new_string("relative")
                    // ]
                  )
                )
              // ]
            )
          ),
          vx_core.f_new(
            vx_web_html.t_style,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":name"),
                vx_core.vx_new_string("img"),
                vx_core.vx_new_string(":props"),
                vx_core.f_new(
                  vx_web_html.t_propmap,
                  vx_core.vx_new(
                    vx_core.t_anylist,
                    // [
                      vx_core.vx_new_string(":border"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":display"),
                      vx_core.vx_new_string("block"),
                      vx_core.vx_new_string(":margin"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":padding"),
                      vx_core.vx_new_string("0mm")
                    // ]
                  )
                )
              // ]
            )
          ),
          vx_core.f_new(
            vx_web_html.t_style,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":name"),
                vx_core.vx_new_string("p"),
                vx_core.vx_new_string(":props"),
                vx_core.f_new(
                  vx_web_html.t_propmap,
                  vx_core.vx_new(
                    vx_core.t_anylist,
                    // [
                      vx_core.vx_new_string(":margin-block-start"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":margin-block-end"),
                      vx_core.vx_new_string("0mm"),
                      vx_core.vx_new_string(":white-space"),
                      vx_core.vx_new_string("pre-line")
                    // ]
                  )
                )
              // ]
            )
          ),
          vx_core.f_new(
            vx_web_html.t_style,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":name"),
                vx_core.vx_new_string("*"),
                vx_core.vx_new_string(":props"),
                vx_core.f_new(
                  vx_web_html.t_propmap,
                  vx_core.vx_new(
                    vx_core.t_anylist,
                    // [
                      vx_core.vx_new_string(":-webkit-print-color-adjust"),
                      vx_core.vx_new_string("exact !important"),
                      vx_core.vx_new_string(":color-adjust"),
                      vx_core.vx_new_string("exact !important"),
                      vx_core.vx_new_string(":print-color-adjust"),
                      vx_core.vx_new_string("exact !important")
                    // ]
                  )
                )
              // ]
            )
          )
        // ]
      )
    )
    return output
  }

  /**
   * @function stylelist_from_fontfacemap
   * Returns stylelist from a fontfacemap
   * @param  {fontfacemap} fontfacemap
   * @return {stylelist}
   * (func stylelist<-fontfacemap)
   */
  interface Func_stylelist_from_fontfacemap : vx_core.Func_any_from_any {
    fun vx_stylelist_from_fontfacemap(fontfacemap : vx_ui_ui.Type_fontfacemap) : vx_web_html.Type_stylelist
  }

  class Class_stylelist_from_fontfacemap : vx_core.Class_base, Func_stylelist_from_fontfacemap {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylelist_from_fontfacemap = vx_ui_html_uihtml.Class_stylelist_from_fontfacemap()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylelist_from_fontfacemap = vx_ui_html_uihtml.Class_stylelist_from_fontfacemap()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylelist<-fontfacemap", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "stylelist",
          ":list",
          vx_core.e_typelist,
          vx_core.vx_new(
            vx_core.t_typelist,
            // [
              vx_web_html.t_style
            // ]
          ),
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_stylelist_from_fontfacemap
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_stylelist_from_fontfacemap
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_fontfacemap = value as vx_ui_ui.Type_fontfacemap
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_stylelist_from_fontfacemap(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val fontfacemap : vx_ui_ui.Type_fontfacemap = vx_core.f_any_from_any(
        vx_ui_ui.t_fontfacemap,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_stylelist_from_fontfacemap(fontfacemap)
      return output
    }

    override fun vx_stylelist_from_fontfacemap(fontfacemap : vx_ui_ui.Type_fontfacemap) : vx_web_html.Type_stylelist {
      val output : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_from_fontfacemap(fontfacemap)
      return output
    }

  }

  val e_stylelist_from_fontfacemap : vx_ui_html_uihtml.Func_stylelist_from_fontfacemap = vx_ui_html_uihtml.Class_stylelist_from_fontfacemap()
  val t_stylelist_from_fontfacemap : vx_ui_html_uihtml.Func_stylelist_from_fontfacemap = vx_ui_html_uihtml.Class_stylelist_from_fontfacemap()

  fun f_stylelist_from_fontfacemap(fontfacemap : vx_ui_ui.Type_fontfacemap) : vx_web_html.Type_stylelist {
    var output : vx_web_html.Type_stylelist = vx_web_html.e_stylelist
    output = vx_core.f_list_from_map_1(
      vx_web_html.t_stylelist,
      fontfacemap,
      vx_core.t_any_from_key_value.vx_fn_new(
        {key_any : vx_core.Type_any, fontface_any : vx_core.Type_any ->
          val key : vx_core.Type_string = vx_core.f_any_from_any(
            vx_core.t_string,
            key_any
          )
          val fontface : vx_ui_ui.Type_fontface = vx_core.f_any_from_any(
            vx_ui_ui.t_fontface,
            fontface_any
          )
          var output_1 : vx_core.Type_any = vx_ui_html_uihtml.f_style_from_fontface(fontface)
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function stylelist_from_stylelist
   * Returns a htmlstylelist from a uistylemap
   * @param  {stylelist} uistylelist
   * @return {stylelist}
   * (func stylelist<-stylelist)
   */
  interface Func_stylelist_from_stylelist : vx_core.Func_any_from_any {
    fun vx_stylelist_from_stylelist(uistylelist : vx_ui_ui.Type_stylelist) : vx_web_html.Type_stylelist
  }

  class Class_stylelist_from_stylelist : vx_core.Class_base, Func_stylelist_from_stylelist {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylelist_from_stylelist = vx_ui_html_uihtml.Class_stylelist_from_stylelist()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylelist_from_stylelist = vx_ui_html_uihtml.Class_stylelist_from_stylelist()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylelist<-stylelist", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "stylelist",
          ":list",
          vx_core.e_typelist,
          vx_core.vx_new(
            vx_core.t_typelist,
            // [
              vx_web_html.t_style
            // ]
          ),
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_stylelist_from_stylelist
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_stylelist_from_stylelist
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_stylelist = value as vx_ui_ui.Type_stylelist
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_stylelist_from_stylelist(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val uistylelist : vx_ui_ui.Type_stylelist = vx_core.f_any_from_any(
        vx_ui_ui.t_stylelist,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_stylelist_from_stylelist(uistylelist)
      return output
    }

    override fun vx_stylelist_from_stylelist(uistylelist : vx_ui_ui.Type_stylelist) : vx_web_html.Type_stylelist {
      val output : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_from_stylelist(uistylelist)
      return output
    }

  }

  val e_stylelist_from_stylelist : vx_ui_html_uihtml.Func_stylelist_from_stylelist = vx_ui_html_uihtml.Class_stylelist_from_stylelist()
  val t_stylelist_from_stylelist : vx_ui_html_uihtml.Func_stylelist_from_stylelist = vx_ui_html_uihtml.Class_stylelist_from_stylelist()

  fun f_stylelist_from_stylelist(uistylelist : vx_ui_ui.Type_stylelist) : vx_web_html.Type_stylelist {
    var output : vx_web_html.Type_stylelist = vx_web_html.e_stylelist
    output = vx_core.f_list_from_list_1(
      vx_web_html.t_stylelist,
      uistylelist,
      vx_ui_html_uihtml.t_style_from_style
    )
    return output
  }

  /**
   * @function stylelist_from_stylemap
   * Returns a htmlstylelist from a uistylemap
   * @param  {stylemap} uistylemap
   * @return {stylelist}
   * (func stylelist<-stylemap)
   */
  interface Func_stylelist_from_stylemap : vx_core.Func_any_from_any {
    fun vx_stylelist_from_stylemap(uistylemap : vx_ui_ui.Type_stylemap) : vx_web_html.Type_stylelist
  }

  class Class_stylelist_from_stylemap : vx_core.Class_base, Func_stylelist_from_stylemap {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylelist_from_stylemap = vx_ui_html_uihtml.Class_stylelist_from_stylemap()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylelist_from_stylemap = vx_ui_html_uihtml.Class_stylelist_from_stylemap()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylelist<-stylemap", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "stylelist",
          ":list",
          vx_core.e_typelist,
          vx_core.vx_new(
            vx_core.t_typelist,
            // [
              vx_web_html.t_style
            // ]
          ),
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_stylelist_from_stylemap
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_stylelist_from_stylemap
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_stylemap = value as vx_ui_ui.Type_stylemap
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_stylelist_from_stylemap(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val uistylemap : vx_ui_ui.Type_stylemap = vx_core.f_any_from_any(
        vx_ui_ui.t_stylemap,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_stylelist_from_stylemap(uistylemap)
      return output
    }

    override fun vx_stylelist_from_stylemap(uistylemap : vx_ui_ui.Type_stylemap) : vx_web_html.Type_stylelist {
      val output : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_from_stylemap(uistylemap)
      return output
    }

  }

  val e_stylelist_from_stylemap : vx_ui_html_uihtml.Func_stylelist_from_stylemap = vx_ui_html_uihtml.Class_stylelist_from_stylemap()
  val t_stylelist_from_stylemap : vx_ui_html_uihtml.Func_stylelist_from_stylemap = vx_ui_html_uihtml.Class_stylelist_from_stylemap()

  fun f_stylelist_from_stylemap(uistylemap : vx_ui_ui.Type_stylemap) : vx_web_html.Type_stylelist {
    var output : vx_web_html.Type_stylelist = vx_web_html.e_stylelist
    output = vx_core.f_list_from_map_1(
      vx_web_html.t_stylelist,
      uistylemap,
      vx_core.t_any_from_key_value.vx_fn_new(
        {key_any : vx_core.Type_any, value_any : vx_core.Type_any ->
          val key : vx_core.Type_string = vx_core.f_any_from_any(
            vx_core.t_string,
            key_any
          )
          val value : vx_ui_ui.Type_style = vx_core.f_any_from_any(
            vx_ui_ui.t_style,
            value_any
          )
          var output_1 : vx_core.Type_any = vx_ui_html_uihtml.f_style_from_style(value)
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function stylemap_from_stylemap
   * Returns a htmlstylesheet from a uistylesheet
   * @param  {stylemap} uistylemap
   * @return {stylemap}
   * (func stylemap<-stylemap)
   */
  interface Func_stylemap_from_stylemap : vx_core.Func_any_from_any {
    fun vx_stylemap_from_stylemap(uistylemap : vx_ui_ui.Type_stylemap) : vx_web_html.Type_stylemap
  }

  class Class_stylemap_from_stylemap : vx_core.Class_base, Func_stylemap_from_stylemap {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylemap_from_stylemap = vx_ui_html_uihtml.Class_stylemap_from_stylemap()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylemap_from_stylemap = vx_ui_html_uihtml.Class_stylemap_from_stylemap()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylemap<-stylemap", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "stylemap",
          ":map",
          vx_core.e_typelist,
          vx_core.vx_new(
            vx_core.t_typelist,
            // [
              vx_web_html.t_style
            // ]
          ),
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_stylemap_from_stylemap
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_stylemap_from_stylemap
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_stylemap = value as vx_ui_ui.Type_stylemap
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_stylemap_from_stylemap(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val uistylemap : vx_ui_ui.Type_stylemap = vx_core.f_any_from_any(
        vx_ui_ui.t_stylemap,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_stylemap_from_stylemap(uistylemap)
      return output
    }

    override fun vx_stylemap_from_stylemap(uistylemap : vx_ui_ui.Type_stylemap) : vx_web_html.Type_stylemap {
      val output : vx_web_html.Type_stylemap = vx_ui_html_uihtml.f_stylemap_from_stylemap(uistylemap)
      return output
    }

  }

  val e_stylemap_from_stylemap : vx_ui_html_uihtml.Func_stylemap_from_stylemap = vx_ui_html_uihtml.Class_stylemap_from_stylemap()
  val t_stylemap_from_stylemap : vx_ui_html_uihtml.Func_stylemap_from_stylemap = vx_ui_html_uihtml.Class_stylemap_from_stylemap()

  fun f_stylemap_from_stylemap(uistylemap : vx_ui_ui.Type_stylemap) : vx_web_html.Type_stylemap {
    var output : vx_web_html.Type_stylemap = vx_web_html.e_stylemap
    output = vx_core.f_map_from_map_1(
      vx_web_html.t_stylemap,
      uistylemap,
      vx_core.t_any_from_key_value.vx_fn_new(
        {key_any : vx_core.Type_any, value_any : vx_core.Type_any ->
          val key : vx_core.Type_string = vx_core.f_any_from_any(
            vx_core.t_string,
            key_any
          )
          val value : vx_ui_ui.Type_style = vx_core.f_any_from_any(
            vx_ui_ui.t_style,
            value_any
          )
          var output_1 : vx_core.Type_any = vx_ui_html_uihtml.f_style_from_style(value)
          output_1
        }
      )
    )
    return output
  }

  /**
   * 
   * @async
   * @function stylesheet_layout_html
   * @param  {stylesheet} stylesheetui
   * @return {stylesheet}
   * (func stylesheet-layout-html)
   */
  interface Func_stylesheet_layout_html : vx_core.Func_any_from_any_async {
    fun vx_stylesheet_layout_html(stylesheetui : vx_ui_ui.Type_stylesheet) : CompletableFuture<vx_ui_ui.Type_stylesheet>
  }

  class Class_stylesheet_layout_html : vx_core.Class_base, Func_stylesheet_layout_html {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylesheet_layout_html = vx_ui_html_uihtml.Class_stylesheet_layout_html()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylesheet_layout_html = vx_ui_html_uihtml.Class_stylesheet_layout_html()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylesheet-layout-html", // name
        0, // idx
        true, // async
        vx_core.typedef_new(
          "vx/ui/ui",
          "stylesheet",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_stylesheet_layout_html
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_stylesheet_layout_html
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any_async.IFn) : vx_core.Func_any_from_any_async {
      return vx_core.e_any_from_any_async
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any_async(generic_any_1 : T, value : U) : CompletableFuture<T> {
      val inputval : vx_ui_ui.Type_stylesheet = vx_core.f_any_from_any(
        vx_ui_ui.t_stylesheet,
        value
      )
      val future : CompletableFuture<vx_ui_ui.Type_stylesheet> = vx_ui_html_uihtml.f_stylesheet_layout_html(inputval)
      val output : CompletableFuture<T> = future as (CompletableFuture<T>)
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : CompletableFuture<vx_core.Type_any> {
      var output : CompletableFuture<vx_core.Type_any> = vx_core.vx_async_new_from_value(vx_core.e_any)
      val stylesheetui : vx_ui_ui.Type_stylesheet = vx_core.f_any_from_any(
        vx_ui_ui.t_stylesheet,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      var future : CompletableFuture<vx_ui_ui.Type_stylesheet> = vx_ui_html_uihtml.f_stylesheet_layout_html(stylesheetui)
      output = vx_core.vx_async_from_async(
        vx_core.t_any,
        future
      )
      return output
    }

    override fun vx_stylesheet_layout_html(stylesheetui : vx_ui_ui.Type_stylesheet) : CompletableFuture<vx_ui_ui.Type_stylesheet> {
      var output : CompletableFuture<vx_ui_ui.Type_stylesheet> = vx_ui_html_uihtml.f_stylesheet_layout_html(stylesheetui)
      return output
    }

  }

  val e_stylesheet_layout_html : vx_ui_html_uihtml.Func_stylesheet_layout_html = vx_ui_html_uihtml.Class_stylesheet_layout_html()
  val t_stylesheet_layout_html : vx_ui_html_uihtml.Func_stylesheet_layout_html = vx_ui_html_uihtml.Class_stylesheet_layout_html()

  fun f_stylesheet_layout_html(stylesheetui : vx_ui_ui.Type_stylesheet) : CompletableFuture<vx_ui_ui.Type_stylesheet> {
    var output : CompletableFuture<vx_ui_ui.Type_stylesheet> = vx_core.vx_async_new_from_value(vx_ui_ui.e_stylesheet)
    output = vx_core.f_let_async(
      vx_ui_ui.t_stylesheet,
      vx_core.t_any_from_func_async.vx_fn_new(
        { ->
          val stylesheethtml : vx_web_html.Type_stylesheet = vx_ui_html_uihtml.f_stylesheet_from_stylesheet(stylesheetui)
        val future_write : CompletableFuture<vx_core.Type_boolean> = vx_web_htmldoc.f_boolean_write_from_stylesheet(stylesheethtml)
        val output_1 : CompletableFuture<vx_core.Type_any> = vx_core.vx_async_from_async_fn(
          vx_core.t_any,
          future_write,
          {write ->
            val output_2 : vx_core.Type_any = stylesheetui
              output_2
            }
        )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function stylesheet_from_stylesheet
   * Returns a htmlstylesheet from a uistylesheet
   * @param  {stylesheet} uistylesheet
   * @return {stylesheet}
   * (func stylesheet<-stylesheet)
   */
  interface Func_stylesheet_from_stylesheet : vx_core.Func_any_from_any {
    fun vx_stylesheet_from_stylesheet(uistylesheet : vx_ui_ui.Type_stylesheet) : vx_web_html.Type_stylesheet
  }

  class Class_stylesheet_from_stylesheet : vx_core.Class_base, Func_stylesheet_from_stylesheet {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylesheet_from_stylesheet = vx_ui_html_uihtml.Class_stylesheet_from_stylesheet()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_stylesheet_from_stylesheet = vx_ui_html_uihtml.Class_stylesheet_from_stylesheet()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "stylesheet<-stylesheet", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/web/html",
          "stylesheet",
          ":struct",
          vx_core.vx_new(
            vx_core.t_typelist,
            // [
              vx_web_html.t_node,
              vx_web_html.t_headchild
            // ]
          ),
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_stylesheet_from_stylesheet
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_stylesheet_from_stylesheet
      return output
    }

    override fun vx_fn_new(fn : vx_core.Class_any_from_any.IFn) : vx_core.Func_any_from_any {
      return vx_core.e_any_from_any
    }

    override fun <T : vx_core.Type_any, U : vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) : T {
      var output : T = vx_core.f_empty(generic_any_1)
      val inputval : vx_ui_ui.Type_stylesheet = value as vx_ui_ui.Type_stylesheet
      val outputval : vx_core.Type_any = vx_ui_html_uihtml.f_stylesheet_from_stylesheet(inputval)
      output = vx_core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val uistylesheet : vx_ui_ui.Type_stylesheet = vx_core.f_any_from_any(
        vx_ui_ui.t_stylesheet,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      output = vx_ui_html_uihtml.f_stylesheet_from_stylesheet(uistylesheet)
      return output
    }

    override fun vx_stylesheet_from_stylesheet(uistylesheet : vx_ui_ui.Type_stylesheet) : vx_web_html.Type_stylesheet {
      val output : vx_web_html.Type_stylesheet = vx_ui_html_uihtml.f_stylesheet_from_stylesheet(uistylesheet)
      return output
    }

  }

  val e_stylesheet_from_stylesheet : vx_ui_html_uihtml.Func_stylesheet_from_stylesheet = vx_ui_html_uihtml.Class_stylesheet_from_stylesheet()
  val t_stylesheet_from_stylesheet : vx_ui_html_uihtml.Func_stylesheet_from_stylesheet = vx_ui_html_uihtml.Class_stylesheet_from_stylesheet()

  fun f_stylesheet_from_stylesheet(uistylesheet : vx_ui_ui.Type_stylesheet) : vx_web_html.Type_stylesheet {
    var output : vx_web_html.Type_stylesheet = vx_web_html.e_stylesheet
    output = vx_core.f_let(
      vx_web_html.t_stylesheet,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uistylemap : vx_ui_ui.Type_stylemap = uistylesheet.stylemap()
          val fontfacemap : vx_ui_ui.Type_fontfacemap = uistylesheet.fontfacemap()
          val resetlist : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_reset()
          val fontstyles : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_from_fontfacemap(fontfacemap)
          val stylelist : vx_web_html.Type_stylelist = vx_ui_html_uihtml.f_stylelist_from_stylemap(uistylemap)
          val allstyles : vx_web_html.Type_stylelist = vx_core.f_new(
            vx_web_html.t_stylelist,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                resetlist,
                fontstyles,
                stylelist
              // ]
            )
          )
          val output_1 : vx_core.Type_any = vx_core.f_new(
            vx_web_html.t_stylesheet,
            vx_core.vx_new(
              vx_core.t_anylist,
              // [
                vx_core.vx_new_string(":styles"),
                allstyles
              // ]
            )
          )
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function ui_layout_app_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {ui}
   * (func ui-layout-app<-ui-orig-parent)
   */
  interface Func_ui_layout_app_from_ui_orig_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_ui_layout_app_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui
  }

  class Class_ui_layout_app_from_ui_orig_parent : vx_core.Class_base, Func_ui_layout_app_from_ui_orig_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_ui_layout_app_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_app_from_ui_orig_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_ui_layout_app_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_app_from_ui_orig_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "ui-layout-app<-ui-orig-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/ui/ui",
          "ui",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_ui_layout_app_from_ui_orig_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_ui_layout_app_from_ui_orig_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val orig : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_ui_layout_app_from_ui_orig_parent(ui, orig, parent)
      return output
    }

    override fun vx_ui_layout_app_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui {
      val output : vx_ui_ui.Type_ui = vx_ui_html_uihtml.f_ui_layout_app_from_ui_orig_parent(ui, orig, parent)
      return output
    }

  }

  val e_ui_layout_app_from_ui_orig_parent : vx_ui_html_uihtml.Func_ui_layout_app_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_app_from_ui_orig_parent()
  val t_ui_layout_app_from_ui_orig_parent : vx_ui_html_uihtml.Func_ui_layout_app_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_app_from_ui_orig_parent()

  fun f_ui_layout_app_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui {
    var output : vx_ui_ui.Type_ui = vx_ui_ui.e_ui
    output = vx_core.f_let(
      vx_ui_ui.t_ui,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val node : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_app_from_ui_orig_parent(ui, orig, parent)
          val nodechg : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_layout_from_node_ui_parent(node, ui, parent)
          val iswrite : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_writeeventsall_from_ui(ui)
          val output_1 : vx_core.Type_any = ui
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function ui_layout_default_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {ui}
   * (func ui-layout-default<-ui-orig-parent)
   */
  interface Func_ui_layout_default_from_ui_orig_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_ui_layout_default_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui
  }

  class Class_ui_layout_default_from_ui_orig_parent : vx_core.Class_base, Func_ui_layout_default_from_ui_orig_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_ui_layout_default_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_default_from_ui_orig_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_ui_layout_default_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_default_from_ui_orig_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "ui-layout-default<-ui-orig-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/ui/ui",
          "ui",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_ui_layout_default_from_ui_orig_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_ui_layout_default_from_ui_orig_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val orig : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_ui_layout_default_from_ui_orig_parent(ui, orig, parent)
      return output
    }

    override fun vx_ui_layout_default_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui {
      val output : vx_ui_ui.Type_ui = vx_ui_html_uihtml.f_ui_layout_default_from_ui_orig_parent(ui, orig, parent)
      return output
    }

  }

  val e_ui_layout_default_from_ui_orig_parent : vx_ui_html_uihtml.Func_ui_layout_default_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_default_from_ui_orig_parent()
  val t_ui_layout_default_from_ui_orig_parent : vx_ui_html_uihtml.Func_ui_layout_default_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_default_from_ui_orig_parent()

  fun f_ui_layout_default_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui {
    var output : vx_ui_ui.Type_ui = vx_ui_ui.e_ui
    output = vx_core.f_let(
      vx_ui_ui.t_ui,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uimap : vx_ui_ui.Type_uimap = ui.uimap()
          val node : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_default_from_ui_orig_parent(ui, orig, parent)
          val nodechg : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_layout_from_node_ui_parent(node, ui, parent)
          val iswrite : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_writeeventsall_from_ui(ui)
          val output_1 : vx_core.Type_any = ui
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function ui_layout_image_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {ui}
   * (func ui-layout-image<-ui-orig-parent)
   */
  interface Func_ui_layout_image_from_ui_orig_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_ui_layout_image_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui
  }

  class Class_ui_layout_image_from_ui_orig_parent : vx_core.Class_base, Func_ui_layout_image_from_ui_orig_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_ui_layout_image_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_image_from_ui_orig_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_ui_layout_image_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_image_from_ui_orig_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "ui-layout-image<-ui-orig-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/ui/ui",
          "ui",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_ui_layout_image_from_ui_orig_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_ui_layout_image_from_ui_orig_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val orig : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_ui_layout_image_from_ui_orig_parent(ui, orig, parent)
      return output
    }

    override fun vx_ui_layout_image_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui {
      val output : vx_ui_ui.Type_ui = vx_ui_html_uihtml.f_ui_layout_image_from_ui_orig_parent(ui, orig, parent)
      return output
    }

  }

  val e_ui_layout_image_from_ui_orig_parent : vx_ui_html_uihtml.Func_ui_layout_image_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_image_from_ui_orig_parent()
  val t_ui_layout_image_from_ui_orig_parent : vx_ui_html_uihtml.Func_ui_layout_image_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_image_from_ui_orig_parent()

  fun f_ui_layout_image_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui {
    var output : vx_ui_ui.Type_ui = vx_ui_ui.e_ui
    output = vx_core.f_let(
      vx_ui_ui.t_ui,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val node : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_image_from_ui_orig_parent(ui, orig, parent)
          val nodechg : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_layout_from_node_ui_parent(node, ui, parent)
          val iswrite : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_writeeventsall_from_ui(ui)
          val output_1 : vx_core.Type_any = ui
          output_1
        }
      )
    )
    return output
  }

  /**
   * @function ui_layout_label_from_ui_orig_parent
   * @param  {ui} ui
   * @param  {ui} orig
   * @param  {ui} parent
   * @return {ui}
   * (func ui-layout-label<-ui-orig-parent)
   */
  interface Func_ui_layout_label_from_ui_orig_parent : vx_core.Type_func, vx_core.Type_replfunc {
    fun vx_ui_layout_label_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui
  }

  class Class_ui_layout_label_from_ui_orig_parent : vx_core.Class_base, Func_ui_layout_label_from_ui_orig_parent {
    constructor() {}

    override fun vx_new(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_ui_layout_label_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_label_from_ui_orig_parent()
      return output
    }

    override fun vx_copy(vararg vals : Any) : vx_core.Type_any {
      val output : vx_ui_html_uihtml.Class_ui_layout_label_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_label_from_ui_orig_parent()
      return output
    }

    override fun vx_typedef() : vx_core.Type_typedef {
      val output : vx_core.Type_typedef = vx_core.t_func.vx_typedef()
      return output
    }

    override fun vx_funcdef() : vx_core.Type_funcdef {
      val output : vx_core.Type_funcdef = vx_core.funcdef_new(
        "vx/ui/html/uihtml", // pkgname
        "ui-layout-label<-ui-orig-parent", // name
        0, // idx
        false, // async
        vx_core.typedef_new(
          "vx/ui/ui",
          "ui",
          ":struct",
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_typelist,
          vx_core.e_funclist,
          vx_core.e_funclist,
          vx_core.e_anylist,
          vx_core.e_anylist,
          vx_core.e_argmap
        ) // typedef
      )
      return output
    }

    override fun vx_empty() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.e_ui_layout_label_from_ui_orig_parent
      return output
    }

    override fun vx_type() : vx_core.Type_any {
      val output : vx_core.Type_any = vx_ui_html_uihtml.t_ui_layout_label_from_ui_orig_parent
      return output
    }

    override fun vx_repl(arglist : vx_core.Type_anylist) : vx_core.Type_any {
      var output : vx_core.Type_any = vx_core.e_any
      val ui : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(0)
        )
      )
      val orig : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(1)
        )
      )
      val parent : vx_ui_ui.Type_ui = vx_core.f_any_from_any(
        vx_ui_ui.t_ui,
        arglist.vx_any(
          vx_core.vx_new_int(2)
        )
      )
      output = vx_ui_html_uihtml.f_ui_layout_label_from_ui_orig_parent(ui, orig, parent)
      return output
    }

    override fun vx_ui_layout_label_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui {
      val output : vx_ui_ui.Type_ui = vx_ui_html_uihtml.f_ui_layout_label_from_ui_orig_parent(ui, orig, parent)
      return output
    }

  }

  val e_ui_layout_label_from_ui_orig_parent : vx_ui_html_uihtml.Func_ui_layout_label_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_label_from_ui_orig_parent()
  val t_ui_layout_label_from_ui_orig_parent : vx_ui_html_uihtml.Func_ui_layout_label_from_ui_orig_parent = vx_ui_html_uihtml.Class_ui_layout_label_from_ui_orig_parent()

  fun f_ui_layout_label_from_ui_orig_parent(ui : vx_ui_ui.Type_ui, orig : vx_ui_ui.Type_ui, parent : vx_ui_ui.Type_ui) : vx_ui_ui.Type_ui {
    var output : vx_ui_ui.Type_ui = vx_ui_ui.e_ui
    output = vx_core.f_let(
      vx_ui_ui.t_ui,
      vx_core.t_any_from_func.vx_fn_new(
        { ->
          val uimap : vx_ui_ui.Type_uimap = ui.uimap()
          val node : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_label_from_ui_orig_parent(ui, orig, parent)
          val nodechg : vx_web_html.Type_node = vx_ui_html_uihtml.f_node_layout_from_node_ui_parent(node, ui, parent)
          val iswrite : vx_core.Type_boolean = vx_ui_html_uihtml.f_boolean_writeeventsall_from_ui(ui)
          val output_1 : vx_core.Type_any = ui
          output_1
        }
      )
    )
    return output
  }

  init {
    Const_layout_app_html.const_new(c_layout_app_html)
    Const_layout_else_html.const_new(c_layout_else_html)
    Const_layout_image_html.const_new(c_layout_image_html)
    Const_layout_label_html.const_new(c_layout_label_html)
    Const_layoutenginehtml.const_new(c_layoutenginehtml)
    Const_style_hidden.const_new(c_style_hidden)
    Const_style_selected.const_new(c_style_selected)
    var maptype : MutableMap<String, vx_core.Type_any> = LinkedHashMap<String, vx_core.Type_any>()
    var mapconst : MutableMap<String, vx_core.Type_any> = LinkedHashMap<String, vx_core.Type_any>()
    var mapfunc : MutableMap<String, vx_core.Type_func> = LinkedHashMap<String, vx_core.Type_func>()
    mapconst.put("layout-app-html", vx_ui_html_uihtml.c_layout_app_html)
    mapconst.put("layout-else-html", vx_ui_html_uihtml.c_layout_else_html)
    mapconst.put("layout-image-html", vx_ui_html_uihtml.c_layout_image_html)
    mapconst.put("layout-label-html", vx_ui_html_uihtml.c_layout_label_html)
    mapconst.put("layoutenginehtml", vx_ui_html_uihtml.c_layoutenginehtml)
    mapconst.put("style-hidden", vx_ui_html_uihtml.c_style_hidden)
    mapconst.put("style-selected", vx_ui_html_uihtml.c_style_selected)
    mapfunc.put("boolean-layoutremove-html", vx_ui_html_uihtml.t_boolean_layoutremove_html)
    mapfunc.put("boolean-layoutselected-html", vx_ui_html_uihtml.t_boolean_layoutselected_html)
    mapfunc.put("boolean-layoutvisible-html", vx_ui_html_uihtml.t_boolean_layoutvisible_html)
    mapfunc.put("boolean-print-html", vx_ui_html_uihtml.t_boolean_print_html)
    mapfunc.put("boolean-writeclass<-ui", vx_ui_html_uihtml.t_boolean_writeclass_from_ui)
    mapfunc.put("boolean-writeeventsall<-ui", vx_ui_html_uihtml.t_boolean_writeeventsall_from_ui)
    mapfunc.put("boolean-writeeventsall<-uimap", vx_ui_html_uihtml.t_boolean_writeeventsall_from_uimap)
    mapfunc.put("boolean-writeselected<-ui", vx_ui_html_uihtml.t_boolean_writeselected_from_ui)
    mapfunc.put("boolean-writevisible<-ui", vx_ui_html_uihtml.t_boolean_writevisible_from_ui)
    mapfunc.put("context-write", vx_ui_html_uihtml.t_context_write)
    mapfunc.put("divchild<-ui", vx_ui_html_uihtml.t_divchild_from_ui)
    mapfunc.put("divchildlist<-uimap", vx_ui_html_uihtml.t_divchildlist_from_uimap)
    mapfunc.put("divchildlist<-uimap_1", vx_ui_html_uihtml.t_divchildlist_from_uimap_1)
    mapfunc.put("divchildlist<-uimap-origmap-parent", vx_ui_html_uihtml.t_divchildlist_from_uimap_origmap_parent)
    mapfunc.put("node-app<-ui-orig-parent", vx_ui_html_uihtml.t_node_app_from_ui_orig_parent)
    mapfunc.put("node-default<-ui-orig-parent", vx_ui_html_uihtml.t_node_default_from_ui_orig_parent)
    mapfunc.put("node-image<-ui-orig-parent", vx_ui_html_uihtml.t_node_image_from_ui_orig_parent)
    mapfunc.put("node-label<-ui-orig-parent", vx_ui_html_uihtml.t_node_label_from_ui_orig_parent)
    mapfunc.put("node-layout<-node-ui-parent", vx_ui_html_uihtml.t_node_layout_from_node_ui_parent)
    mapfunc.put("node<-ui-orig-parent", vx_ui_html_uihtml.t_node_from_ui_orig_parent)
    mapfunc.put("string-class<-ui", vx_ui_html_uihtml.t_string_class_from_ui)
    mapfunc.put("string-style<-font", vx_ui_html_uihtml.t_string_style_from_font)
    mapfunc.put("string-style<-image", vx_ui_html_uihtml.t_string_style_from_image)
    mapfunc.put("string-stylename<-name-styletype", vx_ui_html_uihtml.t_string_stylename_from_name_styletype)
    mapfunc.put("style<-fontface", vx_ui_html_uihtml.t_style_from_fontface)
    mapfunc.put("style<-style", vx_ui_html_uihtml.t_style_from_style)
    mapfunc.put("stylelist-extra<-ui", vx_ui_html_uihtml.t_stylelist_extra_from_ui)
    mapfunc.put("stylelist-reset", vx_ui_html_uihtml.t_stylelist_reset)
    mapfunc.put("stylelist<-fontfacemap", vx_ui_html_uihtml.t_stylelist_from_fontfacemap)
    mapfunc.put("stylelist<-stylelist", vx_ui_html_uihtml.t_stylelist_from_stylelist)
    mapfunc.put("stylelist<-stylemap", vx_ui_html_uihtml.t_stylelist_from_stylemap)
    mapfunc.put("stylemap<-stylemap", vx_ui_html_uihtml.t_stylemap_from_stylemap)
    mapfunc.put("stylesheet-layout-html", vx_ui_html_uihtml.t_stylesheet_layout_html)
    mapfunc.put("stylesheet<-stylesheet", vx_ui_html_uihtml.t_stylesheet_from_stylesheet)
    mapfunc.put("ui-layout-app<-ui-orig-parent", vx_ui_html_uihtml.t_ui_layout_app_from_ui_orig_parent)
    mapfunc.put("ui-layout-default<-ui-orig-parent", vx_ui_html_uihtml.t_ui_layout_default_from_ui_orig_parent)
    mapfunc.put("ui-layout-image<-ui-orig-parent", vx_ui_html_uihtml.t_ui_layout_image_from_ui_orig_parent)
    mapfunc.put("ui-layout-label<-ui-orig-parent", vx_ui_html_uihtml.t_ui_layout_label_from_ui_orig_parent)
    vx_core.vx_global_package_set(
      "vx/ui/html/uihtml",
      vx_core.vx_mapimmutable(maptype),
      vx_core.vx_mapimmutable(mapconst),
      vx_core.vx_mapimmutable(mapfunc)
    )
  }

}
