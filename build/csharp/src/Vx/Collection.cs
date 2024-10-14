namespace Vx;

public static class Collection {

  public static T vx_any_from_for_until_loop_max<T>(
    T generic_any_1,
    T start,
    Vx.Core.Func_boolean_from_any fn_until,
    Vx.Core.Func_any_from_any fn_loop,
    Vx.Core.Type_int max)
    where T : Vx.Core.Type_any {
    T output = start;
    bool iscontinue = true;
    int icount = 0;
    int imax = max.vx_int();
    while (iscontinue) {
      if (icount >= imax) {
       string path = "vx/collection/any<-for-until-loop-max";
       string code = ":loopmaximumexceeded";
        Vx.Core.Type_int details = Vx.Core.vx_new_int(icount);
        Vx.Core.Type_msg msg = Vx.Core.vx_msg_from_error(path, code, details);
        output = Vx.Core.vx_copy(output, msg);
        iscontinue = false;
      } else {
        icount += 1;
        output = fn_loop.vx_any_from_any(generic_any_1, output);
        Vx.Core.Type_boolean valcontinue = fn_until.vx_boolean_from_any(output);
        iscontinue = !valcontinue.vx_boolean();
      }
    }
    return output;
  }

  public static T vx_any_from_for_while_loop_max<T>(
    T generic_any_1,
    T start,
    Vx.Core.Func_boolean_from_any fn_while,
    Vx.Core.Func_any_from_any fn_loop,
    Vx.Core.Type_int max)
    where T : Vx.Core.Type_any {
    T output = start;
    bool iscontinue = true;
    int icount = 0;
    int imax = max.vx_int();
    while (iscontinue) {
      if (icount >= imax) {
       string path = "vx/collection/any<-for-while-loop-max";
       string code = ":loopmaximumexceeded";
        Vx.Core.Type_int details = Vx.Core.vx_new_int(icount);
        Vx.Core.Type_msg msg = Vx.Core.vx_msg_from_error(path, code, details);
        output = Vx.Core.vx_copy(output, msg);
        iscontinue = false;
      } else {
        icount += 1;
        Vx.Core.Type_boolean valcontinue = fn_while.vx_boolean_from_any(output);
        iscontinue = valcontinue.vx_boolean();
        if (iscontinue) {
          output = fn_loop.vx_any_from_any(generic_any_1, output);
        }
      }
    }
    return output;
  }

  // (func anymap<-struct)
  public static Core.Type_anymap vx_anymap_from_struct(
    Vx.Core.Type_struct structure) {
    Vx.Core.Map<String, Vx.Core.Type_any> map = structure.vx_map();
    Vx.Core.Type_anymap output = Vx.Core.vx_new_map(Vx.Core.t_anymap, map);
    return output;
  }

  public static T vx_list_from_for_end_loop<T>(
    T generic_list_1,
    Vx.Core.Type_int start,
    Vx.Core.Type_int end,
    Vx.Core.Func_any_from_int fn_loop)
    where T : Vx.Core.Type_list {
    T output = Vx.Core.f_empty(generic_list_1);
    List<Vx.Core.Type_any> listvals = new List<Vx.Core.Type_any>();
    int istart = start.vx_int();
    int iend = end.vx_int();
    if (istart <= iend) {
      for (int i = istart; i <= iend; i++) {
        Vx.Core.Type_any val = fn_loop.vx_any_from_int(Vx.Core.t_any, Vx.Core.vx_new_int(i));
        listvals.Add(val);
      }
    } else {
      for (int i = istart; i >= iend; i--) {
        Vx.Core.Type_any val = fn_loop.vx_any_from_int(Vx.Core.t_any, Vx.Core.vx_new_int(i));
        listvals.Add(val);
      }
    }
    if (listvals.Count > 0) {
      Vx.Core.Type_anylist anylist = Vx.Core.vx_new(Vx.Core.t_anylist, listvals);
      output = Vx.Core.f_new(generic_list_1, anylist);
    }
    return output;
  }

  public static T vx_list_from_for_while_loop_max<T>(
    T generic_list_1,
    Vx.Core.Type_any start,
    Vx.Core.Func_boolean_from_any fn_while,
    Vx.Core.Func_any_from_any fn_loop,
    Vx.Core.Type_int max)
    where T : Vx.Core.Type_list {
    T output = Vx.Core.f_empty(generic_list_1);
    List<Vx.Core.Type_any> listvals = new List<Vx.Core.Type_any>();
    bool iscontinue = true;
    int icount = 0;
    int imax = max.vx_int();
    Vx.Core.Type_any work = start;
    while (iscontinue) {
      if (icount >= imax) {
       string path = "vx/collection/list<-for-until-loop-max";
       string code = ":loopmaximumexceeded";
        Vx.Core.Type_int details = Vx.Core.vx_new_int(icount);
        Vx.Core.Type_msg msg = Vx.Core.vx_msg_from_error(path, code, details);
        output = Vx.Core.vx_copy(output, msg);
        iscontinue = false;
      } else {
        Vx.Core.Type_boolean valwhile = fn_while.vx_boolean_from_any(work);
        iscontinue = !valwhile.vx_boolean();
        if (iscontinue) {
          icount += 1;
          work = fn_loop.vx_any_from_any(Vx.Core.t_any, work);
          listvals.Add(work);
        }
      }
    }
    if (listvals.Count > 0) {
      Vx.Core.Type_anylist anylist = Vx.Core.vx_new(Vx.Core.t_anylist, listvals);
      output = Vx.Core.f_new(generic_list_1, anylist);
    }
    return output;
  }

  public static T vx_list_from_list_filter<T>(
    T generic_list_1,
    Vx.Core.Type_list vallist,
    Vx.Core.Func_any_from_any fn_filter)
    where T : Vx.Core.Type_list {
    T output = Vx.Core.f_empty(generic_list_1);
    List<Vx.Core.Type_any> listval = vallist.vx_list();
    List<Vx.Core.Type_any> items = new List<Vx.Core.Type_any>();
    foreach (Vx.Core.Type_any val in listval) {
      Vx.Core.Type_any newval = fn_filter.vx_any_from_any(Vx.Core.t_any, val);
      Vx.Core.Type_boolean isempty = Vx.Core.f_is_empty_1(newval);
      if (!isempty.vx_boolean()) {
        items.Add(newval);
      }
    }
    output = Vx.Core.vx_new(generic_list_1, items);
    return output;
  }

