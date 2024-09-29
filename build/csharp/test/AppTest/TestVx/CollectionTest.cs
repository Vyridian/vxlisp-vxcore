
namespace AppTest.TestVx;

public class CollectionTest {

  public static Vx.Test.Type_testcase f_minus(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "-",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_minus_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_minus_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"d\")\n (- : stringlist\n  (stringlist \"a\" \"b\" \"c\" \"d\")\n  (stringlist \"b\" \"c\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a"),
            Vx.Core.vx_new_string("d")
          )
        ),
        Vx.Collection.f_minus(
          Vx.Core.t_stringlist,
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c"),
              Vx.Core.vx_new_string("d")
            )
          ),
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_minus_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "-_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_minus_1_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_minus_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"1\"\n  :d \"4\")\n (- : stringmap\n  (stringmap\n   :a \"1\"\n   :b \"2\"\n   :c \"3\"\n   :d \"4\")\n  (stringmap\n   :b \"x\"\n   :c \"y\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("1"),
            Vx.Core.vx_new_string(":d"),
            Vx.Core.vx_new_string("4")
          )
        ),
        Vx.Collection.f_minus_1(
          Vx.Core.t_stringmap,
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("2"),
              Vx.Core.vx_new_string(":c"),
              Vx.Core.vx_new_string("3"),
              Vx.Core.vx_new_string(":d"),
              Vx.Core.vx_new_string("4")
            )
          ),
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("x"),
              Vx.Core.vx_new_string(":c"),
              Vx.Core.vx_new_string("y")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_any_from_for_until_loop(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "any<-for-until-loop",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_any_from_for_until_loop_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_any_from_for_until_loop_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 8\n (any<-for-until-loop\n  1\n  (fn : boolean\n   [current : int]\n   (> current 6))\n  (fn : int\n   [current : int]\n   (+ current current))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(8),
        Vx.Collection.f_any_from_for_until_loop(
          Vx.Core.t_int,
          Vx.Core.vx_new_int(1),
          Vx.Core.t_boolean_from_any.vx_fn_new((current_any) => {
            Vx.Core.Type_int current = Vx.Core.f_any_from_any(Vx.Core.t_int, current_any);
            Vx.Core.Type_any output_1 = Vx.Core.f_gt(
              current,
              Vx.Core.vx_new_int(6)
            );
            return output_1;
          }),
          Vx.Core.t_any_from_any.vx_fn_new((current_any) => {
            Vx.Core.Type_int current = Vx.Core.f_any_from_any(Vx.Core.t_int, current_any);
            Vx.Core.Type_any output_2 = Vx.Core.f_plus(
              current,
              current
            );
            return output_2;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_any_from_for_while_loop(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "any<-for-while-loop",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_any_from_for_while_loop_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_any_from_for_while_loop_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 8\n (any<-for-while-loop\n  1\n  (fn : boolean\n   [current : int]\n   (< current 5))\n  (fn : int\n   [current : int]\n   (+ current current))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(8),
        Vx.Collection.f_any_from_for_while_loop(
          Vx.Core.t_int,
          Vx.Core.vx_new_int(1),
          Vx.Core.t_boolean_from_any.vx_fn_new((current_any) => {
            Vx.Core.Type_int current = Vx.Core.f_any_from_any(Vx.Core.t_int, current_any);
            Vx.Core.Type_any output_1 = Vx.Core.f_lt(
              current,
              Vx.Core.vx_new_int(5)
            );
            return output_1;
          }),
          Vx.Core.t_any_from_any.vx_fn_new((current_any) => {
            Vx.Core.Type_int current = Vx.Core.f_any_from_any(Vx.Core.t_int, current_any);
            Vx.Core.Type_any output_2 = Vx.Core.f_plus(
              current,
              current
            );
            return output_2;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_anymap_from_struct(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "anymap<-struct",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_anymap_from_struct_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_anymap_from_struct_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (anymap\n  :name \"sname\"\n  :wordmap\n   (stringmap\n    :a \"x\"))\n (anymap<-struct\n  (translation\n   :name \"sname\"\n   :wordmap\n    (stringmap\n     :a \"x\"))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_anymap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":name"),
            Vx.Core.vx_new_string("sname"),
            Vx.Core.vx_new_string(":wordmap"),
            Vx.Core.f_new(
              Vx.Core.t_stringmap,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.vx_new_string(":a"),
                Vx.Core.vx_new_string("x")
              )
            )
          )
        ),
        Vx.Collection.f_anymap_from_struct(
          Vx.Core.f_new(
            Vx.Core.t_translation,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":name"),
              Vx.Core.vx_new_string("sname"),
              Vx.Core.vx_new_string(":wordmap"),
              Vx.Core.f_new(
                Vx.Core.t_stringmap,
                Vx.Core.vx_new(
                  Vx.Core.t_anylist,
                  Vx.Core.vx_new_string(":a"),
                  Vx.Core.vx_new_string("x")
                )
              )
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_int_from_map_key(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "int<-map-key",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_int_from_map_key_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_int_from_map_key_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 2\n (int<-map-key\n  (stringmap\n   :a \"x\"\n   :b \"y\")\n  \"b\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(2),
        Vx.Collection.f_int_from_map_key(
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("x"),
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("y")
            )
          ),
          Vx.Core.vx_new_string("b")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_int_from_stringlist_find(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "int<-stringlist-find",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_int_from_stringlist_find_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_int_from_stringlist_find_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 2\n (int<-stringlist-find\n  (stringlist \"a\" \"b\")\n  \"b\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(2),
        Vx.Collection.f_int_from_stringlist_find(
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b")
            )
          ),
          Vx.Core.vx_new_string("b")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_is_list(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "is-list",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_is_list_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_list_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (is-list (empty stringlist)))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Collection.f_is_list(
          Vx.Core.f_empty(
            Vx.Core.t_stringlist
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_is_map(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "is-map",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_is_map_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_map_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (is-map (empty stringmap)))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Collection.f_is_map(
          Vx.Core.f_empty(
            Vx.Core.t_stringmap
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_list_from_for_end_loop(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-for-end-loop",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_list_from_for_end_loop_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_list_from_for_end_loop_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (intlist 4 9)\n (list<-for-end-loop : intlist\n  2\n  3\n  (fn\n   [current : int]\n   (* current current))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_intlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_int(4),
            Vx.Core.vx_new_int(9)
          )
        ),
        Vx.Collection.f_list_from_for_end_loop(
          Vx.Core.t_intlist,
          Vx.Core.vx_new_int(2),
          Vx.Core.vx_new_int(3),
          Vx.Core.t_any_from_int.vx_fn_new((current_any) => {
            Vx.Core.Type_int current = Vx.Core.f_any_from_any(Vx.Core.t_int, current_any);
            Vx.Core.Type_any output_1 = Vx.Core.f_multiply(
              current,
              current
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_list_from_list_end(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-end",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_list_from_list_end_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_list_from_list_end_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist\n  \"a\" \"b\" \"c\")\n (list<-list-end\n  (stringlist\n   \"a\" \"b\" \"c\" \"d\")\n  3))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a"),
            Vx.Core.vx_new_string("b"),
            Vx.Core.vx_new_string("c")
          )
        ),
        Vx.Collection.f_list_from_list_end(
          Vx.Core.t_stringlist,
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c"),
              Vx.Core.vx_new_string("d")
            )
          ),
          Vx.Core.vx_new_int(3)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_list_from_list_filter(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-filter",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_list_from_list_filter_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_list_from_list_filter_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist\n  \"a1\" \"b1\" \"c1\" \"d1\")\n (list<-list-filter : stringlist\n  (list\n   \"a\" 4 \"b\" (list) \"c\" (map) \"d\")\n  (fn : string\n   [value : any]\n   (if\n    (then\n     (is-string value)\n     (string value \"1\"))))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a1"),
            Vx.Core.vx_new_string("b1"),
            Vx.Core.vx_new_string("c1"),
            Vx.Core.vx_new_string("d1")
          )
        ),
        Vx.Collection.f_list_from_list_filter(
          Vx.Core.t_stringlist,
          Vx.Core.f_new(
            Vx.Core.t_list,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_int(4),
              Vx.Core.vx_new_string("b"),
              Vx.Core.f_empty(
                Vx.Core.t_list
              ),
              Vx.Core.vx_new_string("c"),
              Vx.Core.f_empty(
                Vx.Core.t_map
              ),
              Vx.Core.vx_new_string("d")
            )
          ),
          Vx.Core.t_any_from_any.vx_fn_new((value_any) => {
            Vx.Core.Type_any value = Vx.Core.f_any_from_any(Vx.Core.t_any, value_any);
            Vx.Core.Type_any output_1 = Vx.Core.f_if_2(
              Vx.Core.t_string,
              Vx.Core.vx_new(
                Vx.Core.t_thenelselist,
                Vx.Core.f_then(
                  Vx.Core.t_boolean_from_func.vx_fn_new(() => {
                    Vx.Core.Type_any output_2 = Vx.Type.f_is_string(
                      value
                    );
                    return output_2;
                  }),
                  Vx.Core.t_any_from_func.vx_fn_new(() => {
                    Vx.Core.Type_any output_3 = Vx.Core.f_new(
                      Vx.Core.t_string,
                      Vx.Core.vx_new(
                        Vx.Core.t_anylist,
                        value,
                        Vx.Core.vx_new_string("1")
                      )
                    );
                    return output_3;
                  })
                )
              )
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_list_from_list_filtertypes(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-filtertypes",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_list_from_list_filtertypes_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_list_from_list_filtertypes_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (list\n  \"a\" 1 \"b\" \"c\")\n (list<-list-filtertypes : list\n  (list\n   \"a\" 1 \"b\" \"c\" 4.5)\n  string int))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_list,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a"),
            Vx.Core.vx_new_int(1),
            Vx.Core.vx_new_string("b"),
            Vx.Core.vx_new_string("c")
          )
        ),
        Vx.Collection.f_list_from_list_filtertypes(
          Vx.Core.t_list,
          Vx.Core.f_new(
            Vx.Core.t_list,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_int(1),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c"),
              Vx.Core.vx_new_decimal("4.5")
            )
          ),
          Vx.Core.vx_new(
            Vx.Core.t_typelist,
            Vx.Core.t_string,
            Vx.Core.t_int
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_list_from_list_start(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-start",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_list_from_list_start_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_list_from_list_start_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist\n  \"b\" \"c\" \"d\")\n (list<-list-start\n  (stringlist\n   \"a\" \"b\" \"c\" \"d\")\n  2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("b"),
            Vx.Core.vx_new_string("c"),
            Vx.Core.vx_new_string("d")
          )
        ),
        Vx.Collection.f_list_from_list_start(
          Vx.Core.t_stringlist,
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c"),
              Vx.Core.vx_new_string("d")
            )
          ),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_list_from_list_start_end(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "list<-list-start-end",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_list_from_list_start_end_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_list_from_list_start_end_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist\n  \"b\" \"c\")\n (list<-list-start-end\n  (stringlist\n   \"a\" \"b\" \"c\" \"d\")\n  2 3))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("b"),
            Vx.Core.vx_new_string("c")
          )
        ),
        Vx.Collection.f_list_from_list_start_end(
          Vx.Core.t_stringlist,
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c"),
              Vx.Core.vx_new_string("d")
            )
          ),
          Vx.Core.vx_new_int(2),
          Vx.Core.vx_new_int(3)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_map_from_map_end(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "map<-map-end",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_map_from_map_end_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_map_from_map_end_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :b \"1\"\n  :a \"2\")\n (map<-map-end\n  (stringmap\n   :b \"1\"\n   :a \"2\"\n   :c \"3\")\n  2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":b"),
            Vx.Core.vx_new_string("1"),
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("2")
          )
        ),
        Vx.Collection.f_map_from_map_end(
          Vx.Core.t_stringmap,
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("2"),
              Vx.Core.vx_new_string(":c"),
              Vx.Core.vx_new_string("3")
            )
          ),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_map_from_map_keys(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "map<-map-keys",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_map_from_map_keys_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_map_from_map_keys_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :c \"3\"\n  :a \"1\")\n (map<-map-keys\n  (stringmap\n   :a \"1\"\n   :b \"2\"\n   :c \"3\")\n  (stringlist\n   \"c\" \"a\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":c"),
            Vx.Core.vx_new_string("3"),
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("1")
          )
        ),
        Vx.Collection.f_map_from_map_keys(
          Vx.Core.t_stringmap,
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("2"),
              Vx.Core.vx_new_string(":c"),
              Vx.Core.vx_new_string("3")
            )
          ),
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("c"),
              Vx.Core.vx_new_string("a")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_map_from_map_start(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "map<-map-start",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_map_from_map_start_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_map_from_map_start_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"2\"\n  :c \"3\")\n (map<-map-start\n  (stringmap\n   :b \"1\"\n   :a \"2\"\n   :c \"3\")\n  2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("2"),
            Vx.Core.vx_new_string(":c"),
            Vx.Core.vx_new_string("3")
          )
        ),
        Vx.Collection.f_map_from_map_start(
          Vx.Core.t_stringmap,
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("2"),
              Vx.Core.vx_new_string(":c"),
              Vx.Core.vx_new_string("3")
            )
          ),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_map_from_map_start_end(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "map<-map-start-end",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_map_from_map_start_end_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_map_from_map_start_end_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"2\"\n  :c \"3\")\n (map<-map-start-end\n  (stringmap\n   :b \"1\"\n   :a \"2\"\n   :c \"3\"\n   :d \"4\")\n  2 3))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("2"),
            Vx.Core.vx_new_string(":c"),
            Vx.Core.vx_new_string("3")
          )
        ),
        Vx.Collection.f_map_from_map_start_end(
          Vx.Core.t_stringmap,
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("2"),
              Vx.Core.vx_new_string(":c"),
              Vx.Core.vx_new_string("3"),
              Vx.Core.vx_new_string(":d"),
              Vx.Core.vx_new_string("4")
            )
          ),
          Vx.Core.vx_new_int(2),
          Vx.Core.vx_new_int(3)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_map_from_struct(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/collection",
      ":casename", "map<-struct",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_map_from_struct_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_map_from_struct_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :name \"sname\")\n (map<-struct : stringmap\n  (translation\n   :name \"sname\"\n   :wordmap\n    (stringmap\n     :a \"x\"))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":name"),
            Vx.Core.vx_new_string("sname")
          )
        ),
        Vx.Collection.f_map_from_struct(
          Vx.Core.t_stringmap,
          Vx.Core.f_new(
            Vx.Core.t_translation,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":name"),
              Vx.Core.vx_new_string("sname"),
              Vx.Core.vx_new_string(":wordmap"),
              Vx.Core.f_new(
                Vx.Core.t_stringmap,
                Vx.Core.vx_new(
                  Vx.Core.t_anylist,
                  Vx.Core.vx_new_string(":a"),
                  Vx.Core.vx_new_string("x")
                )
              )
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcaselist test_cases(Vx.Core.Type_context context) {
    object[] testcases = [
      CollectionTest.f_minus(context),
      CollectionTest.f_minus_1(context),
      CollectionTest.f_any_from_for_until_loop(context),
      CollectionTest.f_any_from_for_while_loop(context),
      CollectionTest.f_anymap_from_struct(context),
      CollectionTest.f_int_from_map_key(context),
      CollectionTest.f_int_from_stringlist_find(context),
      CollectionTest.f_is_list(context),
      CollectionTest.f_is_map(context),
      CollectionTest.f_list_from_for_end_loop(context),
      CollectionTest.f_list_from_list_end(context),
      CollectionTest.f_list_from_list_filter(context),
      CollectionTest.f_list_from_list_filtertypes(context),
      CollectionTest.f_list_from_list_start(context),
      CollectionTest.f_list_from_list_start_end(context),
      CollectionTest.f_map_from_map_end(context),
      CollectionTest.f_map_from_map_keys(context),
      CollectionTest.f_map_from_map_start(context),
      CollectionTest.f_map_from_map_start_end(context),
      CollectionTest.f_map_from_struct(context)
    ];
    Vx.Test.Type_testcaselist output = Vx.Core.vx_new(
      Vx.Test.t_testcaselist,
      testcases
    );
    return output;
  }

  public static Vx.Test.Type_testcoveragesummary test_coveragesummary() {
    Vx.Test.Type_testcoveragesummary output = Vx.Core.vx_new(
      Vx.Test.t_testcoveragesummary,
      ":testpkg", "vx/collection", 
      ":constnums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      ":docnums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 100, ":tests", 27, ":total", 27), 
      ":funcnums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 76, ":tests", 20, ":total", 26), 
      ":bigospacenums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 27), 
      ":bigotimenums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 27), 
      ":totalnums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 76, ":tests", 20, ":total", 26), 
      ":typenums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0)
    );
    return output;
  }

  public static Vx.Test.Type_testcoveragedetail test_coveragedetail() {
    Vx.Test.Type_testcoveragedetail output = Vx.Core.vx_new(
      Vx.Test.t_testcoveragedetail,
      ":testpkg", "vx/collection",
      ":typemap", Vx.Core.e_intmap, 
      ":constmap", Vx.Core.e_intmap, 
      ":funcmap", Vx.Core.vx_new(
        Vx.Core.t_intmap,
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
        ":list<-list-start", 1,
        ":list<-list-start-end", 1,
        ":map<-map-end", 1,
        ":map<-map-keys", 1,
        ":map<-map-start", 1,
        ":map<-map-start-end", 1,
        ":map<-struct", 1
      )
    );
    return output;
  }

  public static Vx.Test.Type_testpackage test_package(Vx.Core.Type_context context) {
    Vx.Test.Type_testcaselist testcaselist = test_cases(context);
    Vx.Test.Type_testpackage output = Vx.Core.vx_new(
      Vx.Test.t_testpackage,
      ":testpkg", "vx/collection", 
      ":caselist", testcaselist,
      ":coveragesummary", test_coveragesummary(),
      ":coveragedetail", test_coveragedetail()
    );
    return output;
  }

}
