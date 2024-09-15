package com.vxlisp.vx;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class State {


  /**
   * type: valuemap
   * (type valuemap)
   */
  public interface Type_valuemap extends Core.Type_map {
  }

  public static class Class_valuemap extends Core.Class_base implements Type_valuemap {

    public Map<String, Core.Type_any> vx_p_map = Core.immutablemap(new LinkedHashMap<String, Core.Type_any>());

    @Override
    public Map<String, Core.Type_any> vx_map() {
      Map<String, Core.Type_any> map = new LinkedHashMap<String, Core.Type_any>(this.vx_p_map);
      return Core.immutablemap(map);
    }

    @Override
    public Core.Type_boolean vx_set(final Core.Type_string name, final Core.Type_any value) {
      Core.Type_boolean output = Core.c_false;
      if (false) {
      } else if (value instanceof Core.Type_any) {
        Core.Type_any castval = (Core.Type_any)value;
        String key = name.vx_string();
        if (key.startsWith(":")) {
          key = key.substring(1);
        }
        Map<String, Core.Type_any> map = new LinkedHashMap<String, Core.Type_any>(this.vx_p_map);
        if (castval == Core.e_any) {
          map.remove(key);
        } else {
          map.put(key, castval);
        }
        this.vx_p_map = Core.immutablemap(map);
        output = Core.c_true;
      }
      return output;
    }

    @Override
    public Core.Type_any vx_any(final Core.Type_string key) {
      Core.Type_any output = Core.e_any;
      State.Class_valuemap map = this;
      String skey = key.vx_string();
      Map<String, Core.Type_any> mapval = map.vx_p_map;
      output = mapval.getOrDefault(skey, Core.e_any);
      return output;
    }

    @Override
    public Core.Type_map vx_new_from_map(final Map<String, Core.Type_any> mapval) {
      State.Class_valuemap output = new State.Class_valuemap();
      Core.Type_msgblock msgblock = Core.e_msgblock;
      Map<String, Core.Type_any> map = new LinkedHashMap<String, Core.Type_any>();
      Set<String> keys = mapval.keySet();
      for (String key : keys) {
        Core.Type_any value = mapval.get(key);
        if (false) {
        } else if (value instanceof Core.Type_any) {
          Core.Type_any castval = (Core.Type_any)value;
          map.put(key, castval);
        } else {
          Core.Type_msg msg = Core.vx_msg_from_error("vx/state/valuemap", ":invalidvalue", value);
          msgblock = Core.vx_copy(msgblock, msg);
        }
      }
      output.vx_p_map = Core.immutablemap(map);
      if (msgblock != Core.e_msgblock) {
        output.vxmsgblock = msgblock;
      }
      return output;
    }

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Type_valuemap output = Core.vx_copy(State.e_valuemap, vals);
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Type_valuemap output = this;
      boolean ischanged = false;
      State.Class_valuemap value = this;
      Core.Type_msgblock msgblock = Core.vx_msgblock_from_copy_arrayval(value, vals);
      if (this.vx_constdef() != Core.e_constdef) {
        ischanged = true;
      }
      Map<String, Core.Type_any> mapval = new LinkedHashMap<String, Core.Type_any>(value.vx_map());
      String key = "";
      Core.Type_msg msg = Core.e_msg;
      Core.Type_any msgval = Core.e_any;
      for (Object valsub : vals) {
        if (valsub instanceof Core.Type_msgblock) {
          msgblock = Core.vx_copy(msgblock, valsub);
        } else if (valsub instanceof Core.Type_msg) {
          msgblock = Core.vx_copy(msgblock, valsub);
        } else if (key.equals("")) {
          if (false) {
          } else if (valsub instanceof Core.Type_string) {
            Core.Type_string valstring = (Core.Type_string)valsub;
            key = valstring.vx_string();
          } else if (valsub instanceof String) {
            String sval = (String)valsub;
            key = sval;
          } else {
            if (false) {
            } else if (valsub instanceof Core.Type_any) {
              Core.Type_any valinvalid = (Core.Type_any)valsub;
              msgval = valinvalid;
            } else {
              msgval = Core.vx_new_string(valsub.toString());
            }
            msg = Core.vx_msg_from_error("vx/state/valuemap", ":keyexpected", msgval);
            msgblock = Core.vx_copy(msgblock, msg);
          }
        } else {
          Core.Type_any valany = Core.e_any;
          if (false) {
          } else if (valsub instanceof Core.Type_any) {
            Core.Type_any valallowed = (Core.Type_any)valsub;
            valany = valallowed;
          } else if (valsub instanceof Core.Type_any) {
            valany = (Core.Type_any)valsub;
          } else {
            if (false) {
            } else if (valsub instanceof Core.Type_any) {
              Core.Type_any valinvalid = (Core.Type_any)valsub;
              msgval = valinvalid;
            } else {
              msgval = Core.vx_new_string(valsub.toString());
            }
            Map<String, Core.Type_any> mapany = new LinkedHashMap<String, Core.Type_any>();
            mapany.put("key", Core.vx_new_string(key));
            mapany.put("value", msgval);
            Core.Type_map msgmap = Core.t_anymap.vx_new_from_map(mapany);
            msg = Core.vx_msg_from_error("vx/state/valuemap", ":invalidkeyvalue", msgmap);
            msgblock = Core.vx_copy(msgblock, msg);
          }
          if (valany != Core.e_any) {
            ischanged = true;
            if (key.startsWith(":")) {
              key = key.substring(1);
            }
            mapval.put(key, valany);
            key = "";
          }
        }
      }
      if (ischanged || (msgblock != Core.e_msgblock)) {
        State.Class_valuemap work = new State.Class_valuemap();
        work.vx_p_map = Core.immutablemap(mapval);
        if (msgblock != Core.e_msgblock) {
          work.vxmsgblock = msgblock;
        }
        output = work;
      }
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = State.e_valuemap;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_valuemap;
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.typedef_new(
        "vx/state", // pkgname
        "valuemap", // name
        ":map", // extends
        Core.e_typelist, // traits
        Core.vx_new(Core.t_typelist, Core.t_any), // allowtypes
        Core.e_typelist, // disallowtypes
        Core.e_funclist, // allowfuncs
        Core.e_funclist, // disallowfuncs
        Core.e_anylist, // allowvalues
        Core.e_anylist, // disallowvalues
        Core.e_argmap // properties
      );
      return output;
    }

  }

  public static final State.Type_valuemap e_valuemap = new State.Class_valuemap();
  public static final State.Type_valuemap t_valuemap = new State.Class_valuemap();
  /**
   * @function any_readstate_from_mapname_name
   * Returns the named state value
   * @param  {string} mapname
   * @param  {string} name
   * @return {any-1}
   * (func any-readstate<-mapname-name)
   */
  public interface Func_any_readstate_from_mapname_name extends Core.Type_func, Core.Type_replfunc {
    public <T extends Core.Type_any> T vx_any_readstate_from_mapname_name(final T generic_any_1, final Core.Type_context context, final Core.Type_string mapname, final Core.Type_string name);
  }

  public static class Class_any_readstate_from_mapname_name extends Core.Class_base implements Func_any_readstate_from_mapname_name {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_any_readstate_from_mapname_name output = new State.Class_any_readstate_from_mapname_name();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_any_readstate_from_mapname_name output = new State.Class_any_readstate_from_mapname_name();
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
        "vx/state", // pkgname
        "any-readstate<-mapname-name", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
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
      Core.Type_any output = State.e_any_readstate_from_mapname_name;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_any_readstate_from_mapname_name;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_any generic_any_1 = Core.f_any_from_any(Core.t_any, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string mapname = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string name = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(1)));
      output = State.f_any_readstate_from_mapname_name(generic_any_1, context, mapname, name);
      return output;
    }

    @Override
    public <T extends Core.Type_any> T vx_any_readstate_from_mapname_name(final T generic_any_1, final Core.Type_context context, final Core.Type_string mapname, final Core.Type_string name) {
      T output = State.f_any_readstate_from_mapname_name(generic_any_1, context, mapname, name);
      return output;
    }

  }

  public static final State.Func_any_readstate_from_mapname_name e_any_readstate_from_mapname_name = new State.Class_any_readstate_from_mapname_name();
  public static final State.Func_any_readstate_from_mapname_name t_any_readstate_from_mapname_name = new State.Class_any_readstate_from_mapname_name();

  public static <T extends Core.Type_any> T f_any_readstate_from_mapname_name(final T generic_any_1, final Core.Type_context context, final Core.Type_string mapname, final Core.Type_string name) {
    T output = Core.f_empty(generic_any_1);
    output = Core.f_let(
      generic_any_1,
      Core.t_any_from_func.vx_fn_new(() -> {
        State.Type_valuemap submap = State.f_valuemap_readstate_from_mapname(
          context,
          mapname
        );
        Core.Type_any output_1 = Core.f_any_from_map(
          generic_any_1,
          submap,
          name
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function any_readstate_from_name
   * Returns the named state value
   * @param  {string} name
   * @return {any-1}
   * (func any-readstate<-name)
   */
  public interface Func_any_readstate_from_name extends Core.Func_any_from_any_context {
    public <T extends Core.Type_any> T vx_any_readstate_from_name(final T generic_any_1, final Core.Type_context context, final Core.Type_string name);
  }

  public static class Class_any_readstate_from_name extends Core.Class_base implements Func_any_readstate_from_name {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_any_readstate_from_name output = new State.Class_any_readstate_from_name();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_any_readstate_from_name output = new State.Class_any_readstate_from_name();
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
        "vx/state", // pkgname
        "any-readstate<-name", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
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
      Core.Type_any output = State.e_any_readstate_from_name;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_any_readstate_from_name;
      return output;
    }

    @Override
    public Core.Func_any_from_any_context vx_fn_new(Core.Class_any_from_any_context.IFn fn) {
      return Core.e_any_from_any_context;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any_context(final T generic_any_1, final Core.Type_context context, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = State.f_any_readstate_from_name(Core.t_any, context, inputval);
      output = Core.f_any_from_any_context(generic_any_1, context, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_any generic_any_1 = Core.f_any_from_any(Core.t_any, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string name = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = State.f_any_readstate_from_name(generic_any_1, context, name);
      return output;
    }

    @Override
    public <T extends Core.Type_any> T vx_any_readstate_from_name(final T generic_any_1, final Core.Type_context context, final Core.Type_string name) {
      T output = State.f_any_readstate_from_name(generic_any_1, context, name);
      return output;
    }

  }

  public static final State.Func_any_readstate_from_name e_any_readstate_from_name = new State.Class_any_readstate_from_name();
  public static final State.Func_any_readstate_from_name t_any_readstate_from_name = new State.Class_any_readstate_from_name();

  public static <T extends Core.Type_any> T f_any_readstate_from_name(final T generic_any_1, final Core.Type_context context, final Core.Type_string name) {
    T output = Core.f_empty(generic_any_1);
    output = Core.f_any_from_any(
      generic_any_1,
      State.f_value_readstate_from_name(
        context,
        name
      )
    );
    return output;
  }

  /**
   * @function boolean_removestate_from_name
   * Returns true if named statelistener was removed.
   * @param  {string} name
   * @return {boolean}
   * (func boolean-removestate<-name)
   */
  public interface Func_boolean_removestate_from_name extends Core.Func_any_from_any_context {
    public Core.Type_boolean vx_boolean_removestate_from_name(final Core.Type_context context, final Core.Type_string name);
  }

  public static class Class_boolean_removestate_from_name extends Core.Class_base implements Func_boolean_removestate_from_name {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_boolean_removestate_from_name output = new State.Class_boolean_removestate_from_name();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_boolean_removestate_from_name output = new State.Class_boolean_removestate_from_name();
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
        "vx/state", // pkgname
        "boolean-removestate<-name", // name
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
      Core.Type_any output = State.e_boolean_removestate_from_name;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_boolean_removestate_from_name;
      return output;
    }

    @Override
    public Core.Func_any_from_any_context vx_fn_new(Core.Class_any_from_any_context.IFn fn) {
      return Core.e_any_from_any_context;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any_context(final T generic_any_1, final Core.Type_context context, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = State.f_boolean_removestate_from_name(context, inputval);
      output = Core.f_any_from_any_context(generic_any_1, context, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string name = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = State.f_boolean_removestate_from_name(context, name);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_removestate_from_name(final Core.Type_context context, final Core.Type_string name) {
      Core.Type_boolean output = State.f_boolean_removestate_from_name(context, name);
      return output;
    }

  }

  public static final State.Func_boolean_removestate_from_name e_boolean_removestate_from_name = new State.Class_boolean_removestate_from_name();
  public static final State.Func_boolean_removestate_from_name t_boolean_removestate_from_name = new State.Class_boolean_removestate_from_name();

  public static Core.Type_boolean f_boolean_removestate_from_name(final Core.Type_context context, final Core.Type_string name) {
    Core.Type_boolean output = Core.e_boolean;
    output = Core.f_let(
      Core.t_boolean,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_statelistenermap statelistenermap = State.f_statelistenermap_readstate(
          context
        );
        Core.Type_any output_1 = Core.f_boolean_write_from_map_name_value(
          statelistenermap,
          name,
          Core.f_empty(
            Core.t_statelistener
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function boolean_writestate_from_mapname_name_value
   * Returns the named state value and changes it to the new value
   * @param  {string} mapname
   * @param  {string} name
   * @param  {any} value
   * @return {boolean}
   * (func boolean-writestate<-mapname-name-value)
   */
  public interface Func_boolean_writestate_from_mapname_name_value extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_boolean vx_boolean_writestate_from_mapname_name_value(final Core.Type_context context, final Core.Type_string mapname, final Core.Type_string name, final Core.Type_any value);
  }

  public static class Class_boolean_writestate_from_mapname_name_value extends Core.Class_base implements Func_boolean_writestate_from_mapname_name_value {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_boolean_writestate_from_mapname_name_value output = new State.Class_boolean_writestate_from_mapname_name_value();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_boolean_writestate_from_mapname_name_value output = new State.Class_boolean_writestate_from_mapname_name_value();
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
        "vx/state", // pkgname
        "boolean-writestate<-mapname-name-value", // name
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
      Core.Type_any output = State.e_boolean_writestate_from_mapname_name_value;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_boolean_writestate_from_mapname_name_value;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string mapname = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string name = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(1)));
      Core.Type_any value = Core.f_any_from_any(Core.t_any, arglist.vx_any(Core.vx_new_int(2)));
      output = State.f_boolean_writestate_from_mapname_name_value(context, mapname, name, value);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_writestate_from_mapname_name_value(final Core.Type_context context, final Core.Type_string mapname, final Core.Type_string name, final Core.Type_any value) {
      Core.Type_boolean output = State.f_boolean_writestate_from_mapname_name_value(context, mapname, name, value);
      return output;
    }

  }

  public static final State.Func_boolean_writestate_from_mapname_name_value e_boolean_writestate_from_mapname_name_value = new State.Class_boolean_writestate_from_mapname_name_value();
  public static final State.Func_boolean_writestate_from_mapname_name_value t_boolean_writestate_from_mapname_name_value = new State.Class_boolean_writestate_from_mapname_name_value();

  public static Core.Type_boolean f_boolean_writestate_from_mapname_name_value(final Core.Type_context context, final Core.Type_string mapname, final Core.Type_string name, final Core.Type_any value) {
    Core.Type_boolean output = Core.e_boolean;
    output = Core.f_let(
      Core.t_boolean,
      Core.t_any_from_func.vx_fn_new(() -> {
        State.Type_valuemap valmap = State.f_any_readstate_from_name(
          State.t_valuemap,
          context,
          mapname
        );
        Core.Type_any output_1 = Core.f_if_2(
          Core.t_boolean,
          Core.vx_new(
            Core.t_thenelselist,
            Core.f_then(
              Core.t_boolean_from_func.vx_fn_new(() -> {
                Core.Type_any output_2 = Core.f_is_empty_1(
                  valmap
                );
                return output_2;
              }),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_3 = Core.f_let(
                  Core.t_boolean,
                  Core.t_any_from_func.vx_fn_new(() -> {
                    State.Type_valuemap valmap2 = Core.f_new(
                      State.t_valuemap,
                      Core.vx_new(
                        Core.t_anylist,
                        name,
                        value
                      )
                    );
                    Core.Type_statelistener listener = Core.f_new(
                      Core.t_statelistener,
                      Core.vx_new(
                        Core.t_anylist,
                        Core.vx_new_string(":name"),
                        mapname,
                        Core.vx_new_string(":value"),
                        valmap2
                      )
                    );
                    Core.Type_any output_4 = State.f_boolean_writestate_from_statelistener(
                      context,
                      listener
                    );
                    return output_4;
                  })
                );
                return output_3;
              })
            ),
            Core.f_else(
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_5 = Core.f_boolean_write_from_map_name_value(
                  valmap,
                  name,
                  value
                );
                return output_5;
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
   * @function boolean_writestate_from_name_value
   * Returns the named state value and changes it to the new value
   * @param  {string} name
   * @param  {any} value
   * @return {boolean}
   * (func boolean-writestate<-name-value)
   */
  public interface Func_boolean_writestate_from_name_value extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_boolean vx_boolean_writestate_from_name_value(final Core.Type_context context, final Core.Type_string name, final Core.Type_any value);
  }

  public static class Class_boolean_writestate_from_name_value extends Core.Class_base implements Func_boolean_writestate_from_name_value {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_boolean_writestate_from_name_value output = new State.Class_boolean_writestate_from_name_value();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_boolean_writestate_from_name_value output = new State.Class_boolean_writestate_from_name_value();
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
        "vx/state", // pkgname
        "boolean-writestate<-name-value", // name
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
      Core.Type_any output = State.e_boolean_writestate_from_name_value;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_boolean_writestate_from_name_value;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string name = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_any value = Core.f_any_from_any(Core.t_any, arglist.vx_any(Core.vx_new_int(1)));
      output = State.f_boolean_writestate_from_name_value(context, name, value);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_writestate_from_name_value(final Core.Type_context context, final Core.Type_string name, final Core.Type_any value) {
      Core.Type_boolean output = State.f_boolean_writestate_from_name_value(context, name, value);
      return output;
    }

  }

  public static final State.Func_boolean_writestate_from_name_value e_boolean_writestate_from_name_value = new State.Class_boolean_writestate_from_name_value();
  public static final State.Func_boolean_writestate_from_name_value t_boolean_writestate_from_name_value = new State.Class_boolean_writestate_from_name_value();

  public static Core.Type_boolean f_boolean_writestate_from_name_value(final Core.Type_context context, final Core.Type_string name, final Core.Type_any value) {
    Core.Type_boolean output = Core.e_boolean;
    output = Core.f_let(
      Core.t_boolean,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_statelistener listenercur = State.f_statelistener_readstate_from_name(
          context,
          name
        );
        Core.Type_statelistener listenerchg = Core.f_copy(
          listenercur,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":name"),
            name,
            Core.vx_new_string(":value"),
            value
          )
        );
        Core.Type_any output_1 = State.f_boolean_writestate_from_statelistener(
          context,
          listenerchg
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function boolean_writestate_from_statelistener
   * Writes statelistener into state
   * @param  {statelistener} statelistener
   * @return {boolean}
   * (func boolean-writestate<-statelistener)
   */
  public interface Func_boolean_writestate_from_statelistener extends Core.Func_any_from_any_context {
    public Core.Type_boolean vx_boolean_writestate_from_statelistener(final Core.Type_context context, final Core.Type_statelistener statelistener);
  }

  public static class Class_boolean_writestate_from_statelistener extends Core.Class_base implements Func_boolean_writestate_from_statelistener {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_boolean_writestate_from_statelistener output = new State.Class_boolean_writestate_from_statelistener();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_boolean_writestate_from_statelistener output = new State.Class_boolean_writestate_from_statelistener();
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
        "vx/state", // pkgname
        "boolean-writestate<-statelistener", // name
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
      Core.Type_any output = State.e_boolean_writestate_from_statelistener;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_boolean_writestate_from_statelistener;
      return output;
    }

    @Override
    public Core.Func_any_from_any_context vx_fn_new(Core.Class_any_from_any_context.IFn fn) {
      return Core.e_any_from_any_context;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any_context(final T generic_any_1, final Core.Type_context context, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_statelistener inputval = (Core.Type_statelistener)value;
      Core.Type_any outputval = State.f_boolean_writestate_from_statelistener(context, inputval);
      output = Core.f_any_from_any_context(generic_any_1, context, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_statelistener statelistener = Core.f_any_from_any(Core.t_statelistener, arglist.vx_any(Core.vx_new_int(0)));
      output = State.f_boolean_writestate_from_statelistener(context, statelistener);
      return output;
    }

    @Override
    public Core.Type_boolean vx_boolean_writestate_from_statelistener(final Core.Type_context context, final Core.Type_statelistener statelistener) {
      Core.Type_boolean output = State.f_boolean_writestate_from_statelistener(context, statelistener);
      return output;
    }

  }

  public static final State.Func_boolean_writestate_from_statelistener e_boolean_writestate_from_statelistener = new State.Class_boolean_writestate_from_statelistener();
  public static final State.Func_boolean_writestate_from_statelistener t_boolean_writestate_from_statelistener = new State.Class_boolean_writestate_from_statelistener();

  public static Core.Type_boolean f_boolean_writestate_from_statelistener(final Core.Type_context context, final Core.Type_statelistener statelistener) {
    Core.Type_boolean output = Core.e_boolean;
    output = Core.f_let(
      Core.t_boolean,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_statelistenermap statelistenermap = State.f_statelistenermap_readstate(
          context
        );
        Core.Type_string name = statelistener.name();
        Core.Type_any output_1 = Core.f_boolean_write_from_map_name_value(
          statelistenermap,
          name,
          statelistener
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function change
   * Changes the current state
   * @param  {valuemap} valuemap
   * @return {boolean}
   * (func change)
   */
  public interface Func_change extends Core.Func_any_from_any {
    public Core.Type_boolean vx_change(final State.Type_valuemap valuemap);
  }

  public static class Class_change extends Core.Class_base implements Func_change {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_change output = new State.Class_change();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_change output = new State.Class_change();
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
        "vx/state", // pkgname
        "change", // name
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
      Core.Type_any output = State.e_change;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_change;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      State.Type_valuemap inputval = (State.Type_valuemap)value;
      Core.Type_any outputval = State.f_change(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      State.Type_valuemap valuemap = Core.f_any_from_any(State.t_valuemap, arglist.vx_any(Core.vx_new_int(0)));
      output = State.f_change(valuemap);
      return output;
    }

    @Override
    public Core.Type_boolean vx_change(final State.Type_valuemap valuemap) {
      Core.Type_boolean output = State.f_change(valuemap);
      return output;
    }

  }

  public static final State.Func_change e_change = new State.Class_change();
  public static final State.Func_change t_change = new State.Class_change();

  public static Core.Type_boolean f_change(final State.Type_valuemap valuemap) {
    Core.Type_boolean output = Core.e_boolean;
    return output;
  }

  /**
   * @function register
   * @param  {statelistener} listener
   * @return {boolean}
   * (func register)
   */
  public interface Func_register extends Core.Func_any_from_any {
    public Core.Type_boolean vx_register(final Core.Type_statelistener listener);
  }

  public static class Class_register extends Core.Class_base implements Func_register {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_register output = new State.Class_register();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_register output = new State.Class_register();
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
        "vx/state", // pkgname
        "register", // name
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
      Core.Type_any output = State.e_register;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_register;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_statelistener inputval = (Core.Type_statelistener)value;
      Core.Type_any outputval = State.f_register(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_statelistener listener = Core.f_any_from_any(Core.t_statelistener, arglist.vx_any(Core.vx_new_int(0)));
      output = State.f_register(listener);
      return output;
    }

    @Override
    public Core.Type_boolean vx_register(final Core.Type_statelistener listener) {
      Core.Type_boolean output = State.f_register(listener);
      return output;
    }

  }

  public static final State.Func_register e_register = new State.Class_register();
  public static final State.Func_register t_register = new State.Class_register();

  public static Core.Type_boolean f_register(final Core.Type_statelistener listener) {
    Core.Type_boolean output = Core.e_boolean;
    return output;
  }

  /**
   * @function state_from_context
   * Returns the full current state
   * @return {state}
   * (func state<-context)
   */
  public interface Func_state_from_context extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_state vx_state_from_context(final Core.Type_context context);
  }

  public static class Class_state_from_context extends Core.Class_base implements Func_state_from_context {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_state_from_context output = new State.Class_state_from_context();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_state_from_context output = new State.Class_state_from_context();
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
        "vx/state", // pkgname
        "state<-context", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "state", // name
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
      Core.Type_any output = State.e_state_from_context;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_state_from_context;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      output = State.f_state_from_context(context);
      return output;
    }

    @Override
    public Core.Type_state vx_state_from_context(final Core.Type_context context) {
      Core.Type_state output = State.f_state_from_context(context);
      return output;
    }

  }

  public static final State.Func_state_from_context e_state_from_context = new State.Class_state_from_context();
  public static final State.Func_state_from_context t_state_from_context = new State.Class_state_from_context();

  public static Core.Type_state f_state_from_context(final Core.Type_context context) {
    Core.Type_state output = Core.e_state;
    output = context.state();
    return output;
  }

  /**
   * @function statelistener_readstate_from_name
   * Returns the named statelistener
   * @param  {string} name
   * @return {statelistener}
   * (func statelistener-readstate<-name)
   */
  public interface Func_statelistener_readstate_from_name extends Core.Func_any_from_any_context {
    public Core.Type_statelistener vx_statelistener_readstate_from_name(final Core.Type_context context, final Core.Type_string name);
  }

  public static class Class_statelistener_readstate_from_name extends Core.Class_base implements Func_statelistener_readstate_from_name {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_statelistener_readstate_from_name output = new State.Class_statelistener_readstate_from_name();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_statelistener_readstate_from_name output = new State.Class_statelistener_readstate_from_name();
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
        "vx/state", // pkgname
        "statelistener-readstate<-name", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "statelistener", // name
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
      Core.Type_any output = State.e_statelistener_readstate_from_name;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_statelistener_readstate_from_name;
      return output;
    }

    @Override
    public Core.Func_any_from_any_context vx_fn_new(Core.Class_any_from_any_context.IFn fn) {
      return Core.e_any_from_any_context;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any_context(final T generic_any_1, final Core.Type_context context, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = State.f_statelistener_readstate_from_name(context, inputval);
      output = Core.f_any_from_any_context(generic_any_1, context, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string name = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = State.f_statelistener_readstate_from_name(context, name);
      return output;
    }

    @Override
    public Core.Type_statelistener vx_statelistener_readstate_from_name(final Core.Type_context context, final Core.Type_string name) {
      Core.Type_statelistener output = State.f_statelistener_readstate_from_name(context, name);
      return output;
    }

  }

  public static final State.Func_statelistener_readstate_from_name e_statelistener_readstate_from_name = new State.Class_statelistener_readstate_from_name();
  public static final State.Func_statelistener_readstate_from_name t_statelistener_readstate_from_name = new State.Class_statelistener_readstate_from_name();

  public static Core.Type_statelistener f_statelistener_readstate_from_name(final Core.Type_context context, final Core.Type_string name) {
    Core.Type_statelistener output = Core.e_statelistener;
    output = Core.f_let(
      Core.t_statelistener,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_statelistenermap statelistenermap = State.f_statelistenermap_readstate(
          context
        );
        Core.Type_any output_1 = Core.f_any_from_map(
          Core.t_statelistener,
          statelistenermap,
          name
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function statelistenermap_readstate
   * Returns the current state valuemap
   * @return {statelistenermap}
   * (func statelistenermap-readstate)
   */
  public interface Func_statelistenermap_readstate extends Core.Type_func, Core.Type_replfunc {
    public Core.Type_statelistenermap vx_statelistenermap_readstate(final Core.Type_context context);
  }

  public static class Class_statelistenermap_readstate extends Core.Class_base implements Func_statelistenermap_readstate {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_statelistenermap_readstate output = new State.Class_statelistenermap_readstate();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_statelistenermap_readstate output = new State.Class_statelistenermap_readstate();
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
        "vx/state", // pkgname
        "statelistenermap-readstate", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "statelistenermap", // name
          ":map", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Core.t_statelistener), // allowtypes
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
      Core.Type_any output = State.e_statelistenermap_readstate;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_statelistenermap_readstate;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      output = State.f_statelistenermap_readstate(context);
      return output;
    }

    @Override
    public Core.Type_statelistenermap vx_statelistenermap_readstate(final Core.Type_context context) {
      Core.Type_statelistenermap output = State.f_statelistenermap_readstate(context);
      return output;
    }

  }

  public static final State.Func_statelistenermap_readstate e_statelistenermap_readstate = new State.Class_statelistenermap_readstate();
  public static final State.Func_statelistenermap_readstate t_statelistenermap_readstate = new State.Class_statelistenermap_readstate();

  public static Core.Type_statelistenermap f_statelistenermap_readstate(final Core.Type_context context) {
    Core.Type_statelistenermap output = Core.e_statelistenermap;
    output = Core.f_let(
      Core.t_statelistenermap,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_state state = State.f_state_from_context(
          context
        );
        Core.Type_any output_1 = state.statelistenermap();
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function value_readstate_from_name
   * Returns the named state value
   * @param  {string} name
   * @return {any}
   * (func value-readstate<-name)
   */
  public interface Func_value_readstate_from_name extends Core.Func_any_from_any_context {
    public Core.Type_any vx_value_readstate_from_name(final Core.Type_context context, final Core.Type_string name);
  }

  public static class Class_value_readstate_from_name extends Core.Class_base implements Func_value_readstate_from_name {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_value_readstate_from_name output = new State.Class_value_readstate_from_name();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_value_readstate_from_name output = new State.Class_value_readstate_from_name();
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
        "vx/state", // pkgname
        "value-readstate<-name", // name
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
      Core.Type_any output = State.e_value_readstate_from_name;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_value_readstate_from_name;
      return output;
    }

    @Override
    public Core.Func_any_from_any_context vx_fn_new(Core.Class_any_from_any_context.IFn fn) {
      return Core.e_any_from_any_context;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any_context(final T generic_any_1, final Core.Type_context context, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = State.f_value_readstate_from_name(context, inputval);
      output = Core.f_any_from_any_context(generic_any_1, context, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string name = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = State.f_value_readstate_from_name(context, name);
      return output;
    }

    @Override
    public Core.Type_any vx_value_readstate_from_name(final Core.Type_context context, final Core.Type_string name) {
      Core.Type_any output = State.f_value_readstate_from_name(context, name);
      return output;
    }

  }

  public static final State.Func_value_readstate_from_name e_value_readstate_from_name = new State.Class_value_readstate_from_name();
  public static final State.Func_value_readstate_from_name t_value_readstate_from_name = new State.Class_value_readstate_from_name();

  public static Core.Type_any f_value_readstate_from_name(final Core.Type_context context, final Core.Type_string name) {
    Core.Type_any output = Core.e_any;
    output = Core.f_let(
      Core.t_any,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_statelistener statelistener = State.f_statelistener_readstate_from_name(
          context,
          name
        );
        Core.Type_any output_1 = statelistener.value();
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function valuemap_readstate_from_mapname
   * Returns the current state valuemap
   * @param  {string} mapname
   * @return {valuemap}
   * (func valuemap-readstate<-mapname)
   */
  public interface Func_valuemap_readstate_from_mapname extends Core.Func_any_from_any_context {
    public State.Type_valuemap vx_valuemap_readstate_from_mapname(final Core.Type_context context, final Core.Type_string mapname);
  }

  public static class Class_valuemap_readstate_from_mapname extends Core.Class_base implements Func_valuemap_readstate_from_mapname {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      State.Class_valuemap_readstate_from_mapname output = new State.Class_valuemap_readstate_from_mapname();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      State.Class_valuemap_readstate_from_mapname output = new State.Class_valuemap_readstate_from_mapname();
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
        "vx/state", // pkgname
        "valuemap-readstate<-mapname", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/state", // pkgname
          "valuemap", // name
          ":map", // extends
          Core.e_typelist, // traits
          Core.vx_new(Core.t_typelist, Core.t_any), // allowtypes
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
      Core.Type_any output = State.e_valuemap_readstate_from_mapname;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = State.t_valuemap_readstate_from_mapname;
      return output;
    }

    @Override
    public Core.Func_any_from_any_context vx_fn_new(Core.Class_any_from_any_context.IFn fn) {
      return Core.e_any_from_any_context;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any_context(final T generic_any_1, final Core.Type_context context, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = State.f_valuemap_readstate_from_mapname(context, inputval);
      output = Core.f_any_from_any_context(generic_any_1, context, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      Core.Type_string mapname = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = State.f_valuemap_readstate_from_mapname(context, mapname);
      return output;
    }

    @Override
    public State.Type_valuemap vx_valuemap_readstate_from_mapname(final Core.Type_context context, final Core.Type_string mapname) {
      State.Type_valuemap output = State.f_valuemap_readstate_from_mapname(context, mapname);
      return output;
    }

  }

  public static final State.Func_valuemap_readstate_from_mapname e_valuemap_readstate_from_mapname = new State.Class_valuemap_readstate_from_mapname();
  public static final State.Func_valuemap_readstate_from_mapname t_valuemap_readstate_from_mapname = new State.Class_valuemap_readstate_from_mapname();

  public static State.Type_valuemap f_valuemap_readstate_from_mapname(final Core.Type_context context, final Core.Type_string mapname) {
    State.Type_valuemap output = State.e_valuemap;
    output = Core.f_let(
      State.t_valuemap,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_any value = State.f_value_readstate_from_name(
          context,
          mapname
        );
        State.Type_valuemap valmap = Core.f_any_from_any(
          State.t_valuemap,
          value
        );
        Core.Type_any output_1 = valmap;
        return output_1;
      })
    );
    return output;
  }


  static {
    Map<String, Core.Type_any> maptype = new LinkedHashMap<String, Core.Type_any>();
    Map<String, Core.Type_any> mapconst = new LinkedHashMap<String, Core.Type_any>();
    Map<String, Core.Type_func> mapfunc = new LinkedHashMap<String, Core.Type_func>();
    maptype.put("valuemap", State.t_valuemap);
    mapfunc.put("any-readstate<-mapname-name", State.t_any_readstate_from_mapname_name);
    mapfunc.put("any-readstate<-name", State.t_any_readstate_from_name);
    mapfunc.put("boolean-removestate<-name", State.t_boolean_removestate_from_name);
    mapfunc.put("boolean-writestate<-mapname-name-value", State.t_boolean_writestate_from_mapname_name_value);
    mapfunc.put("boolean-writestate<-name-value", State.t_boolean_writestate_from_name_value);
    mapfunc.put("boolean-writestate<-statelistener", State.t_boolean_writestate_from_statelistener);
    mapfunc.put("change", State.t_change);
    mapfunc.put("register", State.t_register);
    mapfunc.put("state<-context", State.t_state_from_context);
    mapfunc.put("statelistener-readstate<-name", State.t_statelistener_readstate_from_name);
    mapfunc.put("statelistenermap-readstate", State.t_statelistenermap_readstate);
    mapfunc.put("value-readstate<-name", State.t_value_readstate_from_name);
    mapfunc.put("valuemap-readstate<-mapname", State.t_valuemap_readstate_from_mapname);
    Core.vx_global_package_set("vx/state", maptype, mapconst, mapfunc);
  }

}
