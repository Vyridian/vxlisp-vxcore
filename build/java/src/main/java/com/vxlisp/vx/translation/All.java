package com.vxlisp.vx.translation;

import java.util.LinkedHashMap;
import java.util.Map;
import com.vxlisp.vx.*;

public final class All {

  /**
   * @function context_all
   * Returns the default context for app main execution. Arguments come from the command line.
   * @param  {anylist} args
   * @return {context}
   * (func context-all)
   */
  public interface Func_context_all extends Core.Func_any_from_any {
    public Core.Type_context vx_context_all(final Core.Type_anylist args);
  }

  public static class Class_context_all extends Core.Class_base implements Func_context_all {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      All.Class_context_all output = new All.Class_context_all();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      All.Class_context_all output = new All.Class_context_all();
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
        "vx/translation/all", // pkgname
        "context-all", // name
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
      Core.Type_any output = All.e_context_all;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = All.t_context_all;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_anylist inputval = (Core.Type_anylist)value;
      Core.Type_any outputval = All.f_context_all(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_anylist args = Core.f_any_from_any(Core.t_anylist, arglist.vx_any(Core.vx_new_int(0)));
      output = All.f_context_all(args);
      return output;
    }

    @Override
    public Core.Type_context vx_context_all(final Core.Type_anylist args) {
      Core.Type_context output = All.f_context_all(args);
      return output;
    }

  }

  public static final All.Func_context_all e_context_all = new All.Class_context_all();
  public static final All.Func_context_all t_context_all = new All.Class_context_all();

  public static Core.Type_context f_context_all(final Core.Type_anylist args) {
    Core.Type_context output = Core.e_context;
    output = Core.f_new(
      Core.t_context,
      Core.vx_new(
        Core.t_anylist,
        Core.vx_new_string(":session"),
        Core.f_new(
          Core.t_session,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":translation"),
            En.f_translation_en(),
            Core.vx_new_string(":translationmap"),
            All.f_translationmap_all()
          )
        )
      )
    );
    return output;
  }

  /**
   * @function translationmap_all
   * Returns a translationmap with all translations.
   * @return {translationmap}
   * (func translationmap-all)
   */
  public interface Func_translationmap_all extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_translationmap vx_translationmap_all();
  }

  public static class Class_translationmap_all extends Core.Class_base implements Func_translationmap_all {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      All.Class_translationmap_all output = new All.Class_translationmap_all();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      All.Class_translationmap_all output = new All.Class_translationmap_all();
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
        "vx/translation/all", // pkgname
        "translationmap-all", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "translationmap", // name
          ":map", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Core.t_translation), // allowtypes
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
      Core.Type_any output = All.e_translationmap_all;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = All.t_translationmap_all;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      output = All.f_translationmap_all();
      return output;
    }

    @Override
    public Core.Type_translationmap vx_translationmap_all() {
      Core.Type_translationmap output = All.f_translationmap_all();
      return output;
    }

  }

  public static final All.Func_translationmap_all e_translationmap_all = new All.Class_translationmap_all();
  public static final All.Func_translationmap_all t_translationmap_all = new All.Class_translationmap_all();

  public static Core.Type_translationmap f_translationmap_all() {
    Core.Type_translationmap output = Core.e_translationmap;
    output = Translate.f_translationmap_from_translations(
      Core.vx_new(
        Core.t_translationlist,
        En.f_translation_en(),
        Es.f_translation_es()
      )
    );
    return output;
  }


  static {
    Map<String, Core.Type_any> maptype = new LinkedHashMap<String, Core.Type_any>();
    Map<String, Core.Type_any> mapconst = new LinkedHashMap<String, Core.Type_any>();
    Map<String, Core.Type_func> mapfunc = new LinkedHashMap<String, Core.Type_func>();
    mapfunc.put("context-all", All.t_context_all);
    mapfunc.put("translationmap-all", All.t_translationmap_all);
    Core.vx_global_package_set("vx/translation/all", maptype, mapconst, mapfunc);
  }

}
