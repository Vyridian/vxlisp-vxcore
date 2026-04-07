
import Vx

public enum Vx_CollectionTest {

  public static func f_minus(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "-",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_minus_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_minus_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"d\")\n (- : stringlist\n  (stringlist \"a\" \"b\" \"c\" \"d\")\n  (stringlist \"b\" \"c\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_string("d")
          )
        ),
        Vx_Collection.f_minus(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c"),
              Vx_Core.vx_new_string("d")
            )
          ),
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_minus_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "-_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_minus_1_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_minus_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"1\"\n  :d \"4\")\n (- : stringmap\n  (stringmap\n   :a \"1\"\n   :b \"2\"\n   :c \"3\"\n   :d \"4\")\n  (stringmap\n   :b \"x\"\n   :c \"y\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("1"),
            Vx_Core.vx_new_string(":d"),
            Vx_Core.vx_new_string("4")
          )
        ),
        Vx_Collection.f_minus_1(
          Vx_Core.t_stringmap,
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("2"),
              Vx_Core.vx_new_string(":c"),
              Vx_Core.vx_new_string("3"),
              Vx_Core.vx_new_string(":d"),
              Vx_Core.vx_new_string("4")
            )
          ),
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("x"),
              Vx_Core.vx_new_string(":c"),
              Vx_Core.vx_new_string("y")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_any_from_for_until_loop(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "any<-for-until-loop",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_any_from_for_until_loop_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_any_from_for_until_loop_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 8\n (any<-for-until-loop\n  1\n  (fn : boolean\n   [current : int]\n   (> current 6))\n  (fn : int\n   [current : int]\n   (+ current current))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(8),
        Vx_Collection.f_any_from_for_until_loop(
          Vx_Core.t_int,
          Vx_Core.vx_new_int(1),
          Vx_Core.t_boolean_from_any.vx_fn_new({(current_any) in
            let current : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, current_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_gt(
              current,
              Vx_Core.vx_new_int(6)
            )
            return output_1
          }),
          Vx_Core.t_any_from_any.vx_fn_new({(current_any) in
            let current : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, current_any)
            var output_2 : any Vx_Core.Type_any = Vx_Core.f_plus(
              current,
              current
            )
            return output_2
          })
        )
      )
    )
    return output
  }

  public static func f_any_from_for_while_loop(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "any<-for-while-loop",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_any_from_for_while_loop_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_any_from_for_while_loop_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 8\n (any<-for-while-loop\n  1\n  (fn : boolean\n   [current : int]\n   (< current 5))\n  (fn : int\n   [current : int]\n   (+ current current))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(8),
        Vx_Collection.f_any_from_for_while_loop(
          Vx_Core.t_int,
          Vx_Core.vx_new_int(1),
          Vx_Core.t_boolean_from_any.vx_fn_new({(current_any) in
            let current : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, current_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_lt(
              current,
              Vx_Core.vx_new_int(5)
            )
            return output_1
          }),
          Vx_Core.t_any_from_any.vx_fn_new({(current_any) in
            let current : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, current_any)
            var output_2 : any Vx_Core.Type_any = Vx_Core.f_plus(
              current,
              current
            )
            return output_2
          })
        )
      )
    )
    return output
  }

  public static func f_anymap_from_struct(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "anymap<-struct",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_anymap_from_struct_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_anymap_from_struct_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (anymap\n  :name \"sname\"\n  :wordmap\n   (stringmap\n    :a \"x\"))\n (anymap<-struct\n  (translation\n   :name \"sname\"\n   :wordmap\n    (stringmap\n     :a \"x\"))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_anymap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":name"),
            Vx_Core.vx_new_string("sname"),
            Vx_Core.vx_new_string(":wordmap"),
            Vx_Core.f_new(
              Vx_Core.t_stringmap,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string(":a"),
                Vx_Core.vx_new_string("x")
              )
            )
          )
        ),
        Vx_Collection.f_anymap_from_struct(
          Vx_Core.f_new(
            Vx_Core.t_translation,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":name"),
              Vx_Core.vx_new_string("sname"),
              Vx_Core.vx_new_string(":wordmap"),
              Vx_Core.f_new(
                Vx_Core.t_stringmap,
                Vx_Core.vx_new(
                  Vx_Core.t_anylist,
                  Vx_Core.vx_new_string(":a"),
                  Vx_Core.vx_new_string("x")
                )
              )
            )
          )
        )
      )
    )
    return output
  }

  public static func f_int_from_map_key(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "int<-map-key",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_int_from_map_key_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_int_from_map_key_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 2\n (int<-map-key\n  (stringmap\n   :a \"x\"\n   :b \"y\")\n  \"b\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(2),
        Vx_Collection.f_int_from_map_key(
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("x"),
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("y")
            )
          ),
          Vx_Core.vx_new_string("b")
        )
      )
    )
    return output
  }

  public static func f_int_from_stringlist_find(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "int<-stringlist-find",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_int_from_stringlist_find_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_int_from_stringlist_find_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 2\n (int<-stringlist-find\n  (stringlist \"a\" \"b\")\n  \"b\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(2),
        Vx_Collection.f_int_from_stringlist_find(
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b")
            )
          ),
          Vx_Core.vx_new_string("b")
        )
      )
    )
    return output
  }

  public static func f_is_list(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "is-list",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_is_list_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_is_list_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (is-list (empty stringlist)))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Collection.f_is_list(
          Vx_Core.f_empty(
            Vx_Core.t_stringlist
          )
        )
      )
    )
    return output
  }

  public static func f_is_map(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "is-map",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_is_map_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_is_map_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (is-map (empty stringmap)))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Collection.f_is_map(
          Vx_Core.f_empty(
            Vx_Core.t_stringmap
          )
        )
      )
    )
    return output
  }

  public static func f_list_from_for_end_loop(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-for-end-loop",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_for_end_loop_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_for_end_loop_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (intlist 4 9)\n (list<-for-end-loop : intlist\n  2\n  3\n  (fn\n   [current : int]\n   (* current current))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_intlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_int(4),
            Vx_Core.vx_new_int(9)
          )
        ),
        Vx_Collection.f_list_from_for_end_loop(
          Vx_Core.t_intlist,
          Vx_Core.vx_new_int(2),
          Vx_Core.vx_new_int(3),
          Vx_Core.t_any_from_int.vx_fn_new({(current_any) in
            let current : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, current_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_multiply(
              current,
              current
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_list_from_list_end(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-end",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_list_end_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_list_end_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist\n  \"a\" \"b\" \"c\")\n (list<-list-end\n  (stringlist\n   \"a\" \"b\" \"c\" \"d\")\n  3))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("c")
          )
        ),
        Vx_Collection.f_list_from_list_end(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c"),
              Vx_Core.vx_new_string("d")
            )
          ),
          Vx_Core.vx_new_int(3)
        )
      )
    )
    return output
  }

  public static func f_list_from_list_filter(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-filter",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_list_filter_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_list_filter_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist\n  \"a1\" \"b1\" \"c1\" \"d1\")\n (list<-list-filter : stringlist\n  (list\n   \"a\" 4 \"b\" (list) \"c\" (map) \"d\")\n  (fn : string\n   [value : any]\n   (if\n    (then\n     (is-string value)\n     (string value \"1\"))))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a1"),
            Vx_Core.vx_new_string("b1"),
            Vx_Core.vx_new_string("c1"),
            Vx_Core.vx_new_string("d1")
          )
        ),
        Vx_Collection.f_list_from_list_filter(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_list,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_int(4),
              Vx_Core.vx_new_string("b"),
              Vx_Core.f_empty(
                Vx_Core.t_list
              ),
              Vx_Core.vx_new_string("c"),
              Vx_Core.f_empty(
                Vx_Core.t_map
              ),
              Vx_Core.vx_new_string("d")
            )
          ),
          Vx_Core.t_any_from_any.vx_fn_new({(value_any) in
            let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, value_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_if_2(
              Vx_Core.t_string,
              Vx_Core.vx_new(
                Vx_Core.t_thenelselist,
                Vx_Core.f_then(
                  Vx_Core.t_boolean_from_func.vx_fn_new({() in
                    var output_2 : any Vx_Core.Type_any = Vx_Type.f_is_string(
                      value
                    )
                    return output_2
                  }),
                  Vx_Core.t_any_from_func.vx_fn_new({() in
                    var output_3 : any Vx_Core.Type_any = Vx_Core.f_new(
                      Vx_Core.t_string,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        value,
                        Vx_Core.vx_new_string("1")
                      )
                    )
                    return output_3
                  })
                )
              )
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_list_from_list_filtertypes(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-filtertypes",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_list_filtertypes_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_list_filtertypes_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (list\n  \"a\" 1 \"b\" \"c\")\n (list<-list-filtertypes : list\n  (list\n   \"a\" 1 \"b\" \"c\" 4.5)\n  string int))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_list,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_int(1),
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("c")
          )
        ),
        Vx_Collection.f_list_from_list_filtertypes(
          Vx_Core.t_list,
          Vx_Core.f_new(
            Vx_Core.t_list,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_int(1),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c"),
              Vx_Core.vx_new_decimal("4.5")
            )
          ),
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            Vx_Core.t_string,
            Vx_Core.t_int
          )
        )
      )
    )
    return output
  }

  public static func f_list_from_list_flatten(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-flatten",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_list_flatten_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_list_flatten_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\")\n (list<-list-flatten : stringlist\n  (intlist 1 2)\n  (fn : stringlist\n   [index : int]\n   (switch : stringlist\n    index\n    (case 1\n     (stringlist \"a\" \"b\"))\n    (case 2\n     (stringlist \"c\"))))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("c")
          )
        ),
        Vx_Collection.f_list_from_list_flatten(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_intlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_int(1),
              Vx_Core.vx_new_int(2)
            )
          ),
          Vx_Core.t_any_from_any.vx_fn_new({(index_any) in
            let index : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, index_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_switch(
              Vx_Core.t_stringlist,
              index,
              Vx_Core.vx_new(
                Vx_Core.t_thenelselist,
                Vx_Core.f_case_1(
                  Vx_Core.vx_new_int(1),
                  Vx_Core.t_any_from_func.vx_fn_new({() in
                    var output_2 : any Vx_Core.Type_any = Vx_Core.f_new(
                      Vx_Core.t_stringlist,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        Vx_Core.vx_new_string("a"),
                        Vx_Core.vx_new_string("b")
                      )
                    )
                    return output_2
                  })
                ),
                Vx_Core.f_case_1(
                  Vx_Core.vx_new_int(2),
                  Vx_Core.t_any_from_func.vx_fn_new({() in
                    var output_3 : any Vx_Core.Type_any = Vx_Core.f_new(
                      Vx_Core.t_stringlist,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        Vx_Core.vx_new_string("c")
                      )
                    )
                    return output_3
                  })
                )
              )
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_list_from_list_join(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-join",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_list_join_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_list_join_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\" \"d\")\n (list<-list-join : stringlist\n  (stringlistlist\n   (stringlist \"a\" \"b\")\n   (stringlist \"c\" \"d\"))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("c"),
            Vx_Core.vx_new_string("d")
          )
        ),
        Vx_Collection.f_list_from_list_join(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_stringlistlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.f_new(
                Vx_Core.t_stringlist,
                Vx_Core.vx_new(
                  Vx_Core.t_anylist,
                  Vx_Core.vx_new_string("a"),
                  Vx_Core.vx_new_string("b")
                )
              ),
              Vx_Core.f_new(
                Vx_Core.t_stringlist,
                Vx_Core.vx_new(
                  Vx_Core.t_anylist,
                  Vx_Core.vx_new_string("c"),
                  Vx_Core.vx_new_string("d")
                )
              )
            )
          )
        )
      )
    )
    return output
  }

  public static func f_list_from_list_join_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-join_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_list_join_1_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_list_join_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\" \"d\")\n (list<-list-join : stringlist\n  (stringlistlist\n   (stringlist \"a\" \"b\")\n   (stringlist \"c\" \"d\"))\n  (fn : stringlist\n   [values : stringlist]\n   values)))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("c"),
            Vx_Core.vx_new_string("d")
          )
        ),
        Vx_Collection.f_list_from_list_join_1(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_stringlistlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.f_new(
                Vx_Core.t_stringlist,
                Vx_Core.vx_new(
                  Vx_Core.t_anylist,
                  Vx_Core.vx_new_string("a"),
                  Vx_Core.vx_new_string("b")
                )
              ),
              Vx_Core.f_new(
                Vx_Core.t_stringlist,
                Vx_Core.vx_new(
                  Vx_Core.t_anylist,
                  Vx_Core.vx_new_string("c"),
                  Vx_Core.vx_new_string("d")
                )
              )
            )
          ),
          Vx_Core.t_any_from_any.vx_fn_new({(values_any) in
            let values : any Vx_Core.Type_stringlist = Vx_Core.f_any_from_any(Vx_Core.t_stringlist, values_any)
            var output_1 : any Vx_Core.Type_any = values
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_list_from_list_start(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-start",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_list_start_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_list_start_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist\n  \"b\" \"c\" \"d\")\n (list<-list-start\n  (stringlist\n   \"a\" \"b\" \"c\" \"d\")\n  2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("c"),
            Vx_Core.vx_new_string("d")
          )
        ),
        Vx_Collection.f_list_from_list_start(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c"),
              Vx_Core.vx_new_string("d")
            )
          ),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_list_from_list_start_end(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-start-end",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_list_start_end_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_list_start_end_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist\n  \"b\" \"c\")\n (list<-list-start-end\n  (stringlist\n   \"a\" \"b\" \"c\" \"d\")\n  2 3))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("c")
          )
        ),
        Vx_Collection.f_list_from_list_start_end(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c"),
              Vx_Core.vx_new_string("d")
            )
          ),
          Vx_Core.vx_new_int(2),
          Vx_Core.vx_new_int(3)
        )
      )
    )
    return output
  }

  public static func f_map_from_map_end(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "map<-map-end",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_map_from_map_end_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_map_from_map_end_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :b \"1\"\n  :a \"2\")\n (map<-map-end\n  (stringmap\n   :b \"1\"\n   :a \"2\"\n   :c \"3\")\n  2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":b"),
            Vx_Core.vx_new_string("1"),
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("2")
          )
        ),
        Vx_Collection.f_map_from_map_end(
          Vx_Core.t_stringmap,
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("2"),
              Vx_Core.vx_new_string(":c"),
              Vx_Core.vx_new_string("3")
            )
          ),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_map_from_map_keys(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "map<-map-keys",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_map_from_map_keys_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_map_from_map_keys_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :c \"3\"\n  :a \"1\")\n (map<-map-keys\n  (stringmap\n   :a \"1\"\n   :b \"2\"\n   :c \"3\")\n  (stringlist\n   \"c\" \"a\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":c"),
            Vx_Core.vx_new_string("3"),
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("1")
          )
        ),
        Vx_Collection.f_map_from_map_keys(
          Vx_Core.t_stringmap,
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("2"),
              Vx_Core.vx_new_string(":c"),
              Vx_Core.vx_new_string("3")
            )
          ),
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("c"),
              Vx_Core.vx_new_string("a")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_map_from_map_start(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "map<-map-start",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_map_from_map_start_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_map_from_map_start_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"2\"\n  :c \"3\")\n (map<-map-start\n  (stringmap\n   :b \"1\"\n   :a \"2\"\n   :c \"3\")\n  2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("2"),
            Vx_Core.vx_new_string(":c"),
            Vx_Core.vx_new_string("3")
          )
        ),
        Vx_Collection.f_map_from_map_start(
          Vx_Core.t_stringmap,
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("2"),
              Vx_Core.vx_new_string(":c"),
              Vx_Core.vx_new_string("3")
            )
          ),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_map_from_map_start_end(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "map<-map-start-end",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_map_from_map_start_end_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_map_from_map_start_end_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"2\"\n  :c \"3\")\n (map<-map-start-end\n  (stringmap\n   :b \"1\"\n   :a \"2\"\n   :c \"3\"\n   :d \"4\")\n  2 3))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("2"),
            Vx_Core.vx_new_string(":c"),
            Vx_Core.vx_new_string("3")
          )
        ),
        Vx_Collection.f_map_from_map_start_end(
          Vx_Core.t_stringmap,
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("2"),
              Vx_Core.vx_new_string(":c"),
              Vx_Core.vx_new_string("3"),
              Vx_Core.vx_new_string(":d"),
              Vx_Core.vx_new_string("4")
            )
          ),
          Vx_Core.vx_new_int(2),
          Vx_Core.vx_new_int(3)
        )
      )
    )
    return output
  }

  public static func f_map_from_struct(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "map<-struct",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_map_from_struct_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_map_from_struct_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :name \"sname\")\n (map<-struct : stringmap\n  (translation\n   :name \"sname\"\n   :wordmap\n    (stringmap\n     :a \"x\"))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":name"),
            Vx_Core.vx_new_string("sname")
          )
        ),
        Vx_Collection.f_map_from_struct(
          Vx_Core.t_stringmap,
          Vx_Core.f_new(
            Vx_Core.t_translation,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":name"),
              Vx_Core.vx_new_string("sname"),
              Vx_Core.vx_new_string(":wordmap"),
              Vx_Core.f_new(
                Vx_Core.t_stringmap,
                Vx_Core.vx_new(
                  Vx_Core.t_anylist,
                  Vx_Core.vx_new_string(":a"),
                  Vx_Core.vx_new_string("x")
                )
              )
            )
          )
        )
      )
    )
    return output
  }

  public static func test_cases(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcaselist {
    var testcases : [any Vx_Core.Type_any] = Vx_Core.arraylist_from_array(
      Vx_CollectionTest.f_minus(context),
      Vx_CollectionTest.f_minus_1(context),
      Vx_CollectionTest.f_any_from_for_until_loop(context),
      Vx_CollectionTest.f_any_from_for_while_loop(context),
      Vx_CollectionTest.f_anymap_from_struct(context),
      Vx_CollectionTest.f_int_from_map_key(context),
      Vx_CollectionTest.f_int_from_stringlist_find(context),
      Vx_CollectionTest.f_is_list(context),
      Vx_CollectionTest.f_is_map(context),
      Vx_CollectionTest.f_list_from_for_end_loop(context),
      Vx_CollectionTest.f_list_from_list_end(context),
      Vx_CollectionTest.f_list_from_list_filter(context),
      Vx_CollectionTest.f_list_from_list_filtertypes(context),
      Vx_CollectionTest.f_list_from_list_flatten(context),
      Vx_CollectionTest.f_list_from_list_join(context),
      Vx_CollectionTest.f_list_from_list_join_1(context),
      Vx_CollectionTest.f_list_from_list_start(context),
      Vx_CollectionTest.f_list_from_list_start_end(context),
      Vx_CollectionTest.f_map_from_map_end(context),
      Vx_CollectionTest.f_map_from_map_keys(context),
      Vx_CollectionTest.f_map_from_map_start(context),
      Vx_CollectionTest.f_map_from_map_start_end(context),
      Vx_CollectionTest.f_map_from_struct(context)
    )
    let output : any Vx_Test.Type_testcaselist = Vx_Core.vx_new(
      Vx_Test.t_testcaselist,
      testcases
    )
    return output
  }

  public static func test_coveragesummary() -> any Vx_Test.Type_testcoveragesummary {
    let output : any Vx_Test.Type_testcoveragesummary = Vx_Core.vx_new(
      Vx_Test.t_testcoveragesummary,
      ":testpkg", "vx/collection", 
      ":constnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      ":docnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 100, ":tests", 30, ":total", 30), 
      ":funcnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 82, ":tests", 23, ":total", 28), 
      ":bigospacenums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 30), 
      ":bigotimenums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 30), 
      ":totalnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 82, ":tests", 23, ":total", 28), 
      ":typenums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0)
    )
    return output
  }

  public static func test_coveragedetail() -> any Vx_Test.Type_testcoveragedetail {
    let output : any Vx_Test.Type_testcoveragedetail = Vx_Core.vx_new(
      Vx_Test.t_testcoveragedetail,
      ":testpkg", "vx/collection",
      ":typemap", Vx_Core.e_intmap, 
      ":constmap", Vx_Core.e_intmap, 
      ":funcmap", Vx_Core.vx_new(
        Vx_Core.t_intmap,
        ":-", 1,
        ":-_1", 1,
        ":any<-for-until-loop", 1,
        ":any<-for-until-loop-max", 0,
        ":any<-for-while-loop", 1,
        ":any<-for-while-loop-max", 0,
        ":any<-map-pos", 0,
        ":anymap<-struct", 1,
        ":boolean-write<-map-removekey", 0,
        ":boolean-write<-map-removekeys", 0,
        ":int<-map-key", 1,
        ":int<-stringlist-find", 1,
        ":is-list", 1,
        ":is-map", 1,
        ":list<-for-end-loop", 1,
        ":list<-for-while-loop", 0,
        ":list<-for-while-loop-max", 0,
        ":list<-list-end", 1,
        ":list<-list-filter", 1,
        ":list<-list-filtertypes", 1,
        ":list<-list-flatten", 1,
        ":list<-list-join", 1,
        ":list<-list-join_1", 1,
        ":list<-list-start", 1,
        ":list<-list-start-end", 1,
        ":map<-map-end", 1,
        ":map<-map-keys", 1,
        ":map<-map-start", 1,
        ":map<-map-start-end", 1,
        ":map<-struct", 1
      )
    )
    return output
  }

  public static func test_package(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testpackage {
    let testcaselist : any Vx_Test.Type_testcaselist = test_cases(context)
    let output : any Vx_Test.Type_testpackage = Vx_Core.vx_new(
      Vx_Test.t_testpackage,
      ":testpkg", "vx/collection", 
      ":caselist", testcaselist,
      ":coveragesummary", test_coveragesummary(),
      ":coveragedetail", test_coveragedetail()
    )
    return output
  }

}
