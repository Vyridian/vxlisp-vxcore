
import Foundation

public enum Vx_Collection {

  // vx_any_from_for_until_loop_max
  public static func vx_any_from_for_until_loop_max<T>(
    _ generic_any_1 : T,
    _ start : T,
    _ fn_until : Vx_Core.Func_boolean_from_any,
    _ fn_loop : Vx_Core.Func_any_from_any,
    _ max : Vx_Core.Type_int
  ) -> T where T : Vx_Core.Type_any {
    var output = start
    var iscontinue = true
    var icount = 0
    let imax = max.vx_int()
    while iscontinue {
      if icount >= imax {
        let path = "vx/collection/any<-for-until-loop-max"
        let code = ":loopmaximumexceeded"
        let details = Vx_Core.vx_new_int(icount)
        let msg = Vx_Core.vx_msg_from_error(path, code, details)
        output = Vx_Core.vx_copy(output, msg)
        iscontinue = false
      } else {
        icount += 1
        output = fn_loop.vx_any_from_any(generic_any_1, output)
        let valcontinue = fn_until.vx_boolean_from_any(output)
        iscontinue = !valcontinue.vx_boolean()
      }
    }
    return output
  }

  // vx_any_from_for_while_loop_max
  public static func vx_any_from_for_while_loop_max<T>(
    _ generic_any_1 : T,
    _ start : T,
    _ fn_while : any Vx_Core.Func_boolean_from_any,
    _ fn_loop : any Vx_Core.Func_any_from_any,
    _ max : any Vx_Core.Type_int
  ) -> T where T : Vx_Core.Type_any {
    var output = start
    var iscontinue = true
    var icount = 0
    let imax = max.vx_int()
    while iscontinue {
      if icount >= imax {
        let path = "vx/collection/any<-for-while-loop-max"
        let code = ":loopmaximumexceeded"
        let details = Vx_Core.vx_new_int(icount)
        let msg = Vx_Core.vx_msg_from_error(path, code, details)
        output = Vx_Core.vx_copy(output, msg)
        iscontinue = false
      } else {
        icount += 1
        let valcontinue = fn_while.vx_boolean_from_any(output)
        iscontinue = valcontinue.vx_boolean()
        if iscontinue {
          output = fn_loop.vx_any_from_any(generic_any_1, output)
        }
      }
    }
    return output
  }

  // vx_anymap_from_struct
  public static func vx_anymap_from_struct(
    _ structure : any Vx_Core.Type_struct
  ) -> Vx_Core.Type_anymap {
    let map = structure.vx_map()
    return Vx_Core.vx_new_map(Vx_Core.t_anymap, map)
  }

  // vx_list_from_for_end_loop
  public static func vx_list_from_for_end_loop<T>(
    _ generic_list_1 : T,
    _ start : any Vx_Core.Type_int,
    _ end : any Vx_Core.Type_int,
    _ fn_loop : any Vx_Core.Func_any_from_int
  ) -> T where T : Vx_Core.Type_list {
    var output = Vx_Core.f_empty(generic_list_1)
    var listvals: [Vx_Core.Type_any] = []
    let istart = start.vx_int()
    let iend = end.vx_int()
    if istart <= iend {
      for i in istart...iend {
        let val = fn_loop.vx_any_from_int(Vx_Core.t_any, Vx_Core.vx_new_int(i))
        listvals.append(val)
      }
    } else {
      for i in stride(from: istart, through: iend, by: -1) {
        let val = fn_loop.vx_any_from_int(Vx_Core.t_any, Vx_Core.vx_new_int(i))
        listvals.append(val)
      }
    }
    if !listvals.isEmpty {
      let anylist = Vx_Core.vx_new(Vx_Core.t_anylist, listvals)
      output = Vx_Core.f_new(generic_list_1, anylist)
    }
    return output
  }

  // vx_list_from_for_while_loop_max
  public static func vx_list_from_for_while_loop_max<T>(
    _ generic_list_1 : T,
    _ start : any Vx_Core.Type_any,
    _ fn_while : any Vx_Core.Func_boolean_from_any,
    _ fn_loop : any Vx_Core.Func_any_from_any,
    _ max : any Vx_Core.Type_int
  ) -> T where T : Vx_Core.Type_list {
    var output = Vx_Core.f_empty(generic_list_1)
    var listvals: [Vx_Core.Type_any] = []
    var iscontinue = true
    var icount = 0
    let imax = max.vx_int()
    var work = start
    while iscontinue {
      if icount >= imax {
        let path = "vx/collection/list<-for-while-loop-max"
        let code = ":loopmaximumexceeded"
        let details = Vx_Core.vx_new_int(icount)
        let msg = Vx_Core.vx_msg_from_error(path, code, details)
        output = Vx_Core.vx_copy(output, msg)
        iscontinue = false
      } else {
        let valwhile = fn_while.vx_boolean_from_any(work)
        iscontinue = !valwhile.vx_boolean()
        if iscontinue {
          icount += 1
          work = fn_loop.vx_any_from_any(Vx_Core.t_any, work)
          listvals.append(work)
        }
      }
    }
    if !listvals.isEmpty {
      let anylist = Vx_Core.vx_new(Vx_Core.t_anylist, listvals)
      output = Vx_Core.f_new(generic_list_1, anylist)
    }
    return output
  }

  // vx_list_from_list_filter
  public static func vx_list_from_list_filter<T>(
    _ generic_list_1 : T,
    _ vallist : any Vx_Core.Type_list,
    _ fn_filter : any Vx_Core.Func_any_from_any
  ) -> T where T : Vx_Core.Type_list {
    var output = Vx_Core.f_empty(generic_list_1)
    let listval = vallist.vx_list()
    var items: [Vx_Core.Type_any] = []
    for val in listval {
      let newval = fn_filter.vx_any_from_any(Vx_Core.t_any, val)
      let isempty = Vx_Core.f_is_empty_1(newval)
      if !isempty.vx_boolean() {
        items.append(newval)
      }
    }
    output = Vx_Core.vx_new(generic_list_1, items)
    return output
  }

  // vx_list_from_list_join_1
  public static func vx_list_from_list_join_1<X, Y>(
    _ generic_list_1 : X,
    _ values : Y,
    _ fn_any_from_any : any Vx_Core.Func_any_from_any
  ) -> X where X : Vx_Core.Type_list, Y : Vx_Core.Type_list {
    var output = Vx_Core.f_empty(generic_list_1)
    let list_value = values.vx_list()
    var list_result : [Vx_Core.Type_any] = []
    for val in list_value {
      let listoflist = fn_any_from_any.vx_any_from_any(generic_list_1, val)
      if let vallist = listoflist as? Vx_Core.Type_list {
        list_result.append(contentsOf: vallist.vx_list())
      }
    }
    output = Vx_Core.f_any_from_any(generic_list_1, generic_list_1.vx_new(list_result))
    return output
  }

  // vx_list_from_list_start_end
  public static func vx_list_from_list_start_end<T>(
    _ generic_list_1 : T,
    _ values : any Vx_Core.Type_list,
    _ start : any Vx_Core.Type_int,
    _ end : any Vx_Core.Type_int
  ) -> T where T : Vx_Core.Type_list {
    var output = Vx_Core.f_empty(generic_list_1)
    let listval = values.vx_list()
    let istart = start.vx_int()
    var iend = end.vx_int()
    let maxlen = listval.count
    if iend < 0 {
      iend += maxlen
    }
    guard istart >= 1 && istart <= iend && istart <= maxlen else {
      return output
    }
    if iend > maxlen {
      iend = maxlen
    }
    let sublist = Array(listval[(istart-1)..<iend])
    output = Vx_Core.vx_new(generic_list_1, sublist)
    return output
  }

  // vx_map_from_map_keys
  public static func vx_map_from_map_keys<T>(
    _ generic_map_1 : T,
    _ valuemap : any Vx_Core.Type_map,
    _ keys : any Vx_Core.Type_stringlist
  ) -> T where T : Vx_Core.Type_map {
    var output = Vx_Core.f_empty(generic_map_1)
    let keylist = keys.vx_liststring()
    guard !keylist.isEmpty else {
      return output
    }
    let map = valuemap.vx_map()
    var values: [any Vx_Core.Type_any] = []
    for key in keylist {
      let value = map.getOrElse(key.vx_string(), Vx_Core.e_any)
      values.append(key)
      values.append(value)
    }
    output = Vx_Core.f_new(generic_map_1, values)
    return output
  }