  public static X vx_list_from_list_join_1<X, Y>(
    X generic_list_1,
    Y values,
    Vx.Core.Func_any_from_any fn_any_from_any)
    where X : Vx.Core.Type_list
    where Y : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    List<Vx.Core.Type_any> list_value = values.vx_list();
    List<Vx.Core.Type_any> list_result = new List<Vx.Core.Type_any>();
    foreach (Vx.Core.Type_any val in list_value) {
      Vx.Core.Type_any listoflist = fn_any_from_any.vx_any_from_any(
        generic_list_1, val);
      if (listoflist is Core.Type_list vallist) {
        List<Vx.Core.Type_any> listval = vallist.vx_list();
        list_result.AddRange(listval);
      }
    }
    output = Vx.Core.f_any_from_any(
      generic_list_1, generic_list_1.vx_new(list_result));
    return output;
  }

  public static T vx_list_from_list_start_end<T>(
    T generic_list_1,
    Vx.Core.Type_list values,
    Vx.Core.Type_int start,
    Vx.Core.Type_int end)
    where T : Vx.Core.Type_list {
    T output = Vx.Core.f_empty(generic_list_1);
    int istart = start.vx_int();
    int iend = end.vx_int();
    List<Vx.Core.Type_any> listval = values.vx_list();
    int maxlen = listval.Count;
    if (iend < 0) {
     iend += maxlen;
    }
    if (istart < 1) {
    } else if (istart > iend) {
    } else if (istart > maxlen) {
    } else {
      if (iend > maxlen) {
        iend = maxlen;
      }
      List<Vx.Core.Type_any> listsub = listval.GetRange(
        istart - 1,
        iend - istart + 1
      );
      output = Vx.Core.vx_new(generic_list_1, listsub);
    }
    return output;
  }

  public static T vx_map_from_map_keys<T>(
    T generic_map_1,
    Vx.Core.Type_map valuemap,
    Vx.Core.Type_stringlist keys)
    where T : Vx.Core.Type_map {
    T output = Vx.Core.f_empty(generic_map_1);
    List<Vx.Core.Type_string> keylist = keys.vx_liststring();
    if (keylist.Count > 0) {
      Vx.Core.Map<String, Vx.Core.Type_any> map = valuemap.vx_map();
      List<Vx.Core.Type_any> values = new List<Vx.Core.Type_any>();
      foreach (Vx.Core.Type_string key in keylist) {
        Vx.Core.Type_any value = map.get(key.vx_string());
        values.Add(key);
        values.Add(value);
      }
      Vx.Core.Type_anylist anyvalues = Vx.Core.vx_new_anylist(values);
      output = Vx.Core.f_new(generic_map_1, anyvalues);
    }
    return output;
  }
  /**
   * @function minus
   * Returns a list from listmain after removing listremove.
   * @param  {list-1} listmain
   * @param  {list-1} listremove
   * @return {list-1}
   * (func -)
   */
  public interface Func_minus : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_minus<X>(X generic_list_1, X listmain, X listremove) where X : Vx.Core.Type_list;
  }

  public class Class_minus : Vx.Core.Class_base, Func_minus {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_minus output = new Vx.Collection.Class_minus();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_minus output = new Vx.Collection.Class_minus();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "-", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_minus;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_minus;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_list listmain = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_list listremove = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_minus(generic_list_1, listmain, listremove);
      return output;
    }

    public X vx_minus<X>(X generic_list_1, X listmain, X listremove) where X : Vx.Core.Type_list {
      X output = Vx.Collection.f_minus(generic_list_1, listmain, listremove);
      return output;
    }

  }

  public static Vx.Collection.Func_minus e_minus = new Vx.Collection.Class_minus();
  public static Vx.Collection.Func_minus t_minus = new Vx.Collection.Class_minus();

  public static X f_minus<X>(X generic_list_1, X listmain, X listremove) where X : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.f_list_from_list_filter(
      generic_list_1,
      listmain,
      Vx.Core.t_any_from_any.vx_fn_new((item_any) => {
        Vx.Core.Type_any item = Vx.Core.f_any_from_any(Vx.Core.t_any, item_any);
        Vx.Core.Type_any output_1 = Vx.Core.f_if_2(
          Vx.Core.t_any,
          Vx.Core.vx_new(
            Vx.Core.t_thenelselist,
            Vx.Core.f_then(
              Vx.Core.t_boolean_from_func.vx_fn_new(() => {
                Vx.Core.Type_any output_2 = Vx.Core.f_not(
                  Vx.Core.f_contains_1(
                    listremove,
                    item
                  )
                );
                return output_2;
              }),
              Vx.Core.t_any_from_func.vx_fn_new(() => {
                Vx.Core.Type_any output_3 = item;
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
   * @function minus 1
   * Returns a map from mapmain after removing keys from mapremove.
   * @param  {map-1} mapmain
   * @param  {map-1} mapremove
   * @return {map-1}
   * (func -)
   */
  public interface Func_minus_1 : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public N vx_minus_1<N>(N generic_map_1, N mapmain, N mapremove) where N : Vx.Core.Type_map;
  }

  public class Class_minus_1 : Vx.Core.Class_base, Func_minus_1 {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_minus_1 output = new Vx.Collection.Class_minus_1();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_minus_1 output = new Vx.Collection.Class_minus_1();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "-", // name
        1, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_minus_1;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_minus_1;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_map generic_map_1 = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_map mapmain = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_map mapremove = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_minus_1(generic_map_1, mapmain, mapremove);
      return output;
    }

    public N vx_minus_1<N>(N generic_map_1, N mapmain, N mapremove) where N : Vx.Core.Type_map {
      N output = Vx.Collection.f_minus_1(generic_map_1, mapmain, mapremove);
      return output;
    }

  }

  public static Vx.Collection.Func_minus_1 e_minus_1 = new Vx.Collection.Class_minus_1();
  public static Vx.Collection.Func_minus_1 t_minus_1 = new Vx.Collection.Class_minus_1();

  public static N f_minus_1<N>(N generic_map_1, N mapmain, N mapremove) where N : Vx.Core.Type_map {
    N output = Vx.Core.f_empty(generic_map_1);
    output = Vx.Core.f_let(
      generic_map_1,
      Vx.Core.t_any_from_func.vx_fn_new(() => {
        Vx.Core.Type_stringlist keysmain = Vx.Core.f_stringlist_from_map(
          mapmain
        );
        Vx.Core.Type_stringlist keysremove = Vx.Core.f_stringlist_from_map(
          mapremove
        );
        Vx.Core.Type_stringlist keysremain = Vx.Collection.f_minus(
          Vx.Core.t_stringlist,
          keysmain,
          keysremove
        );
        Vx.Core.Type_any output_1 = Vx.Collection.f_map_from_map_keys(
          generic_map_1,
          mapmain,
          keysremain
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function any_from_for_until_loop
   * Returns a value using an until loop. Maximum 10000 times.
   * @param  {any-1} start
   * @param  {boolean<-any} fn-until
   * @param  {any<-any} fn-loop
   * @return {any-1}
   * (func any<-for-until-loop)
   */
  public interface Func_any_from_for_until_loop : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public T vx_any_from_for_until_loop<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_until, Vx.Core.Func_any_from_any fn_loop) where T : Vx.Core.Type_any;
  }

  public class Class_any_from_for_until_loop : Vx.Core.Class_base, Func_any_from_for_until_loop {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_any_from_for_until_loop output = new Vx.Collection.Class_any_from_for_until_loop();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_any_from_for_until_loop output = new Vx.Collection.Class_any_from_for_until_loop();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "any<-for-until-loop", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
          "", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_any_from_for_until_loop;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_any_from_for_until_loop;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_any generic_any_1 = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_any start = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Func_boolean_from_any fn_until = Vx.Core.f_any_from_any(Vx.Core.t_boolean_from_any, arglist.vx_any(Vx.Core.vx_new_int(1)));
      Vx.Core.Func_any_from_any fn_loop = Vx.Core.f_any_from_any(Vx.Core.t_any_from_any, arglist.vx_any(Vx.Core.vx_new_int(2)));
      output = Vx.Collection.f_any_from_for_until_loop(generic_any_1, start, fn_until, fn_loop);
      return output;
    }

    public T vx_any_from_for_until_loop<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_until, Vx.Core.Func_any_from_any fn_loop) where T : Vx.Core.Type_any {
      T output = Vx.Collection.f_any_from_for_until_loop(generic_any_1, start, fn_until, fn_loop);
      return output;
    }

  }

  public static Vx.Collection.Func_any_from_for_until_loop e_any_from_for_until_loop = new Vx.Collection.Class_any_from_for_until_loop();
  public static Vx.Collection.Func_any_from_for_until_loop t_any_from_for_until_loop = new Vx.Collection.Class_any_from_for_until_loop();

  public static T f_any_from_for_until_loop<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_until, Vx.Core.Func_any_from_any fn_loop) where T : Vx.Core.Type_any {
    T output = Vx.Core.f_empty(generic_any_1);
    output = Vx.Collection.f_any_from_for_until_loop_max(
      generic_any_1,
      start,
      fn_until,
      fn_loop,
      Vx.Core.vx_new_int(10000)
    );
    return output;
  }

  /**
   * @function any_from_for_until_loop_max
   * Returns a value using a until loop.
   * output : any-1 := start
   * count : int := 0
   * (while continue
   *   continue : boolean := (count <= max)
   *   (if continue
   *     count += 1
   *     output = (fn-loop output)
   *     continue = (fn-until output)))
   * @param  {any-1} start
   * @param  {boolean<-any} fn-until
   * @param  {any<-any} fn-loop
   * @param  {int} max
   * @return {any-1}
   * (func any<-for-until-loop-max)
   */
  public interface Func_any_from_for_until_loop_max : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public T vx_any_from_for_until_loop_max<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_until, Vx.Core.Func_any_from_any fn_loop, Vx.Core.Type_int max) where T : Vx.Core.Type_any;
  }

  public class Class_any_from_for_until_loop_max : Vx.Core.Class_base, Func_any_from_for_until_loop_max {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_any_from_for_until_loop_max output = new Vx.Collection.Class_any_from_for_until_loop_max();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_any_from_for_until_loop_max output = new Vx.Collection.Class_any_from_for_until_loop_max();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "any<-for-until-loop-max", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
          "", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_any_from_for_until_loop_max;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_any_from_for_until_loop_max;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_any generic_any_1 = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_any start = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Func_boolean_from_any fn_until = Vx.Core.f_any_from_any(Vx.Core.t_boolean_from_any, arglist.vx_any(Vx.Core.vx_new_int(1)));
      Vx.Core.Func_any_from_any fn_loop = Vx.Core.f_any_from_any(Vx.Core.t_any_from_any, arglist.vx_any(Vx.Core.vx_new_int(2)));
      Vx.Core.Type_int max = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(3)));
      output = Vx.Collection.f_any_from_for_until_loop_max(generic_any_1, start, fn_until, fn_loop, max);
      return output;
    }

    public T vx_any_from_for_until_loop_max<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_until, Vx.Core.Func_any_from_any fn_loop, Vx.Core.Type_int max) where T : Vx.Core.Type_any {
      T output = Vx.Collection.f_any_from_for_until_loop_max(generic_any_1, start, fn_until, fn_loop, max);
      return output;
    }

  }

  public static Vx.Collection.Func_any_from_for_until_loop_max e_any_from_for_until_loop_max = new Vx.Collection.Class_any_from_for_until_loop_max();
  public static Vx.Collection.Func_any_from_for_until_loop_max t_any_from_for_until_loop_max = new Vx.Collection.Class_any_from_for_until_loop_max();

  public static T f_any_from_for_until_loop_max<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_until, Vx.Core.Func_any_from_any fn_loop, Vx.Core.Type_int max) where T : Vx.Core.Type_any {
    T output = Vx.Core.f_empty(generic_any_1);
    output = Vx.Collection.vx_any_from_for_until_loop_max(generic_any_1, start, fn_until, fn_loop, max);
    return output;
  }

  /**
   * @function any_from_for_while_loop
   * Returns a value using a while loop. Maximum 1000 times.
   * @param  {any-1} start
   * @param  {boolean<-any} fn-while
   * @param  {any<-any} fn-loop
   * @return {any-1}
   * (func any<-for-while-loop)
   */
  public interface Func_any_from_for_while_loop : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public T vx_any_from_for_while_loop<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop) where T : Vx.Core.Type_any;
  }

  public class Class_any_from_for_while_loop : Vx.Core.Class_base, Func_any_from_for_while_loop {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_any_from_for_while_loop output = new Vx.Collection.Class_any_from_for_while_loop();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_any_from_for_while_loop output = new Vx.Collection.Class_any_from_for_while_loop();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "any<-for-while-loop", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
          "", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_any_from_for_while_loop;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_any_from_for_while_loop;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_any generic_any_1 = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_any start = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Func_boolean_from_any fn_while = Vx.Core.f_any_from_any(Vx.Core.t_boolean_from_any, arglist.vx_any(Vx.Core.vx_new_int(1)));
      Vx.Core.Func_any_from_any fn_loop = Vx.Core.f_any_from_any(Vx.Core.t_any_from_any, arglist.vx_any(Vx.Core.vx_new_int(2)));
      output = Vx.Collection.f_any_from_for_while_loop(generic_any_1, start, fn_while, fn_loop);
      return output;
    }

    public T vx_any_from_for_while_loop<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop) where T : Vx.Core.Type_any {
      T output = Vx.Collection.f_any_from_for_while_loop(generic_any_1, start, fn_while, fn_loop);
      return output;
    }

  }

  public static Vx.Collection.Func_any_from_for_while_loop e_any_from_for_while_loop = new Vx.Collection.Class_any_from_for_while_loop();
  public static Vx.Collection.Func_any_from_for_while_loop t_any_from_for_while_loop = new Vx.Collection.Class_any_from_for_while_loop();

  public static T f_any_from_for_while_loop<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop) where T : Vx.Core.Type_any {
    T output = Vx.Core.f_empty(generic_any_1);
    output = Vx.Collection.f_any_from_for_while_loop_max(
      generic_any_1,
      start,
      fn_while,
      fn_loop,
      Vx.Core.vx_new_int(1000)
    );
    return output;
  }

  /**
   * @function any_from_for_while_loop_max
   * Returns a value using a while loop.
   * output : any-1 := start
   * count : int := 0
   * (while continue
   *  continue : boolean := (count <= max)
   *  (if continue
   *   continue = (fn-while output)
   *   (if continue
   *    count += 1
   *    output = (fn-loop output))))
   * @param  {any-1} start
   * @param  {boolean<-any} fn-while
   * @param  {any<-any} fn-loop
   * @param  {int} max
   * @return {any-1}
   * (func any<-for-while-loop-max)
   */
  public interface Func_any_from_for_while_loop_max : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public T vx_any_from_for_while_loop_max<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop, Vx.Core.Type_int max) where T : Vx.Core.Type_any;
  }

  public class Class_any_from_for_while_loop_max : Vx.Core.Class_base, Func_any_from_for_while_loop_max {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_any_from_for_while_loop_max output = new Vx.Collection.Class_any_from_for_while_loop_max();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_any_from_for_while_loop_max output = new Vx.Collection.Class_any_from_for_while_loop_max();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "any<-for-while-loop-max", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
          "", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_any_from_for_while_loop_max;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_any_from_for_while_loop_max;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_any generic_any_1 = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_any start = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Func_boolean_from_any fn_while = Vx.Core.f_any_from_any(Vx.Core.t_boolean_from_any, arglist.vx_any(Vx.Core.vx_new_int(1)));
      Vx.Core.Func_any_from_any fn_loop = Vx.Core.f_any_from_any(Vx.Core.t_any_from_any, arglist.vx_any(Vx.Core.vx_new_int(2)));
      Vx.Core.Type_int max = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(3)));
      output = Vx.Collection.f_any_from_for_while_loop_max(generic_any_1, start, fn_while, fn_loop, max);
      return output;
    }

    public T vx_any_from_for_while_loop_max<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop, Vx.Core.Type_int max) where T : Vx.Core.Type_any {
      T output = Vx.Collection.f_any_from_for_while_loop_max(generic_any_1, start, fn_while, fn_loop, max);
      return output;
    }

  }

  public static Vx.Collection.Func_any_from_for_while_loop_max e_any_from_for_while_loop_max = new Vx.Collection.Class_any_from_for_while_loop_max();
  public static Vx.Collection.Func_any_from_for_while_loop_max t_any_from_for_while_loop_max = new Vx.Collection.Class_any_from_for_while_loop_max();

  public static T f_any_from_for_while_loop_max<T>(T generic_any_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop, Vx.Core.Type_int max) where T : Vx.Core.Type_any {
    T output = Vx.Core.f_empty(generic_any_1);
    output = Vx.Collection.vx_any_from_for_while_loop_max(generic_any_1, start, fn_while, fn_loop, max);
    return output;
  }

  /**
   * @function any_from_map_pos
   * Returns then numbered child from a map.
   * @param  {map-1} map
   * @param  {int} pos
   * @return {any-1}
   * (func any<-map-pos)
   */
  public interface Func_any_from_map_pos : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public T vx_any_from_map_pos<N, T>(T generic_any_1, N map, Vx.Core.Type_int pos) where N : Vx.Core.Type_map where T : Vx.Core.Type_any;
  }

  public class Class_any_from_map_pos : Vx.Core.Class_base, Func_any_from_map_pos {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_any_from_map_pos output = new Vx.Collection.Class_any_from_map_pos();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_any_from_map_pos output = new Vx.Collection.Class_any_from_map_pos();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "any<-map-pos", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
          "", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_any_from_map_pos;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_any_from_map_pos;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_any generic_any_1 = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_map map = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_int pos = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_any_from_map_pos(generic_any_1, map, pos);
      return output;
    }

    public T vx_any_from_map_pos<N, T>(T generic_any_1, N map, Vx.Core.Type_int pos) where N : Vx.Core.Type_map where T : Vx.Core.Type_any {
      T output = Vx.Collection.f_any_from_map_pos(generic_any_1, map, pos);
      return output;
    }

  }

  public static Vx.Collection.Func_any_from_map_pos e_any_from_map_pos = new Vx.Collection.Class_any_from_map_pos();
  public static Vx.Collection.Func_any_from_map_pos t_any_from_map_pos = new Vx.Collection.Class_any_from_map_pos();

  public static T f_any_from_map_pos<N, T>(T generic_any_1, N map, Vx.Core.Type_int pos) where N : Vx.Core.Type_map where T : Vx.Core.Type_any {
    T output = Vx.Core.f_empty(generic_any_1);
    output = Vx.Core.f_let(
      generic_any_1,
      Vx.Core.t_any_from_func.vx_fn_new(() => {
        Vx.Core.Type_stringlist keys = Vx.Core.f_stringlist_from_map(
          map
        );
        Vx.Core.Type_string key = Vx.Core.f_any_from_list(
          Vx.Core.t_string,
          keys,
          pos
        );
        Vx.Core.Type_any output_1 = Vx.Core.f_any_from_map(
          generic_any_1,
          map,
          key
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function anymap_from_struct
   * Returns anymap from all the properties in a struct.
   * @param  {struct-1} structure
   * @return {anymap}
   * (func anymap<-struct)
   */
  public interface Func_anymap_from_struct : Vx.Core.Func_any_from_any {
    public Vx.Core.Type_anymap vx_anymap_from_struct(Vx.Core.Type_struct structure);
  }

  public class Class_anymap_from_struct : Vx.Core.Class_base, Func_anymap_from_struct {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_anymap_from_struct output = new Vx.Collection.Class_anymap_from_struct();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_anymap_from_struct output = new Vx.Collection.Class_anymap_from_struct();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "anymap<-struct", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "anymap", // name
          ":map", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_anymap_from_struct;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_anymap_from_struct;
      return output;
    }

    public Vx.Core.Func_any_from_any vx_fn_new(Vx.Core.Class_any_from_any.IFn fn) {
      return Vx.Core.e_any_from_any;
    }

    public T vx_any_from_any<T, U>(T generic_any_1, U value) where T : Vx.Core.Type_any where U : Vx.Core.Type_any {
      T output = Vx.Core.f_empty(generic_any_1);
      Vx.Core.Type_struct inputval = (Vx.Core.Type_struct)value;
      Vx.Core.Type_any outputval = Vx.Collection.f_anymap_from_struct(inputval);
      output = Vx.Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_struct structure = Vx.Core.f_any_from_any(Vx.Core.t_struct, arglist.vx_any(Vx.Core.vx_new_int(0)));
      output = Vx.Collection.f_anymap_from_struct(structure);
      return output;
    }

    public Vx.Core.Type_anymap vx_anymap_from_struct(Vx.Core.Type_struct structure) {
      Vx.Core.Type_anymap output = Vx.Collection.f_anymap_from_struct(structure);
      return output;
    }

  }

  public static Vx.Collection.Func_anymap_from_struct e_anymap_from_struct = new Vx.Collection.Class_anymap_from_struct();
  public static Vx.Collection.Func_anymap_from_struct t_anymap_from_struct = new Vx.Collection.Class_anymap_from_struct();

  public static Vx.Core.Type_anymap f_anymap_from_struct(Vx.Core.Type_struct structure) {
    Vx.Core.Type_anymap output = Vx.Core.e_anymap;
    output = Vx.Collection.vx_anymap_from_struct(structure);
    return output;
  }

  /**
   * @function boolean_write_from_map_removekey
   * Returns true if it alters a mutable map false if it fails.
   * @param  {map-1} valuemap
   * @param  {string} key
   * @return {boolean}
   * (func boolean-write<-map-removekey)
   */
  public interface Func_boolean_write_from_map_removekey : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public Vx.Core.Type_boolean vx_boolean_write_from_map_removekey(Vx.Core.Type_map valuemap, Vx.Core.Type_string key);
  }

  public class Class_boolean_write_from_map_removekey : Vx.Core.Class_base, Func_boolean_write_from_map_removekey {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_boolean_write_from_map_removekey output = new Vx.Collection.Class_boolean_write_from_map_removekey();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_boolean_write_from_map_removekey output = new Vx.Collection.Class_boolean_write_from_map_removekey();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "boolean-write<-map-removekey", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_boolean_write_from_map_removekey;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_boolean_write_from_map_removekey;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_map valuemap = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_string key = Vx.Core.f_any_from_any(Vx.Core.t_string, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_boolean_write_from_map_removekey(valuemap, key);
      return output;
    }

    public Vx.Core.Type_boolean vx_boolean_write_from_map_removekey(Vx.Core.Type_map valuemap, Vx.Core.Type_string key) {
      Vx.Core.Type_boolean output = Vx.Collection.f_boolean_write_from_map_removekey(valuemap, key);
      return output;
    }

  }

  public static Vx.Collection.Func_boolean_write_from_map_removekey e_boolean_write_from_map_removekey = new Vx.Collection.Class_boolean_write_from_map_removekey();
  public static Vx.Collection.Func_boolean_write_from_map_removekey t_boolean_write_from_map_removekey = new Vx.Collection.Class_boolean_write_from_map_removekey();

  public static Vx.Core.Type_boolean f_boolean_write_from_map_removekey(Vx.Core.Type_map valuemap, Vx.Core.Type_string key) {
    Vx.Core.Type_boolean output = Vx.Core.e_boolean;
    output = Vx.Core.f_boolean_write_from_map_name_value(
      valuemap,
      key,
      Vx.Core.f_empty(
        Vx.Core.t_any
      )
    );
    return output;
  }

  /**
   * @function boolean_write_from_map_removekeys
   * Returns true if it alters a mutable map false if it fails.
   * @param  {map-1} valuemap
   * @param  {stringlist} keys
   * @return {boolean}
   * (func boolean-write<-map-removekeys)
   */
  public interface Func_boolean_write_from_map_removekeys : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public Vx.Core.Type_boolean vx_boolean_write_from_map_removekeys(Vx.Core.Type_map valuemap, Vx.Core.Type_stringlist keys);
  }

  public class Class_boolean_write_from_map_removekeys : Vx.Core.Class_base, Func_boolean_write_from_map_removekeys {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_boolean_write_from_map_removekeys output = new Vx.Collection.Class_boolean_write_from_map_removekeys();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_boolean_write_from_map_removekeys output = new Vx.Collection.Class_boolean_write_from_map_removekeys();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "boolean-write<-map-removekeys", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_boolean_write_from_map_removekeys;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_boolean_write_from_map_removekeys;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_map valuemap = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_stringlist keys = Vx.Core.f_any_from_any(Vx.Core.t_stringlist, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_boolean_write_from_map_removekeys(valuemap, keys);
      return output;
    }

    public Vx.Core.Type_boolean vx_boolean_write_from_map_removekeys(Vx.Core.Type_map valuemap, Vx.Core.Type_stringlist keys) {
      Vx.Core.Type_boolean output = Vx.Collection.f_boolean_write_from_map_removekeys(valuemap, keys);
      return output;
    }

  }

  public static Vx.Collection.Func_boolean_write_from_map_removekeys e_boolean_write_from_map_removekeys = new Vx.Collection.Class_boolean_write_from_map_removekeys();
  public static Vx.Collection.Func_boolean_write_from_map_removekeys t_boolean_write_from_map_removekeys = new Vx.Collection.Class_boolean_write_from_map_removekeys();

  public static Vx.Core.Type_boolean f_boolean_write_from_map_removekeys(Vx.Core.Type_map valuemap, Vx.Core.Type_stringlist keys) {
    Vx.Core.Type_boolean output = Vx.Core.e_boolean;
    output = Vx.Core.f_let(
      Vx.Core.t_boolean,
      Vx.Core.t_any_from_func.vx_fn_new(() => {
        Vx.Core.Type_booleanlist writelist = Vx.Core.f_list_from_list_1(
          Vx.Core.t_booleanlist,
          keys,
          Vx.Core.t_any_from_any.vx_fn_new((key_any) => {
            Vx.Core.Type_string key = Vx.Core.f_any_from_any(Vx.Core.t_string, key_any);
            Vx.Core.Type_any output_2 = Vx.Collection.f_boolean_write_from_map_removekey(
              valuemap,
              key
            );
            return output_2;
          })
        );
        Vx.Core.Type_any output_1 = Vx.Core.f_and_1(
          writelist
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function int_from_map_key
   * Returns the position of key in any map.
   * @param  {map-1} map
   * @param  {string} key
   * @return {int}
   * (func int<-map-key)
   */
  public interface Func_int_from_map_key : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public Vx.Core.Type_int vx_int_from_map_key(Vx.Core.Type_map map, Vx.Core.Type_string key);
  }

  public class Class_int_from_map_key : Vx.Core.Class_base, Func_int_from_map_key {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_int_from_map_key output = new Vx.Collection.Class_int_from_map_key();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_int_from_map_key output = new Vx.Collection.Class_int_from_map_key();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "int<-map-key", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "int", // name
          "", // extends
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_number), // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_int_from_map_key;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_int_from_map_key;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_map map = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_string key = Vx.Core.f_any_from_any(Vx.Core.t_string, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_int_from_map_key(map, key);
      return output;
    }

    public Vx.Core.Type_int vx_int_from_map_key(Vx.Core.Type_map map, Vx.Core.Type_string key) {
      Vx.Core.Type_int output = Vx.Collection.f_int_from_map_key(map, key);
      return output;
    }

  }

  public static Vx.Collection.Func_int_from_map_key e_int_from_map_key = new Vx.Collection.Class_int_from_map_key();
  public static Vx.Collection.Func_int_from_map_key t_int_from_map_key = new Vx.Collection.Class_int_from_map_key();

  public static Vx.Core.Type_int f_int_from_map_key(Vx.Core.Type_map map, Vx.Core.Type_string key) {
    Vx.Core.Type_int output = Vx.Core.e_int;
    output = Vx.Core.f_let(
      Vx.Core.t_int,
      Vx.Core.t_any_from_func.vx_fn_new(() => {
        Vx.Core.Type_stringlist keys = Vx.Core.f_stringlist_from_map(
          map
        );
        Vx.Core.Type_any output_1 = Vx.Collection.f_int_from_stringlist_find(
          keys,
          key
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function int_from_stringlist_find
   * Returns the position (first position is 1) of find text in a stringlist.
   * @param  {stringlist} stringlist
   * @param  {string} find
   * @return {int}
   * (func int<-stringlist-find)
   */
  public interface Func_int_from_stringlist_find : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public Vx.Core.Type_int vx_int_from_stringlist_find(Vx.Core.Type_stringlist stringlist, Vx.Core.Type_string find);
  }

  public class Class_int_from_stringlist_find : Vx.Core.Class_base, Func_int_from_stringlist_find {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_int_from_stringlist_find output = new Vx.Collection.Class_int_from_stringlist_find();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_int_from_stringlist_find output = new Vx.Collection.Class_int_from_stringlist_find();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "int<-stringlist-find", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "int", // name
          "", // extends
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_number), // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_int_from_stringlist_find;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_int_from_stringlist_find;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_stringlist stringlist = Vx.Core.f_any_from_any(Vx.Core.t_stringlist, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_string find = Vx.Core.f_any_from_any(Vx.Core.t_string, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_int_from_stringlist_find(stringlist, find);
      return output;
    }

    public Vx.Core.Type_int vx_int_from_stringlist_find(Vx.Core.Type_stringlist stringlist, Vx.Core.Type_string find) {
      Vx.Core.Type_int output = Vx.Collection.f_int_from_stringlist_find(stringlist, find);
      return output;
    }

  }

  public static Vx.Collection.Func_int_from_stringlist_find e_int_from_stringlist_find = new Vx.Collection.Class_int_from_stringlist_find();
  public static Vx.Collection.Func_int_from_stringlist_find t_int_from_stringlist_find = new Vx.Collection.Class_int_from_stringlist_find();

  public static Vx.Core.Type_int f_int_from_stringlist_find(Vx.Core.Type_stringlist stringlist, Vx.Core.Type_string find) {
    Vx.Core.Type_int output = Vx.Core.e_int;
    output = Vx.Core.f_let(
      Vx.Core.t_int,
      Vx.Core.t_any_from_func.vx_fn_new(() => {
        Vx.Core.Type_intlist poslist = Vx.Core.f_list_from_list_intany(
          Vx.Core.t_intlist,
          stringlist,
          Vx.Core.t_any_from_int_any.vx_fn_new((pos_any, value_any) => {
            Vx.Core.Type_int pos = Vx.Core.f_any_from_any(Vx.Core.t_int, pos_any);
            Vx.Core.Type_string value = Vx.Core.f_any_from_any(Vx.Core.t_string, value_any);
            Vx.Core.Type_any output_2 = Vx.Core.f_if_1(
              Vx.Core.t_int,
              Vx.Core.f_eq(
                find,
                value
              ),
              pos,
              Vx.Core.vx_new_int(0)
            );
            return output_2;
          })
        );
        Vx.Core.Type_intlist gt0list = Vx.Collection.f_list_from_list_filter(
          Vx.Core.t_intlist,
          poslist,
          Vx.Core.t_any_from_any.vx_fn_new((item_any) => {
            Vx.Core.Type_int item = Vx.Core.f_any_from_any(Vx.Core.t_int, item_any);
            Vx.Core.Type_any output_3 = item;
            return output_3;
          })
        );
        Vx.Core.Type_any output_1 = Vx.Core.f_first_from_list(
          Vx.Core.t_int,
          gt0list
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function is_list
   * Returns true if the given value is a list.
   * @param  {any} value Any value
   * @return {boolean}
   * (func is-list)
   */
  public interface Func_is_list : Vx.Core.Func_any_from_any {
    public Vx.Core.Type_boolean vx_is_list(Vx.Core.Type_any value);
  }

  public class Class_is_list : Vx.Core.Class_base, Func_is_list {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_is_list output = new Vx.Collection.Class_is_list();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_is_list output = new Vx.Collection.Class_is_list();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "is-list", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_is_list;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_is_list;
      return output;
    }

    public Vx.Core.Func_any_from_any vx_fn_new(Vx.Core.Class_any_from_any.IFn fn) {
      return Vx.Core.e_any_from_any;
    }

    public T vx_any_from_any<T, U>(T generic_any_1, U value) where T : Vx.Core.Type_any where U : Vx.Core.Type_any {
      T output = Vx.Core.f_empty(generic_any_1);
      Vx.Core.Type_any inputval = (Vx.Core.Type_any)value;
      Vx.Core.Type_any outputval = Vx.Collection.f_is_list(inputval);
      output = Vx.Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_any value = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      output = Vx.Collection.f_is_list(value);
      return output;
    }

    public Vx.Core.Type_boolean vx_is_list(Vx.Core.Type_any value) {
      Vx.Core.Type_boolean output = Vx.Collection.f_is_list(value);
      return output;
    }

  }

  public static Vx.Collection.Func_is_list e_is_list = new Vx.Collection.Class_is_list();
  public static Vx.Collection.Func_is_list t_is_list = new Vx.Collection.Class_is_list();

  public static Vx.Core.Type_boolean f_is_list(Vx.Core.Type_any value) {
    Vx.Core.Type_boolean output = Vx.Core.e_boolean;
    output = Vx.Core.f_eq(
      Vx.Core.vx_new_string(":list"),
      Vx.Core.f_extends_from_any(
        value
      )
    );
    return output;
  }

  /**
   * @function is_map
   * Returns true if the given value is a map.
   * @param  {any} value Any value
   * @return {boolean}
   * (func is-map)
   */
  public interface Func_is_map : Vx.Core.Func_any_from_any {
    public Vx.Core.Type_boolean vx_is_map(Vx.Core.Type_any value);
  }

  public class Class_is_map : Vx.Core.Class_base, Func_is_map {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_is_map output = new Vx.Collection.Class_is_map();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_is_map output = new Vx.Collection.Class_is_map();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "is-map", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_is_map;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_is_map;
      return output;
    }

    public Vx.Core.Func_any_from_any vx_fn_new(Vx.Core.Class_any_from_any.IFn fn) {
      return Vx.Core.e_any_from_any;
    }

    public T vx_any_from_any<T, U>(T generic_any_1, U value) where T : Vx.Core.Type_any where U : Vx.Core.Type_any {
      T output = Vx.Core.f_empty(generic_any_1);
      Vx.Core.Type_any inputval = (Vx.Core.Type_any)value;
      Vx.Core.Type_any outputval = Vx.Collection.f_is_map(inputval);
      output = Vx.Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_any value = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      output = Vx.Collection.f_is_map(value);
      return output;
    }

    public Vx.Core.Type_boolean vx_is_map(Vx.Core.Type_any value) {
      Vx.Core.Type_boolean output = Vx.Collection.f_is_map(value);
      return output;
    }

  }

  public static Vx.Collection.Func_is_map e_is_map = new Vx.Collection.Class_is_map();
  public static Vx.Collection.Func_is_map t_is_map = new Vx.Collection.Class_is_map();

  public static Vx.Core.Type_boolean f_is_map(Vx.Core.Type_any value) {
    Vx.Core.Type_boolean output = Vx.Core.e_boolean;
    output = Vx.Core.f_eq(
      Vx.Core.vx_new_string(":map"),
      Vx.Core.f_extends_from_any(
        value
      )
    );
    return output;
  }

  /**
   * @function list_from_for_end_loop
   * Returns a list of any-1 by iterating i from for to next where each item is (loop i).
   * This is similar to a for next loop in other languages.
   * output : list-1 := (empty list-1)
   * (if start <= end
   *  (for i=start to end
   *   value : any-1 := (fn-loop i)
   *   output += value)
   *  (else
   *   (for i=start to end; i--
   *    value : any-1 := (fn-loop i)
   *    output += value)
   *  ))
   * @param  {int} start
   * @param  {int} end
   * @param  {any<-int} fn-loop
   * @return {list-1}
   * (func list<-for-end-loop)
   */
  public interface Func_list_from_for_end_loop : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_list_from_for_end_loop<X>(X generic_list_1, Vx.Core.Type_int start, Vx.Core.Type_int end, Vx.Core.Func_any_from_int fn_loop) where X : Vx.Core.Type_list;
  }

  public class Class_list_from_for_end_loop : Vx.Core.Class_base, Func_list_from_for_end_loop {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_for_end_loop output = new Vx.Collection.Class_list_from_for_end_loop();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_for_end_loop output = new Vx.Collection.Class_list_from_for_end_loop();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-for-end-loop", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_for_end_loop;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_for_end_loop;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_int start = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_int end = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(1)));
      Vx.Core.Func_any_from_int fn_loop = Vx.Core.f_any_from_any(Vx.Core.t_any_from_int, arglist.vx_any(Vx.Core.vx_new_int(2)));
      output = Vx.Collection.f_list_from_for_end_loop(generic_list_1, start, end, fn_loop);
      return output;
    }

    public X vx_list_from_for_end_loop<X>(X generic_list_1, Vx.Core.Type_int start, Vx.Core.Type_int end, Vx.Core.Func_any_from_int fn_loop) where X : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_for_end_loop(generic_list_1, start, end, fn_loop);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_for_end_loop e_list_from_for_end_loop = new Vx.Collection.Class_list_from_for_end_loop();
  public static Vx.Collection.Func_list_from_for_end_loop t_list_from_for_end_loop = new Vx.Collection.Class_list_from_for_end_loop();

  public static X f_list_from_for_end_loop<X>(X generic_list_1, Vx.Core.Type_int start, Vx.Core.Type_int end, Vx.Core.Func_any_from_int fn_loop) where X : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.vx_list_from_for_end_loop(generic_list_1, start, end, fn_loop);
    return output;
  }

  /**
   * @function list_from_for_while_loop
   * Returns a list of any-1 using a while loop. Max: 1000
   * @param  {any-1} start
   * @param  {boolean<-any} fn-while
   * @param  {any<-any} fn-loop
   * @return {list-1}
   * (func list<-for-while-loop)
   */
  public interface Func_list_from_for_while_loop : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_list_from_for_while_loop<T, X>(X generic_list_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop) where T : Vx.Core.Type_any where X : Vx.Core.Type_list;
  }

  public class Class_list_from_for_while_loop : Vx.Core.Class_base, Func_list_from_for_while_loop {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_for_while_loop output = new Vx.Collection.Class_list_from_for_while_loop();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_for_while_loop output = new Vx.Collection.Class_list_from_for_while_loop();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-for-while-loop", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_for_while_loop;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_for_while_loop;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_any start = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Func_boolean_from_any fn_while = Vx.Core.f_any_from_any(Vx.Core.t_boolean_from_any, arglist.vx_any(Vx.Core.vx_new_int(1)));
      Vx.Core.Func_any_from_any fn_loop = Vx.Core.f_any_from_any(Vx.Core.t_any_from_any, arglist.vx_any(Vx.Core.vx_new_int(2)));
      output = Vx.Collection.f_list_from_for_while_loop(generic_list_1, start, fn_while, fn_loop);
      return output;
    }

    public X vx_list_from_for_while_loop<T, X>(X generic_list_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop) where T : Vx.Core.Type_any where X : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_for_while_loop(generic_list_1, start, fn_while, fn_loop);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_for_while_loop e_list_from_for_while_loop = new Vx.Collection.Class_list_from_for_while_loop();
  public static Vx.Collection.Func_list_from_for_while_loop t_list_from_for_while_loop = new Vx.Collection.Class_list_from_for_while_loop();

  public static X f_list_from_for_while_loop<T, X>(X generic_list_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop) where T : Vx.Core.Type_any where X : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.f_list_from_for_while_loop_max(
      generic_list_1,
      start,
      fn_while,
      fn_loop,
      Vx.Core.vx_new_int(1000)
    );
    return output;
  }

  /**
   * @function list_from_for_while_loop_max
   * Returns a list of any-1 using a while loop.
   * 1. output : list-1 := (empty list-1)
   * 2. value : any-1 := start.
   * 3. value : any-1 := (fn-loop value).
   * 4. check : boolean := (fn-while value).
   * 5. if (= check true) output := (copy output value), Go to 3 (Maximum max times).
   * 6. else end.
   * @param  {any-1} start
   * @param  {boolean<-any} fn-while
   * @param  {any<-any} fn-loop
   * @param  {int} max
   * @return {list-1}
   * (func list<-for-while-loop-max)
   */
  public interface Func_list_from_for_while_loop_max : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_list_from_for_while_loop_max<T, X>(X generic_list_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop, Vx.Core.Type_int max) where T : Vx.Core.Type_any where X : Vx.Core.Type_list;
  }

  public class Class_list_from_for_while_loop_max : Vx.Core.Class_base, Func_list_from_for_while_loop_max {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_for_while_loop_max output = new Vx.Collection.Class_list_from_for_while_loop_max();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_for_while_loop_max output = new Vx.Collection.Class_list_from_for_while_loop_max();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-for-while-loop-max", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_for_while_loop_max;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_for_while_loop_max;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_any start = Vx.Core.f_any_from_any(Vx.Core.t_any, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Func_boolean_from_any fn_while = Vx.Core.f_any_from_any(Vx.Core.t_boolean_from_any, arglist.vx_any(Vx.Core.vx_new_int(1)));
      Vx.Core.Func_any_from_any fn_loop = Vx.Core.f_any_from_any(Vx.Core.t_any_from_any, arglist.vx_any(Vx.Core.vx_new_int(2)));
      Vx.Core.Type_int max = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(3)));
      output = Vx.Collection.f_list_from_for_while_loop_max(generic_list_1, start, fn_while, fn_loop, max);
      return output;
    }

    public X vx_list_from_for_while_loop_max<T, X>(X generic_list_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop, Vx.Core.Type_int max) where T : Vx.Core.Type_any where X : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_for_while_loop_max(generic_list_1, start, fn_while, fn_loop, max);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_for_while_loop_max e_list_from_for_while_loop_max = new Vx.Collection.Class_list_from_for_while_loop_max();
  public static Vx.Collection.Func_list_from_for_while_loop_max t_list_from_for_while_loop_max = new Vx.Collection.Class_list_from_for_while_loop_max();

  public static X f_list_from_for_while_loop_max<T, X>(X generic_list_1, T start, Vx.Core.Func_boolean_from_any fn_while, Vx.Core.Func_any_from_any fn_loop, Vx.Core.Type_int max) where T : Vx.Core.Type_any where X : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.vx_list_from_for_while_loop_max(generic_list_1, start, fn_while, fn_loop, max);
    return output;
  }

  /**
   * @function list_from_list_end
   * Returns a sub list from positions 1 to end inclusive.
   * @param  {list-1} values
   * @param  {int} end
   * @return {list-1}
   * (func list<-list-end)
   */
  public interface Func_list_from_list_end : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_list_from_list_end<X>(X generic_list_1, X values, Vx.Core.Type_int end) where X : Vx.Core.Type_list;
  }

  public class Class_list_from_list_end : Vx.Core.Class_base, Func_list_from_list_end {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_list_end output = new Vx.Collection.Class_list_from_list_end();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_list_end output = new Vx.Collection.Class_list_from_list_end();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-end", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_list_end;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_list_end;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_list values = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_int end = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_list_from_list_end(generic_list_1, values, end);
      return output;
    }

    public X vx_list_from_list_end<X>(X generic_list_1, X values, Vx.Core.Type_int end) where X : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_list_end(generic_list_1, values, end);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_list_end e_list_from_list_end = new Vx.Collection.Class_list_from_list_end();
  public static Vx.Collection.Func_list_from_list_end t_list_from_list_end = new Vx.Collection.Class_list_from_list_end();

  public static X f_list_from_list_end<X>(X generic_list_1, X values, Vx.Core.Type_int end) where X : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.f_list_from_list_start_end(
      generic_list_1,
      values,
      Vx.Core.vx_new_int(1),
      end
    );
    return output;
  }

  /**
   * @function list_from_list_filter
   * Filter List to only include non-empty values
   * @param  {list-2} vallist
   * @param  {any<-any} fn-filter
   * @return {list-1}
   * (func list<-list-filter)
   */
  public interface Func_list_from_list_filter : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_list_from_list_filter<X, Y>(X generic_list_1, Y vallist, Vx.Core.Func_any_from_any fn_filter) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list;
  }

  public class Class_list_from_list_filter : Vx.Core.Class_base, Func_list_from_list_filter {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_list_filter output = new Vx.Collection.Class_list_from_list_filter();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_list_filter output = new Vx.Collection.Class_list_from_list_filter();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-filter", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_list_filter;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_list_filter;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_list vallist = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Func_any_from_any fn_filter = Vx.Core.f_any_from_any(Vx.Core.t_any_from_any, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_list_from_list_filter(generic_list_1, vallist, fn_filter);
      return output;
    }

    public X vx_list_from_list_filter<X, Y>(X generic_list_1, Y vallist, Vx.Core.Func_any_from_any fn_filter) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_list_filter(generic_list_1, vallist, fn_filter);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_list_filter e_list_from_list_filter = new Vx.Collection.Class_list_from_list_filter();
  public static Vx.Collection.Func_list_from_list_filter t_list_from_list_filter = new Vx.Collection.Class_list_from_list_filter();

  public static X f_list_from_list_filter<X, Y>(X generic_list_1, Y vallist, Vx.Core.Func_any_from_any fn_filter) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.vx_list_from_list_filter(generic_list_1, vallist, fn_filter);
    return output;
  }

  /**
   * @function list_from_list_filtertypes
   * Filter List to only include matching types
   * @param  {list-2} vallist
   * @param  {typelist} filtertypes
   * @return {list-1}
   * (func list<-list-filtertypes)
   */
  public interface Func_list_from_list_filtertypes : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_list_from_list_filtertypes<X, Y>(X generic_list_1, Y vallist, Vx.Core.Type_typelist filtertypes) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list;
  }

  public class Class_list_from_list_filtertypes : Vx.Core.Class_base, Func_list_from_list_filtertypes {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_list_filtertypes output = new Vx.Collection.Class_list_from_list_filtertypes();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_list_filtertypes output = new Vx.Collection.Class_list_from_list_filtertypes();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-filtertypes", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_list_filtertypes;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_list_filtertypes;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_list vallist = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_typelist filtertypes = Vx.Core.f_any_from_any(Vx.Core.t_typelist, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_list_from_list_filtertypes(generic_list_1, vallist, filtertypes);
      return output;
    }

    public X vx_list_from_list_filtertypes<X, Y>(X generic_list_1, Y vallist, Vx.Core.Type_typelist filtertypes) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_list_filtertypes(generic_list_1, vallist, filtertypes);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_list_filtertypes e_list_from_list_filtertypes = new Vx.Collection.Class_list_from_list_filtertypes();
  public static Vx.Collection.Func_list_from_list_filtertypes t_list_from_list_filtertypes = new Vx.Collection.Class_list_from_list_filtertypes();

  public static X f_list_from_list_filtertypes<X, Y>(X generic_list_1, Y vallist, Vx.Core.Type_typelist filtertypes) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.f_list_from_list_filter(
      generic_list_1,
      vallist,
      Vx.Core.t_any_from_any.vx_fn_new((value_any) => {
        Vx.Core.Type_any value = Vx.Core.f_any_from_any(Vx.Core.t_any, value_any);
        Vx.Core.Type_any output_1 = Vx.Core.f_if(
          Vx.Core.t_any,
          Vx.Type.f_is_type_from_any_typelist(
            value,
            filtertypes
          ),
          value
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function list_from_list_flatten
   * Return a list of items from another list. fn-any<-any may return individual items or lists of items. Any sublists are flattened into the single list.
   * @param  {list-2} listsrc
   * @param  {any<-any} fn-any<-any
   * @return {list-1}
   * (func list<-list-flatten)
   */
  public interface Func_list_from_list_flatten : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_list_from_list_flatten<X, Y>(X generic_list_1, Y listsrc, Vx.Core.Func_any_from_any fn_any_from_any) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list;
  }

  public class Class_list_from_list_flatten : Vx.Core.Class_base, Func_list_from_list_flatten {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_list_flatten output = new Vx.Collection.Class_list_from_list_flatten();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_list_flatten output = new Vx.Collection.Class_list_from_list_flatten();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-flatten", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_list_flatten;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_list_flatten;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_list listsrc = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Func_any_from_any fn_any_from_any = Vx.Core.f_any_from_any(Vx.Core.t_any_from_any, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_list_from_list_flatten(generic_list_1, listsrc, fn_any_from_any);
      return output;
    }

    public X vx_list_from_list_flatten<X, Y>(X generic_list_1, Y listsrc, Vx.Core.Func_any_from_any fn_any_from_any) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_list_flatten(generic_list_1, listsrc, fn_any_from_any);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_list_flatten e_list_from_list_flatten = new Vx.Collection.Class_list_from_list_flatten();
  public static Vx.Collection.Func_list_from_list_flatten t_list_from_list_flatten = new Vx.Collection.Class_list_from_list_flatten();

  public static X f_list_from_list_flatten<X, Y>(X generic_list_1, Y listsrc, Vx.Core.Func_any_from_any fn_any_from_any) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Core.f_let(
      generic_list_1,
      Vx.Core.t_any_from_func.vx_fn_new(() => {
        Vx.Core.Type_anylist listany = Vx.Core.f_list_from_list_1(
          Vx.Core.t_anylist,
          listsrc,
          fn_any_from_any
        );
        Vx.Core.Type_any output_1 = Vx.Core.f_new(
          generic_list_1,
          listany
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function list_from_list_join
   * Returns a list by joining the valid values in each value list
   * @param  {list-2} values
   * @return {list-1}
   * (func list<-list-join)
   */
  public interface Func_list_from_list_join : Vx.Core.Func_any_from_any {
    public X vx_list_from_list_join<X, Y>(X generic_list_1, Y values) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list;
  }

  public class Class_list_from_list_join : Vx.Core.Class_base, Func_list_from_list_join {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_list_join output = new Vx.Collection.Class_list_from_list_join();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_list_join output = new Vx.Collection.Class_list_from_list_join();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-join", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_list_join;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_list_join;
      return output;
    }

    public Vx.Core.Func_any_from_any vx_fn_new(Vx.Core.Class_any_from_any.IFn fn) {
      return Vx.Core.e_any_from_any;
    }

    public T vx_any_from_any<T, U>(T generic_any_1, U value) where T : Vx.Core.Type_any where U : Vx.Core.Type_any {
      T output = Vx.Core.f_empty(generic_any_1);
      Vx.Core.Type_list inputval = (Vx.Core.Type_list)value;
      Vx.Core.Type_any outputval = Vx.Collection.f_list_from_list_join(Vx.Core.t_list, inputval);
      output = Vx.Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_list values = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      output = Vx.Collection.f_list_from_list_join(generic_list_1, values);
      return output;
    }

    public X vx_list_from_list_join<X, Y>(X generic_list_1, Y values) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_list_join(generic_list_1, values);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_list_join e_list_from_list_join = new Vx.Collection.Class_list_from_list_join();
  public static Vx.Collection.Func_list_from_list_join t_list_from_list_join = new Vx.Collection.Class_list_from_list_join();

  public static X f_list_from_list_join<X, Y>(X generic_list_1, Y values) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.f_list_from_list_join_1(
      generic_list_1,
      values,
      Vx.Core.t_any_from_any.vx_fn_new((value_any) => {
        Vx.Core.Type_any value = Vx.Core.f_any_from_any(Vx.Core.t_any, value_any);
        Vx.Core.Type_any output_1 = value;
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function list_from_list_join 1
   * Returns a flattened list of processed items from another list
   * @param  {list-2} values
   * @param  {any<-any} fn-any<-any
   * @return {list-1}
   * (func list<-list-join)
   */
  public interface Func_list_from_list_join_1 : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_list_from_list_join_1<X, Y>(X generic_list_1, Y values, Vx.Core.Func_any_from_any fn_any_from_any) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list;
  }

  public class Class_list_from_list_join_1 : Vx.Core.Class_base, Func_list_from_list_join_1 {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_list_join_1 output = new Vx.Collection.Class_list_from_list_join_1();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_list_join_1 output = new Vx.Collection.Class_list_from_list_join_1();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-join", // name
        1, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_list_join_1;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_list_join_1;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_list values = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Func_any_from_any fn_any_from_any = Vx.Core.f_any_from_any(Vx.Core.t_any_from_any, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_list_from_list_join_1(generic_list_1, values, fn_any_from_any);
      return output;
    }

    public X vx_list_from_list_join_1<X, Y>(X generic_list_1, Y values, Vx.Core.Func_any_from_any fn_any_from_any) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_list_join_1(generic_list_1, values, fn_any_from_any);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_list_join_1 e_list_from_list_join_1 = new Vx.Collection.Class_list_from_list_join_1();
  public static Vx.Collection.Func_list_from_list_join_1 t_list_from_list_join_1 = new Vx.Collection.Class_list_from_list_join_1();

  public static X f_list_from_list_join_1<X, Y>(X generic_list_1, Y values, Vx.Core.Func_any_from_any fn_any_from_any) where X : Vx.Core.Type_list where Y : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.vx_list_from_list_join_1(generic_list_1, values, fn_any_from_any);
    return output;
  }

  /**
   * @function list_from_list_start
   * Returns a sub list from start to list end.
   * @param  {list-1} values
   * @param  {int} start
   * @return {list-1}
   * (func list<-list-start)
   */
  public interface Func_list_from_list_start : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_list_from_list_start<X>(X generic_list_1, X values, Vx.Core.Type_int start) where X : Vx.Core.Type_list;
  }

  public class Class_list_from_list_start : Vx.Core.Class_base, Func_list_from_list_start {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_list_start output = new Vx.Collection.Class_list_from_list_start();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_list_start output = new Vx.Collection.Class_list_from_list_start();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-start", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_list_start;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_list_start;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_list values = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_int start = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_list_from_list_start(generic_list_1, values, start);
      return output;
    }

    public X vx_list_from_list_start<X>(X generic_list_1, X values, Vx.Core.Type_int start) where X : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_list_start(generic_list_1, values, start);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_list_start e_list_from_list_start = new Vx.Collection.Class_list_from_list_start();
  public static Vx.Collection.Func_list_from_list_start t_list_from_list_start = new Vx.Collection.Class_list_from_list_start();

  public static X f_list_from_list_start<X>(X generic_list_1, X values, Vx.Core.Type_int start) where X : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.f_list_from_list_start_end(
      generic_list_1,
      values,
      start,
      Vx.Core.f_length_1(
        values
      )
    );
    return output;
  }

  /**
   * @function list_from_list_start_end
   * Returns a sublist from another list
   * @param  {list-1} values
   * @param  {int} start
   * @param  {int} end
   * @return {list-1}
   * (func list<-list-start-end)
   */
  public interface Func_list_from_list_start_end : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public X vx_list_from_list_start_end<X>(X generic_list_1, X values, Vx.Core.Type_int start, Vx.Core.Type_int end) where X : Vx.Core.Type_list;
  }

  public class Class_list_from_list_start_end : Vx.Core.Class_base, Func_list_from_list_start_end {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_list_from_list_start_end output = new Vx.Collection.Class_list_from_list_start_end();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_list_from_list_start_end output = new Vx.Collection.Class_list_from_list_start_end();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-start-end", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_list_from_list_start_end;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_list_from_list_start_end;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_list generic_list_1 = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_list values = Vx.Core.f_any_from_any(Vx.Core.t_list, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_int start = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(1)));
      Vx.Core.Type_int end = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(2)));
      output = Vx.Collection.f_list_from_list_start_end(generic_list_1, values, start, end);
      return output;
    }

    public X vx_list_from_list_start_end<X>(X generic_list_1, X values, Vx.Core.Type_int start, Vx.Core.Type_int end) where X : Vx.Core.Type_list {
      X output = Vx.Collection.f_list_from_list_start_end(generic_list_1, values, start, end);
      return output;
    }

  }

  public static Vx.Collection.Func_list_from_list_start_end e_list_from_list_start_end = new Vx.Collection.Class_list_from_list_start_end();
  public static Vx.Collection.Func_list_from_list_start_end t_list_from_list_start_end = new Vx.Collection.Class_list_from_list_start_end();

  public static X f_list_from_list_start_end<X>(X generic_list_1, X values, Vx.Core.Type_int start, Vx.Core.Type_int end) where X : Vx.Core.Type_list {
    X output = Vx.Core.f_empty(generic_list_1);
    output = Vx.Collection.vx_list_from_list_start_end(generic_list_1, values, start, end);
    return output;
  }

  /**
   * @function map_from_map_end
   * Returns a submap from key positions 1 to end inclusive.
   * @param  {map-1} valuemap
   * @param  {int} end
   * @return {map-1}
   * (func map<-map-end)
   */
  public interface Func_map_from_map_end : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public N vx_map_from_map_end<N>(N generic_map_1, N valuemap, Vx.Core.Type_int end) where N : Vx.Core.Type_map;
  }

  public class Class_map_from_map_end : Vx.Core.Class_base, Func_map_from_map_end {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_map_from_map_end output = new Vx.Collection.Class_map_from_map_end();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_map_from_map_end output = new Vx.Collection.Class_map_from_map_end();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "map<-map-end", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_map_from_map_end;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_map_from_map_end;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_map generic_map_1 = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_map valuemap = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_int end = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_map_from_map_end(generic_map_1, valuemap, end);
      return output;
    }

    public N vx_map_from_map_end<N>(N generic_map_1, N valuemap, Vx.Core.Type_int end) where N : Vx.Core.Type_map {
      N output = Vx.Collection.f_map_from_map_end(generic_map_1, valuemap, end);
      return output;
    }

  }

  public static Vx.Collection.Func_map_from_map_end e_map_from_map_end = new Vx.Collection.Class_map_from_map_end();
  public static Vx.Collection.Func_map_from_map_end t_map_from_map_end = new Vx.Collection.Class_map_from_map_end();

  public static N f_map_from_map_end<N>(N generic_map_1, N valuemap, Vx.Core.Type_int end) where N : Vx.Core.Type_map {
    N output = Vx.Core.f_empty(generic_map_1);
    output = Vx.Collection.f_map_from_map_start_end(
      generic_map_1,
      valuemap,
      Vx.Core.vx_new_int(1),
      end
    );
    return output;
  }

  /**
   * @function map_from_map_keys
   * Returns a submap from another map using a keylist
   * @param  {map-1} valuemap
   * @param  {stringlist} keys
   * @return {map-1}
   * (func map<-map-keys)
   */
  public interface Func_map_from_map_keys : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public N vx_map_from_map_keys<N>(N generic_map_1, N valuemap, Vx.Core.Type_stringlist keys) where N : Vx.Core.Type_map;
  }

  public class Class_map_from_map_keys : Vx.Core.Class_base, Func_map_from_map_keys {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_map_from_map_keys output = new Vx.Collection.Class_map_from_map_keys();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_map_from_map_keys output = new Vx.Collection.Class_map_from_map_keys();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "map<-map-keys", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_map_from_map_keys;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_map_from_map_keys;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_map generic_map_1 = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_map valuemap = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_stringlist keys = Vx.Core.f_any_from_any(Vx.Core.t_stringlist, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_map_from_map_keys(generic_map_1, valuemap, keys);
      return output;
    }

    public N vx_map_from_map_keys<N>(N generic_map_1, N valuemap, Vx.Core.Type_stringlist keys) where N : Vx.Core.Type_map {
      N output = Vx.Collection.f_map_from_map_keys(generic_map_1, valuemap, keys);
      return output;
    }

  }

  public static Vx.Collection.Func_map_from_map_keys e_map_from_map_keys = new Vx.Collection.Class_map_from_map_keys();
  public static Vx.Collection.Func_map_from_map_keys t_map_from_map_keys = new Vx.Collection.Class_map_from_map_keys();

  public static N f_map_from_map_keys<N>(N generic_map_1, N valuemap, Vx.Core.Type_stringlist keys) where N : Vx.Core.Type_map {
    N output = Vx.Core.f_empty(generic_map_1);
    output = Vx.Collection.vx_map_from_map_keys(generic_map_1, valuemap, keys);
    return output;
  }

  /**
   * @function map_from_map_start
   * Returns a sub map from start to map end.
   * @param  {map-1} valuemap
   * @param  {int} start
   * @return {map-1}
   * (func map<-map-start)
   */
  public interface Func_map_from_map_start : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public N vx_map_from_map_start<N>(N generic_map_1, N valuemap, Vx.Core.Type_int start) where N : Vx.Core.Type_map;
  }

  public class Class_map_from_map_start : Vx.Core.Class_base, Func_map_from_map_start {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_map_from_map_start output = new Vx.Collection.Class_map_from_map_start();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_map_from_map_start output = new Vx.Collection.Class_map_from_map_start();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "map<-map-start", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_map_from_map_start;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_map_from_map_start;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_map generic_map_1 = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_map valuemap = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_int start = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(1)));
      output = Vx.Collection.f_map_from_map_start(generic_map_1, valuemap, start);
      return output;
    }

    public N vx_map_from_map_start<N>(N generic_map_1, N valuemap, Vx.Core.Type_int start) where N : Vx.Core.Type_map {
      N output = Vx.Collection.f_map_from_map_start(generic_map_1, valuemap, start);
      return output;
    }

  }

  public static Vx.Collection.Func_map_from_map_start e_map_from_map_start = new Vx.Collection.Class_map_from_map_start();
  public static Vx.Collection.Func_map_from_map_start t_map_from_map_start = new Vx.Collection.Class_map_from_map_start();

  public static N f_map_from_map_start<N>(N generic_map_1, N valuemap, Vx.Core.Type_int start) where N : Vx.Core.Type_map {
    N output = Vx.Core.f_empty(generic_map_1);
    output = Vx.Collection.f_map_from_map_start_end(
      generic_map_1,
      valuemap,
      start,
      Vx.Core.f_length_2(
        valuemap
      )
    );
    return output;
  }

  /**
   * @function map_from_map_start_end
   * Returns a submap from another map using the index of the keylist
   * @param  {map-1} valuemap
   * @param  {int} start
   * @param  {int} end
   * @return {map-1}
   * (func map<-map-start-end)
   */
  public interface Func_map_from_map_start_end : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public N vx_map_from_map_start_end<N>(N generic_map_1, N valuemap, Vx.Core.Type_int start, Vx.Core.Type_int end) where N : Vx.Core.Type_map;
  }

  public class Class_map_from_map_start_end : Vx.Core.Class_base, Func_map_from_map_start_end {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_map_from_map_start_end output = new Vx.Collection.Class_map_from_map_start_end();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_map_from_map_start_end output = new Vx.Collection.Class_map_from_map_start_end();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "map<-map-start-end", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_map_from_map_start_end;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_map_from_map_start_end;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_map generic_map_1 = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_map valuemap = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_int start = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(1)));
      Vx.Core.Type_int end = Vx.Core.f_any_from_any(Vx.Core.t_int, arglist.vx_any(Vx.Core.vx_new_int(2)));
      output = Vx.Collection.f_map_from_map_start_end(generic_map_1, valuemap, start, end);
      return output;
    }

    public N vx_map_from_map_start_end<N>(N generic_map_1, N valuemap, Vx.Core.Type_int start, Vx.Core.Type_int end) where N : Vx.Core.Type_map {
      N output = Vx.Collection.f_map_from_map_start_end(generic_map_1, valuemap, start, end);
      return output;
    }

  }

  public static Vx.Collection.Func_map_from_map_start_end e_map_from_map_start_end = new Vx.Collection.Class_map_from_map_start_end();
  public static Vx.Collection.Func_map_from_map_start_end t_map_from_map_start_end = new Vx.Collection.Class_map_from_map_start_end();

  public static N f_map_from_map_start_end<N>(N generic_map_1, N valuemap, Vx.Core.Type_int start, Vx.Core.Type_int end) where N : Vx.Core.Type_map {
    N output = Vx.Core.f_empty(generic_map_1);
    output = Vx.Core.f_let(
      generic_map_1,
      Vx.Core.t_any_from_func.vx_fn_new(() => {
        Vx.Core.Type_stringlist keys1 = Vx.Core.f_stringlist_from_map(
          valuemap
        );
        Vx.Core.Type_stringlist keys2 = Vx.Collection.f_list_from_list_start_end(
          Vx.Core.t_stringlist,
          keys1,
          start,
          end
        );
        Vx.Core.Type_any output_1 = Vx.Collection.f_map_from_map_keys(
          generic_map_1,
          valuemap,
          keys2
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function map_from_struct
   * Returns a typed map from all the properties in a struct.
   * @param  {struct-2} structure
   * @return {map-1}
   * (func map<-struct)
   */
  public interface Func_map_from_struct : Vx.Core.Func_any_from_any {
    public N vx_map_from_struct<N, R>(N generic_map_1, R structure) where N : Vx.Core.Type_map where R : Vx.Core.Type_struct;
  }

  public class Class_map_from_struct : Vx.Core.Class_base, Func_map_from_struct {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Collection.Class_map_from_struct output = new Vx.Collection.Class_map_from_struct();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Collection.Class_map_from_struct output = new Vx.Collection.Class_map_from_struct();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/collection", // pkgname
        "map<-struct", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_any), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Collection.e_map_from_struct;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Collection.t_map_from_struct;
      return output;
    }

    public Vx.Core.Func_any_from_any vx_fn_new(Vx.Core.Class_any_from_any.IFn fn) {
      return Vx.Core.e_any_from_any;
    }

    public T vx_any_from_any<T, U>(T generic_any_1, U value) where T : Vx.Core.Type_any where U : Vx.Core.Type_any {
      T output = Vx.Core.f_empty(generic_any_1);
      Vx.Core.Type_struct inputval = (Vx.Core.Type_struct)value;
      Vx.Core.Type_any outputval = Vx.Collection.f_map_from_struct(Vx.Core.t_map, inputval);
      output = Vx.Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      Vx.Core.Type_map generic_map_1 = Vx.Core.f_any_from_any(Vx.Core.t_map, arglist.vx_any(Vx.Core.vx_new_int(0)));
      Vx.Core.Type_struct structure = Vx.Core.f_any_from_any(Vx.Core.t_struct, arglist.vx_any(Vx.Core.vx_new_int(0)));
      output = Vx.Collection.f_map_from_struct(generic_map_1, structure);
      return output;
    }

    public N vx_map_from_struct<N, R>(N generic_map_1, R structure) where N : Vx.Core.Type_map where R : Vx.Core.Type_struct {
      N output = Vx.Collection.f_map_from_struct(generic_map_1, structure);
      return output;
    }

  }

  public static Vx.Collection.Func_map_from_struct e_map_from_struct = new Vx.Collection.Class_map_from_struct();
  public static Vx.Collection.Func_map_from_struct t_map_from_struct = new Vx.Collection.Class_map_from_struct();

  public static N f_map_from_struct<N, R>(N generic_map_1, R structure) where N : Vx.Core.Type_map where R : Vx.Core.Type_struct {
    N output = Vx.Core.f_empty(generic_map_1);
    output = Vx.Core.f_let(
      generic_map_1,
      Vx.Core.t_any_from_func.vx_fn_new(() => {
        Vx.Core.Type_anymap anymap = Vx.Collection.f_anymap_from_struct(
          structure
        );
        Vx.Core.Type_any output_1 = Vx.Core.f_map_from_map(
          generic_map_1,
          anymap
        );
        return output_1;
      })
    );
    return output;
  }


  public static class PackageRunOnce {
    public static bool RunOnce() {
    Vx.Core.Map<string, Vx.Core.Type_any> maptype = new Vx.Core.LinkedHashMap<string, Vx.Core.Type_any>();
    Vx.Core.Map<string, Vx.Core.Type_any> mapconst = new Vx.Core.LinkedHashMap<string, Vx.Core.Type_any>();
    Vx.Core.Map<string, Vx.Core.Type_func> mapfunc = new Vx.Core.LinkedHashMap<string, Vx.Core.Type_func>();
    mapfunc.put("-", Vx.Collection.t_minus);
    mapfunc.put("-_1", Vx.Collection.t_minus_1);
    mapfunc.put("any<-for-until-loop", Vx.Collection.t_any_from_for_until_loop);
    mapfunc.put("any<-for-until-loop-max", Vx.Collection.t_any_from_for_until_loop_max);
    mapfunc.put("any<-for-while-loop", Vx.Collection.t_any_from_for_while_loop);
    mapfunc.put("any<-for-while-loop-max", Vx.Collection.t_any_from_for_while_loop_max);
    mapfunc.put("any<-map-pos", Vx.Collection.t_any_from_map_pos);
    mapfunc.put("anymap<-struct", Vx.Collection.t_anymap_from_struct);
    mapfunc.put("boolean-write<-map-removekey", Vx.Collection.t_boolean_write_from_map_removekey);
    mapfunc.put("boolean-write<-map-removekeys", Vx.Collection.t_boolean_write_from_map_removekeys);
    mapfunc.put("int<-map-key", Vx.Collection.t_int_from_map_key);
    mapfunc.put("int<-stringlist-find", Vx.Collection.t_int_from_stringlist_find);
    mapfunc.put("is-list", Vx.Collection.t_is_list);
    mapfunc.put("is-map", Vx.Collection.t_is_map);
    mapfunc.put("list<-for-end-loop", Vx.Collection.t_list_from_for_end_loop);
    mapfunc.put("list<-for-while-loop", Vx.Collection.t_list_from_for_while_loop);
    mapfunc.put("list<-for-while-loop-max", Vx.Collection.t_list_from_for_while_loop_max);
    mapfunc.put("list<-list-end", Vx.Collection.t_list_from_list_end);
    mapfunc.put("list<-list-filter", Vx.Collection.t_list_from_list_filter);
    mapfunc.put("list<-list-filtertypes", Vx.Collection.t_list_from_list_filtertypes);
    mapfunc.put("list<-list-flatten", Vx.Collection.t_list_from_list_flatten);
    mapfunc.put("list<-list-join", Vx.Collection.t_list_from_list_join);
    mapfunc.put("list<-list-join_1", Vx.Collection.t_list_from_list_join_1);
    mapfunc.put("list<-list-start", Vx.Collection.t_list_from_list_start);
    mapfunc.put("list<-list-start-end", Vx.Collection.t_list_from_list_start_end);
    mapfunc.put("map<-map-end", Vx.Collection.t_map_from_map_end);
    mapfunc.put("map<-map-keys", Vx.Collection.t_map_from_map_keys);
    mapfunc.put("map<-map-start", Vx.Collection.t_map_from_map_start);
    mapfunc.put("map<-map-start-end", Vx.Collection.t_map_from_map_start_end);
    mapfunc.put("map<-struct", Vx.Collection.t_map_from_struct);
    Vx.Core.vx_global_package_set("vx/collection", maptype, mapconst, mapfunc);
      return true;
    }
  }

  public static bool ranonce = PackageRunOnce.RunOnce();

}
