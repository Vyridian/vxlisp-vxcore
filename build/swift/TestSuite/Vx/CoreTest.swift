
import Vx

public enum Vx_CoreTest {

  public static func t_boolean(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "boolean",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        t_boolean_testdescribe_1(context),
        t_boolean_testdescribe_2(context),
        t_boolean_testdescribe_3(context),
        t_boolean_testdescribe_4(context)
      )
    )
    return output
  }

  public static func t_boolean_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true true)",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.vx_new_boolean(true)
      )
    )
    return output
  }

  public static func t_boolean_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false false)",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.vx_new_boolean(false)
      )
    )
    return output
  }

  public static func t_boolean_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (boolean true))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_new(
          Vx_Core.t_boolean,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_boolean(true)
          )
        )
      )
    )
    return output
  }

  public static func t_boolean_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false (boolean false))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_new(
          Vx_Core.t_boolean,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_boolean(false)
          )
        )
      )
    )
    return output
  }

  public static func t_float(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "float",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        t_float_testdescribe_1(context)
      )
    )
    return output
  }

  public static func t_float_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 4.5\n (float 4.5))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_decimal("4.5"),
        Vx_Core.f_new(
          Vx_Core.t_float,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_decimal("4.5")
          )
        )
      )
    )
    return output
  }

  public static func t_func(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "func",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        t_func_testdescribe_1(context)
      )
    )
    return output
  }

  public static func t_func_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 5\n (let\n  [funcvar : + := +]\n  (funcvar 2 3)))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(5),
        Vx_Core.f_let(
          Vx_Core.t_int,
          Vx_Core.t_any_from_func.vx_fn_new({() in
            let funcvar : any Vx_Core.Func_plus =   Vx_Core.t_plus
            let output_1 : any Vx_Core.Type_any = Vx_Core.vx_any_from_func(
              Vx_Core.t_int,
              funcvar,
              Vx_Core.vx_new_int(2),
              Vx_Core.vx_new_int(3)
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func t_funclist(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "funclist",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        t_funclist_testdescribe_1(context)
      )
    )
    return output
  }

  public static func t_funclist_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 2\n (length\n  (funclist\n   + -)))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(2),
        Vx_Core.f_length_1(
          Vx_Core.f_new(
            Vx_Core.t_funclist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.t_plus,
              Vx_Core.t_minus
            )
          )
        )
      )
    )
    return output
  }

  public static func t_int(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "int",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        t_int_testdescribe_1(context),
        t_int_testdescribe_2(context),
        t_int_testdescribe_3(context),
        t_int_testdescribe_4(context),
        t_int_testdescribe_5(context),
        t_int_testdescribe_6(context),
        t_int_testdescribe_7(context)
      )
    )
    return output
  }

  public static func t_int_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true  (is-int 4))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_int(
          Vx_Core.vx_new_int(4)
        )
      )
    )
    return output
  }

  public static func t_int_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true  (is-int \"4\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_int(
          Vx_Core.vx_new_string("4")
        )
      )
    )
    return output
  }

  public static func t_int_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true  (is-int infinity))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_int(
          Vx_Core.c_infinity
        )
      )
    )
    return output
  }

  public static func t_int_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true  (is-int neginfinity))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_int(
          Vx_Core.c_neginfinity
        )
      )
    )
    return output
  }

  public static func t_int_testdescribe_5(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true  (is-int notanumber))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_int(
          Vx_Core.c_notanumber
        )
      )
    )
    return output
  }

  public static func t_int_testdescribe_6(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false (is-int \"a\"))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_is_int(
          Vx_Core.vx_new_string("a")
        )
      )
    )
    return output
  }

  public static func t_int_testdescribe_7(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false (is-int 5.5))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_is_int(
          Vx_Core.vx_new_decimal("5.5")
        )
      )
    )
    return output
  }

  public static func t_msgblock(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "msgblock",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        t_msgblock_testdescribe_1(context),
        t_msgblock_testdescribe_2(context)
      )
    )
    return output
  }

  public static func t_msgblock_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (decimal\n  (msgblock\n   :msgs\n    (msglist\n     (msg\n      :text \"Err\"))))\n (decimal\n  (msg\n   :text \"Err\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_decimal,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.f_new(
              Vx_Core.t_msgblock,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string(":msgs"),
                Vx_Core.f_new(
                  Vx_Core.t_msglist,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    Vx_Core.f_new(
                      Vx_Core.t_msg,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        Vx_Core.vx_new_string(":text"),
                        Vx_Core.vx_new_string("Err")
                      )
                    )
                  )
                )
              )
            )
          )
        ),
        Vx_Core.f_new(
          Vx_Core.t_decimal,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.f_new(
              Vx_Core.t_msg,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string(":text"),
                Vx_Core.vx_new_string("Err")
              )
            )
          )
        )
      )
    )
    return output
  }

  public static func t_msgblock_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (decimal\n  (msgblock\n   :msgs\n    (msglist\n     (msg :text \"Err\"))))\n (let : decimal\n  [mymsgblock : msgblock :=\n   (msgblock\n    (msg\n     :text \"Err\"))]\n  (decimal\n   (copy\n    mymsgblock\n    mymsgblock))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_decimal,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.f_new(
              Vx_Core.t_msgblock,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string(":msgs"),
                Vx_Core.f_new(
                  Vx_Core.t_msglist,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    Vx_Core.f_new(
                      Vx_Core.t_msg,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        Vx_Core.vx_new_string(":text"),
                        Vx_Core.vx_new_string("Err")
                      )
                    )
                  )
                )
              )
            )
          )
        ),
        Vx_Core.f_let(
          Vx_Core.t_decimal,
          Vx_Core.t_any_from_func.vx_fn_new({() in
            let mymsgblock : any Vx_Core.Type_msgblock = Vx_Core.f_new(
              Vx_Core.t_msgblock,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.f_new(
                  Vx_Core.t_msg,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    Vx_Core.vx_new_string(":text"),
                    Vx_Core.vx_new_string("Err")
                  )
                )
              )
            )
            let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
              Vx_Core.t_decimal,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.f_copy(
                  Vx_Core.t_anylist,
                  mymsgblock,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    mymsgblock
                  )
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

  public static func t_msgblocklist(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "msgblocklist",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        t_msgblocklist_testdescribe_1(context)
      )
    )
    return output
  }

  public static func t_msgblocklist_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (msgblocklist\n  (msgblock\n   (msg :text \"Err\")))\n (let : msgblocklist\n  [mymsgblock : msgblock :=\n   (msgblock\n    (msg :text \"Err\"))]\n  (msgblocklist\n   mymsgblock\n   mymsgblock)))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_msgblocklist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.f_new(
              Vx_Core.t_msgblock,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.f_new(
                  Vx_Core.t_msg,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    Vx_Core.vx_new_string(":text"),
                    Vx_Core.vx_new_string("Err")
                  )
                )
              )
            )
          )
        ),
        Vx_Core.f_let(
          Vx_Core.t_msgblocklist,
          Vx_Core.t_any_from_func.vx_fn_new({() in
            let mymsgblock : any Vx_Core.Type_msgblock = Vx_Core.f_new(
              Vx_Core.t_msgblock,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.f_new(
                  Vx_Core.t_msg,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    Vx_Core.vx_new_string(":text"),
                    Vx_Core.vx_new_string("Err")
                  )
                )
              )
            )
            let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
              Vx_Core.t_msgblocklist,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                mymsgblock,
                mymsgblock
              )
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func t_msglist(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "msglist",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        t_msglist_testdescribe_1(context)
      )
    )
    return output
  }

  public static func t_msglist_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (msglist\n  (msg :text \"Err\"))\n (let : msglist\n  [mymsg : msg :=\n   (msg :text \"Err\")]\n  (msglist\n   mymsg\n   mymsg)))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_msglist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.f_new(
              Vx_Core.t_msg,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string(":text"),
                Vx_Core.vx_new_string("Err")
              )
            )
          )
        ),
        Vx_Core.f_let(
          Vx_Core.t_msglist,
          Vx_Core.t_any_from_func.vx_fn_new({() in
            let mymsg : any Vx_Core.Type_msg = Vx_Core.f_new(
              Vx_Core.t_msg,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string(":text"),
                Vx_Core.vx_new_string("Err")
              )
            )
            let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
              Vx_Core.t_msglist,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                mymsg,
                mymsg
              )
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func t_string(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        t_string_testdescribe_1(context),
        t_string_testdescribe_2(context),
        t_string_testdescribe_3(context)
      )
    )
    return output
  }

  public static func t_string_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"a\" (string \"a\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("a"),
        Vx_Core.f_new(
          Vx_Core.t_string,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a")
          )
        )
      )
    )
    return output
  }

  public static func t_string_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"ab\" (string \"a\" \"b\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("ab"),
        Vx_Core.f_new(
          Vx_Core.t_string,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_string("b")
          )
        )
      )
    )
    return output
  }

  public static func t_string_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"a:b\" (string \"a\" \":\" \"b\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("a:b"),
        Vx_Core.f_new(
          Vx_Core.t_string,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_string(":"),
            Vx_Core.vx_new_string("b")
          )
        )
      )
    )
    return output
  }

  public static func t_stringlist(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "stringlist",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        t_stringlist_testdescribe_1(context)
      )
    )
    return output
  }

  public static func t_stringlist_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (new : stringlist \"a\" \"b\" \"c\")\n (stringlist\n  (anylist\n   \"a\"\n   (stringlist \"b\" \"c\"))))",
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
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.f_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string("a"),
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
        )
      )
    )
    return output
  }

  public static func c_false(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "false",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        c_false_testdescribe_1(context)
      )
    )
    return output
  }

  public static func c_false_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false false)",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.vx_new_boolean(false)
      )
    )
    return output
  }

  public static func c_true(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "true",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        c_true_testdescribe_1(context)
      )
    )
    return output
  }

  public static func c_true_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true true)",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.vx_new_boolean(true)
      )
    )
    return output
  }

  public static func f_not(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "!",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_not_testdescribe_1(context),
        f_not_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_not_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false false)",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.vx_new_boolean(false)
      )
    )
    return output
  }

  public static func f_not_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false (! true))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_not(
          Vx_Core.vx_new_boolean(true)
        )
      )
    )
    return output
  }

  public static func f_ne(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "!=",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_ne_testdescribe_1(context),
        f_ne_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_ne_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-ne true false)",
      ":testresult", Vx_Test.f_test_ne(
        context,
        Vx_Core.vx_new_boolean(true),
        Vx_Core.vx_new_boolean(false)
      )
    )
    return output
  }

  public static func f_ne_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-ne \"a\" \"b\")",
      ":testresult", Vx_Test.f_test_ne(
        context,
        Vx_Core.vx_new_string("a"),
        Vx_Core.vx_new_string("b")
      )
    )
    return output
  }

  public static func f_multiply(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_multiply_testdescribe_1(context),
        f_multiply_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_multiply_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 6 (* 3 2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(6),
        Vx_Core.f_multiply(
          Vx_Core.vx_new_int(3),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_multiply_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test -10 (* 5 -2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(-10),
        Vx_Core.f_multiply(
          Vx_Core.vx_new_int(5),
          Vx_Core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  public static func f_multiply_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_multiply_1_testdescribe_1(context),
        f_multiply_1_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_multiply_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 6.4 (* 3.2 2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_decimal("6.4"),
        Vx_Core.f_multiply_1(
          Vx_Core.vx_new_decimal("3.2"),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_multiply_1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test -10.2 (* 5.1 -2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_decimal("-10.2"),
        Vx_Core.f_multiply_1(
          Vx_Core.vx_new_decimal("5.1"),
          Vx_Core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  public static func f_multiply_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*_2",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_multiply_2_testdescribe_1(context),
        f_multiply_2_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_multiply_2_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 24 (* 3 2 4))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(24),
        Vx_Core.f_multiply_2(
          Vx_Core.vx_new(
            Vx_Core.t_intlist,
            Vx_Core.vx_new_int(3),
            Vx_Core.vx_new_int(2),
            Vx_Core.vx_new_int(4)
          )
        )
      )
    )
    return output
  }

  public static func f_multiply_2_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test -20 (* 5 -2 2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(-20),
        Vx_Core.f_multiply_2(
          Vx_Core.vx_new(
            Vx_Core.t_intlist,
            Vx_Core.vx_new_int(5),
            Vx_Core.vx_new_int(-2),
            Vx_Core.vx_new_int(2)
          )
        )
      )
    )
    return output
  }

  public static func f_multiply_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*_3",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_multiply_3_testdescribe_1(context),
        f_multiply_3_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_multiply_3_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 24 (* 3 2 4))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(24),
        Vx_Core.f_multiply_2(
          Vx_Core.vx_new(
            Vx_Core.t_intlist,
            Vx_Core.vx_new_int(3),
            Vx_Core.vx_new_int(2),
            Vx_Core.vx_new_int(4)
          )
        )
      )
    )
    return output
  }

  public static func f_multiply_3_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test -20 (* 5 -2 2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(-20),
        Vx_Core.f_multiply_2(
          Vx_Core.vx_new(
            Vx_Core.t_intlist,
            Vx_Core.vx_new_int(5),
            Vx_Core.vx_new_int(-2),
            Vx_Core.vx_new_int(2)
          )
        )
      )
    )
    return output
  }

  public static func f_plus(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "+",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_plus_testdescribe_1(context),
        f_plus_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_plus_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 5 (+ 2 3))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(5),
        Vx_Core.f_plus(
          Vx_Core.vx_new_int(2),
          Vx_Core.vx_new_int(3)
        )
      )
    )
    return output
  }

  public static func f_plus_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 3 (+ 5 -2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(3),
        Vx_Core.f_plus(
          Vx_Core.vx_new_int(5),
          Vx_Core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  public static func f_plus_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "+_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_plus_1_testdescribe_1(context),
        f_plus_1_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_plus_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 5 (+ 2  3))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(5),
        Vx_Core.f_plus(
          Vx_Core.vx_new_int(2),
          Vx_Core.vx_new_int(3)
        )
      )
    )
    return output
  }

  public static func f_plus_1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 3 (+ 5 -2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(3),
        Vx_Core.f_plus(
          Vx_Core.vx_new_int(5),
          Vx_Core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  public static func f_plus1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "+1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_plus1_testdescribe_1(context),
        f_plus1_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_plus1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test  3 (+1  2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(3),
        Vx_Core.f_plus1(
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_plus1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test -1 (+1 -2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(-1),
        Vx_Core.f_plus1(
          Vx_Core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  public static func f_minus(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "-",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_minus_testdescribe_1(context),
        f_minus_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_minus_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 1 (- 3 2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(1),
        Vx_Core.f_minus(
          Vx_Core.vx_new_int(3),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_minus_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 7 (- 5 -2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(7),
        Vx_Core.f_minus(
          Vx_Core.vx_new_int(5),
          Vx_Core.vx_new_int(-2)
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
      ":testpkg", "vx/core",
      ":casename", "-_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_minus_1_testdescribe_1(context),
        f_minus_1_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_minus_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 5 (+ 2 3))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(5),
        Vx_Core.f_plus(
          Vx_Core.vx_new_int(2),
          Vx_Core.vx_new_int(3)
        )
      )
    )
    return output
  }

  public static func f_minus_1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 3 (+ 5 -2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(3),
        Vx_Core.f_plus(
          Vx_Core.vx_new_int(5),
          Vx_Core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  public static func f_minus1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "-1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_minus1_testdescribe_1(context),
        f_minus1_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_minus1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test  1 (-1  2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(1),
        Vx_Core.f_minus1(
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_minus1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test -3 (-1 -2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(-3),
        Vx_Core.f_minus1(
          Vx_Core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  public static func f_divide(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "/",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_divide_testdescribe_1(context),
        f_divide_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_divide_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 3 (/ 6 2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(3),
        Vx_Core.f_divide(
          Vx_Core.vx_new_int(6),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_divide_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test -5 (/ 10 -2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(-5),
        Vx_Core.f_divide(
          Vx_Core.vx_new_int(10),
          Vx_Core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  public static func f_lt(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_lt_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_lt_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (< 2 3))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_lt(
          Vx_Core.vx_new_int(2),
          Vx_Core.vx_new_int(3)
        )
      )
    )
    return output
  }

  public static func f_lt_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_lt_1_testdescribe_1(context),
        f_lt_1_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_lt_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (< 2 3))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_lt(
          Vx_Core.vx_new_int(2),
          Vx_Core.vx_new_int(3)
        )
      )
    )
    return output
  }

  public static func f_lt_1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (< \"b\" \"d\" \"z\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_lt_1(
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("d"),
            Vx_Core.vx_new_string("z")
          )
        )
      )
    )
    return output
  }

  public static func f_chainfirst(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<-",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_chainfirst_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_chainfirst_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (*\n  (+\n   (- 5 3)\n   3)\n  2)\n (<-\n  5\n  (- 3)\n  (+ 3)\n  (* 2)))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_multiply(
          Vx_Core.f_plus(
            Vx_Core.f_minus(
              Vx_Core.vx_new_int(5),
              Vx_Core.vx_new_int(3)
            ),
            Vx_Core.vx_new_int(3)
          ),
          Vx_Core.vx_new_int(2)
        ),
        Vx_Core.f_multiply(
          Vx_Core.f_plus(
            Vx_Core.f_minus(
              Vx_Core.vx_new_int(5),
              Vx_Core.vx_new_int(3)
            ),
            Vx_Core.vx_new_int(3)
          ),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_chainlast(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<<-",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_chainlast_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_chainlast_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (* (+ (- 3 5) 3) 2)\n (<<-\n  5\n  (- 3)\n  (+ 3)\n  (* 2)))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_multiply(
          Vx_Core.f_plus(
            Vx_Core.f_minus(
              Vx_Core.vx_new_int(3),
              Vx_Core.vx_new_int(5)
            ),
            Vx_Core.vx_new_int(3)
          ),
          Vx_Core.vx_new_int(2)
        ),
        Vx_Core.f_multiply(
          Vx_Core.vx_new_int(2),
          Vx_Core.f_plus(
            Vx_Core.vx_new_int(3),
            Vx_Core.f_minus(
              Vx_Core.vx_new_int(3),
              Vx_Core.vx_new_int(5)
            )
          )
        )
      )
    )
    return output
  }

  public static func f_le(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<=",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_le_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_le_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (<= 2 3))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_le(
          Vx_Core.vx_new_int(2),
          Vx_Core.vx_new_int(3)
        )
      )
    )
    return output
  }

  public static func f_le_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<=_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_le_1_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_le_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (<= \"b\" \"d\" \"z\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_le_1(
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("d"),
            Vx_Core.vx_new_string("z")
          )
        )
      )
    )
    return output
  }

  public static func f_eq(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "=",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_eq_testdescribe_1(context),
        f_eq_testdescribe_2(context),
        f_eq_testdescribe_3(context),
        f_eq_testdescribe_4(context),
        f_eq_testdescribe_5(context)
      )
    )
    return output
  }

  public static func f_eq_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (= true true))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_eq(
          Vx_Core.vx_new_boolean(true),
          Vx_Core.vx_new_boolean(true)
        )
      )
    )
    return output
  }

  public static func f_eq_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (= 2 2))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_eq(
          Vx_Core.vx_new_int(2),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_eq_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (= \"a\" \"a\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_eq(
          Vx_Core.vx_new_string("a"),
          Vx_Core.vx_new_string("a")
        )
      )
    )
    return output
  }

  public static func f_eq_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (=\n  (stringlist \"a\" \"b\" \"c\")\n  (new : stringlist \"a\" \"b\" \"c\")))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_eq(
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c")
            )
          ),
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_eq_testdescribe_5(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (=\n  (stringmap :a \"1\" :b \"2\")\n  (new : stringmap :a \"1\" :b \"2\")))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_eq(
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("2")
            )
          ),
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("2")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_eq_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "=_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_eq_1_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_eq_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false (= 2 2 3))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_eq_1(
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_int(2),
            Vx_Core.vx_new_int(2),
            Vx_Core.vx_new_int(3)
          )
        )
      )
    )
    return output
  }

  public static func f_eqeq(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "==",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_eqeq_testdescribe_1(context),
        f_eqeq_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_eqeq_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (== 0 0))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_eqeq(
          Vx_Core.vx_new_int(0),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func f_eqeq_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (== \"\" \"\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_eqeq(
          Vx_Core.vx_new_string(""),
          Vx_Core.vx_new_string("")
        )
      )
    )
    return output
  }

  public static func f_gt(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_gt_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_gt_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (> 3 2))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_gt(
          Vx_Core.vx_new_int(3),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_gt_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_gt_1_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_gt_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (> \"z\" \"y\" \"b\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_gt_1(
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("z"),
            Vx_Core.vx_new_string("y"),
            Vx_Core.vx_new_string("b")
          )
        )
      )
    )
    return output
  }

  public static func f_ge(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">=",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_ge_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_ge_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (>= 3 2))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_ge(
          Vx_Core.vx_new_int(3),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_ge_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">=_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_ge_1_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_ge_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (>= \"z\" \"b\" \"b\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_ge_1(
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("z"),
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("b")
          )
        )
      )
    )
    return output
  }

  public static func f_and(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "and",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_and_testdescribe_1(context),
        f_and_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_and_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (and true true))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_and(
          Vx_Core.vx_new_boolean(true),
          Vx_Core.vx_new_boolean(true)
        )
      )
    )
    return output
  }

  public static func f_and_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false\n (and true false))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_and(
          Vx_Core.vx_new_boolean(true),
          Vx_Core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  public static func f_and_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "and_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_and_1_testdescribe_1(context),
        f_and_1_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_and_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (and true true true))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_and_1(
          Vx_Core.vx_new(
            Vx_Core.t_booleanlist,
            Vx_Core.vx_new_boolean(true),
            Vx_Core.vx_new_boolean(true),
            Vx_Core.vx_new_boolean(true)
          )
        )
      )
    )
    return output
  }

  public static func f_and_1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false\n (and true true false))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_and_1(
          Vx_Core.vx_new(
            Vx_Core.t_booleanlist,
            Vx_Core.vx_new_boolean(true),
            Vx_Core.vx_new_boolean(true),
            Vx_Core.vx_new_boolean(false)
          )
        )
      )
    )
    return output
  }

  public static func f_any_from_list(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-list",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_any_from_list_testdescribe_1(context),
        f_any_from_list_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_any_from_list_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (any<-list\n  (list \"a\" \"b\" \"c\")\n  2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("b"),
        Vx_Core.f_any_from_list(
          Vx_Core.t_any,
          Vx_Core.f_new(
            Vx_Core.t_list,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c")
            )
          ),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_any_from_list_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (:2 (stringlist \"a\" \"b\" \"c\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("b"),
        Vx_Core.f_any_from_list(
          Vx_Core.t_string,
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c")
            )
          ),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_any_from_list_start_reduce(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-list-start-reduce",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_any_from_list_start_reduce_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_any_from_list_start_reduce_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 24\n (any<-list-start-reduce : int\n  (intlist 3 2 4)\n  1\n  (fn : int\n   [total : int\n    num   : int]\n   (* total num))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(24),
        Vx_Core.f_any_from_list_start_reduce(
          Vx_Core.t_int,
          Vx_Core.f_new(
            Vx_Core.t_intlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_int(3),
              Vx_Core.vx_new_int(2),
              Vx_Core.vx_new_int(4)
            )
          ),
          Vx_Core.vx_new_int(1),
          Vx_Core.t_any_from_reduce.vx_fn_new({(total_any, num_any) in
            let total : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, total_any)
            let num : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, num_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_multiply(
              total,
              num
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_any_from_map(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-map",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_any_from_map_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_any_from_map_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"v2\"\n (any<-map\n  (stringmap\n   :a \"v1\"\n   :b \"v2\"\n   :c \"v3\")\n  :b))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("v2"),
        Vx_Core.f_any_from_map(
          Vx_Core.t_string,
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("v1"),
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("v2"),
              Vx_Core.vx_new_string(":c"),
              Vx_Core.vx_new_string("v3")
            )
          ),
          Vx_Core.vx_new_string(":b")
        )
      )
    )
    return output
  }

  public static func f_any_from_map_start_reduce(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-map-start-reduce",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_any_from_map_start_reduce_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_any_from_map_start_reduce_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"xayb\"\n (any<-map-start-reduce\n  (stringmap\n   :a \"x\"\n   :b \"y\")\n  \"\"\n  (fn : string\n   [current : string\n    key     : string\n    value   : any]\n   (copy current\n    value\n    key))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("xayb"),
        Vx_Core.f_any_from_map_start_reduce(
          Vx_Core.t_string,
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
          Vx_Core.vx_new_string(""),
          Vx_Core.t_any_from_any_key_value.vx_fn_new({(current_any, key_any, value_any) in
            let current : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, current_any)
            let key : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, key_any)
            let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, value_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_copy(
              Vx_Core.t_string,
              current,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                value,
                key
              )
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_any_from_struct(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-struct",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_any_from_struct_testdescribe_1(context),
        f_any_from_struct_testdescribe_2(context),
        f_any_from_struct_testdescribe_3(context)
      )
    )
    return output
  }

  public static func f_any_from_struct_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"sname\"\n (any<-struct : string\n  (translation\n   :name \"sname\")\n  :name))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("sname"),
        Vx_Core.f_new(
          Vx_Core.t_translation,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":name"),
            Vx_Core.vx_new_string("sname")
          )
        ).name()
      )
    )
    return output
  }

  public static func f_any_from_struct_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"sname\"\n (any<-struct : string\n  (translation\n   :name \"sname\")\n  \"name\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("sname"),
        Vx_Core.f_new(
          Vx_Core.t_translation,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":name"),
            Vx_Core.vx_new_string("sname")
          )
        ).name()
      )
    )
    return output
  }

  public static func f_any_from_struct_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"sname\"\n (any<-struct : string\n  (translation\n   :name \"sname\")\n  \":name\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("sname"),
        Vx_Core.f_new(
          Vx_Core.t_translation,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":name"),
            Vx_Core.vx_new_string("sname")
          )
        ).name()
      )
    )
    return output
  }

  public static func f_boolean_write_from_map_name_value(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "boolean-write<-map-name-value",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_boolean_write_from_map_name_value_testdescribe_1(context),
        f_boolean_write_from_map_name_value_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_boolean_write_from_map_name_value_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmutablemap\n  :b \"y\"\n  :a \"x\")\n (let : stringmutablemap\n  [smap : stringmutablemap :=\n    (stringmutablemap\n     :b \"y\")\n   iswrite : boolean :=\n    (boolean-write<-map-name-value\n     smap :a \"x\")]\n  smap))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmutablemap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":b"),
            Vx_Core.vx_new_string("y"),
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("x")
          )
        ),
        Vx_Core.f_let(
          Vx_Core.t_stringmutablemap,
          Vx_Core.t_any_from_func.vx_fn_new({() in
            let smap : any Vx_Core.Type_stringmutablemap = Vx_Core.f_new(
              Vx_Core.t_stringmutablemap,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string(":b"),
                Vx_Core.vx_new_string("y")
              )
            )
            let iswrite : any Vx_Core.Type_boolean = Vx_Core.f_boolean_write_from_map_name_value(
              smap,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("x")
            )
            let output_1 : any Vx_Core.Type_any = smap
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_boolean_write_from_map_name_value_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmutablemap\n  :a \"x\")\n (let : stringmutablemap\n  [smap : stringmutablemap :=\n    (stringmutablemap\n     :b \"y\"\n     :a \"x\")\n   iswrite : boolean :=\n    (boolean-write<-map-name-value\n     smap :b \"\")]\n  smap))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmutablemap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("x")
          )
        ),
        Vx_Core.f_let(
          Vx_Core.t_stringmutablemap,
          Vx_Core.t_any_from_func.vx_fn_new({() in
            let smap : any Vx_Core.Type_stringmutablemap = Vx_Core.f_new(
              Vx_Core.t_stringmutablemap,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string(":b"),
                Vx_Core.vx_new_string("y"),
                Vx_Core.vx_new_string(":a"),
                Vx_Core.vx_new_string("x")
              )
            )
            let iswrite : any Vx_Core.Type_boolean = Vx_Core.f_boolean_write_from_map_name_value(
              smap,
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("")
            )
            let output_2 : any Vx_Core.Type_any = smap
            return output_2
          })
        )
      )
    )
    return output
  }

  public static func f_compare(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "compare",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_compare_testdescribe_1(context),
        f_compare_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_compare_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 1 (compare 3 2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(1),
        Vx_Core.f_compare(
          Vx_Core.vx_new_int(3),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_compare_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 1 (compare \"z\" \"a\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(1),
        Vx_Core.f_compare(
          Vx_Core.vx_new_string("z"),
          Vx_Core.vx_new_string("a")
        )
      )
    )
    return output
  }

  public static func f_constdef_from_any(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "constdef<-any",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_constdef_from_any_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_constdef_from_any_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (constdef\n  :pkgname \"vx/core\"\n  :name \"false\"\n  :type boolean)\n (constdef<-any false))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_constdef,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":pkgname"),
            Vx_Core.vx_new_string("vx/core"),
            Vx_Core.vx_new_string(":name"),
            Vx_Core.vx_new_string("false"),
            Vx_Core.vx_new_string(":type"),
            Vx_Core.t_boolean
          )
        ),
        Vx_Core.f_constdef_from_any(
          Vx_Core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  public static func f_constname_from_any(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "constname<-any",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_constname_from_any_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_constname_from_any_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"vx/core/false\"\n (constname<-any false))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("vx/core/false"),
        Vx_Core.f_constname_from_any(
          Vx_Core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  public static func f_contains(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "contains",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_contains_testdescribe_1(context),
        f_contains_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_contains_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true  (contains \"abcde\" \"cd\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_contains(
          Vx_Core.vx_new_string("abcde"),
          Vx_Core.vx_new_string("cd")
        )
      )
    )
    return output
  }

  public static func f_contains_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false (contains \"abcde\" \"dc\"))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_contains(
          Vx_Core.vx_new_string("abcde"),
          Vx_Core.vx_new_string("dc")
        )
      )
    )
    return output
  }

  public static func f_contains_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "contains_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_contains_1_testdescribe_1(context),
        f_contains_1_testdescribe_2(context),
        f_contains_1_testdescribe_3(context)
      )
    )
    return output
  }

  public static func f_contains_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (contains (stringlist \"1\" \"2\" \"3\") \"2\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_contains_1(
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string("2"),
              Vx_Core.vx_new_string("3")
            )
          ),
          Vx_Core.vx_new_string("2")
        )
      )
    )
    return output
  }

  public static func f_contains_1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (contains (intlist 1 2 3) 2))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_contains_1(
          Vx_Core.f_new(
            Vx_Core.t_intlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_int(1),
              Vx_Core.vx_new_int(2),
              Vx_Core.vx_new_int(3)
            )
          ),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_contains_1_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false\n (contains (list 1 \"2\" 3) 2))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_contains_1(
          Vx_Core.f_new(
            Vx_Core.t_list,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_int(1),
              Vx_Core.vx_new_string("2"),
              Vx_Core.vx_new_int(3)
            )
          ),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_copy(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "copy",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_copy_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_copy_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"1\"\n  :b \"2\")\n (copy\n  (stringmap :a \"1\")\n  :b \"2\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("1"),
            Vx_Core.vx_new_string(":b"),
            Vx_Core.vx_new_string("2")
          )
        ),
        Vx_Core.f_copy(
          Vx_Core.t_stringmap,
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("1")
            )
          ),
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":b"),
            Vx_Core.vx_new_string("2")
          )
        )
      )
    )
    return output
  }

  public static func f_empty(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "empty",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_empty_testdescribe_1(context),
        f_empty_testdescribe_2(context),
        f_empty_testdescribe_3(context),
        f_empty_testdescribe_4(context)
      )
    )
    return output
  }

  public static func f_empty_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test false  (empty boolean))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_boolean(false),
        Vx_Core.f_empty(
          Vx_Core.t_boolean
        )
      )
    )
    return output
  }

  public static func f_empty_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"\"     (empty string))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string(""),
        Vx_Core.f_empty(
          Vx_Core.t_string
        )
      )
    )
    return output
  }

  public static func f_empty_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test (list) (empty list))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_empty(
          Vx_Core.t_list
        ),
        Vx_Core.f_empty(
          Vx_Core.t_list
        )
      )
    )
    return output
  }

  public static func f_empty_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test (map)  (empty map))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_empty(
          Vx_Core.t_map
        ),
        Vx_Core.f_empty(
          Vx_Core.t_map
        )
      )
    )
    return output
  }

  public static func f_first_from_list(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "first<-list",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_first_from_list_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_first_from_list_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (first<-list\n  (stringlist\n   \"b\"\n   \"c\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("b"),
        Vx_Core.f_first_from_list(
          Vx_Core.t_string,
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

  public static func f_first_from_list_any_from_any(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "first<-list-any<-any",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_first_from_list_any_from_any_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_first_from_list_any_from_any_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (first<-list-any<-any : string\n  (list nothing \"b\" \"c\")\n  resolve))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("b"),
        Vx_Core.f_first_from_list_any_from_any(
          Vx_Core.t_string,
          Vx_Core.f_new(
            Vx_Core.t_list,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.c_nothing,
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c")
            )
          ),
          Vx_Core.t_resolve
        )
      )
    )
    return output
  }

  public static func f_float_from_string(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "float<-string",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_float_from_string_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_float_from_string_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (float 2.3)\n (float<-string\n  \"2.3\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_float,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_decimal("2.3")
          )
        ),
        Vx_Core.f_float_from_string(
          Vx_Core.vx_new_string("2.3")
        )
      )
    )
    return output
  }

  public static func f_if(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "if",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_if_testdescribe_1(context),
        f_if_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_if_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"a\"\n (if (= 2 2) \"a\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("a"),
        Vx_Core.f_if(
          Vx_Core.t_string,
          Vx_Core.f_eq(
            Vx_Core.vx_new_int(2),
            Vx_Core.vx_new_int(2)
          ),
          Vx_Core.vx_new_string("a")
        )
      )
    )
    return output
  }

  public static func f_if_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"\"\n (if : string\n  (= 1 2)\n  \"a\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string(""),
        Vx_Core.f_if(
          Vx_Core.t_string,
          Vx_Core.f_eq(
            Vx_Core.vx_new_int(1),
            Vx_Core.vx_new_int(2)
          ),
          Vx_Core.vx_new_string("a")
        )
      )
    )
    return output
  }

  public static func f_if_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "if_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_if_1_testdescribe_1(context),
        f_if_1_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_if_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"a\"\n (if\n  (= 2 2)\n  \"a\"\n  \"b\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("a"),
        Vx_Core.f_if_1(
          Vx_Core.t_string,
          Vx_Core.f_eq(
            Vx_Core.vx_new_int(2),
            Vx_Core.vx_new_int(2)
          ),
          Vx_Core.vx_new_string("a"),
          Vx_Core.vx_new_string("b")
        )
      )
    )
    return output
  }

  public static func f_if_1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (if\n  (= 1 2)\n  \"a\"\n  \"b\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("b"),
        Vx_Core.f_if_1(
          Vx_Core.t_string,
          Vx_Core.f_eq(
            Vx_Core.vx_new_int(1),
            Vx_Core.vx_new_int(2)
          ),
          Vx_Core.vx_new_string("a"),
          Vx_Core.vx_new_string("b")
        )
      )
    )
    return output
  }

  public static func f_if_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "if_2",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_if_2_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_if_2_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (if\n  (then (= 2 3) false)\n  (then (!= 3 3) false)\n  (else (! false))))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_if_2(
          Vx_Core.t_any,
          Vx_Core.vx_new(
            Vx_Core.t_thenelselist,
            Vx_Core.f_then(
              Vx_Core.t_boolean_from_func.vx_fn_new({() in
                var output_1 : any Vx_Core.Type_any = Vx_Core.f_eq(
                  Vx_Core.vx_new_int(2),
                  Vx_Core.vx_new_int(3)
                )
                return output_1
              }),
              Vx_Core.t_any_from_func.vx_fn_new({() in
                var output_2 : any Vx_Core.Type_any = Vx_Core.vx_new_boolean(false)
                return output_2
              })
            ),
            Vx_Core.f_then(
              Vx_Core.t_boolean_from_func.vx_fn_new({() in
                var output_3 : any Vx_Core.Type_any = Vx_Core.f_ne(
                  Vx_Core.vx_new_int(3),
                  Vx_Core.vx_new_int(3)
                )
                return output_3
              }),
              Vx_Core.t_any_from_func.vx_fn_new({() in
                var output_4 : any Vx_Core.Type_any = Vx_Core.vx_new_boolean(false)
                return output_4
              })
            ),
            Vx_Core.f_else(
              Vx_Core.t_any_from_func.vx_fn_new({() in
                var output_5 : any Vx_Core.Type_any = Vx_Core.f_not(
                  Vx_Core.vx_new_boolean(false)
                )
                return output_5
              })
            )
          )
        )
      )
    )
    return output
  }

  public static func f_int_from_string(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "int<-string",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_int_from_string_testdescribe_1(context),
        f_int_from_string_testdescribe_2(context),
        f_int_from_string_testdescribe_3(context),
        f_int_from_string_testdescribe_4(context),
        f_int_from_string_testdescribe_5(context),
        f_int_from_string_testdescribe_6(context)
      )
    )
    return output
  }

  public static func f_int_from_string_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 4 (int<-string \"4\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(4),
        Vx_Core.f_int_from_string(
          Vx_Core.vx_new_string("4")
        )
      )
    )
    return output
  }

  public static func f_int_from_string_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 5 (int<-string \"5.4\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(5),
        Vx_Core.f_int_from_string(
          Vx_Core.vx_new_string("5.4")
        )
      )
    )
    return output
  }

  public static func f_int_from_string_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 5 (int<-string \"5.9\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(5),
        Vx_Core.f_int_from_string(
          Vx_Core.vx_new_string("5.9")
        )
      )
    )
    return output
  }

  public static func f_int_from_string_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test notanumber  (int<-string \"notanumber\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.c_notanumber,
        Vx_Core.f_int_from_string(
          Vx_Core.vx_new_string("notanumber")
        )
      )
    )
    return output
  }

  public static func f_int_from_string_testdescribe_5(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test infinity    (int<-string \"infinity\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.c_infinity,
        Vx_Core.f_int_from_string(
          Vx_Core.vx_new_string("infinity")
        )
      )
    )
    return output
  }

  public static func f_int_from_string_testdescribe_6(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test neginfinity (int<-string \"neginfinity\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.c_neginfinity,
        Vx_Core.f_int_from_string(
          Vx_Core.vx_new_string("neginfinity")
        )
      )
    )
    return output
  }

  public static func f_is_empty_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-empty_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_is_empty_1_testdescribe_1(context),
        f_is_empty_1_testdescribe_2(context),
        f_is_empty_1_testdescribe_3(context),
        f_is_empty_1_testdescribe_4(context)
      )
    )
    return output
  }

  public static func f_is_empty_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (is-empty false))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_empty_1(
          Vx_Core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  public static func f_is_empty_1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (is-empty \"\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_empty(
          Vx_Core.vx_new_string("")
        )
      )
    )
    return output
  }

  public static func f_is_empty_1_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (is-empty (list)))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_empty_1(
          Vx_Core.f_empty(
            Vx_Core.t_list
          )
        )
      )
    )
    return output
  }

  public static func f_is_empty_1_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (is-empty (map)))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_empty_1(
          Vx_Core.f_empty(
            Vx_Core.t_map
          )
        )
      )
    )
    return output
  }

  public static func f_is_error(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-error",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_is_error_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_is_error_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (is-error\n  (stringlist\n   (msg\n    :code \"My Err\"))))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_error(
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.f_new(
                Vx_Core.t_msg,
                Vx_Core.vx_new(
                  Vx_Core.t_anylist,
                  Vx_Core.vx_new_string(":code"),
                  Vx_Core.vx_new_string("My Err")
                )
              )
            )
          )
        )
      )
    )
    return output
  }

  public static func f_is_int(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-int",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_is_int_testdescribe_1(context),
        f_is_int_testdescribe_2(context),
        f_is_int_testdescribe_3(context),
        f_is_int_testdescribe_4(context)
      )
    )
    return output
  }

  public static func f_is_int_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (is-int 2))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_int(
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_is_int_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (is-int \"2\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_int(
          Vx_Core.vx_new_string("2")
        )
      )
    )
    return output
  }

  public static func f_is_int_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (is-int infinity))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_int(
          Vx_Core.c_infinity
        )
      )
    )
    return output
  }

  public static func f_is_int_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true\n (is-int \"infinity\"))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_int(
          Vx_Core.vx_new_string("infinity")
        )
      )
    )
    return output
  }

  public static func f_is_number(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-number",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_is_number_testdescribe_1(context),
        f_is_number_testdescribe_2(context),
        f_is_number_testdescribe_3(context)
      )
    )
    return output
  }

  public static func f_is_number_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true  (is-number 5))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_number(
          Vx_Core.vx_new_int(5)
        )
      )
    )
    return output
  }

  public static func f_is_number_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true  (is-number 5.5))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_is_number(
          Vx_Core.vx_new_decimal("5.5")
        )
      )
    )
    return output
  }

  public static func f_is_number_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false (is-number \"a\"))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_is_number(
          Vx_Core.vx_new_string("a")
        )
      )
    )
    return output
  }

  public static func f_last_from_list(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "last<-list",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_last_from_list_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_last_from_list_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"c\"\n (last<-list\n  (stringlist\n   \"b\"\n   \"c\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("c"),
        Vx_Core.f_last_from_list(
          Vx_Core.t_string,
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

  public static func f_length(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "length",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_length_testdescribe_1(context),
        f_length_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_length_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 4\n (length \"abcd\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(4),
        Vx_Core.f_length(
          Vx_Core.vx_new_string("abcd")
        )
      )
    )
    return output
  }

  public static func f_length_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 0\n (length \"\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(0),
        Vx_Core.f_length(
          Vx_Core.vx_new_string("")
        )
      )
    )
    return output
  }

  public static func f_length_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "length_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_length_1_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_length_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 3\n (length\n  (stringlist \"a\" \"b\" \"c\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(3),
        Vx_Core.f_length_1(
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_let(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "let",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_let_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_let_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n 7\n (let\n  [v1 : int := 2\n   v2 : int := (+ v1 3)]\n  (+ v1 v2)))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(7),
        Vx_Core.f_let(
          Vx_Core.t_int,
          Vx_Core.t_any_from_func.vx_fn_new({() in
            let v1 : any Vx_Core.Type_int = Vx_Core.vx_new_int(2)
            let v2 : any Vx_Core.Type_int = Vx_Core.f_plus(
              v1,
              Vx_Core.vx_new_int(3)
            )
            let output_1 : any Vx_Core.Type_any = Vx_Core.f_plus(
              v1,
              v2
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_list_from_list(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-list",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_list_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_list_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"10\" \"20\")\n (list<-list : stringlist\n  (anylist \"10\" \"20\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("10"),
            Vx_Core.vx_new_string("20")
          )
        ),
        Vx_Core.f_list_from_list(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("10"),
              Vx_Core.vx_new_string("20")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_list_from_list_intany(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-list-intany",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_list_intany_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_list_intany_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a1\" \"b2\")\n (list<-list-intany : stringlist\n  (stringlist \"a\" \"b\")\n  (fn : stringlist\n   [index : int\n    value : string]\n   (string value index))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a1"),
            Vx_Core.vx_new_string("b2")
          )
        ),
        Vx_Core.f_list_from_list_intany(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b")
            )
          ),
          Vx_Core.t_any_from_int_any.vx_fn_new({(index_any, value_any) in
            let index : any Vx_Core.Type_int = Vx_Core.f_any_from_any(Vx_Core.t_int, index_any)
            let value : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, value_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
              Vx_Core.t_string,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                value,
                index
              )
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_list_from_map(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-map",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_map_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_map_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a1\" \"b2\")\n (list<-map : stringlist\n  (stringmap\n   :x \"a1\"\n   :y \"b2\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a1"),
            Vx_Core.vx_new_string("b2")
          )
        ),
        Vx_Core.f_list_from_map(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":x"),
              Vx_Core.vx_new_string("a1"),
              Vx_Core.vx_new_string(":y"),
              Vx_Core.vx_new_string("b2")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_list_from_map_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-map_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_list_from_map_1_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_list_from_map_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a1\" \"b2\")\n (list<-map : stringlist\n  (stringmap \"a\" \"1\" \"b\" \"2\")\n  (fn : string\n   [key   : string\n    value : string]\n   (string key value))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a1"),
            Vx_Core.vx_new_string("b2")
          )
        ),
        Vx_Core.f_list_from_map_1(
          Vx_Core.t_stringlist,
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("2")
            )
          ),
          Vx_Core.t_any_from_key_value.vx_fn_new({(key_any, value_any) in
            let key : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, key_any)
            let value : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, value_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
              Vx_Core.t_string,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                key,
                value
              )
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_map_from_list(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "map<-list",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_map_from_list_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_map_from_list_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  \"keya\" \"a\"\n  \"keyb\" \"b\")\n (map<-list : stringmap\n  (stringlist \"a\" \"b\")\n  (fn : string\n   [value : string]\n   (string \"key\" value))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("keya"),
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_string("keyb"),
            Vx_Core.vx_new_string("b")
          )
        ),
        Vx_Core.f_map_from_list(
          Vx_Core.t_stringmap,
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b")
            )
          ),
          Vx_Core.t_any_from_any.vx_fn_new({(value_any) in
            let value : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, value_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
              Vx_Core.t_string,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string("key"),
                value
              )
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_map_from_map(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "map<-map",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_map_from_map_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_map_from_map_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap :a \"1\")\n (map<-map : stringmap\n  (anymap :a \"1\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("1")
          )
        ),
        Vx_Core.f_map_from_map(
          Vx_Core.t_stringmap,
          Vx_Core.f_new(
            Vx_Core.t_anymap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("1")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_map_from_map_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "map<-map_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_map_from_map_1_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_map_from_map_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"a1\"\n  :b \"b2\")\n (map<-map : stringmap\n  (stringmap\n   :a \"1\"\n   :b \"2\")\n  (fn : string\n   [key : string\n    value : string]\n   (string key value))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("a1"),
            Vx_Core.vx_new_string(":b"),
            Vx_Core.vx_new_string("b2")
          )
        ),
        Vx_Core.f_map_from_map_1(
          Vx_Core.t_stringmap,
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("2")
            )
          ),
          Vx_Core.t_any_from_key_value.vx_fn_new({(key_any, value_any) in
            let key : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, key_any)
            let value : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, value_any)
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
              Vx_Core.t_string,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                key,
                value
              )
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_new(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "new",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_new_testdescribe_1(context),
        f_new_testdescribe_2(context),
        f_new_testdescribe_3(context),
        f_new_testdescribe_4(context),
        f_new_testdescribe_5(context),
        f_new_testdescribe_6(context)
      )
    )
    return output
  }

  public static func f_new_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test true (new : boolean true))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_boolean(true),
        Vx_Core.f_new(
          Vx_Core.t_boolean,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_boolean(true)
          )
        )
      )
    )
    return output
  }

  public static func f_new_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 4 (new : int 4))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(4),
        Vx_Core.f_new(
          Vx_Core.t_int,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_int(4)
          )
        )
      )
    )
    return output
  }

  public static func f_new_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 5.4 (new : float 5.4))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_decimal("5.4"),
        Vx_Core.f_new(
          Vx_Core.t_float,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_decimal("5.4")
          )
        )
      )
    )
    return output
  }

  public static func f_new_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"a\" (new : string \"a\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("a"),
        Vx_Core.f_new(
          Vx_Core.t_string,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a")
          )
        )
      )
    )
    return output
  }

  public static func f_new_testdescribe_5(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\")\n (new : stringlist \"a\" \"b\" \"c\"))",
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
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("c")
          )
        )
      )
    )
    return output
  }

  public static func f_new_testdescribe_6(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap :a \"1\" :b \"2\")\n (new : stringmap :a \"1\" :b \"2\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("1"),
            Vx_Core.vx_new_string(":b"),
            Vx_Core.vx_new_string("2")
          )
        ),
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("1"),
            Vx_Core.vx_new_string(":b"),
            Vx_Core.vx_new_string("2")
          )
        )
      )
    )
    return output
  }

  public static func f_new_from_type(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "new<-type",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_new_from_type_testdescribe_1(context),
        f_new_from_type_testdescribe_2(context),
        f_new_from_type_testdescribe_3(context),
        f_new_from_type_testdescribe_4(context),
        f_new_from_type_testdescribe_5(context),
        f_new_from_type_testdescribe_6(context)
      )
    )
    return output
  }

  public static func f_new_from_type_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test true (new<-type boolean true))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_boolean(true),
        Vx_Core.f_new_from_type(
          Vx_Core.t_boolean,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_boolean(true)
          )
        )
      )
    )
    return output
  }

  public static func f_new_from_type_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 4 (new<-type int 4))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(4),
        Vx_Core.f_new_from_type(
          Vx_Core.t_int,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_int(4)
          )
        )
      )
    )
    return output
  }

  public static func f_new_from_type_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 5.4 (new<-type float 5.4))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_decimal("5.4"),
        Vx_Core.f_new_from_type(
          Vx_Core.t_float,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_decimal("5.4")
          )
        )
      )
    )
    return output
  }

  public static func f_new_from_type_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"a\" (new<-type string \"a\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("a"),
        Vx_Core.f_new_from_type(
          Vx_Core.t_string,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a")
          )
        )
      )
    )
    return output
  }

  public static func f_new_from_type_testdescribe_5(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\")\n (new<-type stringlist \"a\" \"b\" \"c\"))",
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
        Vx_Core.f_new_from_type(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("a"),
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("c")
          )
        )
      )
    )
    return output
  }

  public static func f_new_from_type_testdescribe_6(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringmap :a \"1\" :b \"2\")\n (new<-type stringmap :a \"1\" :b \"2\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("1"),
            Vx_Core.vx_new_string(":b"),
            Vx_Core.vx_new_string("2")
          )
        ),
        Vx_Core.f_new_from_type(
          Vx_Core.t_stringmap,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":a"),
            Vx_Core.vx_new_string("1"),
            Vx_Core.vx_new_string(":b"),
            Vx_Core.vx_new_string("2")
          )
        )
      )
    )
    return output
  }

  public static func f_or(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "or",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_or_testdescribe_1(context),
        f_or_testdescribe_2(context),
        f_or_testdescribe_3(context)
      )
    )
    return output
  }

  public static func f_or_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (or true true))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_or(
          Vx_Core.vx_new_boolean(true),
          Vx_Core.vx_new_boolean(true)
        )
      )
    )
    return output
  }

  public static func f_or_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (or true false))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_or(
          Vx_Core.vx_new_boolean(true),
          Vx_Core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  public static func f_or_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false (or false false))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_or(
          Vx_Core.vx_new_boolean(false),
          Vx_Core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  public static func f_or_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "or_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_or_1_testdescribe_1(context),
        f_or_1_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_or_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-true (or false true false))",
      ":testresult", Vx_Test.f_test_true(
        context,
        Vx_Core.f_or_1(
          Vx_Core.vx_new(
            Vx_Core.t_booleanlist,
            Vx_Core.vx_new_boolean(false),
            Vx_Core.vx_new_boolean(true),
            Vx_Core.vx_new_boolean(false)
          )
        )
      )
    )
    return output
  }

  public static func f_or_1_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test-false (or false false false))",
      ":testresult", Vx_Test.f_test_false(
        context,
        Vx_Core.f_or_1(
          Vx_Core.vx_new(
            Vx_Core.t_booleanlist,
            Vx_Core.vx_new_boolean(false),
            Vx_Core.vx_new_boolean(false),
            Vx_Core.vx_new_boolean(false)
          )
        )
      )
    )
    return output
  }

  public static func f_resolve(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "resolve",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_resolve_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_resolve_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"a\" (resolve \"a\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("a"),
        Vx_Core.f_resolve(
          Vx_Core.t_string,
          Vx_Core.vx_new_string("a")
        )
      )
    )
    return output
  }

  public static func f_resolve_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "resolve_1",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_resolve_1_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_resolve_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 4 (resolve (fn : int [] (+ 1 3))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(4),
        Vx_Core.f_resolve_1(
          Vx_Core.t_int,
          Vx_Core.t_any_from_func.vx_fn_new({() in
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_plus(
              Vx_Core.vx_new_int(1),
              Vx_Core.vx_new_int(3)
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_resolve_async(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "resolve-async",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_resolve_async_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_resolve_async_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 4 (resolve : int (fn : int [] (+ 1 3))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(4),
        Vx_Core.f_resolve_1(
          Vx_Core.t_int,
          Vx_Core.t_any_from_func.vx_fn_new({() in
            var output_1 : any Vx_Core.Type_any = Vx_Core.f_plus(
              Vx_Core.vx_new_int(1),
              Vx_Core.vx_new_int(3)
            )
            return output_1
          })
        )
      )
    )
    return output
  }

  public static func f_string_repeat(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string-repeat",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_string_repeat_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_string_repeat_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"abab\" (string-repeat \"ab\" 2))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("abab"),
        Vx_Core.f_string_repeat(
          Vx_Core.vx_new_string("ab"),
          Vx_Core.vx_new_int(2)
        )
      )
    )
    return output
  }

  public static func f_string_from_any(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string<-any",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_string_from_any_testdescribe_1(context),
        f_string_from_any_testdescribe_2(context),
        f_string_from_any_testdescribe_3(context),
        f_string_from_any_testdescribe_4(context),
        f_string_from_any_testdescribe_5(context),
        f_string_from_any_testdescribe_6(context)
      )
    )
    return output
  }

  public static func f_string_from_any_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"true\"  (string<-any true))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("true"),
        Vx_Core.f_string_from_any(
          Vx_Core.vx_new_boolean(true)
        )
      )
    )
    return output
  }

  public static func f_string_from_any_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"4\"     (string<-any 4))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("4"),
        Vx_Core.f_string_from_any(
          Vx_Core.vx_new_int(4)
        )
      )
    )
    return output
  }

  public static func f_string_from_any_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"5.4\"   (string<-any 5.4))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("5.4"),
        Vx_Core.f_string_from_any(
          Vx_Core.vx_new_decimal("5.4")
        )
      )
    )
    return output
  }

  public static func f_string_from_any_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"\\\"a\\\"\" (string<-any \"a\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("\"a\""),
        Vx_Core.f_string_from_any(
          Vx_Core.vx_new_string("a")
        )
      )
    )
    return output
  }

  public static func f_string_from_any_testdescribe_5(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"(stringlist\n   \\\"a\\\"\n   \\\"b\\\"\n   \\\"c\\\")\"\n (string<-any (stringlist \"a\" \"b\" \"c\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("(stringlist\n \"a\"\n \"b\"\n \"c\")"),
        Vx_Core.f_string_from_any(
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string("a"),
              Vx_Core.vx_new_string("b"),
              Vx_Core.vx_new_string("c")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_string_from_any_testdescribe_6(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"(stringmap\n   :a \\\"1\\\"\n   :b \\\"2\\\")\"\n (string<-any (stringmap :a \"1\" :b \"2\")))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("(stringmap\n :a \"1\"\n :b \"2\")"),
        Vx_Core.f_string_from_any(
          Vx_Core.f_new(
            Vx_Core.t_stringmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_string("1"),
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_string("2")
            )
          )
        )
      )
    )
    return output
  }

  public static func f_string_from_string_find_replace(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string<-string-find-replace",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_string_from_string_find_replace_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_string_from_string_find_replace_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"a!b!c\"\n (string<-string-find-replace\n  \"axybxyc\"\n  \"xy\"\n  \"!\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("a!b!c"),
        Vx_Core.f_string_from_string_find_replace(
          Vx_Core.vx_new_string("axybxyc"),
          Vx_Core.vx_new_string("xy"),
          Vx_Core.vx_new_string("!")
        )
      )
    )
    return output
  }

  public static func f_stringlist_from_map(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "stringlist<-map",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_stringlist_from_map_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_stringlist_from_map_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n (stringlist \"b\" \"a\")\n (stringlist<-map\n  (intmap\n   :b 1\n   :a 2)))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.f_new(
          Vx_Core.t_stringlist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("b"),
            Vx_Core.vx_new_string("a")
          )
        ),
        Vx_Core.f_stringlist_from_map(
          Vx_Core.f_new(
            Vx_Core.t_intmap,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":b"),
              Vx_Core.vx_new_int(1),
              Vx_Core.vx_new_string(":a"),
              Vx_Core.vx_new_int(2)
            )
          )
        )
      )
    )
    return output
  }

  public static func f_switch(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "switch",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_switch_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_switch_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test 1\n (switch : int\n  \"d\"\n  (case (list \"b\" \"c\" \"d\") 1)\n  (else 2)))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_int(1),
        Vx_Core.f_switch(
          Vx_Core.t_int,
          Vx_Core.vx_new_string("d"),
          Vx_Core.vx_new(
            Vx_Core.t_thenelselist,
            Vx_Core.f_case(
              Vx_Core.f_new(
                Vx_Core.t_list,
                Vx_Core.vx_new(
                  Vx_Core.t_anylist,
                  Vx_Core.vx_new_string("b"),
                  Vx_Core.vx_new_string("c"),
                  Vx_Core.vx_new_string("d")
                )
              ),
              Vx_Core.t_any_from_func.vx_fn_new({() in
                var output_1 : any Vx_Core.Type_any = Vx_Core.vx_new_int(1)
                return output_1
              })
            ),
            Vx_Core.f_else(
              Vx_Core.t_any_from_func.vx_fn_new({() in
                var output_2 : any Vx_Core.Type_any = Vx_Core.vx_new_int(2)
                return output_2
              })
            )
          )
        )
      )
    )
    return output
  }

  public static func f_type_from_any(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "type<-any",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_type_from_any_testdescribe_1(context),
        f_type_from_any_testdescribe_2(context),
        f_type_from_any_testdescribe_3(context)
      )
    )
    return output
  }

  public static func f_type_from_any_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n boolean\n (type<-any false))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.t_boolean,
        Vx_Core.f_type_from_any(
          Vx_Core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  public static func f_type_from_any_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n int\n (type<-any 5))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.t_int,
        Vx_Core.f_type_from_any(
          Vx_Core.vx_new_int(5)
        )
      )
    )
    return output
  }

  public static func f_type_from_any_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n string\n (type<-any \"a\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.t_string,
        Vx_Core.f_type_from_any(
          Vx_Core.vx_new_string("a")
        )
      )
    )
    return output
  }

  public static func f_typename_from_any(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "typename<-any",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_typename_from_any_testdescribe_1(context),
        f_typename_from_any_testdescribe_2(context),
        f_typename_from_any_testdescribe_3(context)
      )
    )
    return output
  }

  public static func f_typename_from_any_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"vx/core/boolean\" (typename<-any false))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("vx/core/boolean"),
        Vx_Core.f_typename_from_any(
          Vx_Core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  public static func f_typename_from_any_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"vx/core/int\"     (typename<-any 5))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("vx/core/int"),
        Vx_Core.f_typename_from_any(
          Vx_Core.vx_new_int(5)
        )
      )
    )
    return output
  }

  public static func f_typename_from_any_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test \"vx/core/string\"  (typename<-any \"a\"))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("vx/core/string"),
        Vx_Core.f_typename_from_any(
          Vx_Core.vx_new_string("a")
        )
      )
    )
    return output
  }

  public static func test_cases(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcaselist {
    var testcases : [any Vx_Core.Type_any] = Vx_Core.arraylist_from_array(
      Vx_CoreTest.t_boolean(context),
      Vx_CoreTest.t_float(context),
      Vx_CoreTest.t_func(context),
      Vx_CoreTest.t_funclist(context),
      Vx_CoreTest.t_int(context),
      Vx_CoreTest.t_msgblock(context),
      Vx_CoreTest.t_msgblocklist(context),
      Vx_CoreTest.t_msglist(context),
      Vx_CoreTest.t_string(context),
      Vx_CoreTest.t_stringlist(context),
      Vx_CoreTest.c_false(context),
      Vx_CoreTest.c_true(context),
      Vx_CoreTest.f_not(context),
      Vx_CoreTest.f_ne(context),
      Vx_CoreTest.f_multiply(context),
      Vx_CoreTest.f_multiply_1(context),
      Vx_CoreTest.f_multiply_2(context),
      Vx_CoreTest.f_multiply_3(context),
      Vx_CoreTest.f_plus(context),
      Vx_CoreTest.f_plus_1(context),
      Vx_CoreTest.f_plus1(context),
      Vx_CoreTest.f_minus(context),
      Vx_CoreTest.f_minus_1(context),
      Vx_CoreTest.f_minus1(context),
      Vx_CoreTest.f_divide(context),
      Vx_CoreTest.f_lt(context),
      Vx_CoreTest.f_lt_1(context),
      Vx_CoreTest.f_chainfirst(context),
      Vx_CoreTest.f_chainlast(context),
      Vx_CoreTest.f_le(context),
      Vx_CoreTest.f_le_1(context),
      Vx_CoreTest.f_eq(context),
      Vx_CoreTest.f_eq_1(context),
      Vx_CoreTest.f_eqeq(context),
      Vx_CoreTest.f_gt(context),
      Vx_CoreTest.f_gt_1(context),
      Vx_CoreTest.f_ge(context),
      Vx_CoreTest.f_ge_1(context),
      Vx_CoreTest.f_and(context),
      Vx_CoreTest.f_and_1(context),
      Vx_CoreTest.f_any_from_list(context),
      Vx_CoreTest.f_any_from_list_start_reduce(context),
      Vx_CoreTest.f_any_from_map(context),
      Vx_CoreTest.f_any_from_map_start_reduce(context),
      Vx_CoreTest.f_any_from_struct(context),
      Vx_CoreTest.f_boolean_write_from_map_name_value(context),
      Vx_CoreTest.f_compare(context),
      Vx_CoreTest.f_constdef_from_any(context),
      Vx_CoreTest.f_constname_from_any(context),
      Vx_CoreTest.f_contains(context),
      Vx_CoreTest.f_contains_1(context),
      Vx_CoreTest.f_copy(context),
      Vx_CoreTest.f_empty(context),
      Vx_CoreTest.f_first_from_list(context),
      Vx_CoreTest.f_first_from_list_any_from_any(context),
      Vx_CoreTest.f_float_from_string(context),
      Vx_CoreTest.f_if(context),
      Vx_CoreTest.f_if_1(context),
      Vx_CoreTest.f_if_2(context),
      Vx_CoreTest.f_int_from_string(context),
      Vx_CoreTest.f_is_empty_1(context),
      Vx_CoreTest.f_is_error(context),
      Vx_CoreTest.f_is_int(context),
      Vx_CoreTest.f_is_number(context),
      Vx_CoreTest.f_last_from_list(context),
      Vx_CoreTest.f_length(context),
      Vx_CoreTest.f_length_1(context),
      Vx_CoreTest.f_let(context),
      Vx_CoreTest.f_list_from_list(context),
      Vx_CoreTest.f_list_from_list_intany(context),
      Vx_CoreTest.f_list_from_map(context),
      Vx_CoreTest.f_list_from_map_1(context),
      Vx_CoreTest.f_map_from_list(context),
      Vx_CoreTest.f_map_from_map(context),
      Vx_CoreTest.f_map_from_map_1(context),
      Vx_CoreTest.f_new(context),
      Vx_CoreTest.f_new_from_type(context),
      Vx_CoreTest.f_or(context),
      Vx_CoreTest.f_or_1(context),
      Vx_CoreTest.f_resolve(context),
      Vx_CoreTest.f_resolve_1(context),
      Vx_CoreTest.f_resolve_async(context),
      Vx_CoreTest.f_string_repeat(context),
      Vx_CoreTest.f_string_from_any(context),
      Vx_CoreTest.f_string_from_string_find_replace(context),
      Vx_CoreTest.f_stringlist_from_map(context),
      Vx_CoreTest.f_switch(context),
      Vx_CoreTest.f_type_from_any(context),
      Vx_CoreTest.f_typename_from_any(context)
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
      ":testpkg", "vx/core", 
      ":constnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 13, ":tests", 2, ":total", 15), 
      ":docnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 91, ":tests", 239, ":total", 261), 
      ":funcnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 55, ":tests", 77, ":total", 139), 
      ":bigospacenums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 0, ":tests", 1, ":total", 170), 
      ":bigotimenums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 0, ":tests", 1, ":total", 170), 
      ":totalnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 38, ":tests", 89, ":total", 230), 
      ":typenums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 13, ":tests", 10, ":total", 76)
    )
    return output
  }

  public static func test_coveragedetail() -> any Vx_Test.Type_testcoveragedetail {
    let output : any Vx_Test.Type_testcoveragedetail = Vx_Core.vx_new(
      Vx_Test.t_testcoveragedetail,
      ":testpkg", "vx/core",
      ":typemap", Vx_Core.vx_new(
        Vx_Core.t_intmap,
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
        ":string", 3,
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
      ":constmap", Vx_Core.vx_new(
        Vx_Core.t_intmap,
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
      ":funcmap", Vx_Core.vx_new(
        Vx_Core.t_intmap,
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
    )
    return output
  }

  public static func test_package(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testpackage {
    let testcaselist : any Vx_Test.Type_testcaselist = test_cases(context)
    let output : any Vx_Test.Type_testpackage = Vx_Core.vx_new(
      Vx_Test.t_testpackage,
      ":testpkg", "vx/core", 
      ":caselist", testcaselist,
      ":coveragesummary", test_coveragesummary(),
      ":coveragedetail", test_coveragedetail()
    )
    return output
  }

}