  public protocol Func_minus : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_minus<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ listmain_generic : any Vx_Core.Type_list,
      _ listremove_generic : any Vx_Core.Type_list
    ) -> X
  }

  public class Class_minus : Vx_Core.Class_base, Func_minus {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_minus = Vx_Collection.Class_minus()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_minus = Vx_Collection.Class_minus()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "-", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_minus
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_minus
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let listmain : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let listremove : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_minus(generic_list_1, listmain, listremove)
      return output
    }

    public func vx_minus<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ listmain_generic : any Vx_Core.Type_list,
      _ listremove_generic : any Vx_Core.Type_list
    ) -> X {
      let listmain = Vx_Core.vx_any_from_any(generic_list_1, listmain_generic)
      let listremove = Vx_Core.vx_any_from_any(generic_list_1, listremove_generic)
      let output : X = Vx_Collection.f_minus(generic_list_1, listmain, listremove)
      return output
    }

  }

  public static let e_minus : any Vx_Collection.Func_minus = Vx_Collection.Class_minus()
  public static let t_minus : any Vx_Collection.Func_minus = Vx_Collection.Class_minus()

  public static func f_minus<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ listmain_generic : any Vx_Core.Type_list,
    _ listremove_generic : any Vx_Core.Type_list
  ) -> X {
    let listmain = Vx_Core.vx_any_from_any(generic_list_1, listmain_generic)
    let listremove = Vx_Core.vx_any_from_any(generic_list_1, listremove_generic)
    var output : X = Vx_Core.f_empty(generic_list_1)
    output = Vx_Collection.f_list_from_list_filter(
      generic_list_1,
      listmain,
      Vx_Core.t_any_from_any.vx_fn_new({(item_any) in
        let item : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, item_any)
        var output_1 : any Vx_Core.Type_any = Vx_Core.f_if_2(
          Vx_Core.t_any,
          Vx_Core.vx_new(
            Vx_Core.t_thenelselist,
            Vx_Core.f_then(
              Vx_Core.t_boolean_from_func.vx_fn_new({() in
                var output_2 : any Vx_Core.Type_any = Vx_Core.f_not(
                  Vx_Core.f_contains_1(
                    listremove,
                    item
                  )
                )
                return output_2
              }),
              Vx_Core.t_any_from_func.vx_fn_new({() in
                let output_3 : any Vx_Core.Type_any = item
                return output_3
              })
            )
          )
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_minus_1 : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_minus_1<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ mapmain_generic : any Vx_Core.Type_map,
      _ mapremove_generic : any Vx_Core.Type_map
    ) -> N
  }

  public class Class_minus_1 : Vx_Core.Class_base, Func_minus_1 {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_minus_1 = Vx_Collection.Class_minus_1()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_minus_1 = Vx_Collection.Class_minus_1()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "-", // name
        1, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_minus_1
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_minus_1
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_map_1 : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let mapmain : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let mapremove : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_minus_1(generic_map_1, mapmain, mapremove)
      return output
    }

    public func vx_minus_1<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ mapmain_generic : any Vx_Core.Type_map,
      _ mapremove_generic : any Vx_Core.Type_map
    ) -> N {
      let mapmain = Vx_Core.vx_any_from_any(generic_map_1, mapmain_generic)
      let mapremove = Vx_Core.vx_any_from_any(generic_map_1, mapremove_generic)
      let output : N = Vx_Collection.f_minus_1(generic_map_1, mapmain, mapremove)
      return output
    }

  }

  public static let e_minus_1 : any Vx_Collection.Func_minus_1 = Vx_Collection.Class_minus_1()
  public static let t_minus_1 : any Vx_Collection.Func_minus_1 = Vx_Collection.Class_minus_1()

  public static func f_minus_1<N : Vx_Core.Type_map>(
    _ generic_map_1 : N,
    _ mapmain_generic : any Vx_Core.Type_map,
    _ mapremove_generic : any Vx_Core.Type_map
  ) -> N {
    let mapmain = Vx_Core.vx_any_from_any(generic_map_1, mapmain_generic)
    let mapremove = Vx_Core.vx_any_from_any(generic_map_1, mapremove_generic)
    var output : N = Vx_Core.f_empty(generic_map_1)
    output = Vx_Core.f_let(
      generic_map_1,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let keysmain : any Vx_Core.Type_stringlist = Vx_Core.f_stringlist_from_map(
          mapmain
        )
        let keysremove : any Vx_Core.Type_stringlist = Vx_Core.f_stringlist_from_map(
          mapremove
        )
        let keysremain : any Vx_Core.Type_stringlist = Vx_Collection.f_minus(
          Vx_Core.t_stringlist,
          keysmain,
          keysremove
        )
        let output_1 : any Vx_Core.Type_any = Vx_Collection.f_map_from_map_keys(
          generic_map_1,
          mapmain,
          keysremain
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_any_from_for_until_loop : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_any_from_for_until_loop<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ start_generic : any Vx_Core.Type_any,
      _ fn_until : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any
    ) -> T
  }

  public class Class_any_from_for_until_loop : Vx_Core.Class_base, Func_any_from_for_until_loop {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_any_from_for_until_loop = Vx_Collection.Class_any_from_for_until_loop()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_any_from_for_until_loop = Vx_Collection.Class_any_from_for_until_loop()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "any<-for-until-loop", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
          "", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_any_from_for_until_loop
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_any_from_for_until_loop
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_any_1 : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let fn_until : any Vx_Core.Func_boolean_from_any = Vx_Core.f_any_from_any(Vx_Core.t_boolean_from_any, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let fn_loop : any Vx_Core.Func_any_from_any = Vx_Core.f_any_from_any(Vx_Core.t_any_from_any, arglist.vx_any(Vx_Core.vx_new_int(2)))
      output = Vx_Collection.f_any_from_for_until_loop(generic_any_1, start, fn_until, fn_loop)
      return output
    }

    public func vx_any_from_for_until_loop<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ start_generic : any Vx_Core.Type_any,
      _ fn_until : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any
    ) -> T {
      let start = Vx_Core.vx_any_from_any(generic_any_1, start_generic)
      let output : T = Vx_Collection.f_any_from_for_until_loop(generic_any_1, start, fn_until, fn_loop)
      return output
    }

  }

  public static let e_any_from_for_until_loop : any Vx_Collection.Func_any_from_for_until_loop = Vx_Collection.Class_any_from_for_until_loop()
  public static let t_any_from_for_until_loop : any Vx_Collection.Func_any_from_for_until_loop = Vx_Collection.Class_any_from_for_until_loop()

  public static func f_any_from_for_until_loop<T : Vx_Core.Type_any>(
    _ generic_any_1 : T,
    _ start_generic : any Vx_Core.Type_any,
    _ fn_until : any Vx_Core.Func_boolean_from_any,
    _ fn_loop : any Vx_Core.Func_any_from_any
  ) -> T {
    let start = Vx_Core.vx_any_from_any(generic_any_1, start_generic)
    var output : T = Vx_Core.f_empty(generic_any_1)
    output = Vx_Collection.f_any_from_for_until_loop_max(
      generic_any_1,
      start,
      fn_until,
      fn_loop,
      Vx_Core.vx_new_int(10000)
    )
    return output
  }


  public protocol Func_any_from_for_until_loop_max : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_any_from_for_until_loop_max<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ start_generic : any Vx_Core.Type_any,
      _ fn_until : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any,
      _ max : any Vx_Core.Type_int
    ) -> T
  }

  public class Class_any_from_for_until_loop_max : Vx_Core.Class_base, Func_any_from_for_until_loop_max {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_any_from_for_until_loop_max = Vx_Collection.Class_any_from_for_until_loop_max()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_any_from_for_until_loop_max = Vx_Collection.Class_any_from_for_until_loop_max()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "any<-for-until-loop-max", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
          "", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_any_from_for_until_loop_max
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_any_from_for_until_loop_max
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_any_1 : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let fn_until : any Vx_Core.Func_boolean_from_any = Vx_Core.f_any_from_any(Vx_Core.t_boolean_from_any, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let fn_loop : any Vx_Core.Func_any_from_any = Vx_Core.f_any_from_any(Vx_Core.t_any_from_any, arglist.vx_any(Vx_Core.vx_new_int(2)))
      let max : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(3)))
      output = Vx_Collection.f_any_from_for_until_loop_max(generic_any_1, start, fn_until, fn_loop, max)
      return output
    }

    public func vx_any_from_for_until_loop_max<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ start_generic : any Vx_Core.Type_any,
      _ fn_until : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any,
      _ max : any Vx_Core.Type_int
    ) -> T {
      let start = Vx_Core.vx_any_from_any(generic_any_1, start_generic)
      let output : T = Vx_Collection.f_any_from_for_until_loop_max(generic_any_1, start, fn_until, fn_loop, max)
      return output
    }

  }

  public static let e_any_from_for_until_loop_max : any Vx_Collection.Func_any_from_for_until_loop_max = Vx_Collection.Class_any_from_for_until_loop_max()
  public static let t_any_from_for_until_loop_max : any Vx_Collection.Func_any_from_for_until_loop_max = Vx_Collection.Class_any_from_for_until_loop_max()

  public static func f_any_from_for_until_loop_max<T : Vx_Core.Type_any>(
    _ generic_any_1 : T,
    _ start_generic : any Vx_Core.Type_any,
    _ fn_until : any Vx_Core.Func_boolean_from_any,
    _ fn_loop : any Vx_Core.Func_any_from_any,
    _ max : any Vx_Core.Type_int
  ) -> T {
    let start = Vx_Core.vx_any_from_any(generic_any_1, start_generic)
    let output = Vx_Collection.vx_any_from_for_until_loop_max(generic_any_1, start, fn_until, fn_loop, max)
    return output
  }


  public protocol Func_any_from_for_while_loop : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_any_from_for_while_loop<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ start_generic : any Vx_Core.Type_any,
      _ fn_while : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any
    ) -> T
  }

  public class Class_any_from_for_while_loop : Vx_Core.Class_base, Func_any_from_for_while_loop {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_any_from_for_while_loop = Vx_Collection.Class_any_from_for_while_loop()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_any_from_for_while_loop = Vx_Collection.Class_any_from_for_while_loop()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "any<-for-while-loop", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
          "", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_any_from_for_while_loop
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_any_from_for_while_loop
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_any_1 : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let fn_while : any Vx_Core.Func_boolean_from_any = Vx_Core.f_any_from_any(Vx_Core.t_boolean_from_any, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let fn_loop : any Vx_Core.Func_any_from_any = Vx_Core.f_any_from_any(Vx_Core.t_any_from_any, arglist.vx_any(Vx_Core.vx_new_int(2)))
      output = Vx_Collection.f_any_from_for_while_loop(generic_any_1, start, fn_while, fn_loop)
      return output
    }

    public func vx_any_from_for_while_loop<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ start_generic : any Vx_Core.Type_any,
      _ fn_while : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any
    ) -> T {
      let start = Vx_Core.vx_any_from_any(generic_any_1, start_generic)
      let output : T = Vx_Collection.f_any_from_for_while_loop(generic_any_1, start, fn_while, fn_loop)
      return output
    }

  }

  public static let e_any_from_for_while_loop : any Vx_Collection.Func_any_from_for_while_loop = Vx_Collection.Class_any_from_for_while_loop()
  public static let t_any_from_for_while_loop : any Vx_Collection.Func_any_from_for_while_loop = Vx_Collection.Class_any_from_for_while_loop()

  public static func f_any_from_for_while_loop<T : Vx_Core.Type_any>(
    _ generic_any_1 : T,
    _ start_generic : any Vx_Core.Type_any,
    _ fn_while : any Vx_Core.Func_boolean_from_any,
    _ fn_loop : any Vx_Core.Func_any_from_any
  ) -> T {
    let start = Vx_Core.vx_any_from_any(generic_any_1, start_generic)
    var output : T = Vx_Core.f_empty(generic_any_1)
    output = Vx_Collection.f_any_from_for_while_loop_max(
      generic_any_1,
      start,
      fn_while,
      fn_loop,
      Vx_Core.vx_new_int(1000)
    )
    return output
  }


  public protocol Func_any_from_for_while_loop_max : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_any_from_for_while_loop_max<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ start_generic : any Vx_Core.Type_any,
      _ fn_while : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any,
      _ max : any Vx_Core.Type_int
    ) -> T
  }

  public class Class_any_from_for_while_loop_max : Vx_Core.Class_base, Func_any_from_for_while_loop_max {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_any_from_for_while_loop_max = Vx_Collection.Class_any_from_for_while_loop_max()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_any_from_for_while_loop_max = Vx_Collection.Class_any_from_for_while_loop_max()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "any<-for-while-loop-max", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
          "", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_any_from_for_while_loop_max
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_any_from_for_while_loop_max
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_any_1 : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let fn_while : any Vx_Core.Func_boolean_from_any = Vx_Core.f_any_from_any(Vx_Core.t_boolean_from_any, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let fn_loop : any Vx_Core.Func_any_from_any = Vx_Core.f_any_from_any(Vx_Core.t_any_from_any, arglist.vx_any(Vx_Core.vx_new_int(2)))
      let max : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(3)))
      output = Vx_Collection.f_any_from_for_while_loop_max(generic_any_1, start, fn_while, fn_loop, max)
      return output
    }

    public func vx_any_from_for_while_loop_max<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ start_generic : any Vx_Core.Type_any,
      _ fn_while : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any,
      _ max : any Vx_Core.Type_int
    ) -> T {
      let start = Vx_Core.vx_any_from_any(generic_any_1, start_generic)
      let output : T = Vx_Collection.f_any_from_for_while_loop_max(generic_any_1, start, fn_while, fn_loop, max)
      return output
    }

  }

  public static let e_any_from_for_while_loop_max : any Vx_Collection.Func_any_from_for_while_loop_max = Vx_Collection.Class_any_from_for_while_loop_max()
  public static let t_any_from_for_while_loop_max : any Vx_Collection.Func_any_from_for_while_loop_max = Vx_Collection.Class_any_from_for_while_loop_max()

  public static func f_any_from_for_while_loop_max<T : Vx_Core.Type_any>(
    _ generic_any_1 : T,
    _ start_generic : any Vx_Core.Type_any,
    _ fn_while : any Vx_Core.Func_boolean_from_any,
    _ fn_loop : any Vx_Core.Func_any_from_any,
    _ max : any Vx_Core.Type_int
  ) -> T {
    let start = Vx_Core.vx_any_from_any(generic_any_1, start_generic)
    let output = Vx_Collection.vx_any_from_for_while_loop_max(generic_any_1, start, fn_while, fn_loop, max)
    return output
  }


  public protocol Func_any_from_map_pos : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_any_from_map_pos<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ map : any Vx_Core.Type_map,
      _ pos : any Vx_Core.Type_int
    ) -> T
  }

  public class Class_any_from_map_pos : Vx_Core.Class_base, Func_any_from_map_pos {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_any_from_map_pos = Vx_Collection.Class_any_from_map_pos()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_any_from_map_pos = Vx_Collection.Class_any_from_map_pos()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "any<-map-pos", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
          "", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_any_from_map_pos
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_any_from_map_pos
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_any_1 : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let map : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let pos : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_any_from_map_pos(generic_any_1, map, pos)
      return output
    }

    public func vx_any_from_map_pos<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ map : any Vx_Core.Type_map,
      _ pos : any Vx_Core.Type_int
    ) -> T {
      let output : T = Vx_Collection.f_any_from_map_pos(generic_any_1, map, pos)
      return output
    }

  }

  public static let e_any_from_map_pos : any Vx_Collection.Func_any_from_map_pos = Vx_Collection.Class_any_from_map_pos()
  public static let t_any_from_map_pos : any Vx_Collection.Func_any_from_map_pos = Vx_Collection.Class_any_from_map_pos()

  public static func f_any_from_map_pos<T : Vx_Core.Type_any>(
    _ generic_any_1 : T,
    _ map : any Vx_Core.Type_map,
    _ pos : any Vx_Core.Type_int
  ) -> T {
    var output : T = Vx_Core.f_empty(generic_any_1)
    output = Vx_Core.f_let(
      generic_any_1,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let keys : any Vx_Core.Type_stringlist = Vx_Core.f_stringlist_from_map(
          map
        )
        let key : any Vx_Core.Type_string = Vx_Core.f_any_from_list(
          Vx_Core.t_string,
          keys,
          pos
        )
        let output_1 : any Vx_Core.Type_any = Vx_Core.f_any_from_map(
          generic_any_1,
          map,
          key
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_anymap_from_struct : Vx_Core.Func_any_from_any, AnyObject {
    func vx_anymap_from_struct(
      _ structure : any Vx_Core.Type_struct
    ) -> any Vx_Core.Type_anymap
  }

  public class Class_anymap_from_struct : Vx_Core.Class_base, Func_anymap_from_struct {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_anymap_from_struct = Vx_Collection.Class_anymap_from_struct()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_anymap_from_struct = Vx_Collection.Class_anymap_from_struct()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "anymap<-struct", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "anymap", // name
          ":map", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_anymap_from_struct
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_anymap_from_struct
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any.IFn) -> Vx_Core.Func_any_from_any {
      return Vx_Core.e_any_from_any
    }

    public func vx_any_from_any<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> T {
      var output : T = Vx_Core.f_empty(generic_any_1)
      let inputval : any Vx_Core.Type_struct = value as! any Vx_Core.Type_struct
      let outputval : any Vx_Core.Type_any = Vx_Collection.f_anymap_from_struct(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let structure : any Vx_Core.Type_struct = Vx_Core.f_any_from_any(Vx_Core.t_struct, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Collection.f_anymap_from_struct(structure)
      return output
    }

    public func vx_anymap_from_struct(
      _ structure : any Vx_Core.Type_struct
    ) -> any Vx_Core.Type_anymap {
      let output : any Vx_Core.Type_anymap = Vx_Collection.f_anymap_from_struct(structure)
      return output
    }

  }

  public static let e_anymap_from_struct : any Vx_Collection.Func_anymap_from_struct = Vx_Collection.Class_anymap_from_struct()
  public static let t_anymap_from_struct : any Vx_Collection.Func_anymap_from_struct = Vx_Collection.Class_anymap_from_struct()

  public static func f_anymap_from_struct(
    _ structure : any Vx_Core.Type_struct
  ) -> any Vx_Core.Type_anymap {
    var output : any Vx_Core.Type_anymap = Vx_Core.e_anymap
    output = Vx_Collection.vx_anymap_from_struct(structure)
    return output
  }


  public protocol Func_boolean_write_from_map_removekey : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_boolean_write_from_map_removekey(
      _ valuemap : any Vx_Core.Type_map,
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_boolean_write_from_map_removekey : Vx_Core.Class_base, Func_boolean_write_from_map_removekey {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_boolean_write_from_map_removekey = Vx_Collection.Class_boolean_write_from_map_removekey()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_boolean_write_from_map_removekey = Vx_Collection.Class_boolean_write_from_map_removekey()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "boolean-write<-map-removekey", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_boolean_write_from_map_removekey
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_boolean_write_from_map_removekey
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let valuemap : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let key : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_boolean_write_from_map_removekey(valuemap, key)
      return output
    }

    public func vx_boolean_write_from_map_removekey(
      _ valuemap : any Vx_Core.Type_map,
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Collection.f_boolean_write_from_map_removekey(valuemap, key)
      return output
    }

  }

  public static let e_boolean_write_from_map_removekey : any Vx_Collection.Func_boolean_write_from_map_removekey = Vx_Collection.Class_boolean_write_from_map_removekey()
  public static let t_boolean_write_from_map_removekey : any Vx_Collection.Func_boolean_write_from_map_removekey = Vx_Collection.Class_boolean_write_from_map_removekey()

  public static func f_boolean_write_from_map_removekey(
    _ valuemap : any Vx_Core.Type_map,
    _ key : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Core.f_boolean_write_from_map_name_value(
      valuemap,
      key,
      Vx_Core.f_empty(
        Vx_Core.t_any
      )
    )
    return output
  }


  public protocol Func_boolean_write_from_map_removekeys : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_boolean_write_from_map_removekeys(
      _ valuemap : any Vx_Core.Type_map,
      _ keys : any Vx_Core.Type_stringlist
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_boolean_write_from_map_removekeys : Vx_Core.Class_base, Func_boolean_write_from_map_removekeys {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_boolean_write_from_map_removekeys = Vx_Collection.Class_boolean_write_from_map_removekeys()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_boolean_write_from_map_removekeys = Vx_Collection.Class_boolean_write_from_map_removekeys()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "boolean-write<-map-removekeys", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_boolean_write_from_map_removekeys
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_boolean_write_from_map_removekeys
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let valuemap : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let keys : any Vx_Core.Type_stringlist = Vx_Core.f_any_from_any(Vx_Core.t_stringlist, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_boolean_write_from_map_removekeys(valuemap, keys)
      return output
    }

    public func vx_boolean_write_from_map_removekeys(
      _ valuemap : any Vx_Core.Type_map,
      _ keys : any Vx_Core.Type_stringlist
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Collection.f_boolean_write_from_map_removekeys(valuemap, keys)
      return output
    }

  }

  public static let e_boolean_write_from_map_removekeys : any Vx_Collection.Func_boolean_write_from_map_removekeys = Vx_Collection.Class_boolean_write_from_map_removekeys()
  public static let t_boolean_write_from_map_removekeys : any Vx_Collection.Func_boolean_write_from_map_removekeys = Vx_Collection.Class_boolean_write_from_map_removekeys()

  public static func f_boolean_write_from_map_removekeys(
    _ valuemap : any Vx_Core.Type_map,
    _ keys : any Vx_Core.Type_stringlist
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Core.f_let(
      Vx_Core.t_boolean,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let writelist : any Vx_Core.Type_booleanlist = Vx_Core.f_list_from_list_1(
          Vx_Core.t_booleanlist,
          keys,
          Vx_Core.t_any_from_any.vx_fn_new({(key_any) in
            let key : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, key_any)
            var output_2 : any Vx_Core.Type_any = Vx_Collection.f_boolean_write_from_map_removekey(
              valuemap,
              key
            )
            return output_2
          })
        )
        let output_1 : any Vx_Core.Type_any = Vx_Core.f_and_1(
          writelist
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_int_from_map_key : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_int_from_map_key(
      _ map : any Vx_Core.Type_map,
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_int
  }

  public class Class_int_from_map_key : Vx_Core.Class_base, Func_int_from_map_key {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_int_from_map_key = Vx_Collection.Class_int_from_map_key()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_int_from_map_key = Vx_Collection.Class_int_from_map_key()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "int<-map-key", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "int", // name
          "", // extends
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_number), // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_int_from_map_key
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_int_from_map_key
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let map : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let key : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_int_from_map_key(map, key)
      return output
    }

    public func vx_int_from_map_key(
      _ map : any Vx_Core.Type_map,
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_int {
      let output : any Vx_Core.Type_int = Vx_Collection.f_int_from_map_key(map, key)
      return output
    }

  }

  public static let e_int_from_map_key : any Vx_Collection.Func_int_from_map_key = Vx_Collection.Class_int_from_map_key()
  public static let t_int_from_map_key : any Vx_Collection.Func_int_from_map_key = Vx_Collection.Class_int_from_map_key()

  public static func f_int_from_map_key(
    _ map : any Vx_Core.Type_map,
    _ key : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_int {
    var output : any Vx_Core.Type_int = Vx_Core.e_int
    output = Vx_Core.f_let(
      Vx_Core.t_int,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let keys : any Vx_Core.Type_stringlist = Vx_Core.f_stringlist_from_map(
          map
        )
        let output_1 : any Vx_Core.Type_any = Vx_Collection.f_int_from_stringlist_find(
          keys,
          key
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_int_from_stringlist_find : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_int_from_stringlist_find(
      _ stringlist : any Vx_Core.Type_stringlist,
      _ find : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_int
  }

  public class Class_int_from_stringlist_find : Vx_Core.Class_base, Func_int_from_stringlist_find {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_int_from_stringlist_find = Vx_Collection.Class_int_from_stringlist_find()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_int_from_stringlist_find = Vx_Collection.Class_int_from_stringlist_find()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "int<-stringlist-find", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "int", // name
          "", // extends
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_number), // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_int_from_stringlist_find
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_int_from_stringlist_find
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let stringlist : any Vx_Core.Type_stringlist = Vx_Core.f_any_from_any(Vx_Core.t_stringlist, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let find : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_int_from_stringlist_find(stringlist, find)
      return output
    }

    public func vx_int_from_stringlist_find(
      _ stringlist : any Vx_Core.Type_stringlist,
      _ find : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_int {
      let output : any Vx_Core.Type_int = Vx_Collection.f_int_from_stringlist_find(stringlist, find)
      return output
    }

  }

  public static let e_int_from_stringlist_find : any Vx_Collection.Func_int_from_stringlist_find = Vx_Collection.Class_int_from_stringlist_find()
  public static let t_int_from_stringlist_find : any Vx_Collection.Func_int_from_stringlist_find = Vx_Collection.Class_int_from_stringlist_find()

  public static func f_int_from_stringlist_find(
    _ stringlist : any Vx_Core.Type_stringlist,
    _ find : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_int {
    var output : any Vx_Core.Type_int = Vx_Core.e_int
    output = Vx_Core.f_let(
      Vx_Core.t_int,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let poslist : any Vx_Core.Type_intlist = Vx_Core.f_list_from_list_intany(
          Vx_Core.t_intlist,
          stringlist,
          Vx_Core.t_any_from_int_any.vx_fn_new({(pos_any, value_any) in
            let pos : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, pos_any)
            let value : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, value_any)
            var output_2 : any Vx_Core.Type_any = Vx_Core.f_if_1(
              Vx_Core.t_int,
              Vx_Core.f_eq(
                find,
                value
              ),
              pos,
              Vx_Core.vx_new_int(0)
            )
            return output_2
          })
        )
        let gt0list : any Vx_Core.Type_intlist = Vx_Collection.f_list_from_list_filter(
          Vx_Core.t_intlist,
          poslist,
          Vx_Core.t_any_from_any.vx_fn_new({(item_any) in
            let item : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, item_any)
            var output_3 : any Vx_Core.Type_any = item
            return output_3
          })
        )
        let output_1 : any Vx_Core.Type_any = Vx_Core.f_first_from_list(
          Vx_Core.t_int,
          gt0list
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_is_list : Vx_Core.Func_any_from_any, AnyObject {
    func vx_is_list(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_is_list : Vx_Core.Class_base, Func_is_list {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_is_list = Vx_Collection.Class_is_list()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_is_list = Vx_Collection.Class_is_list()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "is-list", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_is_list
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_is_list
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any.IFn) -> Vx_Core.Func_any_from_any {
      return Vx_Core.e_any_from_any
    }

    public func vx_any_from_any<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> T {
      var output : T = Vx_Core.f_empty(generic_any_1)
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Collection.f_is_list(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Collection.f_is_list(value)
      return output
    }

    public func vx_is_list(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Collection.f_is_list(value)
      return output
    }

  }

  public static let e_is_list : any Vx_Collection.Func_is_list = Vx_Collection.Class_is_list()
  public static let t_is_list : any Vx_Collection.Func_is_list = Vx_Collection.Class_is_list()

  public static func f_is_list(
    _ value : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Core.f_eq(
      Vx_Core.vx_new_string(":list"),
      Vx_Core.f_extends_from_any(
        value
      )
    )
    return output
  }


  public protocol Func_is_map : Vx_Core.Func_any_from_any, AnyObject {
    func vx_is_map(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_is_map : Vx_Core.Class_base, Func_is_map {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_is_map = Vx_Collection.Class_is_map()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_is_map = Vx_Collection.Class_is_map()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "is-map", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_is_map
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_is_map
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any.IFn) -> Vx_Core.Func_any_from_any {
      return Vx_Core.e_any_from_any
    }

    public func vx_any_from_any<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> T {
      var output : T = Vx_Core.f_empty(generic_any_1)
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Collection.f_is_map(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Collection.f_is_map(value)
      return output
    }

    public func vx_is_map(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Collection.f_is_map(value)
      return output
    }

  }

  public static let e_is_map : any Vx_Collection.Func_is_map = Vx_Collection.Class_is_map()
  public static let t_is_map : any Vx_Collection.Func_is_map = Vx_Collection.Class_is_map()

  public static func f_is_map(
    _ value : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Core.f_eq(
      Vx_Core.vx_new_string(":map"),
      Vx_Core.f_extends_from_any(
        value
      )
    )
    return output
  }


  public protocol Func_list_from_for_end_loop : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_list_from_for_end_loop<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ start : any Vx_Core.Type_int,
      _ end : any Vx_Core.Type_int,
      _ fn_loop : any Vx_Core.Func_any_from_int
    ) -> X
  }

  public class Class_list_from_for_end_loop : Vx_Core.Class_base, Func_list_from_for_end_loop {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_for_end_loop = Vx_Collection.Class_list_from_for_end_loop()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_for_end_loop = Vx_Collection.Class_list_from_for_end_loop()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-for-end-loop", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_for_end_loop
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_for_end_loop
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let end : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let fn_loop : any Vx_Core.Func_any_from_int = Vx_Core.f_any_from_any(Vx_Core.t_any_from_int, arglist.vx_any(Vx_Core.vx_new_int(2)))
      output = Vx_Collection.f_list_from_for_end_loop(generic_list_1, start, end, fn_loop)
      return output
    }

    public func vx_list_from_for_end_loop<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ start : any Vx_Core.Type_int,
      _ end : any Vx_Core.Type_int,
      _ fn_loop : any Vx_Core.Func_any_from_int
    ) -> X {
      let output : X = Vx_Collection.f_list_from_for_end_loop(generic_list_1, start, end, fn_loop)
      return output
    }

  }

  public static let e_list_from_for_end_loop : any Vx_Collection.Func_list_from_for_end_loop = Vx_Collection.Class_list_from_for_end_loop()
  public static let t_list_from_for_end_loop : any Vx_Collection.Func_list_from_for_end_loop = Vx_Collection.Class_list_from_for_end_loop()

  public static func f_list_from_for_end_loop<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ start : any Vx_Core.Type_int,
    _ end : any Vx_Core.Type_int,
    _ fn_loop : any Vx_Core.Func_any_from_int
  ) -> X {
    let output = Vx_Collection.vx_list_from_for_end_loop(generic_list_1, start, end, fn_loop)
    return output
  }


  public protocol Func_list_from_for_while_loop : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_list_from_for_while_loop<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ start : any Vx_Core.Type_any,
      _ fn_while : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any
    ) -> X
  }

  public class Class_list_from_for_while_loop : Vx_Core.Class_base, Func_list_from_for_while_loop {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_for_while_loop = Vx_Collection.Class_list_from_for_while_loop()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_for_while_loop = Vx_Collection.Class_list_from_for_while_loop()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-for-while-loop", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_for_while_loop
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_for_while_loop
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let fn_while : any Vx_Core.Func_boolean_from_any = Vx_Core.f_any_from_any(Vx_Core.t_boolean_from_any, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let fn_loop : any Vx_Core.Func_any_from_any = Vx_Core.f_any_from_any(Vx_Core.t_any_from_any, arglist.vx_any(Vx_Core.vx_new_int(2)))
      output = Vx_Collection.f_list_from_for_while_loop(generic_list_1, start, fn_while, fn_loop)
      return output
    }

    public func vx_list_from_for_while_loop<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ start : any Vx_Core.Type_any,
      _ fn_while : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any
    ) -> X {
      let output : X = Vx_Collection.f_list_from_for_while_loop(generic_list_1, start, fn_while, fn_loop)
      return output
    }

  }

  public static let e_list_from_for_while_loop : any Vx_Collection.Func_list_from_for_while_loop = Vx_Collection.Class_list_from_for_while_loop()
  public static let t_list_from_for_while_loop : any Vx_Collection.Func_list_from_for_while_loop = Vx_Collection.Class_list_from_for_while_loop()

  public static func f_list_from_for_while_loop<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ start : any Vx_Core.Type_any,
    _ fn_while : any Vx_Core.Func_boolean_from_any,
    _ fn_loop : any Vx_Core.Func_any_from_any
  ) -> X {
    var output : X = Vx_Core.f_empty(generic_list_1)
    output = Vx_Collection.f_list_from_for_while_loop_max(
      generic_list_1,
      start,
      fn_while,
      fn_loop,
      Vx_Core.vx_new_int(1000)
    )
    return output
  }


  public protocol Func_list_from_for_while_loop_max : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_list_from_for_while_loop_max<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ start : any Vx_Core.Type_any,
      _ fn_while : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any,
      _ max : any Vx_Core.Type_int
    ) -> X
  }

  public class Class_list_from_for_while_loop_max : Vx_Core.Class_base, Func_list_from_for_while_loop_max {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_for_while_loop_max = Vx_Collection.Class_list_from_for_while_loop_max()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_for_while_loop_max = Vx_Collection.Class_list_from_for_while_loop_max()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-for-while-loop-max", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_for_while_loop_max
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_for_while_loop_max
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let fn_while : any Vx_Core.Func_boolean_from_any = Vx_Core.f_any_from_any(Vx_Core.t_boolean_from_any, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let fn_loop : any Vx_Core.Func_any_from_any = Vx_Core.f_any_from_any(Vx_Core.t_any_from_any, arglist.vx_any(Vx_Core.vx_new_int(2)))
      let max : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(3)))
      output = Vx_Collection.f_list_from_for_while_loop_max(generic_list_1, start, fn_while, fn_loop, max)
      return output
    }

    public func vx_list_from_for_while_loop_max<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ start : any Vx_Core.Type_any,
      _ fn_while : any Vx_Core.Func_boolean_from_any,
      _ fn_loop : any Vx_Core.Func_any_from_any,
      _ max : any Vx_Core.Type_int
    ) -> X {
      let output : X = Vx_Collection.f_list_from_for_while_loop_max(generic_list_1, start, fn_while, fn_loop, max)
      return output
    }

  }

  public static let e_list_from_for_while_loop_max : any Vx_Collection.Func_list_from_for_while_loop_max = Vx_Collection.Class_list_from_for_while_loop_max()
  public static let t_list_from_for_while_loop_max : any Vx_Collection.Func_list_from_for_while_loop_max = Vx_Collection.Class_list_from_for_while_loop_max()

  public static func f_list_from_for_while_loop_max<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ start : any Vx_Core.Type_any,
    _ fn_while : any Vx_Core.Func_boolean_from_any,
    _ fn_loop : any Vx_Core.Func_any_from_any,
    _ max : any Vx_Core.Type_int
  ) -> X {
    let output = Vx_Collection.vx_list_from_for_while_loop_max(generic_list_1, start, fn_while, fn_loop, max)
    return output
  }


  public protocol Func_list_from_list_end : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_list_from_list_end<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ values_generic : any Vx_Core.Type_list,
      _ end : any Vx_Core.Type_int
    ) -> X
  }

  public class Class_list_from_list_end : Vx_Core.Class_base, Func_list_from_list_end {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_end = Vx_Collection.Class_list_from_list_end()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_end = Vx_Collection.Class_list_from_list_end()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-end", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_list_end
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_list_end
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let values : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let end : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_list_from_list_end(generic_list_1, values, end)
      return output
    }

    public func vx_list_from_list_end<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ values_generic : any Vx_Core.Type_list,
      _ end : any Vx_Core.Type_int
    ) -> X {
      let values = Vx_Core.vx_any_from_any(generic_list_1, values_generic)
      let output : X = Vx_Collection.f_list_from_list_end(generic_list_1, values, end)
      return output
    }

  }

  public static let e_list_from_list_end : any Vx_Collection.Func_list_from_list_end = Vx_Collection.Class_list_from_list_end()
  public static let t_list_from_list_end : any Vx_Collection.Func_list_from_list_end = Vx_Collection.Class_list_from_list_end()

  public static func f_list_from_list_end<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ values_generic : any Vx_Core.Type_list,
    _ end : any Vx_Core.Type_int
  ) -> X {
    let values = Vx_Core.vx_any_from_any(generic_list_1, values_generic)
    var output : X = Vx_Core.f_empty(generic_list_1)
    output = Vx_Collection.f_list_from_list_start_end(
      generic_list_1,
      values,
      Vx_Core.vx_new_int(1),
      end
    )
    return output
  }


  public protocol Func_list_from_list_filter : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_list_from_list_filter<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ vallist : any Vx_Core.Type_list,
      _ fn_filter : any Vx_Core.Func_any_from_any
    ) -> X
  }

  public class Class_list_from_list_filter : Vx_Core.Class_base, Func_list_from_list_filter {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_filter = Vx_Collection.Class_list_from_list_filter()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_filter = Vx_Collection.Class_list_from_list_filter()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-filter", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_list_filter
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_list_filter
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let vallist : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let fn_filter : any Vx_Core.Func_any_from_any = Vx_Core.f_any_from_any(Vx_Core.t_any_from_any, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_list_from_list_filter(generic_list_1, vallist, fn_filter)
      return output
    }

    public func vx_list_from_list_filter<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ vallist : any Vx_Core.Type_list,
      _ fn_filter : any Vx_Core.Func_any_from_any
    ) -> X {
      let output : X = Vx_Collection.f_list_from_list_filter(generic_list_1, vallist, fn_filter)
      return output
    }

  }

  public static let e_list_from_list_filter : any Vx_Collection.Func_list_from_list_filter = Vx_Collection.Class_list_from_list_filter()
  public static let t_list_from_list_filter : any Vx_Collection.Func_list_from_list_filter = Vx_Collection.Class_list_from_list_filter()

  public static func f_list_from_list_filter<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ vallist : any Vx_Core.Type_list,
    _ fn_filter : any Vx_Core.Func_any_from_any
  ) -> X {
    let output = Vx_Collection.vx_list_from_list_filter(generic_list_1, vallist, fn_filter)
    return output
  }


  public protocol Func_list_from_list_filtertypes : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_list_from_list_filtertypes<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ vallist : any Vx_Core.Type_list,
      _ filtertypes : any Vx_Core.Type_typelist
    ) -> X
  }

  public class Class_list_from_list_filtertypes : Vx_Core.Class_base, Func_list_from_list_filtertypes {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_filtertypes = Vx_Collection.Class_list_from_list_filtertypes()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_filtertypes = Vx_Collection.Class_list_from_list_filtertypes()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-filtertypes", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_list_filtertypes
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_list_filtertypes
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let vallist : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let filtertypes : any Vx_Core.Type_typelist = Vx_Core.f_any_from_any(Vx_Core.t_typelist, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_list_from_list_filtertypes(generic_list_1, vallist, filtertypes)
      return output
    }

    public func vx_list_from_list_filtertypes<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ vallist : any Vx_Core.Type_list,
      _ filtertypes : any Vx_Core.Type_typelist
    ) -> X {
      let output : X = Vx_Collection.f_list_from_list_filtertypes(generic_list_1, vallist, filtertypes)
      return output
    }

  }

  public static let e_list_from_list_filtertypes : any Vx_Collection.Func_list_from_list_filtertypes = Vx_Collection.Class_list_from_list_filtertypes()
  public static let t_list_from_list_filtertypes : any Vx_Collection.Func_list_from_list_filtertypes = Vx_Collection.Class_list_from_list_filtertypes()

  public static func f_list_from_list_filtertypes<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ vallist : any Vx_Core.Type_list,
    _ filtertypes : any Vx_Core.Type_typelist
  ) -> X {
    var output : X = Vx_Core.f_empty(generic_list_1)
    output = Vx_Collection.f_list_from_list_filter(
      generic_list_1,
      vallist,
      Vx_Core.t_any_from_any.vx_fn_new({(value_any) in
        let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, value_any)
        var output_1 : any Vx_Core.Type_any = Vx_Core.f_if(
          Vx_Core.t_any,
          Vx_Type.f_is_type_from_any_typelist(
            value,
            filtertypes
          ),
          value
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_list_from_list_flatten : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_list_from_list_flatten<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ listsrc : any Vx_Core.Type_list,
      _ fn_any_from_any : any Vx_Core.Func_any_from_any
    ) -> X
  }

  public class Class_list_from_list_flatten : Vx_Core.Class_base, Func_list_from_list_flatten {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_flatten = Vx_Collection.Class_list_from_list_flatten()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_flatten = Vx_Collection.Class_list_from_list_flatten()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-flatten", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_list_flatten
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_list_flatten
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let listsrc : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let fn_any_from_any : any Vx_Core.Func_any_from_any = Vx_Core.f_any_from_any(Vx_Core.t_any_from_any, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_list_from_list_flatten(generic_list_1, listsrc, fn_any_from_any)
      return output
    }

    public func vx_list_from_list_flatten<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ listsrc : any Vx_Core.Type_list,
      _ fn_any_from_any : any Vx_Core.Func_any_from_any
    ) -> X {
      let output : X = Vx_Collection.f_list_from_list_flatten(generic_list_1, listsrc, fn_any_from_any)
      return output
    }

  }

  public static let e_list_from_list_flatten : any Vx_Collection.Func_list_from_list_flatten = Vx_Collection.Class_list_from_list_flatten()
  public static let t_list_from_list_flatten : any Vx_Collection.Func_list_from_list_flatten = Vx_Collection.Class_list_from_list_flatten()

  public static func f_list_from_list_flatten<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ listsrc : any Vx_Core.Type_list,
    _ fn_any_from_any : any Vx_Core.Func_any_from_any
  ) -> X {
    var output : X = Vx_Core.f_empty(generic_list_1)
    output = Vx_Core.f_let(
      generic_list_1,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let listany : any Vx_Core.Type_anylist = Vx_Core.f_list_from_list_1(
          Vx_Core.t_anylist,
          listsrc,
          fn_any_from_any
        )
        let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
          generic_list_1,
          listany
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_list_from_list_join : Vx_Core.Func_any_from_any, AnyObject {
    func vx_list_from_list_join<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ values : any Vx_Core.Type_list
    ) -> X
  }

  public class Class_list_from_list_join : Vx_Core.Class_base, Func_list_from_list_join {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_join = Vx_Collection.Class_list_from_list_join()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_join = Vx_Collection.Class_list_from_list_join()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-join", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_list_join
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_list_join
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any.IFn) -> Vx_Core.Func_any_from_any {
      return Vx_Core.e_any_from_any
    }

    public func vx_any_from_any<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> T {
      var output : T = Vx_Core.f_empty(generic_any_1)
      let inputval : any Vx_Core.Type_list = value as! any Vx_Core.Type_list
      let outputval : any Vx_Core.Type_any = Vx_Collection.f_list_from_list_join(Vx_Core.t_list, inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let values : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Collection.f_list_from_list_join(generic_list_1, values)
      return output
    }

    public func vx_list_from_list_join<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ values : any Vx_Core.Type_list
    ) -> X {
      let output : X = Vx_Collection.f_list_from_list_join(generic_list_1, values)
      return output
    }

  }

  public static let e_list_from_list_join : any Vx_Collection.Func_list_from_list_join = Vx_Collection.Class_list_from_list_join()
  public static let t_list_from_list_join : any Vx_Collection.Func_list_from_list_join = Vx_Collection.Class_list_from_list_join()

  public static func f_list_from_list_join<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ values : any Vx_Core.Type_list
  ) -> X {
    var output : X = Vx_Core.f_empty(generic_list_1)
    output = Vx_Collection.f_list_from_list_join_1(
      generic_list_1,
      values,
      Vx_Core.t_any_from_any.vx_fn_new({(value_any) in
        let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, value_any)
        var output_1 : any Vx_Core.Type_any = value
        return output_1
      })
    )
    return output
  }


  public protocol Func_list_from_list_join_1 : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_list_from_list_join_1<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ values : any Vx_Core.Type_list,
      _ fn_any_from_any : any Vx_Core.Func_any_from_any
    ) -> X
  }

  public class Class_list_from_list_join_1 : Vx_Core.Class_base, Func_list_from_list_join_1 {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_join_1 = Vx_Collection.Class_list_from_list_join_1()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_join_1 = Vx_Collection.Class_list_from_list_join_1()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-join", // name
        1, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_list_join_1
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_list_join_1
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let values : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let fn_any_from_any : any Vx_Core.Func_any_from_any = Vx_Core.f_any_from_any(Vx_Core.t_any_from_any, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_list_from_list_join_1(generic_list_1, values, fn_any_from_any)
      return output
    }

    public func vx_list_from_list_join_1<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ values : any Vx_Core.Type_list,
      _ fn_any_from_any : any Vx_Core.Func_any_from_any
    ) -> X {
      let output : X = Vx_Collection.f_list_from_list_join_1(generic_list_1, values, fn_any_from_any)
      return output
    }

  }

  public static let e_list_from_list_join_1 : any Vx_Collection.Func_list_from_list_join_1 = Vx_Collection.Class_list_from_list_join_1()
  public static let t_list_from_list_join_1 : any Vx_Collection.Func_list_from_list_join_1 = Vx_Collection.Class_list_from_list_join_1()

  public static func f_list_from_list_join_1<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ values : any Vx_Core.Type_list,
    _ fn_any_from_any : any Vx_Core.Func_any_from_any
  ) -> X {
    let output = Vx_Collection.vx_list_from_list_join_1(generic_list_1, values, fn_any_from_any)
    return output
  }


  public protocol Func_list_from_list_start : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_list_from_list_start<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ values_generic : any Vx_Core.Type_list,
      _ start : any Vx_Core.Type_int
    ) -> X
  }

  public class Class_list_from_list_start : Vx_Core.Class_base, Func_list_from_list_start {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_start = Vx_Collection.Class_list_from_list_start()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_start = Vx_Collection.Class_list_from_list_start()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-start", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_list_start
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_list_start
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let values : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_list_from_list_start(generic_list_1, values, start)
      return output
    }

    public func vx_list_from_list_start<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ values_generic : any Vx_Core.Type_list,
      _ start : any Vx_Core.Type_int
    ) -> X {
      let values = Vx_Core.vx_any_from_any(generic_list_1, values_generic)
      let output : X = Vx_Collection.f_list_from_list_start(generic_list_1, values, start)
      return output
    }

  }

  public static let e_list_from_list_start : any Vx_Collection.Func_list_from_list_start = Vx_Collection.Class_list_from_list_start()
  public static let t_list_from_list_start : any Vx_Collection.Func_list_from_list_start = Vx_Collection.Class_list_from_list_start()

  public static func f_list_from_list_start<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ values_generic : any Vx_Core.Type_list,
    _ start : any Vx_Core.Type_int
  ) -> X {
    let values = Vx_Core.vx_any_from_any(generic_list_1, values_generic)
    var output : X = Vx_Core.f_empty(generic_list_1)
    output = Vx_Collection.f_list_from_list_start_end(
      generic_list_1,
      values,
      start,
      Vx_Core.f_length_1(
        values
      )
    )
    return output
  }


  public protocol Func_list_from_list_start_end : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_list_from_list_start_end<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ values_generic : any Vx_Core.Type_list,
      _ start : any Vx_Core.Type_int,
      _ end : any Vx_Core.Type_int
    ) -> X
  }

  public class Class_list_from_list_start_end : Vx_Core.Class_base, Func_list_from_list_start_end {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_start_end = Vx_Collection.Class_list_from_list_start_end()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_list_from_list_start_end = Vx_Collection.Class_list_from_list_start_end()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "list<-list-start-end", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "list-1", // name
          ":list", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_list_from_list_start_end
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_list_from_list_start_end
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_list_1 : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let values : any Vx_Core.Type_list = Vx_Core.f_any_from_any(Vx_Core.t_list, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let end : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(2)))
      output = Vx_Collection.f_list_from_list_start_end(generic_list_1, values, start, end)
      return output
    }

    public func vx_list_from_list_start_end<X : Vx_Core.Type_list>(
      _ generic_list_1 : X,
      _ values_generic : any Vx_Core.Type_list,
      _ start : any Vx_Core.Type_int,
      _ end : any Vx_Core.Type_int
    ) -> X {
      let values = Vx_Core.vx_any_from_any(generic_list_1, values_generic)
      let output : X = Vx_Collection.f_list_from_list_start_end(generic_list_1, values, start, end)
      return output
    }

  }

  public static let e_list_from_list_start_end : any Vx_Collection.Func_list_from_list_start_end = Vx_Collection.Class_list_from_list_start_end()
  public static let t_list_from_list_start_end : any Vx_Collection.Func_list_from_list_start_end = Vx_Collection.Class_list_from_list_start_end()

  public static func f_list_from_list_start_end<X : Vx_Core.Type_list>(
    _ generic_list_1 : X,
    _ values_generic : any Vx_Core.Type_list,
    _ start : any Vx_Core.Type_int,
    _ end : any Vx_Core.Type_int
  ) -> X {
    let values = Vx_Core.vx_any_from_any(generic_list_1, values_generic)
    let output = Vx_Collection.vx_list_from_list_start_end(generic_list_1, values, start, end)
    return output
  }


  public protocol Func_map_from_map_end : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_map_from_map_end<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ valuemap_generic : any Vx_Core.Type_map,
      _ end : any Vx_Core.Type_int
    ) -> N
  }

  public class Class_map_from_map_end : Vx_Core.Class_base, Func_map_from_map_end {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_map_from_map_end = Vx_Collection.Class_map_from_map_end()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_map_from_map_end = Vx_Collection.Class_map_from_map_end()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "map<-map-end", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_map_from_map_end
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_map_from_map_end
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_map_1 : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let valuemap : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let end : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_map_from_map_end(generic_map_1, valuemap, end)
      return output
    }

    public func vx_map_from_map_end<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ valuemap_generic : any Vx_Core.Type_map,
      _ end : any Vx_Core.Type_int
    ) -> N {
      let valuemap = Vx_Core.vx_any_from_any(generic_map_1, valuemap_generic)
      let output : N = Vx_Collection.f_map_from_map_end(generic_map_1, valuemap, end)
      return output
    }

  }

  public static let e_map_from_map_end : any Vx_Collection.Func_map_from_map_end = Vx_Collection.Class_map_from_map_end()
  public static let t_map_from_map_end : any Vx_Collection.Func_map_from_map_end = Vx_Collection.Class_map_from_map_end()

  public static func f_map_from_map_end<N : Vx_Core.Type_map>(
    _ generic_map_1 : N,
    _ valuemap_generic : any Vx_Core.Type_map,
    _ end : any Vx_Core.Type_int
  ) -> N {
    let valuemap = Vx_Core.vx_any_from_any(generic_map_1, valuemap_generic)
    var output : N = Vx_Core.f_empty(generic_map_1)
    output = Vx_Collection.f_map_from_map_start_end(
      generic_map_1,
      valuemap,
      Vx_Core.vx_new_int(1),
      end
    )
    return output
  }


  public protocol Func_map_from_map_keys : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_map_from_map_keys<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ valuemap_generic : any Vx_Core.Type_map,
      _ keys : any Vx_Core.Type_stringlist
    ) -> N
  }

  public class Class_map_from_map_keys : Vx_Core.Class_base, Func_map_from_map_keys {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_map_from_map_keys = Vx_Collection.Class_map_from_map_keys()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_map_from_map_keys = Vx_Collection.Class_map_from_map_keys()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "map<-map-keys", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_map_from_map_keys
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_map_from_map_keys
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_map_1 : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let valuemap : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let keys : any Vx_Core.Type_stringlist = Vx_Core.f_any_from_any(Vx_Core.t_stringlist, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_map_from_map_keys(generic_map_1, valuemap, keys)
      return output
    }

    public func vx_map_from_map_keys<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ valuemap_generic : any Vx_Core.Type_map,
      _ keys : any Vx_Core.Type_stringlist
    ) -> N {
      let valuemap = Vx_Core.vx_any_from_any(generic_map_1, valuemap_generic)
      let output : N = Vx_Collection.f_map_from_map_keys(generic_map_1, valuemap, keys)
      return output
    }

  }

  public static let e_map_from_map_keys : any Vx_Collection.Func_map_from_map_keys = Vx_Collection.Class_map_from_map_keys()
  public static let t_map_from_map_keys : any Vx_Collection.Func_map_from_map_keys = Vx_Collection.Class_map_from_map_keys()

  public static func f_map_from_map_keys<N : Vx_Core.Type_map>(
    _ generic_map_1 : N,
    _ valuemap_generic : any Vx_Core.Type_map,
    _ keys : any Vx_Core.Type_stringlist
  ) -> N {
    let valuemap = Vx_Core.vx_any_from_any(generic_map_1, valuemap_generic)
    let output = Vx_Collection.vx_map_from_map_keys(generic_map_1, valuemap, keys)
    return output
  }


  public protocol Func_map_from_map_start : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_map_from_map_start<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ valuemap_generic : any Vx_Core.Type_map,
      _ start : any Vx_Core.Type_int
    ) -> N
  }

  public class Class_map_from_map_start : Vx_Core.Class_base, Func_map_from_map_start {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_map_from_map_start = Vx_Collection.Class_map_from_map_start()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_map_from_map_start = Vx_Collection.Class_map_from_map_start()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "map<-map-start", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_map_from_map_start
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_map_from_map_start
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_map_1 : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let valuemap : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Collection.f_map_from_map_start(generic_map_1, valuemap, start)
      return output
    }

    public func vx_map_from_map_start<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ valuemap_generic : any Vx_Core.Type_map,
      _ start : any Vx_Core.Type_int
    ) -> N {
      let valuemap = Vx_Core.vx_any_from_any(generic_map_1, valuemap_generic)
      let output : N = Vx_Collection.f_map_from_map_start(generic_map_1, valuemap, start)
      return output
    }

  }

  public static let e_map_from_map_start : any Vx_Collection.Func_map_from_map_start = Vx_Collection.Class_map_from_map_start()
  public static let t_map_from_map_start : any Vx_Collection.Func_map_from_map_start = Vx_Collection.Class_map_from_map_start()

  public static func f_map_from_map_start<N : Vx_Core.Type_map>(
    _ generic_map_1 : N,
    _ valuemap_generic : any Vx_Core.Type_map,
    _ start : any Vx_Core.Type_int
  ) -> N {
    let valuemap = Vx_Core.vx_any_from_any(generic_map_1, valuemap_generic)
    var output : N = Vx_Core.f_empty(generic_map_1)
    output = Vx_Collection.f_map_from_map_start_end(
      generic_map_1,
      valuemap,
      start,
      Vx_Core.f_length_2(
        valuemap
      )
    )
    return output
  }


  public protocol Func_map_from_map_start_end : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_map_from_map_start_end<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ valuemap_generic : any Vx_Core.Type_map,
      _ start : any Vx_Core.Type_int,
      _ end : any Vx_Core.Type_int
    ) -> N
  }

  public class Class_map_from_map_start_end : Vx_Core.Class_base, Func_map_from_map_start_end {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_map_from_map_start_end = Vx_Collection.Class_map_from_map_start_end()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_map_from_map_start_end = Vx_Collection.Class_map_from_map_start_end()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "map<-map-start-end", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_map_from_map_start_end
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_map_from_map_start_end
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_map_1 : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let valuemap : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let start : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let end : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, arglist.vx_any(Vx_Core.vx_new_int(2)))
      output = Vx_Collection.f_map_from_map_start_end(generic_map_1, valuemap, start, end)
      return output
    }

    public func vx_map_from_map_start_end<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ valuemap_generic : any Vx_Core.Type_map,
      _ start : any Vx_Core.Type_int,
      _ end : any Vx_Core.Type_int
    ) -> N {
      let valuemap = Vx_Core.vx_any_from_any(generic_map_1, valuemap_generic)
      let output : N = Vx_Collection.f_map_from_map_start_end(generic_map_1, valuemap, start, end)
      return output
    }

  }

  public static let e_map_from_map_start_end : any Vx_Collection.Func_map_from_map_start_end = Vx_Collection.Class_map_from_map_start_end()
  public static let t_map_from_map_start_end : any Vx_Collection.Func_map_from_map_start_end = Vx_Collection.Class_map_from_map_start_end()

  public static func f_map_from_map_start_end<N : Vx_Core.Type_map>(
    _ generic_map_1 : N,
    _ valuemap_generic : any Vx_Core.Type_map,
    _ start : any Vx_Core.Type_int,
    _ end : any Vx_Core.Type_int
  ) -> N {
    let valuemap = Vx_Core.vx_any_from_any(generic_map_1, valuemap_generic)
    var output : N = Vx_Core.f_empty(generic_map_1)
    output = Vx_Core.f_let(
      generic_map_1,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let keys1 : any Vx_Core.Type_stringlist = Vx_Core.f_stringlist_from_map(
          valuemap
        )
        let keys2 : any Vx_Core.Type_stringlist = Vx_Collection.f_list_from_list_start_end(
          Vx_Core.t_stringlist,
          keys1,
          start,
          end
        )
        let output_1 : any Vx_Core.Type_any = Vx_Collection.f_map_from_map_keys(
          generic_map_1,
          valuemap,
          keys2
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_map_from_struct : Vx_Core.Func_any_from_any, AnyObject {
    func vx_map_from_struct<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ structure : any Vx_Core.Type_struct
    ) -> N
  }

  public class Class_map_from_struct : Vx_Core.Class_base, Func_map_from_struct {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_map_from_struct = Vx_Collection.Class_map_from_struct()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Collection.Class_map_from_struct = Vx_Collection.Class_map_from_struct()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/collection", // pkgname
        "map<-struct", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "map-1", // name
          ":map", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_any), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.e_map_from_struct
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Collection.t_map_from_struct
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any.IFn) -> Vx_Core.Func_any_from_any {
      return Vx_Core.e_any_from_any
    }

    public func vx_any_from_any<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> T {
      var output : T = Vx_Core.f_empty(generic_any_1)
      let inputval : any Vx_Core.Type_struct = value as! any Vx_Core.Type_struct
      let outputval : any Vx_Core.Type_any = Vx_Collection.f_map_from_struct(Vx_Core.t_map, inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_map_1 : any Vx_Core.Type_map = Vx_Core.f_any_from_any(Vx_Core.t_map, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let structure : any Vx_Core.Type_struct = Vx_Core.f_any_from_any(Vx_Core.t_struct, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Collection.f_map_from_struct(generic_map_1, structure)
      return output
    }

    public func vx_map_from_struct<N : Vx_Core.Type_map>(
      _ generic_map_1 : N,
      _ structure : any Vx_Core.Type_struct
    ) -> N {
      let output : N = Vx_Collection.f_map_from_struct(generic_map_1, structure)
      return output
    }

  }

  public static let e_map_from_struct : any Vx_Collection.Func_map_from_struct = Vx_Collection.Class_map_from_struct()
  public static let t_map_from_struct : any Vx_Collection.Func_map_from_struct = Vx_Collection.Class_map_from_struct()

  public static func f_map_from_struct<N : Vx_Core.Type_map>(
    _ generic_map_1 : N,
    _ structure : any Vx_Core.Type_struct
  ) -> N {
    var output : N = Vx_Core.f_empty(generic_map_1)
    output = Vx_Core.f_let(
      generic_map_1,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let anymap : any Vx_Core.Type_anymap = Vx_Collection.f_anymap_from_struct(
          structure
        )
        let output_1 : any Vx_Core.Type_any = Vx_Core.f_map_from_map(
          generic_map_1,
          anymap
        )
        return output_1
      })
    )
    return output
  }

  private static var initialized : Bool = false

  public static func vx_initialize() {
    guard !initialized else { return }
    initialized = true
    var maptype : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapconst : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapfunc : Vx_Core.MapMutable<any Vx_Core.Type_func> = Vx_Core.MapMutable<any Vx_Core.Type_func>()
    mapfunc.put("-", Vx_Collection.t_minus)
    mapfunc.put("-_1", Vx_Collection.t_minus_1)
    mapfunc.put("any<-for-until-loop", Vx_Collection.t_any_from_for_until_loop)
    mapfunc.put("any<-for-until-loop-max", Vx_Collection.t_any_from_for_until_loop_max)
    mapfunc.put("any<-for-while-loop", Vx_Collection.t_any_from_for_while_loop)
    mapfunc.put("any<-for-while-loop-max", Vx_Collection.t_any_from_for_while_loop_max)
    mapfunc.put("any<-map-pos", Vx_Collection.t_any_from_map_pos)
    mapfunc.put("anymap<-struct", Vx_Collection.t_anymap_from_struct)
    mapfunc.put("boolean-write<-map-removekey", Vx_Collection.t_boolean_write_from_map_removekey)
    mapfunc.put("boolean-write<-map-removekeys", Vx_Collection.t_boolean_write_from_map_removekeys)
    mapfunc.put("int<-map-key", Vx_Collection.t_int_from_map_key)
    mapfunc.put("int<-stringlist-find", Vx_Collection.t_int_from_stringlist_find)
    mapfunc.put("is-list", Vx_Collection.t_is_list)
    mapfunc.put("is-map", Vx_Collection.t_is_map)
    mapfunc.put("list<-for-end-loop", Vx_Collection.t_list_from_for_end_loop)
    mapfunc.put("list<-for-while-loop", Vx_Collection.t_list_from_for_while_loop)
    mapfunc.put("list<-for-while-loop-max", Vx_Collection.t_list_from_for_while_loop_max)
    mapfunc.put("list<-list-end", Vx_Collection.t_list_from_list_end)
    mapfunc.put("list<-list-filter", Vx_Collection.t_list_from_list_filter)
    mapfunc.put("list<-list-filtertypes", Vx_Collection.t_list_from_list_filtertypes)
    mapfunc.put("list<-list-flatten", Vx_Collection.t_list_from_list_flatten)
    mapfunc.put("list<-list-join", Vx_Collection.t_list_from_list_join)
    mapfunc.put("list<-list-join_1", Vx_Collection.t_list_from_list_join_1)
    mapfunc.put("list<-list-start", Vx_Collection.t_list_from_list_start)
    mapfunc.put("list<-list-start-end", Vx_Collection.t_list_from_list_start_end)
    mapfunc.put("map<-map-end", Vx_Collection.t_map_from_map_end)
    mapfunc.put("map<-map-keys", Vx_Collection.t_map_from_map_keys)
    mapfunc.put("map<-map-start", Vx_Collection.t_map_from_map_start)
    mapfunc.put("map<-map-start-end", Vx_Collection.t_map_from_map_start_end)
    mapfunc.put("map<-struct", Vx_Collection.t_map_from_struct)
    Vx_Core.vx_global_package_set(
      "vx/collection",
      Vx_Core.vx_mapimmutable(maptype),
      Vx_Core.vx_mapimmutable(mapconst),
      Vx_Core.vx_mapimmutable(mapfunc)
    )
  }

}
