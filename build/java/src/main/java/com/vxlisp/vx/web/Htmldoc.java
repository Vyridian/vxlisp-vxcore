package com.vxlisp.vx.web;

import java.util.concurrent.CompletableFuture;
import java.util.LinkedHashMap;
import java.util.Map;
import com.vxlisp.vx.*;
import com.vxlisp.vx.ui.*;

public final class Htmldoc {

  /**
   * @function boolean_print_from_id_stylesheettext
   * Print the contents of the given id.
   * @param  {string} id
   * @param  {string} stylesheettext
   * @return {boolean}
   * (func boolean-print<-id-stylesheettext)
   */
  public interface Func_boolean_print_from_id_stylesheettext extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_boolean vx_boolean_print_from_id_stylesheettext(final Core.Type_string id, final Core.Type_string stylesheettext);
  }

  public static class Class_boolean_print_from_id_stylesheettext extends Core.Class_base implements Func_boolean_print_from_id_stylesheettext {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_boolean_print_from_id_stylesheettext output = new Htmldoc.Class_boolean_print_from_id_stylesheettext();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_boolean_print_from_id_stylesheettext output = new Htmldoc.Class_boolean_print_from_id_stylesheettext();
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
        "vx/web/htmldoc", // pkgname
        "boolean-print<-id-stylesheettext", // name
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
      Core.Type_any output = Htmldoc.e_boolean_print_from_id_stylesheettext;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_boolean_print_from_id_stylesheettext;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string id = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string stylesheettext = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(1)));
      output = Htmldoc.f_boolean_print_from_id_stylesheettext(id, stylesheettext);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_print_from_id_stylesheettext(final Core.Type_string id, final Core.Type_string stylesheettext) {
      Core.Type_boolean output = Htmldoc.f_boolean_print_from_id_stylesheettext(id, stylesheettext);
      return output;
    }

  }

  public static final Htmldoc.Func_boolean_print_from_id_stylesheettext e_boolean_print_from_id_stylesheettext = new Htmldoc.Class_boolean_print_from_id_stylesheettext();
  public static final Htmldoc.Func_boolean_print_from_id_stylesheettext t_boolean_print_from_id_stylesheettext = new Htmldoc.Class_boolean_print_from_id_stylesheettext();

  public static Core.Type_boolean f_boolean_print_from_id_stylesheettext(final Core.Type_string id, final Core.Type_string stylesheettext) {
    Core.Type_boolean output = Core.e_boolean;
    return output;
  }

  /**
   * @function boolean_remove_from_id
   * Removes an html node with given id.
   * @param  {string} id
   * @return {boolean}
   * (func boolean-remove<-id)
   */
  public interface Func_boolean_remove_from_id extends Core.Func_any_from_any {
    public Core.Type_boolean vx_boolean_remove_from_id(final Core.Type_string id);
  }

  public static class Class_boolean_remove_from_id extends Core.Class_base implements Func_boolean_remove_from_id {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_boolean_remove_from_id output = new Htmldoc.Class_boolean_remove_from_id();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_boolean_remove_from_id output = new Htmldoc.Class_boolean_remove_from_id();
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
        "vx/web/htmldoc", // pkgname
        "boolean-remove<-id", // name
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
      Core.Type_any output = Htmldoc.e_boolean_remove_from_id;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_boolean_remove_from_id;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = Htmldoc.f_boolean_remove_from_id(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string id = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = Htmldoc.f_boolean_remove_from_id(id);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_remove_from_id(final Core.Type_string id) {
      Core.Type_boolean output = Htmldoc.f_boolean_remove_from_id(id);
      return output;
    }

  }

  public static final Htmldoc.Func_boolean_remove_from_id e_boolean_remove_from_id = new Htmldoc.Class_boolean_remove_from_id();
  public static final Htmldoc.Func_boolean_remove_from_id t_boolean_remove_from_id = new Htmldoc.Class_boolean_remove_from_id();

  public static Core.Type_boolean f_boolean_remove_from_id(final Core.Type_string id) {
    Core.Type_boolean output = Core.e_boolean;
    return output;
  }

  /**
   * @function boolean_replace_from_id_htmltext
   * Replaces an html node with given id and text.
   * @param  {string} id
   * @param  {string} htmltext
   * @return {boolean}
   * (func boolean-replace<-id-htmltext)
   */
  public interface Func_boolean_replace_from_id_htmltext extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_boolean vx_boolean_replace_from_id_htmltext(final Core.Type_string id, final Core.Type_string htmltext);
  }

  public static class Class_boolean_replace_from_id_htmltext extends Core.Class_base implements Func_boolean_replace_from_id_htmltext {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_boolean_replace_from_id_htmltext output = new Htmldoc.Class_boolean_replace_from_id_htmltext();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_boolean_replace_from_id_htmltext output = new Htmldoc.Class_boolean_replace_from_id_htmltext();
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
        "vx/web/htmldoc", // pkgname
        "boolean-replace<-id-htmltext", // name
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
      Core.Type_any output = Htmldoc.e_boolean_replace_from_id_htmltext;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_boolean_replace_from_id_htmltext;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string id = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string htmltext = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(1)));
      output = Htmldoc.f_boolean_replace_from_id_htmltext(id, htmltext);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_replace_from_id_htmltext(final Core.Type_string id, final Core.Type_string htmltext) {
      Core.Type_boolean output = Htmldoc.f_boolean_replace_from_id_htmltext(id, htmltext);
      return output;
    }

  }

  public static final Htmldoc.Func_boolean_replace_from_id_htmltext e_boolean_replace_from_id_htmltext = new Htmldoc.Class_boolean_replace_from_id_htmltext();
  public static final Htmldoc.Func_boolean_replace_from_id_htmltext t_boolean_replace_from_id_htmltext = new Htmldoc.Class_boolean_replace_from_id_htmltext();

  public static Core.Type_boolean f_boolean_replace_from_id_htmltext(final Core.Type_string id, final Core.Type_string htmltext) {
    Core.Type_boolean output = Core.e_boolean;
    return output;
  }

  /**
   * @function boolean_replace_from_id_parent_htmltext
   * Replaces an html node with given id, parentid, and text.
   * @param  {string} id
   * @param  {string} parent
   * @param  {string} htmltext
   * @return {boolean}
   * (func boolean-replace<-id-parent-htmltext)
   */
  public interface Func_boolean_replace_from_id_parent_htmltext extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_boolean vx_boolean_replace_from_id_parent_htmltext(final Core.Type_string id, final Core.Type_string parent, final Core.Type_string htmltext);
  }

  public static class Class_boolean_replace_from_id_parent_htmltext extends Core.Class_base implements Func_boolean_replace_from_id_parent_htmltext {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_boolean_replace_from_id_parent_htmltext output = new Htmldoc.Class_boolean_replace_from_id_parent_htmltext();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_boolean_replace_from_id_parent_htmltext output = new Htmldoc.Class_boolean_replace_from_id_parent_htmltext();
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
        "vx/web/htmldoc", // pkgname
        "boolean-replace<-id-parent-htmltext", // name
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
      Core.Type_any output = Htmldoc.e_boolean_replace_from_id_parent_htmltext;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_boolean_replace_from_id_parent_htmltext;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string id = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string parent = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(1)));
      Core.Type_string htmltext = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(2)));
      output = Htmldoc.f_boolean_replace_from_id_parent_htmltext(id, parent, htmltext);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_replace_from_id_parent_htmltext(final Core.Type_string id, final Core.Type_string parent, final Core.Type_string htmltext) {
      Core.Type_boolean output = Htmldoc.f_boolean_replace_from_id_parent_htmltext(id, parent, htmltext);
      return output;
    }

  }

  public static final Htmldoc.Func_boolean_replace_from_id_parent_htmltext e_boolean_replace_from_id_parent_htmltext = new Htmldoc.Class_boolean_replace_from_id_parent_htmltext();
  public static final Htmldoc.Func_boolean_replace_from_id_parent_htmltext t_boolean_replace_from_id_parent_htmltext = new Htmldoc.Class_boolean_replace_from_id_parent_htmltext();

  public static Core.Type_boolean f_boolean_replace_from_id_parent_htmltext(final Core.Type_string id, final Core.Type_string parent, final Core.Type_string htmltext) {
    Core.Type_boolean output = Core.e_boolean;
    return output;
  }

  /**
   * 
   * @async
   * @function boolean_write_stylesheet_from_string
   * Writes a css stylesheet.
   * @param  {string} text
   * @return {boolean}
   * (func boolean-write-stylesheet<-string)
   */
  public interface Func_boolean_write_stylesheet_from_string extends Core.Func_any_from_any_async {
    public CompletableFuture<Core.Type_boolean> vx_boolean_write_stylesheet_from_string(final Core.Type_string text);
  }

  public static class Class_boolean_write_stylesheet_from_string extends Core.Class_base implements Func_boolean_write_stylesheet_from_string {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_boolean_write_stylesheet_from_string output = new Htmldoc.Class_boolean_write_stylesheet_from_string();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_boolean_write_stylesheet_from_string output = new Htmldoc.Class_boolean_write_stylesheet_from_string();
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
        "vx/web/htmldoc", // pkgname
        "boolean-write-stylesheet<-string", // name
        0, // idx
        true, // async
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
      Core.Type_any output = Htmldoc.e_boolean_write_stylesheet_from_string;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_boolean_write_stylesheet_from_string;
      return output;
    }

    @Override
    public Core.Func_any_from_any_async vx_fn_new(Core.Class_any_from_any_async.IFn fn) {
      return Core.e_any_from_any_async;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> CompletableFuture<T> vx_any_from_any_async(final T generic_any_1, final U value) {
      Core.Type_string inputval = Core.f_any_from_any(Core.t_string, value);
      CompletableFuture<Core.Type_boolean> future = Htmldoc.f_boolean_write_stylesheet_from_string(inputval);
      @SuppressWarnings("unchecked")
      CompletableFuture<T> output = (CompletableFuture<T>)future;
      return output;
    }

    @Override
    public CompletableFuture<Core.Type_any> vx_repl(Core.Type_anylist arglist) {
      CompletableFuture<Core.Type_any> output = Core.vx_async_new_from_value(Core.e_any);
      Core.Type_string text = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      CompletableFuture<Core.Type_boolean> future = Htmldoc.f_boolean_write_stylesheet_from_string(text);
      output = Core.vx_async_from_async(Core.t_any, future);
      return output;
    }

    @Override
    public CompletableFuture<Core.Type_boolean> vx_boolean_write_stylesheet_from_string(final Core.Type_string text) {
      CompletableFuture<Core.Type_boolean> output = Htmldoc.f_boolean_write_stylesheet_from_string(text);
      return output;
    }

  }

  public static final Htmldoc.Func_boolean_write_stylesheet_from_string e_boolean_write_stylesheet_from_string = new Htmldoc.Class_boolean_write_stylesheet_from_string();
  public static final Htmldoc.Func_boolean_write_stylesheet_from_string t_boolean_write_stylesheet_from_string = new Htmldoc.Class_boolean_write_stylesheet_from_string();

  public static CompletableFuture<Core.Type_boolean> f_boolean_write_stylesheet_from_string(final Core.Type_string text) {
    CompletableFuture<Core.Type_boolean> output = Core.vx_async_new_from_value(Core.e_boolean);
    return output;
  }

  /**
   * @function boolean_write_from_id_attribute_value
   * Writes to an html node with given id and attribute name and value.
   * @param  {string} id
   * @param  {string} attribute
   * @param  {string} value
   * @return {boolean}
   * (func boolean-write<-id-attribute-value)
   */
  public interface Func_boolean_write_from_id_attribute_value extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_boolean vx_boolean_write_from_id_attribute_value(final Core.Type_string id, final Core.Type_string attribute, final Core.Type_string value);
  }

  public static class Class_boolean_write_from_id_attribute_value extends Core.Class_base implements Func_boolean_write_from_id_attribute_value {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_boolean_write_from_id_attribute_value output = new Htmldoc.Class_boolean_write_from_id_attribute_value();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_boolean_write_from_id_attribute_value output = new Htmldoc.Class_boolean_write_from_id_attribute_value();
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
        "vx/web/htmldoc", // pkgname
        "boolean-write<-id-attribute-value", // name
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
      Core.Type_any output = Htmldoc.e_boolean_write_from_id_attribute_value;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_boolean_write_from_id_attribute_value;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string id = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string attribute = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(1)));
      Core.Type_string value = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(2)));
      output = Htmldoc.f_boolean_write_from_id_attribute_value(id, attribute, value);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_write_from_id_attribute_value(final Core.Type_string id, final Core.Type_string attribute, final Core.Type_string value) {
      Core.Type_boolean output = Htmldoc.f_boolean_write_from_id_attribute_value(id, attribute, value);
      return output;
    }

  }

  public static final Htmldoc.Func_boolean_write_from_id_attribute_value e_boolean_write_from_id_attribute_value = new Htmldoc.Class_boolean_write_from_id_attribute_value();
  public static final Htmldoc.Func_boolean_write_from_id_attribute_value t_boolean_write_from_id_attribute_value = new Htmldoc.Class_boolean_write_from_id_attribute_value();

  public static Core.Type_boolean f_boolean_write_from_id_attribute_value(final Core.Type_string id, final Core.Type_string attribute, final Core.Type_string value) {
    Core.Type_boolean output = Core.e_boolean;
    return output;
  }

  /**
   * @function boolean_write_from_id_htmltext
   * Writes to an html node with given id and text.
   * @param  {string} id
   * @param  {string} htmltext
   * @return {boolean}
   * (func boolean-write<-id-htmltext)
   */
  public interface Func_boolean_write_from_id_htmltext extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_boolean vx_boolean_write_from_id_htmltext(final Core.Type_string id, final Core.Type_string htmltext);
  }

  public static class Class_boolean_write_from_id_htmltext extends Core.Class_base implements Func_boolean_write_from_id_htmltext {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_boolean_write_from_id_htmltext output = new Htmldoc.Class_boolean_write_from_id_htmltext();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_boolean_write_from_id_htmltext output = new Htmldoc.Class_boolean_write_from_id_htmltext();
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
        "vx/web/htmldoc", // pkgname
        "boolean-write<-id-htmltext", // name
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
      Core.Type_any output = Htmldoc.e_boolean_write_from_id_htmltext;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_boolean_write_from_id_htmltext;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string id = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string htmltext = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(1)));
      output = Htmldoc.f_boolean_write_from_id_htmltext(id, htmltext);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_write_from_id_htmltext(final Core.Type_string id, final Core.Type_string htmltext) {
      Core.Type_boolean output = Htmldoc.f_boolean_write_from_id_htmltext(id, htmltext);
      return output;
    }

  }

  public static final Htmldoc.Func_boolean_write_from_id_htmltext e_boolean_write_from_id_htmltext = new Htmldoc.Class_boolean_write_from_id_htmltext();
  public static final Htmldoc.Func_boolean_write_from_id_htmltext t_boolean_write_from_id_htmltext = new Htmldoc.Class_boolean_write_from_id_htmltext();

  public static Core.Type_boolean f_boolean_write_from_id_htmltext(final Core.Type_string id, final Core.Type_string htmltext) {
    Core.Type_boolean output = Core.e_boolean;
    return output;
  }

  /**
   * @function boolean_write_from_id_visible
   * Writes to an html node changing its visibility.
   * @param  {string} id
   * @param  {boolean} visible
   * @return {boolean}
   * (func boolean-write<-id-visible)
   */
  public interface Func_boolean_write_from_id_visible extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_boolean vx_boolean_write_from_id_visible(final Core.Type_string id, final Core.Type_boolean visible);
  }

  public static class Class_boolean_write_from_id_visible extends Core.Class_base implements Func_boolean_write_from_id_visible {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_boolean_write_from_id_visible output = new Htmldoc.Class_boolean_write_from_id_visible();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_boolean_write_from_id_visible output = new Htmldoc.Class_boolean_write_from_id_visible();
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
        "vx/web/htmldoc", // pkgname
        "boolean-write<-id-visible", // name
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
      Core.Type_any output = Htmldoc.e_boolean_write_from_id_visible;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_boolean_write_from_id_visible;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string id = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_boolean visible = Core.f_any_from_any(Core.t_boolean, arglist.vx_any(Core.vx_new_int(1)));
      output = Htmldoc.f_boolean_write_from_id_visible(id, visible);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_write_from_id_visible(final Core.Type_string id, final Core.Type_boolean visible) {
      Core.Type_boolean output = Htmldoc.f_boolean_write_from_id_visible(id, visible);
      return output;
    }

  }

  public static final Htmldoc.Func_boolean_write_from_id_visible e_boolean_write_from_id_visible = new Htmldoc.Class_boolean_write_from_id_visible();
  public static final Htmldoc.Func_boolean_write_from_id_visible t_boolean_write_from_id_visible = new Htmldoc.Class_boolean_write_from_id_visible();

  public static Core.Type_boolean f_boolean_write_from_id_visible(final Core.Type_string id, final Core.Type_boolean visible) {
    Core.Type_boolean output = Core.e_boolean;
    return output;
  }

  /**
   * 
   * @async
   * @function boolean_write_from_stylesheet
   * Writes a css stylesheet.
   * @param  {stylesheet} stylesheet
   * @return {boolean}
   * (func boolean-write<-stylesheet)
   */
  public interface Func_boolean_write_from_stylesheet extends Core.Func_any_from_any_async {
    public CompletableFuture<Core.Type_boolean> vx_boolean_write_from_stylesheet(final Html.Type_stylesheet stylesheet);
  }

  public static class Class_boolean_write_from_stylesheet extends Core.Class_base implements Func_boolean_write_from_stylesheet {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_boolean_write_from_stylesheet output = new Htmldoc.Class_boolean_write_from_stylesheet();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_boolean_write_from_stylesheet output = new Htmldoc.Class_boolean_write_from_stylesheet();
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
        "vx/web/htmldoc", // pkgname
        "boolean-write<-stylesheet", // name
        0, // idx
        true, // async
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
      Core.Type_any output = Htmldoc.e_boolean_write_from_stylesheet;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_boolean_write_from_stylesheet;
      return output;
    }

    @Override
    public Core.Func_any_from_any_async vx_fn_new(Core.Class_any_from_any_async.IFn fn) {
      return Core.e_any_from_any_async;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> CompletableFuture<T> vx_any_from_any_async(final T generic_any_1, final U value) {
      Html.Type_stylesheet inputval = Core.f_any_from_any(Html.t_stylesheet, value);
      CompletableFuture<Core.Type_boolean> future = Htmldoc.f_boolean_write_from_stylesheet(inputval);
      @SuppressWarnings("unchecked")
      CompletableFuture<T> output = (CompletableFuture<T>)future;
      return output;
    }

    @Override
    public CompletableFuture<Core.Type_any> vx_repl(Core.Type_anylist arglist) {
      CompletableFuture<Core.Type_any> output = Core.vx_async_new_from_value(Core.e_any);
      Html.Type_stylesheet stylesheet = Core.f_any_from_any(Html.t_stylesheet, arglist.vx_any(Core.vx_new_int(0)));
      CompletableFuture<Core.Type_boolean> future = Htmldoc.f_boolean_write_from_stylesheet(stylesheet);
      output = Core.vx_async_from_async(Core.t_any, future);
      return output;
    }

    @Override
    public CompletableFuture<Core.Type_boolean> vx_boolean_write_from_stylesheet(final Html.Type_stylesheet stylesheet) {
      CompletableFuture<Core.Type_boolean> output = Htmldoc.f_boolean_write_from_stylesheet(stylesheet);
      return output;
    }

  }

  public static final Htmldoc.Func_boolean_write_from_stylesheet e_boolean_write_from_stylesheet = new Htmldoc.Class_boolean_write_from_stylesheet();
  public static final Htmldoc.Func_boolean_write_from_stylesheet t_boolean_write_from_stylesheet = new Htmldoc.Class_boolean_write_from_stylesheet();

  public static CompletableFuture<Core.Type_boolean> f_boolean_write_from_stylesheet(final Html.Type_stylesheet stylesheet) {
    CompletableFuture<Core.Type_boolean> output = Core.vx_async_new_from_value(Core.e_boolean);
    output = Core.f_let_async(
      Core.t_boolean,
      Core.t_any_from_func_async.vx_fn_new(() -> {
        Core.Type_string text = Htmldoc.f_string_from_stylesheet(
          stylesheet
        );
        CompletableFuture<Core.Type_boolean> future_iswrite = Htmldoc.f_boolean_write_stylesheet_from_string(
          text
        );
        CompletableFuture<Core.Type_any> output_1 = Core.vx_async_from_async_fn(future_iswrite, (iswrite) -> {
          Core.Type_any output_2 = iswrite;
          return output_2;
        });
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function boolean_writeevents_from_ui
   * Writes the eventmap from ui into dom.
   * @param  {ui} ui
   * @return {boolean}
   * (func boolean-writeevents<-ui)
   */
  public interface Func_boolean_writeevents_from_ui extends Core.Func_any_from_any {
    public Core.Type_boolean vx_boolean_writeevents_from_ui(final Ui.Type_ui ui);
  }

  public static class Class_boolean_writeevents_from_ui extends Core.Class_base implements Func_boolean_writeevents_from_ui {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_boolean_writeevents_from_ui output = new Htmldoc.Class_boolean_writeevents_from_ui();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_boolean_writeevents_from_ui output = new Htmldoc.Class_boolean_writeevents_from_ui();
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
        "vx/web/htmldoc", // pkgname
        "boolean-writeevents<-ui", // name
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
      Core.Type_any output = Htmldoc.e_boolean_writeevents_from_ui;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_boolean_writeevents_from_ui;
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
      Core.Type_any outputval = Htmldoc.f_boolean_writeevents_from_ui(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Ui.Type_ui ui = Core.f_any_from_any(Ui.t_ui, arglist.vx_any(Core.vx_new_int(0)));
      output = Htmldoc.f_boolean_writeevents_from_ui(ui);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_writeevents_from_ui(final Ui.Type_ui ui) {
      Core.Type_boolean output = Htmldoc.f_boolean_writeevents_from_ui(ui);
      return output;
    }

  }

  public static final Htmldoc.Func_boolean_writeevents_from_ui e_boolean_writeevents_from_ui = new Htmldoc.Class_boolean_writeevents_from_ui();
  public static final Htmldoc.Func_boolean_writeevents_from_ui t_boolean_writeevents_from_ui = new Htmldoc.Class_boolean_writeevents_from_ui();

  public static Core.Type_boolean f_boolean_writeevents_from_ui(final Ui.Type_ui ui) {
    Core.Type_boolean output = Core.e_boolean;
    return output;
  }

  /**
   * @function context_read
   * Reads context from document.data.context
   * @return {context}
   * (func context-read)
   */
  public interface Func_context_read extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_context vx_context_read();
  }

  public static class Class_context_read extends Core.Class_base implements Func_context_read {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_context_read output = new Htmldoc.Class_context_read();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_context_read output = new Htmldoc.Class_context_read();
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
        "vx/web/htmldoc", // pkgname
        "context-read", // name
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
      Core.Type_any output = Htmldoc.e_context_read;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_context_read;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      output = Htmldoc.f_context_read();
      return output;
    }

    @Override
    public Core.Type_context vx_context_read() {
      Core.Type_context output = Htmldoc.f_context_read();
      return output;
    }

  }

  public static final Htmldoc.Func_context_read e_context_read = new Htmldoc.Class_context_read();
  public static final Htmldoc.Func_context_read t_context_read = new Htmldoc.Class_context_read();

  public static Core.Type_context f_context_read() {
    Core.Type_context output = Core.e_context;
    return output;
  }

  /**
   * @function context_write
   * Writes context to document.data.context
   * @return {context}
   * (func context-write)
   */
  public interface Func_context_write extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_context vx_context_write(final Core.Type_context context);
  }

  public static class Class_context_write extends Core.Class_base implements Func_context_write {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_context_write output = new Htmldoc.Class_context_write();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_context_write output = new Htmldoc.Class_context_write();
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
        "vx/web/htmldoc", // pkgname
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
      Core.Type_any output = Htmldoc.e_context_write;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_context_write;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      output = Htmldoc.f_context_write(context);
      return output;
    }

    @Override
    public Core.Type_context vx_context_write(final Core.Type_context context) {
      Core.Type_context output = Htmldoc.f_context_write(context);
      return output;
    }

  }

  public static final Htmldoc.Func_context_write e_context_write = new Htmldoc.Class_context_write();
  public static final Htmldoc.Func_context_write t_context_write = new Htmldoc.Class_context_write();

  public static Core.Type_context f_context_write(final Core.Type_context context) {
    Core.Type_context output = Core.e_context;
    return output;
  }

  /**
   * @function string_from_id
   * Reads the value of an html node by id.
   * @param  {string} id
   * @return {string}
   * (func string<-id)
   */
  public interface Func_string_from_id extends Core.Func_any_from_any {
    public Core.Type_string vx_string_from_id(final Core.Type_string id);
  }

  public static class Class_string_from_id extends Core.Class_base implements Func_string_from_id {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_string_from_id output = new Htmldoc.Class_string_from_id();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_string_from_id output = new Htmldoc.Class_string_from_id();
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
        "vx/web/htmldoc", // pkgname
        "string<-id", // name
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
      Core.Type_any output = Htmldoc.e_string_from_id;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_string_from_id;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = Htmldoc.f_string_from_id(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string id = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = Htmldoc.f_string_from_id(id);
      return output;
    }

    @Override
    public Core.Type_string vx_string_from_id(final Core.Type_string id) {
      Core.Type_string output = Htmldoc.f_string_from_id(id);
      return output;
    }

  }

  public static final Htmldoc.Func_string_from_id e_string_from_id = new Htmldoc.Class_string_from_id();
  public static final Htmldoc.Func_string_from_id t_string_from_id = new Htmldoc.Class_string_from_id();

  public static Core.Type_string f_string_from_id(final Core.Type_string id) {
    Core.Type_string output = Core.e_string;
    return output;
  }

  /**
   * @function string_from_stylesheet
   * Returns string from a given stylesheet
   * @param  {stylesheet} stylesheet
   * @return {string}
   * (func string<-stylesheet)
   */
  public interface Func_string_from_stylesheet extends Core.Func_any_from_any {
    public Core.Type_string vx_string_from_stylesheet(final Html.Type_stylesheet stylesheet);
  }

  public static class Class_string_from_stylesheet extends Core.Class_base implements Func_string_from_stylesheet {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_string_from_stylesheet output = new Htmldoc.Class_string_from_stylesheet();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_string_from_stylesheet output = new Htmldoc.Class_string_from_stylesheet();
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
        "vx/web/htmldoc", // pkgname
        "string<-stylesheet", // name
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
      Core.Type_any output = Htmldoc.e_string_from_stylesheet;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_string_from_stylesheet;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Html.Type_stylesheet inputval = (Html.Type_stylesheet)value;
      Core.Type_any outputval = Htmldoc.f_string_from_stylesheet(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Html.Type_stylesheet stylesheet = Core.f_any_from_any(Html.t_stylesheet, arglist.vx_any(Core.vx_new_int(0)));
      output = Htmldoc.f_string_from_stylesheet(stylesheet);
      return output;
    }

    @Override
    public Core.Type_string vx_string_from_stylesheet(final Html.Type_stylesheet stylesheet) {
      Core.Type_string output = Htmldoc.f_string_from_stylesheet(stylesheet);
      return output;
    }

  }

  public static final Htmldoc.Func_string_from_stylesheet e_string_from_stylesheet = new Htmldoc.Class_string_from_stylesheet();
  public static final Htmldoc.Func_string_from_stylesheet t_string_from_stylesheet = new Htmldoc.Class_string_from_stylesheet();

  public static Core.Type_string f_string_from_stylesheet(final Html.Type_stylesheet stylesheet) {
    Core.Type_string output = Core.e_string;
    output = Core.f_let(
      Core.t_string,
      Core.t_any_from_func.vx_fn_new(() -> {
        Html.Type_stylelist stylelist = Html.f_styles_from_stylesheet(
          stylesheet
        );
        Core.Type_string text = Html.f_string_from_stylelist_indent(
          stylelist,
          Core.vx_new_int(0)
        );
        Core.Type_any output_1 = text;
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function ui_readstate_from_uid
   * Returns ui component from element.
   * @param  {string} uid
   * @return {any}
   * (func ui-readstate<-uid)
   */
  public interface Func_ui_readstate_from_uid extends Core.Func_any_from_any {
    public Core.Type_any vx_ui_readstate_from_uid(final Core.Type_string uid);
  }

  public static class Class_ui_readstate_from_uid extends Core.Class_base implements Func_ui_readstate_from_uid {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Htmldoc.Class_ui_readstate_from_uid output = new Htmldoc.Class_ui_readstate_from_uid();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Htmldoc.Class_ui_readstate_from_uid output = new Htmldoc.Class_ui_readstate_from_uid();
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
        "vx/web/htmldoc", // pkgname
        "ui-readstate<-uid", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "any", // name
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
      Core.Type_any output = Htmldoc.e_ui_readstate_from_uid;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Htmldoc.t_ui_readstate_from_uid;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = Htmldoc.f_ui_readstate_from_uid(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string uid = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = Htmldoc.f_ui_readstate_from_uid(uid);
      return output;
    }

    @Override
    public Core.Type_any vx_ui_readstate_from_uid(final Core.Type_string uid) {
      Core.Type_any output = Htmldoc.f_ui_readstate_from_uid(uid);
      return output;
    }

  }

  public static final Htmldoc.Func_ui_readstate_from_uid e_ui_readstate_from_uid = new Htmldoc.Class_ui_readstate_from_uid();
  public static final Htmldoc.Func_ui_readstate_from_uid t_ui_readstate_from_uid = new Htmldoc.Class_ui_readstate_from_uid();

  public static Core.Type_any f_ui_readstate_from_uid(final Core.Type_string uid) {
    Core.Type_any output = Core.e_any;
    return output;
  }


  static {
    Map<String, Core.Type_any> maptype = new LinkedHashMap<String, Core.Type_any>();
    Map<String, Core.Type_any> mapconst = new LinkedHashMap<String, Core.Type_any>();
    Map<String, Core.Type_func> mapfunc = new LinkedHashMap<String, Core.Type_func>();
    mapfunc.put("boolean-print<-id-stylesheettext", Htmldoc.t_boolean_print_from_id_stylesheettext);
    mapfunc.put("boolean-remove<-id", Htmldoc.t_boolean_remove_from_id);
    mapfunc.put("boolean-replace<-id-htmltext", Htmldoc.t_boolean_replace_from_id_htmltext);
    mapfunc.put("boolean-replace<-id-parent-htmltext", Htmldoc.t_boolean_replace_from_id_parent_htmltext);
    mapfunc.put("boolean-write-stylesheet<-string", Htmldoc.t_boolean_write_stylesheet_from_string);
    mapfunc.put("boolean-write<-id-attribute-value", Htmldoc.t_boolean_write_from_id_attribute_value);
    mapfunc.put("boolean-write<-id-htmltext", Htmldoc.t_boolean_write_from_id_htmltext);
    mapfunc.put("boolean-write<-id-visible", Htmldoc.t_boolean_write_from_id_visible);
    mapfunc.put("boolean-write<-stylesheet", Htmldoc.t_boolean_write_from_stylesheet);
    mapfunc.put("boolean-writeevents<-ui", Htmldoc.t_boolean_writeevents_from_ui);
    mapfunc.put("context-read", Htmldoc.t_context_read);
    mapfunc.put("context-write", Htmldoc.t_context_write);
    mapfunc.put("string<-id", Htmldoc.t_string_from_id);
    mapfunc.put("string<-stylesheet", Htmldoc.t_string_from_stylesheet);
    mapfunc.put("ui-readstate<-uid", Htmldoc.t_ui_readstate_from_uid);
    Core.vx_global_package_set("vx/web/htmldoc", maptype, mapconst, mapfunc);
  }

}
