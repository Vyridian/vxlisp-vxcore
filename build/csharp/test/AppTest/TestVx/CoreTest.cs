
namespace AppTest.TestVx;

public class CoreTest {

  public static Vx.Test.Type_testcase t_boolean(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "boolean",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        t_boolean_testdescribe_1(context),
        t_boolean_testdescribe_2(context),
        t_boolean_testdescribe_3(context),
        t_boolean_testdescribe_4(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_boolean_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true true)",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.vx_new_boolean(true)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_boolean_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false false)",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.vx_new_boolean(false)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_boolean_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (boolean true))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_new(
          Vx.Core.t_boolean,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_boolean(true)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_boolean_testdescribe_4(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false (boolean false))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_new(
          Vx.Core.t_boolean,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_boolean(false)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase t_float(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "float",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        t_float_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_float_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 4.5\n (float 4.5))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_decimal("4.5"),
        Vx.Core.f_new(
          Vx.Core.t_float,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_decimal("4.5")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase t_func(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "func",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        t_func_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_func_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 5\n (let\n  [funcvar : + := +]\n  (funcvar 2 3)))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(5),
        Vx.Core.f_let(
          Vx.Core.t_int,
          Vx.Core.t_any_from_func.vx_fn_new(() => {
            Vx.Core.Func_plus funcvar =   Vx.Core.t_plus;
            Vx.Core.Type_any output_1 = Vx.Core.vx_any_from_func(
              Vx.Core.t_int,
              funcvar,
              Vx.Core.vx_new_int(2),
              Vx.Core.vx_new_int(3)
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase t_funclist(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "funclist",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        t_funclist_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_funclist_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 2\n (length\n  (funclist\n   + -)))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(2),
        Vx.Core.f_length_1(
          Vx.Core.f_new(
            Vx.Core.t_funclist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.t_plus,
              Vx.Core.t_minus
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase t_int(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "int",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        t_int_testdescribe_1(context),
        t_int_testdescribe_2(context),
        t_int_testdescribe_3(context),
        t_int_testdescribe_4(context),
        t_int_testdescribe_5(context),
        t_int_testdescribe_6(context),
        t_int_testdescribe_7(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_int_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true  (is-int 4))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_int(
          Vx.Core.vx_new_int(4)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_int_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true  (is-int \"4\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_int(
          Vx.Core.vx_new_string("4")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_int_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true  (is-int infinity))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_int(
          Vx.Core.c_infinity
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_int_testdescribe_4(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true  (is-int neginfinity))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_int(
          Vx.Core.c_neginfinity
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_int_testdescribe_5(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true  (is-int notanumber))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_int(
          Vx.Core.c_notanumber
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_int_testdescribe_6(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false (is-int \"a\"))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_is_int(
          Vx.Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_int_testdescribe_7(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false (is-int 5.5))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_is_int(
          Vx.Core.vx_new_decimal("5.5")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase t_msgblock(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "msgblock",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        t_msgblock_testdescribe_1(context),
        t_msgblock_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_msgblock_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (decimal\n  (msgblock\n   :msgs\n    (msglist\n     (msg\n      :text \"Err\"))))\n (decimal\n  (msg\n   :text \"Err\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_decimal,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.f_new(
              Vx.Core.t_msgblock,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.vx_new_string(":msgs"),
                Vx.Core.f_new(
                  Vx.Core.t_msglist,
                  Vx.Core.vx_new(
                    Vx.Core.t_anylist,
                    Vx.Core.f_new(
                      Vx.Core.t_msg,
                      Vx.Core.vx_new(
                        Vx.Core.t_anylist,
                        Vx.Core.vx_new_string(":text"),
                        Vx.Core.vx_new_string("Err")
                      )
                    )
                  )
                )
              )
            )
          )
        ),
        Vx.Core.f_new(
          Vx.Core.t_decimal,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.f_new(
              Vx.Core.t_msg,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.vx_new_string(":text"),
                Vx.Core.vx_new_string("Err")
              )
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_msgblock_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (decimal\n  (msgblock\n   :msgs\n    (msglist\n     (msg :text \"Err\"))))\n (let : decimal\n  [mymsgblock : msgblock :=\n   (msgblock\n    (msg\n     :text \"Err\"))]\n  (decimal\n   (copy\n    mymsgblock\n    mymsgblock))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_decimal,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.f_new(
              Vx.Core.t_msgblock,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.vx_new_string(":msgs"),
                Vx.Core.f_new(
                  Vx.Core.t_msglist,
                  Vx.Core.vx_new(
                    Vx.Core.t_anylist,
                    Vx.Core.f_new(
                      Vx.Core.t_msg,
                      Vx.Core.vx_new(
                        Vx.Core.t_anylist,
                        Vx.Core.vx_new_string(":text"),
                        Vx.Core.vx_new_string("Err")
                      )
                    )
                  )
                )
              )
            )
          )
        ),
        Vx.Core.f_let(
          Vx.Core.t_decimal,
          Vx.Core.t_any_from_func.vx_fn_new(() => {
            Vx.Core.Type_msgblock mymsgblock = Vx.Core.f_new(
              Vx.Core.t_msgblock,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.f_new(
                  Vx.Core.t_msg,
                  Vx.Core.vx_new(
                    Vx.Core.t_anylist,
                    Vx.Core.vx_new_string(":text"),
                    Vx.Core.vx_new_string("Err")
                  )
                )
              )
            );
            Vx.Core.Type_any output_1 = Vx.Core.f_new(
              Vx.Core.t_decimal,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.f_copy(
                  mymsgblock,
                  Vx.Core.vx_new(
                    Vx.Core.t_anylist,
                    mymsgblock
                  )
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

  public static Vx.Test.Type_testcase t_msgblocklist(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "msgblocklist",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        t_msgblocklist_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_msgblocklist_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (msgblocklist\n  (msgblock\n   (msg :text \"Err\")))\n (let : msgblocklist\n  [mymsgblock : msgblock :=\n   (msgblock\n    (msg :text \"Err\"))]\n  (msgblocklist\n   mymsgblock\n   mymsgblock)))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_msgblocklist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.f_new(
              Vx.Core.t_msgblock,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.f_new(
                  Vx.Core.t_msg,
                  Vx.Core.vx_new(
                    Vx.Core.t_anylist,
                    Vx.Core.vx_new_string(":text"),
                    Vx.Core.vx_new_string("Err")
                  )
                )
              )
            )
          )
        ),
        Vx.Core.f_let(
          Vx.Core.t_msgblocklist,
          Vx.Core.t_any_from_func.vx_fn_new(() => {
            Vx.Core.Type_msgblock mymsgblock = Vx.Core.f_new(
              Vx.Core.t_msgblock,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.f_new(
                  Vx.Core.t_msg,
                  Vx.Core.vx_new(
                    Vx.Core.t_anylist,
                    Vx.Core.vx_new_string(":text"),
                    Vx.Core.vx_new_string("Err")
                  )
                )
              )
            );
            Vx.Core.Type_any output_1 = Vx.Core.f_new(
              Vx.Core.t_msgblocklist,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                mymsgblock,
                mymsgblock
              )
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase t_msglist(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "msglist",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        t_msglist_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_msglist_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (msglist\n  (msg :text \"Err\"))\n (let : msglist\n  [mymsg : msg :=\n   (msg :text \"Err\")]\n  (msglist\n   mymsg\n   mymsg)))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_msglist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.f_new(
              Vx.Core.t_msg,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.vx_new_string(":text"),
                Vx.Core.vx_new_string("Err")
              )
            )
          )
        ),
        Vx.Core.f_let(
          Vx.Core.t_msglist,
          Vx.Core.t_any_from_func.vx_fn_new(() => {
            Vx.Core.Type_msg mymsg = Vx.Core.f_new(
              Vx.Core.t_msg,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.vx_new_string(":text"),
                Vx.Core.vx_new_string("Err")
              )
            );
            Vx.Core.Type_any output_1 = Vx.Core.f_new(
              Vx.Core.t_msglist,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                mymsg,
                mymsg
              )
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase t_string(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        t_string_testdescribe_1(context),
        t_string_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_string_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"a\" (string \"a\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("a"),
        Vx.Core.f_new(
          Vx.Core.t_string,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_string_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"ab\" (string \"a\" \"b\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("ab"),
        Vx.Core.f_new(
          Vx.Core.t_string,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a"),
            Vx.Core.vx_new_string("b")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase t_stringlist(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "stringlist",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        t_stringlist_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe t_stringlist_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (new : stringlist \"a\" \"b\" \"c\")\n (stringlist\n  (anylist\n   \"a\"\n   (stringlist \"b\" \"c\"))))",
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
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.f_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.vx_new_string("a"),
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
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase c_false(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "false",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        c_false_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe c_false_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false false)",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.vx_new_boolean(false)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase c_true(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "true",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        c_true_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe c_true_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true true)",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.vx_new_boolean(true)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_not(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "!",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_not_testdescribe_1(context),
        f_not_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_not_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false false)",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.vx_new_boolean(false)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_not_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false (! true))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_not(
          Vx.Core.vx_new_boolean(true)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_ne(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "!=",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_ne_testdescribe_1(context),
        f_ne_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_ne_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-ne true false)",
      ":testresult", Vx.Test.f_test_ne(
        context,
        Vx.Core.vx_new_boolean(true),
        Vx.Core.vx_new_boolean(false)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_ne_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-ne \"a\" \"b\")",
      ":testresult", Vx.Test.f_test_ne(
        context,
        Vx.Core.vx_new_string("a"),
        Vx.Core.vx_new_string("b")
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_multiply(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_multiply_testdescribe_1(context),
        f_multiply_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_multiply_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 6 (* 3 2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(6),
        Vx.Core.f_multiply(
          Vx.Core.vx_new_int(3),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_multiply_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test -10 (* 5 -2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(-10),
        Vx.Core.f_multiply(
          Vx.Core.vx_new_int(5),
          Vx.Core.vx_new_int(-2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_multiply_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_multiply_1_testdescribe_1(context),
        f_multiply_1_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_multiply_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 6.4 (* 3.2 2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_decimal("6.4"),
        Vx.Core.f_multiply_1(
          Vx.Core.vx_new_decimal("3.2"),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_multiply_1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test -10.2 (* 5.1 -2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_decimal("-10.2"),
        Vx.Core.f_multiply_1(
          Vx.Core.vx_new_decimal("5.1"),
          Vx.Core.vx_new_int(-2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_multiply_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*_2",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_multiply_2_testdescribe_1(context),
        f_multiply_2_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_multiply_2_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 24 (* 3 2 4))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(24),
        Vx.Core.f_multiply_2(
          Vx.Core.vx_new(
            Vx.Core.t_intlist,
            Vx.Core.vx_new_int(3),
            Vx.Core.vx_new_int(2),
            Vx.Core.vx_new_int(4)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_multiply_2_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test -20 (* 5 -2 2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(-20),
        Vx.Core.f_multiply_2(
          Vx.Core.vx_new(
            Vx.Core.t_intlist,
            Vx.Core.vx_new_int(5),
            Vx.Core.vx_new_int(-2),
            Vx.Core.vx_new_int(2)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_multiply_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*_3",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_multiply_3_testdescribe_1(context),
        f_multiply_3_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_multiply_3_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 24 (* 3 2 4))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(24),
        Vx.Core.f_multiply_2(
          Vx.Core.vx_new(
            Vx.Core.t_intlist,
            Vx.Core.vx_new_int(3),
            Vx.Core.vx_new_int(2),
            Vx.Core.vx_new_int(4)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_multiply_3_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test -20 (* 5 -2 2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(-20),
        Vx.Core.f_multiply_2(
          Vx.Core.vx_new(
            Vx.Core.t_intlist,
            Vx.Core.vx_new_int(5),
            Vx.Core.vx_new_int(-2),
            Vx.Core.vx_new_int(2)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_plus(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "+",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_plus_testdescribe_1(context),
        f_plus_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_plus_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 5 (+ 2 3))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(5),
        Vx.Core.f_plus(
          Vx.Core.vx_new_int(2),
          Vx.Core.vx_new_int(3)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_plus_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 3 (+ 5 -2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(3),
        Vx.Core.f_plus(
          Vx.Core.vx_new_int(5),
          Vx.Core.vx_new_int(-2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_plus_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "+_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_plus_1_testdescribe_1(context),
        f_plus_1_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_plus_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 5 (+ 2  3))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(5),
        Vx.Core.f_plus(
          Vx.Core.vx_new_int(2),
          Vx.Core.vx_new_int(3)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_plus_1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 3 (+ 5 -2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(3),
        Vx.Core.f_plus(
          Vx.Core.vx_new_int(5),
          Vx.Core.vx_new_int(-2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_plus1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "+1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_plus1_testdescribe_1(context),
        f_plus1_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_plus1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test  3 (+1  2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(3),
        Vx.Core.f_plus1(
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_plus1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test -1 (+1 -2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(-1),
        Vx.Core.f_plus1(
          Vx.Core.vx_new_int(-2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_minus(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "-",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_minus_testdescribe_1(context),
        f_minus_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_minus_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 1 (- 3 2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(1),
        Vx.Core.f_minus(
          Vx.Core.vx_new_int(3),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_minus_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 7 (- 5 -2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(7),
        Vx.Core.f_minus(
          Vx.Core.vx_new_int(5),
          Vx.Core.vx_new_int(-2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_minus_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "-_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_minus_1_testdescribe_1(context),
        f_minus_1_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_minus_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 5 (+ 2 3))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(5),
        Vx.Core.f_plus(
          Vx.Core.vx_new_int(2),
          Vx.Core.vx_new_int(3)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_minus_1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 3 (+ 5 -2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(3),
        Vx.Core.f_plus(
          Vx.Core.vx_new_int(5),
          Vx.Core.vx_new_int(-2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_minus1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "-1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_minus1_testdescribe_1(context),
        f_minus1_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_minus1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test  1 (-1  2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(1),
        Vx.Core.f_minus1(
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_minus1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test -3 (-1 -2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(-3),
        Vx.Core.f_minus1(
          Vx.Core.vx_new_int(-2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_divide(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "/",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_divide_testdescribe_1(context),
        f_divide_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_divide_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 3 (/ 6 2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(3),
        Vx.Core.f_divide(
          Vx.Core.vx_new_int(6),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_divide_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test -5 (/ 10 -2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(-5),
        Vx.Core.f_divide(
          Vx.Core.vx_new_int(10),
          Vx.Core.vx_new_int(-2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_lt(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_lt_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_lt_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (< 2 3))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_lt(
          Vx.Core.vx_new_int(2),
          Vx.Core.vx_new_int(3)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_lt_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_lt_1_testdescribe_1(context),
        f_lt_1_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_lt_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (< 2 3))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_lt(
          Vx.Core.vx_new_int(2),
          Vx.Core.vx_new_int(3)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_lt_1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (< \"b\" \"d\" \"z\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_lt_1(
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("b"),
            Vx.Core.vx_new_string("d"),
            Vx.Core.vx_new_string("z")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_chainfirst(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<-",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_chainfirst_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_chainfirst_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (*\n  (+\n   (- 5 3)\n   3)\n  2)\n (<-\n  5\n  (- 3)\n  (+ 3)\n  (* 2)))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_multiply(
          Vx.Core.f_plus(
            Vx.Core.f_minus(
              Vx.Core.vx_new_int(5),
              Vx.Core.vx_new_int(3)
            ),
            Vx.Core.vx_new_int(3)
          ),
          Vx.Core.vx_new_int(2)
        ),
        Vx.Core.f_multiply(
          Vx.Core.f_plus(
            Vx.Core.f_minus(
              Vx.Core.vx_new_int(5),
              Vx.Core.vx_new_int(3)
            ),
            Vx.Core.vx_new_int(3)
          ),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_chainlast(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<<-",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_chainlast_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_chainlast_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (* (+ (- 3 5) 3) 2)\n (<<-\n  5\n  (- 3)\n  (+ 3)\n  (* 2)))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_multiply(
          Vx.Core.f_plus(
            Vx.Core.f_minus(
              Vx.Core.vx_new_int(3),
              Vx.Core.vx_new_int(5)
            ),
            Vx.Core.vx_new_int(3)
          ),
          Vx.Core.vx_new_int(2)
        ),
        Vx.Core.f_multiply(
          Vx.Core.vx_new_int(2),
          Vx.Core.f_plus(
            Vx.Core.vx_new_int(3),
            Vx.Core.f_minus(
              Vx.Core.vx_new_int(3),
              Vx.Core.vx_new_int(5)
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_le(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<=",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_le_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_le_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (<= 2 3))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_le(
          Vx.Core.vx_new_int(2),
          Vx.Core.vx_new_int(3)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_le_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<=_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_le_1_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_le_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (<= \"b\" \"d\" \"z\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_le_1(
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("b"),
            Vx.Core.vx_new_string("d"),
            Vx.Core.vx_new_string("z")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_eq(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "=",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_eq_testdescribe_1(context),
        f_eq_testdescribe_2(context),
        f_eq_testdescribe_3(context),
        f_eq_testdescribe_4(context),
        f_eq_testdescribe_5(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_eq_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (= true true))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_eq(
          Vx.Core.vx_new_boolean(true),
          Vx.Core.vx_new_boolean(true)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_eq_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (= 2 2))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_eq(
          Vx.Core.vx_new_int(2),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_eq_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (= \"a\" \"a\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_eq(
          Vx.Core.vx_new_string("a"),
          Vx.Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_eq_testdescribe_4(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (=\n  (stringlist \"a\" \"b\" \"c\")\n  (new : stringlist \"a\" \"b\" \"c\")))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_eq(
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c")
            )
          ),
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_eq_testdescribe_5(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (=\n  (stringmap :a \"1\" :b \"2\")\n  (new : stringmap :a \"1\" :b \"2\")))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_eq(
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("2")
            )
          ),
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("2")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_eq_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "=_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_eq_1_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_eq_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false (= 2 2 3))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_eq_1(
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_int(2),
            Vx.Core.vx_new_int(2),
            Vx.Core.vx_new_int(3)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_eqeq(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "==",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_eqeq_testdescribe_1(context),
        f_eqeq_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_eqeq_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (== 0 0))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_eqeq(
          Vx.Core.vx_new_int(0),
          Vx.Core.vx_new_int(0)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_eqeq_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (== \"\" \"\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_eqeq(
          Vx.Core.vx_new_string(""),
          Vx.Core.vx_new_string("")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_gt(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_gt_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_gt_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (> 3 2))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_gt(
          Vx.Core.vx_new_int(3),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_gt_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_gt_1_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_gt_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (> \"z\" \"y\" \"b\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_gt_1(
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("z"),
            Vx.Core.vx_new_string("y"),
            Vx.Core.vx_new_string("b")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_ge(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">=",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_ge_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_ge_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (>= 3 2))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_ge(
          Vx.Core.vx_new_int(3),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_ge_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">=_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_ge_1_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_ge_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (>= \"z\" \"b\" \"b\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_ge_1(
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("z"),
            Vx.Core.vx_new_string("b"),
            Vx.Core.vx_new_string("b")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_and(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "and",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_and_testdescribe_1(context),
        f_and_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_and_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (and true true))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_and(
          Vx.Core.vx_new_boolean(true),
          Vx.Core.vx_new_boolean(true)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_and_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false\n (and true false))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_and(
          Vx.Core.vx_new_boolean(true),
          Vx.Core.vx_new_boolean(false)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_and_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "and_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_and_1_testdescribe_1(context),
        f_and_1_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_and_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (and true true true))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_and_1(
          Vx.Core.vx_new(
            Vx.Core.t_booleanlist,
            Vx.Core.vx_new_boolean(true),
            Vx.Core.vx_new_boolean(true),
            Vx.Core.vx_new_boolean(true)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_and_1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false\n (and true true false))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_and_1(
          Vx.Core.vx_new(
            Vx.Core.t_booleanlist,
            Vx.Core.vx_new_boolean(true),
            Vx.Core.vx_new_boolean(true),
            Vx.Core.vx_new_boolean(false)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_any_from_list(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-list",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_any_from_list_testdescribe_1(context),
        f_any_from_list_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_any_from_list_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (any<-list\n  (list \"a\" \"b\" \"c\")\n  2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("b"),
        Vx.Core.f_any_from_list(
          Vx.Core.t_any,
          Vx.Core.f_new(
            Vx.Core.t_list,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c")
            )
          ),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_any_from_list_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (:2 (stringlist \"a\" \"b\" \"c\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("b"),
        Vx.Core.f_any_from_list(
          Vx.Core.t_string,
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c")
            )
          ),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_any_from_list_start_reduce(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-list-start-reduce",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_any_from_list_start_reduce_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_any_from_list_start_reduce_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 24\n (any<-list-start-reduce : int\n  (intlist 3 2 4)\n  1\n  (fn : int\n   [total : int\n    num   : int]\n   (* total num))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(24),
        Vx.Core.f_any_from_list_start_reduce(
          Vx.Core.t_int,
          Vx.Core.f_new(
            Vx.Core.t_intlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_int(3),
              Vx.Core.vx_new_int(2),
              Vx.Core.vx_new_int(4)
            )
          ),
          Vx.Core.vx_new_int(1),
          Vx.Core.t_any_from_reduce.vx_fn_new((total_any, num_any) => {
            Vx.Core.Type_int total = Vx.Core.f_any_from_any(Vx.Core.t_int, total_any);
            Vx.Core.Type_int num = Vx.Core.f_any_from_any(Vx.Core.t_int, num_any);
            Vx.Core.Type_any output_1 = Vx.Core.f_multiply(
              total,
              num
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_any_from_map(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-map",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_any_from_map_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_any_from_map_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"v2\"\n (any<-map\n  (stringmap\n   :a \"v1\"\n   :b \"v2\"\n   :c \"v3\")\n  :b))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("v2"),
        Vx.Core.f_any_from_map(
          Vx.Core.t_string,
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("v1"),
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("v2"),
              Vx.Core.vx_new_string(":c"),
              Vx.Core.vx_new_string("v3")
            )
          ),
          Vx.Core.vx_new_string(":b")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_any_from_map_start_reduce(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-map-start-reduce",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_any_from_map_start_reduce_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_any_from_map_start_reduce_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"xayb\"\n (any<-map-start-reduce\n  (stringmap\n   :a \"x\"\n   :b \"y\")\n  \"\"\n  (fn : string\n   [current : string\n    key     : string\n    value   : any]\n   (copy current\n    value\n    key))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("xayb"),
        Vx.Core.f_any_from_map_start_reduce(
          Vx.Core.t_string,
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
          Vx.Core.vx_new_string(""),
          Vx.Core.t_any_from_any_key_value.vx_fn_new((current_any, key_any, value_any) => {
            Vx.Core.Type_string current = Vx.Core.f_any_from_any(Vx.Core.t_string, current_any);
            Vx.Core.Type_string key = Vx.Core.f_any_from_any(Vx.Core.t_string, key_any);
            Vx.Core.Type_any value = Vx.Core.f_any_from_any(Vx.Core.t_any, value_any);
            Vx.Core.Type_any output_1 = Vx.Core.f_copy(
              current,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                value,
                key
              )
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_any_from_struct(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-struct",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_any_from_struct_testdescribe_1(context),
        f_any_from_struct_testdescribe_2(context),
        f_any_from_struct_testdescribe_3(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_any_from_struct_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"sname\"\n (any<-struct : string\n  (translation\n   :name \"sname\")\n  :name))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("sname"),
        Vx.Core.f_new(
          Vx.Core.t_translation,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":name"),
            Vx.Core.vx_new_string("sname")
          )
        ).name()
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_any_from_struct_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"sname\"\n (any<-struct : string\n  (translation\n   :name \"sname\")\n  \"name\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("sname"),
        Vx.Core.f_new(
          Vx.Core.t_translation,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":name"),
            Vx.Core.vx_new_string("sname")
          )
        ).name()
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_any_from_struct_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"sname\"\n (any<-struct : string\n  (translation\n   :name \"sname\")\n  \":name\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("sname"),
        Vx.Core.f_new(
          Vx.Core.t_translation,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":name"),
            Vx.Core.vx_new_string("sname")
          )
        ).name()
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_boolean_write_from_map_name_value(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "boolean-write<-map-name-value",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_boolean_write_from_map_name_value_testdescribe_1(context),
        f_boolean_write_from_map_name_value_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_boolean_write_from_map_name_value_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmutablemap\n  :b \"y\"\n  :a \"x\")\n (let : stringmutablemap\n  [smap : stringmutablemap :=\n    (stringmutablemap\n     :b \"y\")\n   iswrite : boolean :=\n    (boolean-write<-map-name-value\n     smap :a \"x\")]\n  smap))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmutablemap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":b"),
            Vx.Core.vx_new_string("y"),
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("x")
          )
        ),
        Vx.Core.f_let(
          Vx.Core.t_stringmutablemap,
          Vx.Core.t_any_from_func.vx_fn_new(() => {
            Vx.Core.Type_stringmutablemap smap = Vx.Core.f_new(
              Vx.Core.t_stringmutablemap,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.vx_new_string(":b"),
                Vx.Core.vx_new_string("y")
              )
            );
            Vx.Core.Type_boolean iswrite = Vx.Core.f_boolean_write_from_map_name_value(
              smap,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("x")
            );
            Vx.Core.Type_any output_1 = smap;
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_boolean_write_from_map_name_value_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmutablemap\n  :a \"x\")\n (let : stringmutablemap\n  [smap : stringmutablemap :=\n    (stringmutablemap\n     :b \"y\"\n     :a \"x\")\n   iswrite : boolean :=\n    (boolean-write<-map-name-value\n     smap :b \"\")]\n  smap))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmutablemap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("x")
          )
        ),
        Vx.Core.f_let(
          Vx.Core.t_stringmutablemap,
          Vx.Core.t_any_from_func.vx_fn_new(() => {
            Vx.Core.Type_stringmutablemap smap = Vx.Core.f_new(
              Vx.Core.t_stringmutablemap,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.vx_new_string(":b"),
                Vx.Core.vx_new_string("y"),
                Vx.Core.vx_new_string(":a"),
                Vx.Core.vx_new_string("x")
              )
            );
            Vx.Core.Type_boolean iswrite = Vx.Core.f_boolean_write_from_map_name_value(
              smap,
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("")
            );
            Vx.Core.Type_any output_2 = smap;
            return output_2;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_compare(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "compare",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_compare_testdescribe_1(context),
        f_compare_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_compare_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 1 (compare 3 2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(1),
        Vx.Core.f_compare(
          Vx.Core.vx_new_int(3),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_compare_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 1 (compare \"z\" \"a\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(1),
        Vx.Core.f_compare(
          Vx.Core.vx_new_string("z"),
          Vx.Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_constdef_from_any(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "constdef<-any",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_constdef_from_any_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_constdef_from_any_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (constdef\n  :pkgname \"vx/core\"\n  :name \"false\"\n  :type boolean)\n (constdef<-any false))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_constdef,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":pkgname"),
            Vx.Core.vx_new_string("vx/core"),
            Vx.Core.vx_new_string(":name"),
            Vx.Core.vx_new_string("false"),
            Vx.Core.vx_new_string(":type"),
            Vx.Core.t_boolean
          )
        ),
        Vx.Core.f_constdef_from_any(
          Vx.Core.vx_new_boolean(false)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_constname_from_any(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "constname<-any",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_constname_from_any_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_constname_from_any_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"vx/core/false\"\n (constname<-any false))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("vx/core/false"),
        Vx.Core.f_constname_from_any(
          Vx.Core.vx_new_boolean(false)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_contains(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "contains",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_contains_testdescribe_1(context),
        f_contains_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_contains_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true  (contains \"abcde\" \"cd\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_contains(
          Vx.Core.vx_new_string("abcde"),
          Vx.Core.vx_new_string("cd")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_contains_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false (contains \"abcde\" \"dc\"))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_contains(
          Vx.Core.vx_new_string("abcde"),
          Vx.Core.vx_new_string("dc")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_contains_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "contains_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_contains_1_testdescribe_1(context),
        f_contains_1_testdescribe_2(context),
        f_contains_1_testdescribe_3(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_contains_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (contains (stringlist \"1\" \"2\" \"3\") \"2\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_contains_1(
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string("2"),
              Vx.Core.vx_new_string("3")
            )
          ),
          Vx.Core.vx_new_string("2")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_contains_1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (contains (intlist 1 2 3) 2))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_contains_1(
          Vx.Core.f_new(
            Vx.Core.t_intlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_int(1),
              Vx.Core.vx_new_int(2),
              Vx.Core.vx_new_int(3)
            )
          ),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_contains_1_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false\n (contains (list 1 \"2\" 3) 2))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_contains_1(
          Vx.Core.f_new(
            Vx.Core.t_list,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_int(1),
              Vx.Core.vx_new_string("2"),
              Vx.Core.vx_new_int(3)
            )
          ),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_copy(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "copy",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_copy_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_copy_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"1\"\n  :b \"2\")\n (copy\n  (stringmap :a \"1\")\n  :b \"2\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("1"),
            Vx.Core.vx_new_string(":b"),
            Vx.Core.vx_new_string("2")
          )
        ),
        Vx.Core.f_copy(
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("1")
            )
          ),
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":b"),
            Vx.Core.vx_new_string("2")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_empty(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "empty",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_empty_testdescribe_1(context),
        f_empty_testdescribe_2(context),
        f_empty_testdescribe_3(context),
        f_empty_testdescribe_4(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_empty_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test false  (empty boolean))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_boolean(false),
        Vx.Core.f_empty(
          Vx.Core.t_boolean
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_empty_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"\"     (empty string))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string(""),
        Vx.Core.f_empty(
          Vx.Core.t_string
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_empty_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test (list) (empty list))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_empty(
          Vx.Core.t_list
        ),
        Vx.Core.f_empty(
          Vx.Core.t_list
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_empty_testdescribe_4(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test (map)  (empty map))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_empty(
          Vx.Core.t_map
        ),
        Vx.Core.f_empty(
          Vx.Core.t_map
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_first_from_list(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "first<-list",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_first_from_list_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_first_from_list_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (first<-list\n  (stringlist\n   \"b\"\n   \"c\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("b"),
        Vx.Core.f_first_from_list(
          Vx.Core.t_string,
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

  public static Vx.Test.Type_testcase f_first_from_list_any_from_any(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "first<-list-any<-any",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_first_from_list_any_from_any_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_first_from_list_any_from_any_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (first<-list-any<-any : string\n  (list nothing \"b\" \"c\")\n  resolve))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("b"),
        Vx.Core.f_first_from_list_any_from_any(
          Vx.Core.t_string,
          Vx.Core.f_new(
            Vx.Core.t_list,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.c_nothing,
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c")
            )
          ),
          Vx.Core.t_resolve
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_float_from_string(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "float<-string",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_float_from_string_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_float_from_string_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (float 2.3)\n (float<-string\n  \"2.3\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_float,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_decimal("2.3")
          )
        ),
        Vx.Core.f_float_from_string(
          Vx.Core.vx_new_string("2.3")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_if(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "if",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_if_testdescribe_1(context),
        f_if_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_if_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"a\"\n (if (= 2 2) \"a\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("a"),
        Vx.Core.f_if(
          Vx.Core.t_string,
          Vx.Core.f_eq(
            Vx.Core.vx_new_int(2),
            Vx.Core.vx_new_int(2)
          ),
          Vx.Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_if_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"\"\n (if : string\n  (= 1 2)\n  \"a\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string(""),
        Vx.Core.f_if(
          Vx.Core.t_string,
          Vx.Core.f_eq(
            Vx.Core.vx_new_int(1),
            Vx.Core.vx_new_int(2)
          ),
          Vx.Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_if_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "if_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_if_1_testdescribe_1(context),
        f_if_1_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_if_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"a\"\n (if\n  (= 2 2)\n  \"a\"\n  \"b\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("a"),
        Vx.Core.f_if_1(
          Vx.Core.t_string,
          Vx.Core.f_eq(
            Vx.Core.vx_new_int(2),
            Vx.Core.vx_new_int(2)
          ),
          Vx.Core.vx_new_string("a"),
          Vx.Core.vx_new_string("b")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_if_1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (if\n  (= 1 2)\n  \"a\"\n  \"b\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("b"),
        Vx.Core.f_if_1(
          Vx.Core.t_string,
          Vx.Core.f_eq(
            Vx.Core.vx_new_int(1),
            Vx.Core.vx_new_int(2)
          ),
          Vx.Core.vx_new_string("a"),
          Vx.Core.vx_new_string("b")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_if_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "if_2",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_if_2_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_if_2_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (if\n  (then (= 2 3) false)\n  (then (!= 3 3) false)\n  (else (! false))))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_if_2(
          Vx.Core.t_any,
          Vx.Core.vx_new(
            Vx.Core.t_thenelselist,
            Vx.Core.f_then(
              Vx.Core.t_boolean_from_func.vx_fn_new(() => {
                Vx.Core.Type_any output_1 = Vx.Core.f_eq(
                  Vx.Core.vx_new_int(2),
                  Vx.Core.vx_new_int(3)
                );
                return output_1;
              }),
              Vx.Core.t_any_from_func.vx_fn_new(() => {
                Vx.Core.Type_any output_2 = Vx.Core.vx_new_boolean(false);
                return output_2;
              })
            ),
            Vx.Core.f_then(
              Vx.Core.t_boolean_from_func.vx_fn_new(() => {
                Vx.Core.Type_any output_3 = Vx.Core.f_ne(
                  Vx.Core.vx_new_int(3),
                  Vx.Core.vx_new_int(3)
                );
                return output_3;
              }),
              Vx.Core.t_any_from_func.vx_fn_new(() => {
                Vx.Core.Type_any output_4 = Vx.Core.vx_new_boolean(false);
                return output_4;
              })
            ),
            Vx.Core.f_else(
              Vx.Core.t_any_from_func.vx_fn_new(() => {
                Vx.Core.Type_any output_5 = Vx.Core.f_not(
                  Vx.Core.vx_new_boolean(false)
                );
                return output_5;
              })
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_int_from_string(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "int<-string",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_int_from_string_testdescribe_1(context),
        f_int_from_string_testdescribe_2(context),
        f_int_from_string_testdescribe_3(context),
        f_int_from_string_testdescribe_4(context),
        f_int_from_string_testdescribe_5(context),
        f_int_from_string_testdescribe_6(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_int_from_string_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 4 (int<-string \"4\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(4),
        Vx.Core.f_int_from_string(
          Vx.Core.vx_new_string("4")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_int_from_string_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 5 (int<-string \"5.4\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(5),
        Vx.Core.f_int_from_string(
          Vx.Core.vx_new_string("5.4")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_int_from_string_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 5 (int<-string \"5.9\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(5),
        Vx.Core.f_int_from_string(
          Vx.Core.vx_new_string("5.9")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_int_from_string_testdescribe_4(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test notanumber  (int<-string \"notanumber\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.c_notanumber,
        Vx.Core.f_int_from_string(
          Vx.Core.vx_new_string("notanumber")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_int_from_string_testdescribe_5(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test infinity    (int<-string \"infinity\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.c_infinity,
        Vx.Core.f_int_from_string(
          Vx.Core.vx_new_string("infinity")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_int_from_string_testdescribe_6(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test neginfinity (int<-string \"neginfinity\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.c_neginfinity,
        Vx.Core.f_int_from_string(
          Vx.Core.vx_new_string("neginfinity")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_is_empty_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-empty_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_is_empty_1_testdescribe_1(context),
        f_is_empty_1_testdescribe_2(context),
        f_is_empty_1_testdescribe_3(context),
        f_is_empty_1_testdescribe_4(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_empty_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (is-empty false))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_empty_1(
          Vx.Core.vx_new_boolean(false)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_empty_1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (is-empty \"\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_empty(
          Vx.Core.vx_new_string("")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_empty_1_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (is-empty (list)))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_empty_1(
          Vx.Core.f_empty(
            Vx.Core.t_list
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_empty_1_testdescribe_4(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (is-empty (map)))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_empty_1(
          Vx.Core.f_empty(
            Vx.Core.t_map
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_is_error(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-error",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_is_error_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_error_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (is-error\n  (stringlist\n   (msg\n    :code \"My Err\"))))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_error(
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.f_new(
                Vx.Core.t_msg,
                Vx.Core.vx_new(
                  Vx.Core.t_anylist,
                  Vx.Core.vx_new_string(":code"),
                  Vx.Core.vx_new_string("My Err")
                )
              )
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_is_int(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-int",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_is_int_testdescribe_1(context),
        f_is_int_testdescribe_2(context),
        f_is_int_testdescribe_3(context),
        f_is_int_testdescribe_4(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_int_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (is-int 2))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_int(
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_int_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (is-int \"2\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_int(
          Vx.Core.vx_new_string("2")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_int_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (is-int infinity))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_int(
          Vx.Core.c_infinity
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_int_testdescribe_4(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true\n (is-int \"infinity\"))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_int(
          Vx.Core.vx_new_string("infinity")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_is_number(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-number",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_is_number_testdescribe_1(context),
        f_is_number_testdescribe_2(context),
        f_is_number_testdescribe_3(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_number_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true  (is-number 5))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_number(
          Vx.Core.vx_new_int(5)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_number_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true  (is-number 5.5))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_is_number(
          Vx.Core.vx_new_decimal("5.5")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_is_number_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false (is-number \"a\"))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_is_number(
          Vx.Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_last_from_list(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "last<-list",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_last_from_list_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_last_from_list_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"c\"\n (last<-list\n  (stringlist\n   \"b\"\n   \"c\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("c"),
        Vx.Core.f_last_from_list(
          Vx.Core.t_string,
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

  public static Vx.Test.Type_testcase f_length(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "length",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_length_testdescribe_1(context),
        f_length_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_length_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 4\n (length \"abcd\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(4),
        Vx.Core.f_length(
          Vx.Core.vx_new_string("abcd")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_length_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 0\n (length \"\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(0),
        Vx.Core.f_length(
          Vx.Core.vx_new_string("")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_length_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "length_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_length_1_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_length_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 3\n (length\n  (stringlist \"a\" \"b\" \"c\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(3),
        Vx.Core.f_length_1(
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_let(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "let",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_let_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_let_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n 7\n (let\n  [v1 : int := 2\n   v2 : int := (+ v1 3)]\n  (+ v1 v2)))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(7),
        Vx.Core.f_let(
          Vx.Core.t_int,
          Vx.Core.t_any_from_func.vx_fn_new(() => {
            Vx.Core.Type_int v1 = Vx.Core.vx_new_int(2);
            Vx.Core.Type_int v2 = Vx.Core.f_plus(
              v1,
              Vx.Core.vx_new_int(3)
            );
            Vx.Core.Type_any output_1 = Vx.Core.f_plus(
              v1,
              v2
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_list_from_list(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-list",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_list_from_list_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_list_from_list_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"10\" \"20\")\n (list<-list : stringlist\n  (anylist \"10\" \"20\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("10"),
            Vx.Core.vx_new_string("20")
          )
        ),
        Vx.Core.f_list_from_list(
          Vx.Core.t_stringlist,
          Vx.Core.f_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("10"),
              Vx.Core.vx_new_string("20")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_list_from_list_intany(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-list-intany",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_list_from_list_intany_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_list_from_list_intany_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a1\" \"b2\")\n (list<-list-intany : stringlist\n  (stringlist \"a\" \"b\")\n  (fn : stringlist\n   [index : int\n    value : string]\n   (string value index))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a1"),
            Vx.Core.vx_new_string("b2")
          )
        ),
        Vx.Core.f_list_from_list_intany(
          Vx.Core.t_stringlist,
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b")
            )
          ),
          Vx.Core.t_any_from_int_any.vx_fn_new((index_any, value_any) => {
            Vx.Core.Type_int index = Vx.Core.f_any_from_any(Vx.Core.t_int, index_any);
            Vx.Core.Type_string value = Vx.Core.f_any_from_any(Vx.Core.t_string, value_any);
            Vx.Core.Type_any output_1 = Vx.Core.f_new(
              Vx.Core.t_string,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                value,
                index
              )
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_list_from_map(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-map",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_list_from_map_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_list_from_map_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a1\" \"b2\")\n (list<-map : stringlist\n  (stringmap\n   :x \"a1\"\n   :y \"b2\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a1"),
            Vx.Core.vx_new_string("b2")
          )
        ),
        Vx.Core.f_list_from_map(
          Vx.Core.t_stringlist,
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":x"),
              Vx.Core.vx_new_string("a1"),
              Vx.Core.vx_new_string(":y"),
              Vx.Core.vx_new_string("b2")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_list_from_map_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-map_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_list_from_map_1_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_list_from_map_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a1\" \"b2\")\n (list<-map : stringlist\n  (stringmap \"a\" \"1\" \"b\" \"2\")\n  (fn : string\n   [key   : string\n    value : string]\n   (string key value))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a1"),
            Vx.Core.vx_new_string("b2")
          )
        ),
        Vx.Core.f_list_from_map_1(
          Vx.Core.t_stringlist,
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("2")
            )
          ),
          Vx.Core.t_any_from_key_value.vx_fn_new((key_any, value_any) => {
            Vx.Core.Type_string key = Vx.Core.f_any_from_any(Vx.Core.t_string, key_any);
            Vx.Core.Type_string value = Vx.Core.f_any_from_any(Vx.Core.t_string, value_any);
            Vx.Core.Type_any output_1 = Vx.Core.f_new(
              Vx.Core.t_string,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                key,
                value
              )
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_map_from_list(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "map<-list",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_map_from_list_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_map_from_list_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  \"keya\" \"a\"\n  \"keyb\" \"b\")\n (map<-list : stringmap\n  (stringlist \"a\" \"b\")\n  (fn : string\n   [value : string]\n   (string \"key\" value))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("keya"),
            Vx.Core.vx_new_string("a"),
            Vx.Core.vx_new_string("keyb"),
            Vx.Core.vx_new_string("b")
          )
        ),
        Vx.Core.f_map_from_list(
          Vx.Core.t_stringmap,
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b")
            )
          ),
          Vx.Core.t_any_from_any.vx_fn_new((value_any) => {
            Vx.Core.Type_string value = Vx.Core.f_any_from_any(Vx.Core.t_string, value_any);
            Vx.Core.Type_any output_1 = Vx.Core.f_new(
              Vx.Core.t_string,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                Vx.Core.vx_new_string("key"),
                value
              )
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_map_from_map(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "map<-map",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_map_from_map_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_map_from_map_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap :a \"1\")\n (map<-map : stringmap\n  (anymap :a \"1\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("1")
          )
        ),
        Vx.Core.f_map_from_map(
          Vx.Core.t_stringmap,
          Vx.Core.f_new(
            Vx.Core.t_anymap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("1")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_map_from_map_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "map<-map_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_map_from_map_1_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_map_from_map_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"a1\"\n  :b \"b2\")\n (map<-map : stringmap\n  (stringmap\n   :a \"1\"\n   :b \"2\")\n  (fn : string\n   [key : string\n    value : string]\n   (string key value))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("a1"),
            Vx.Core.vx_new_string(":b"),
            Vx.Core.vx_new_string("b2")
          )
        ),
        Vx.Core.f_map_from_map_1(
          Vx.Core.t_stringmap,
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("2")
            )
          ),
          Vx.Core.t_any_from_key_value.vx_fn_new((key_any, value_any) => {
            Vx.Core.Type_string key = Vx.Core.f_any_from_any(Vx.Core.t_string, key_any);
            Vx.Core.Type_string value = Vx.Core.f_any_from_any(Vx.Core.t_string, value_any);
            Vx.Core.Type_any output_1 = Vx.Core.f_new(
              Vx.Core.t_string,
              Vx.Core.vx_new(
                Vx.Core.t_anylist,
                key,
                value
              )
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_new(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "new",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_new_testdescribe_1(context),
        f_new_testdescribe_2(context),
        f_new_testdescribe_3(context),
        f_new_testdescribe_4(context),
        f_new_testdescribe_5(context),
        f_new_testdescribe_6(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test true (new : boolean true))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_boolean(true),
        Vx.Core.f_new(
          Vx.Core.t_boolean,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_boolean(true)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 4 (new : int 4))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(4),
        Vx.Core.f_new(
          Vx.Core.t_int,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_int(4)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 5.4 (new : float 5.4))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_decimal("5.4"),
        Vx.Core.f_new(
          Vx.Core.t_float,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_decimal("5.4")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_testdescribe_4(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"a\" (new : string \"a\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("a"),
        Vx.Core.f_new(
          Vx.Core.t_string,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_testdescribe_5(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\")\n (new : stringlist \"a\" \"b\" \"c\"))",
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
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a"),
            Vx.Core.vx_new_string("b"),
            Vx.Core.vx_new_string("c")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_testdescribe_6(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap :a \"1\" :b \"2\")\n (new : stringmap :a \"1\" :b \"2\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("1"),
            Vx.Core.vx_new_string(":b"),
            Vx.Core.vx_new_string("2")
          )
        ),
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("1"),
            Vx.Core.vx_new_string(":b"),
            Vx.Core.vx_new_string("2")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_new_from_type(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "new<-type",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_new_from_type_testdescribe_1(context),
        f_new_from_type_testdescribe_2(context),
        f_new_from_type_testdescribe_3(context),
        f_new_from_type_testdescribe_4(context),
        f_new_from_type_testdescribe_5(context),
        f_new_from_type_testdescribe_6(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_from_type_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test true (new<-type boolean true))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_boolean(true),
        Vx.Core.f_new_from_type(
          Vx.Core.t_boolean,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_boolean(true)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_from_type_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 4 (new<-type int 4))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(4),
        Vx.Core.f_new_from_type(
          Vx.Core.t_int,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_int(4)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_from_type_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 5.4 (new<-type float 5.4))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_decimal("5.4"),
        Vx.Core.f_new_from_type(
          Vx.Core.t_float,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_decimal("5.4")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_from_type_testdescribe_4(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"a\" (new<-type string \"a\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("a"),
        Vx.Core.f_new_from_type(
          Vx.Core.t_string,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_from_type_testdescribe_5(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\")\n (new<-type stringlist \"a\" \"b\" \"c\"))",
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
        Vx.Core.f_new_from_type(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("a"),
            Vx.Core.vx_new_string("b"),
            Vx.Core.vx_new_string("c")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_new_from_type_testdescribe_6(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringmap :a \"1\" :b \"2\")\n (new<-type stringmap :a \"1\" :b \"2\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("1"),
            Vx.Core.vx_new_string(":b"),
            Vx.Core.vx_new_string("2")
          )
        ),
        Vx.Core.f_new_from_type(
          Vx.Core.t_stringmap,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string(":a"),
            Vx.Core.vx_new_string("1"),
            Vx.Core.vx_new_string(":b"),
            Vx.Core.vx_new_string("2")
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_or(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "or",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_or_testdescribe_1(context),
        f_or_testdescribe_2(context),
        f_or_testdescribe_3(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_or_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (or true true))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_or(
          Vx.Core.vx_new_boolean(true),
          Vx.Core.vx_new_boolean(true)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_or_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (or true false))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_or(
          Vx.Core.vx_new_boolean(true),
          Vx.Core.vx_new_boolean(false)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_or_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false (or false false))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_or(
          Vx.Core.vx_new_boolean(false),
          Vx.Core.vx_new_boolean(false)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_or_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "or_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_or_1_testdescribe_1(context),
        f_or_1_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_or_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-true (or false true false))",
      ":testresult", Vx.Test.f_test_true(
        context,
        Vx.Core.f_or_1(
          Vx.Core.vx_new(
            Vx.Core.t_booleanlist,
            Vx.Core.vx_new_boolean(false),
            Vx.Core.vx_new_boolean(true),
            Vx.Core.vx_new_boolean(false)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_or_1_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test-false (or false false false))",
      ":testresult", Vx.Test.f_test_false(
        context,
        Vx.Core.f_or_1(
          Vx.Core.vx_new(
            Vx.Core.t_booleanlist,
            Vx.Core.vx_new_boolean(false),
            Vx.Core.vx_new_boolean(false),
            Vx.Core.vx_new_boolean(false)
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_resolve(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "resolve",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_resolve_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_resolve_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"a\" (resolve \"a\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("a"),
        Vx.Core.f_resolve(
          Vx.Core.t_string,
          Vx.Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_resolve_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "resolve_1",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_resolve_1_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_resolve_1_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 4 (resolve (fn : int [] (+ 1 3))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(4),
        Vx.Core.f_resolve_1(
          Vx.Core.t_int,
          Vx.Core.t_any_from_func.vx_fn_new(() => {
            Vx.Core.Type_any output_1 = Vx.Core.f_plus(
              Vx.Core.vx_new_int(1),
              Vx.Core.vx_new_int(3)
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_resolve_async(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "resolve-async",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_resolve_async_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_resolve_async_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 4 (resolve : int (fn : int [] (+ 1 3))))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(4),
        Vx.Core.f_resolve_1(
          Vx.Core.t_int,
          Vx.Core.t_any_from_func.vx_fn_new(() => {
            Vx.Core.Type_any output_1 = Vx.Core.f_plus(
              Vx.Core.vx_new_int(1),
              Vx.Core.vx_new_int(3)
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_string_repeat(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string-repeat",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_string_repeat_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_string_repeat_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"abab\" (string-repeat \"ab\" 2))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("abab"),
        Vx.Core.f_string_repeat(
          Vx.Core.vx_new_string("ab"),
          Vx.Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_string_from_any(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string<-any",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_string_from_any_testdescribe_1(context),
        f_string_from_any_testdescribe_2(context),
        f_string_from_any_testdescribe_3(context),
        f_string_from_any_testdescribe_4(context),
        f_string_from_any_testdescribe_5(context),
        f_string_from_any_testdescribe_6(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_string_from_any_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"true\"  (string<-any true))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("true"),
        Vx.Core.f_string_from_any(
          Vx.Core.vx_new_boolean(true)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_string_from_any_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"4\"     (string<-any 4))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("4"),
        Vx.Core.f_string_from_any(
          Vx.Core.vx_new_int(4)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_string_from_any_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"5.4\"   (string<-any 5.4))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("5.4"),
        Vx.Core.f_string_from_any(
          Vx.Core.vx_new_decimal("5.4")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_string_from_any_testdescribe_4(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"\\\"a\\\"\" (string<-any \"a\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("\"a\""),
        Vx.Core.f_string_from_any(
          Vx.Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_string_from_any_testdescribe_5(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"(stringlist\n   \\\"a\\\"\n   \\\"b\\\"\n   \\\"c\\\")\"\n (string<-any (stringlist \"a\" \"b\" \"c\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("(stringlist\n \"a\"\n \"b\"\n \"c\")"),
        Vx.Core.f_string_from_any(
          Vx.Core.f_new(
            Vx.Core.t_stringlist,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string("a"),
              Vx.Core.vx_new_string("b"),
              Vx.Core.vx_new_string("c")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_string_from_any_testdescribe_6(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"(stringmap\n   :a \\\"1\\\"\n   :b \\\"2\\\")\"\n (string<-any (stringmap :a \"1\" :b \"2\")))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("(stringmap\n :a \"1\"\n :b \"2\")"),
        Vx.Core.f_string_from_any(
          Vx.Core.f_new(
            Vx.Core.t_stringmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_string("1"),
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_string("2")
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_string_from_string_find_replace(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string<-string-find-replace",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_string_from_string_find_replace_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_string_from_string_find_replace_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n \"a!b!c\"\n (string<-string-find-replace\n  \"axybxyc\"\n  \"xy\"\n  \"!\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("a!b!c"),
        Vx.Core.f_string_from_string_find_replace(
          Vx.Core.vx_new_string("axybxyc"),
          Vx.Core.vx_new_string("xy"),
          Vx.Core.vx_new_string("!")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_stringlist_from_map(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "stringlist<-map",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_stringlist_from_map_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_stringlist_from_map_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"b\" \"a\")\n (stringlist<-map\n  (intmap\n   :b 1\n   :a 2)))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.f_new(
          Vx.Core.t_stringlist,
          Vx.Core.vx_new(
            Vx.Core.t_anylist,
            Vx.Core.vx_new_string("b"),
            Vx.Core.vx_new_string("a")
          )
        ),
        Vx.Core.f_stringlist_from_map(
          Vx.Core.f_new(
            Vx.Core.t_intmap,
            Vx.Core.vx_new(
              Vx.Core.t_anylist,
              Vx.Core.vx_new_string(":b"),
              Vx.Core.vx_new_int(1),
              Vx.Core.vx_new_string(":a"),
              Vx.Core.vx_new_int(2)
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_switch(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "switch",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_switch_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_switch_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test 1\n (switch : int\n  \"d\"\n  (case (list \"b\" \"c\" \"d\") 1)\n  (else 2)))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_int(1),
        Vx.Core.f_switch(
          Vx.Core.t_int,
          Vx.Core.vx_new_string("d"),
          Vx.Core.vx_new(
            Vx.Core.t_thenelselist,
            Vx.Core.f_case(
              Vx.Core.f_new(
                Vx.Core.t_list,
                Vx.Core.vx_new(
                  Vx.Core.t_anylist,
                  Vx.Core.vx_new_string("b"),
                  Vx.Core.vx_new_string("c"),
                  Vx.Core.vx_new_string("d")
                )
              ),
              Vx.Core.t_any_from_func.vx_fn_new(() => {
                Vx.Core.Type_any output_1 = Vx.Core.vx_new_int(1);
                return output_1;
              })
            ),
            Vx.Core.f_else(
              Vx.Core.t_any_from_func.vx_fn_new(() => {
                Vx.Core.Type_any output_2 = Vx.Core.vx_new_int(2);
                return output_2;
              })
            )
          )
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_type_from_any(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "type<-any",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_type_from_any_testdescribe_1(context),
        f_type_from_any_testdescribe_2(context),
        f_type_from_any_testdescribe_3(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_type_from_any_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n boolean\n (type<-any false))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.t_boolean,
        Vx.Core.f_type_from_any(
          Vx.Core.vx_new_boolean(false)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_type_from_any_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n int\n (type<-any 5))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.t_int,
        Vx.Core.f_type_from_any(
          Vx.Core.vx_new_int(5)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_type_from_any_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test\n string\n (type<-any \"a\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.t_string,
        Vx.Core.f_type_from_any(
          Vx.Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcase f_typename_from_any(Vx.Core.Type_context context) {
    Vx.Test.Type_testcase output = Vx.Core.vx_new(
      Vx.Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "typename<-any",
      ":describelist",
      Vx.Core.vx_new(
        Vx.Test.t_testdescribelist,
        f_typename_from_any_testdescribe_1(context),
        f_typename_from_any_testdescribe_2(context),
        f_typename_from_any_testdescribe_3(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_typename_from_any_testdescribe_1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"vx/core/boolean\" (typename<-any false))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("vx/core/boolean"),
        Vx.Core.f_typename_from_any(
          Vx.Core.vx_new_boolean(false)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_typename_from_any_testdescribe_2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"vx/core/int\"     (typename<-any 5))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("vx/core/int"),
        Vx.Core.f_typename_from_any(
          Vx.Core.vx_new_int(5)
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe f_typename_from_any_testdescribe_3(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      ":describename", "(test \"vx/core/string\"  (typename<-any \"a\"))",
      ":testresult", Vx.Test.f_test(
        context,
        Vx.Core.vx_new_string("vx/core/string"),
        Vx.Core.f_typename_from_any(
          Vx.Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Vx.Test.Type_testcaselist test_cases(Vx.Core.Type_context context) {
    object[] testcases = [
      CoreTest.t_boolean(context),
      CoreTest.t_float(context),
      CoreTest.t_func(context),
      CoreTest.t_funclist(context),
      CoreTest.t_int(context),
      CoreTest.t_msgblock(context),
      CoreTest.t_msgblocklist(context),
      CoreTest.t_msglist(context),
      CoreTest.t_string(context),
      CoreTest.t_stringlist(context),
      CoreTest.c_false(context),
      CoreTest.c_true(context),
      CoreTest.f_not(context),
      CoreTest.f_ne(context),
      CoreTest.f_multiply(context),
      CoreTest.f_multiply_1(context),
      CoreTest.f_multiply_2(context),
      CoreTest.f_multiply_3(context),
      CoreTest.f_plus(context),
      CoreTest.f_plus_1(context),
      CoreTest.f_plus1(context),
      CoreTest.f_minus(context),
      CoreTest.f_minus_1(context),
      CoreTest.f_minus1(context),
      CoreTest.f_divide(context),
      CoreTest.f_lt(context),
      CoreTest.f_lt_1(context),
      CoreTest.f_chainfirst(context),
      CoreTest.f_chainlast(context),
      CoreTest.f_le(context),
      CoreTest.f_le_1(context),
      CoreTest.f_eq(context),
      CoreTest.f_eq_1(context),
      CoreTest.f_eqeq(context),
      CoreTest.f_gt(context),
      CoreTest.f_gt_1(context),
      CoreTest.f_ge(context),
      CoreTest.f_ge_1(context),
      CoreTest.f_and(context),
      CoreTest.f_and_1(context),
      CoreTest.f_any_from_list(context),
      CoreTest.f_any_from_list_start_reduce(context),
      CoreTest.f_any_from_map(context),
      CoreTest.f_any_from_map_start_reduce(context),
      CoreTest.f_any_from_struct(context),
      CoreTest.f_boolean_write_from_map_name_value(context),
      CoreTest.f_compare(context),
      CoreTest.f_constdef_from_any(context),
      CoreTest.f_constname_from_any(context),
      CoreTest.f_contains(context),
      CoreTest.f_contains_1(context),
      CoreTest.f_copy(context),
      CoreTest.f_empty(context),
      CoreTest.f_first_from_list(context),
      CoreTest.f_first_from_list_any_from_any(context),
      CoreTest.f_float_from_string(context),
      CoreTest.f_if(context),
      CoreTest.f_if_1(context),
      CoreTest.f_if_2(context),
      CoreTest.f_int_from_string(context),
      CoreTest.f_is_empty_1(context),
      CoreTest.f_is_error(context),
      CoreTest.f_is_int(context),
      CoreTest.f_is_number(context),
      CoreTest.f_last_from_list(context),
      CoreTest.f_length(context),
      CoreTest.f_length_1(context),
      CoreTest.f_let(context),
      CoreTest.f_list_from_list(context),
      CoreTest.f_list_from_list_intany(context),
      CoreTest.f_list_from_map(context),
      CoreTest.f_list_from_map_1(context),
      CoreTest.f_map_from_list(context),
      CoreTest.f_map_from_map(context),
      CoreTest.f_map_from_map_1(context),
      CoreTest.f_new(context),
      CoreTest.f_new_from_type(context),
      CoreTest.f_or(context),
      CoreTest.f_or_1(context),
      CoreTest.f_resolve(context),
      CoreTest.f_resolve_1(context),
      CoreTest.f_resolve_async(context),
      CoreTest.f_string_repeat(context),
      CoreTest.f_string_from_any(context),
      CoreTest.f_string_from_string_find_replace(context),
      CoreTest.f_stringlist_from_map(context),
      CoreTest.f_switch(context),
      CoreTest.f_type_from_any(context),
      CoreTest.f_typename_from_any(context)
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
      ":testpkg", "vx/core", 
      ":constnums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 13, ":tests", 2, ":total", 15), 
      ":docnums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 91, ":tests", 239, ":total", 261), 
      ":funcnums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 55, ":tests", 77, ":total", 139), 
      ":bigospacenums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 0, ":tests", 1, ":total", 170), 
      ":bigotimenums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 0, ":tests", 1, ":total", 170), 
      ":totalnums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 38, ":tests", 89, ":total", 230), 
      ":typenums", Vx.Core.vx_new(Vx.Test.t_testcoveragenums, ":pct", 13, ":tests", 10, ":total", 76)
    );
    return output;
  }

  public static Vx.Test.Type_testcoveragedetail test_coveragedetail() {
    Vx.Test.Type_testcoveragedetail output = Vx.Core.vx_new(
      Vx.Test.t_testcoveragedetail,
      ":testpkg", "vx/core",
      ":typemap", Vx.Core.vx_new(
        Vx.Core.t_intmap,
        ":any", 0,
        ":any-async<-func", 0,
        ":any<-anylist", 0,
        ":anylist", 0,
        ":anymap", 0,
        ":anytype", 0,
        ":arg", 0,
        ":arglist", 0,
        ":argmap", 0,
        ":boolean", 4,
        ":booleanlist", 0,
        ":collection", 0,
        ":compilelanguages", 0,
        ":connect", 0,
        ":connectlist", 0,
        ":connectmap", 0,
        ":const", 0,
        ":constdef", 0,
        ":constlist", 0,
        ":constmap", 0,
        ":context", 0,
        ":date", 0,
        ":decimal", 0,
        ":error", 0,
        ":float", 1,
        ":func", 1,
        ":funcdef", 0,
        ":funclist", 1,
        ":funcmap", 0,
        ":int", 7,
        ":intlist", 0,
        ":intmap", 0,
        ":list", 0,
        ":listtype", 0,
        ":locale", 0,
        ":map", 0,
        ":maptype", 0,
        ":mempool", 0,
        ":msg", 0,
        ":msgblock", 2,
        ":msgblocklist", 1,
        ":msglist", 1,
        ":none", 0,
        ":notype", 0,
        ":number", 0,
        ":numberlist", 0,
        ":numbermap", 0,
        ":package", 0,
        ":packagemap", 0,
        ":permission", 0,
        ":permissionlist", 0,
        ":permissionmap", 0,
        ":project", 0,
        ":security", 0,
        ":session", 0,
        ":setting", 0,
        ":state", 0,
        ":statelistener", 0,
        ":statelistenermap", 0,
        ":string", 2,
        ":stringlist", 1,
        ":stringlistlist", 0,
        ":stringmap", 0,
        ":stringmutablemap", 0,
        ":struct", 0,
        ":thenelse", 0,
        ":thenelselist", 0,
        ":translation", 0,
        ":translationlist", 0,
        ":translationmap", 0,
        ":type", 0,
        ":typedef", 0,
        ":typelist", 0,
        ":typemap", 0,
        ":user", 0,
        ":value", 0
      ), 
      ":constmap", Vx.Core.vx_new(
        Vx.Core.t_intmap,
        ":false", 1,
        ":global", 0,
        ":infinity", 0,
        ":mempool-active", 0,
        ":msg-error", 0,
        ":msg-info", 0,
        ":msg-severe", 0,
        ":msg-warning", 0,
        ":neginfinity", 0,
        ":newline", 0,
        ":notanumber", 0,
        ":nothing", 0,
        ":path-test-resources", 0,
        ":quote", 0,
        ":true", 1
      ), 
      ":funcmap", Vx.Core.vx_new(
        Vx.Core.t_intmap,
        ":!", 2,
        ":!-empty", 0,
        ":!-empty_1", 0,
        ":!=", 2,
        ":!==", 0,
        ":*", 2,
        ":*_1", 2,
        ":*_2", 2,
        ":*_3", 2,
        ":+", 2,
        ":+_1", 2,
        ":+_2", 0,
        ":+_3", 0,
        ":+1", 2,
        ":-", 2,
        ":-_1", 2,
        ":-_2", 0,
        ":-_3", 0,
        ":-1", 2,
        ":.", 0,
        ":/", 2,
        ":<", 1,
        ":<_1", 2,
        ":<-", 1,
        ":<<-", 1,
        ":<=", 1,
        ":<=_1", 1,
        ":=", 5,
        ":=_1", 1,
        ":==", 2,
        ":>", 1,
        ":>_1", 1,
        ":>=", 1,
        ":>=_1", 1,
        ":allowfuncs<-security", 0,
        ":allowtypenames<-typedef", 0,
        ":allowtypes<-typedef", 0,
        ":and", 2,
        ":and_1", 2,
        ":any<-any", 0,
        ":any<-any-async", 0,
        ":any<-any-context", 0,
        ":any<-any-context-async", 0,
        ":any<-any-key-value", 0,
        ":any<-func", 0,
        ":any<-func-async", 0,
        ":any<-int", 0,
        ":any<-int-any", 0,
        ":any<-key-value", 0,
        ":any<-key-value-async", 0,
        ":any<-list", 2,
        ":any<-list-start-reduce", 1,
        ":any<-list-start-reduce-next", 0,
        ":any<-map", 1,
        ":any<-map-start-reduce", 1,
        ":any<-none", 0,
        ":any<-none-async", 0,
        ":any<-reduce", 0,
        ":any<-reduce-async", 0,
        ":any<-reduce-next", 0,
        ":any<-reduce-next-async", 0,
        ":any<-struct", 3,
        ":async", 0,
        ":boolean-permission<-func", 0,
        ":boolean-write<-map-name-value", 2,
        ":boolean<-any", 0,
        ":boolean<-func", 0,
        ":boolean<-none", 0,
        ":case", 0,
        ":case_1", 0,
        ":compare", 2,
        ":constdef<-any", 1,
        ":constname<-any", 1,
        ":contains", 2,
        ":contains_1", 3,
        ":context-main", 0,
        ":copy", 1,
        ":else", 0,
        ":empty", 4,
        ":extends<-any", 0,
        ":extends<-typedef", 0,
        ":first<-list", 1,
        ":first<-list-any<-any", 1,
        ":float<-string", 1,
        ":fn", 0,
        ":funcdef<-func", 0,
        ":funcname<-funcdef", 0,
        ":if", 2,
        ":if_1", 2,
        ":if_2", 1,
        ":int<-func", 0,
        ":int<-string", 6,
        ":is-empty", 0,
        ":is-empty_1", 4,
        ":is-endswith", 0,
        ":is-error", 1,
        ":is-float", 0,
        ":is-func", 0,
        ":is-int", 4,
        ":is-number", 3,
        ":is-pass<-permission", 0,
        ":last<-list", 1,
        ":length", 2,
        ":length_1", 1,
        ":length_2", 0,
        ":let", 1,
        ":let-async", 0,
        ":list<-list", 1,
        ":list<-list_1", 0,
        ":list<-list-async", 0,
        ":list<-list-intany", 1,
        ":list<-map", 1,
        ":list<-map_1", 1,
        ":list<-map-async", 0,
        ":list<-type", 0,
        ":log", 0,
        ":log_1", 0,
        ":log-error", 0,
        ":main", 0,
        ":map<-list", 1,
        ":map<-map", 1,
        ":map<-map_1", 1,
        ":msg<-error", 0,
        ":msg<-error_1", 0,
        ":msg<-error_2", 0,
        ":msg<-warning", 0,
        ":msgblock<-any", 0,
        ":msgblock<-msgblock-msg", 0,
        ":msgblock<-msgblock-msgblock", 0,
        ":name<-typedef", 0,
        ":native", 0,
        ":native<-any", 0,
        ":new", 6,
        ":new<-type", 6,
        ":number<-func", 0,
        ":or", 3,
        ":or_1", 2,
        ":package-global<-name", 0,
        ":packagename<-typedef", 0,
        ":path<-context-path", 0,
        ":path<-setting-path", 0,
        ":permission<-id-context", 0,
        ":properties<-typedef", 0,
        ":proplast<-typedef", 0,
        ":resolve", 1,
        ":resolve_1", 1,
        ":resolve-async", 1,
        ":resolve-first", 0,
        ":resolve-list", 0,
        ":security<-context", 0,
        ":security<-user", 0,
        ":session<-context", 0,
        ":setting<-context", 0,
        ":string-repeat", 1,
        ":string<-any", 6,
        ":string<-any-indent", 0,
        ":string<-func", 0,
        ":string<-string-find-replace", 1,
        ":stringlist<-map", 1,
        ":switch", 1,
        ":then", 0,
        ":traits<-typedef", 0,
        ":type<-any", 3,
        ":typedef<-any", 0,
        ":typedef<-type", 0,
        ":typename<-any", 3,
        ":typename<-type", 0,
        ":typename<-typedef", 0,
        ":typenames<-typelist", 0,
        ":user<-context", 0
      )
    );
    return output;
  }

  public static Vx.Test.Type_testpackage test_package(Vx.Core.Type_context context) {
    Vx.Test.Type_testcaselist testcaselist = test_cases(context);
    Vx.Test.Type_testpackage output = Vx.Core.vx_new(
      Vx.Test.t_testpackage,
      ":testpkg", "vx/core", 
      ":caselist", testcaselist,
      ":coveragesummary", test_coveragesummary(),
      ":coveragedetail", test_coveragedetail()
    );
    return output;
  }

}
