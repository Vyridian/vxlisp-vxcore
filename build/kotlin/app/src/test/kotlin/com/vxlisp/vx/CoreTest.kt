
package com.vxlisp.vx

object vx_coreTest {

  fun t_boolean(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "boolean",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        t_boolean_testdescribe_1(context),
        t_boolean_testdescribe_2(context),
        t_boolean_testdescribe_3(context),
        t_boolean_testdescribe_4(context)
      )
    )
    return output
  }

  fun t_boolean_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true true)",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.vx_new_boolean(true)
      )
    )
    return output
  }

  fun t_boolean_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false false)",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.vx_new_boolean(false)
      )
    )
    return output
  }

  fun t_boolean_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (boolean true))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_new(
          vx_core.t_boolean,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_boolean(true)
          )
        )
      )
    )
    return output
  }

  fun t_boolean_testdescribe_4(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false (boolean false))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_new(
          vx_core.t_boolean,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_boolean(false)
          )
        )
      )
    )
    return output
  }

  fun t_float(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "float",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        t_float_testdescribe_1(context)
      )
    )
    return output
  }

  fun t_float_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n 4.5\n (float 4.5))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_decimal("4.5"),
        vx_core.f_new(
          vx_core.t_float,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_decimal("4.5")
          )
        )
      )
    )
    return output
  }

  fun t_func(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "func",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        t_func_testdescribe_1(context)
      )
    )
    return output
  }

  fun t_func_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n 5\n (let\n  [funcvar : + := +]\n  (funcvar 2 3)))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(5),
        vx_core.f_let(
          vx_core.t_int,
          vx_core.t_any_from_func.vx_fn_new({ ->
            var funcvar : vx_core.Func_plus =   vx_core.t_plus
            var output_1 : vx_core.Type_any = vx_core.vx_any_from_func(
              vx_core.t_int,
              funcvar,
              vx_core.vx_new_int(2),
              vx_core.vx_new_int(3)
            )
            output_1
          })
        )
      )
    )
    return output
  }

  fun t_funclist(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "funclist",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        t_funclist_testdescribe_1(context)
      )
    )
    return output
  }

  fun t_funclist_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n 2\n (length\n  (funclist\n   + -)))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(2),
        vx_core.f_length_1(
          vx_core.f_new(
            vx_core.t_funclist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.t_plus,
              vx_core.t_minus
            )
          )
        )
      )
    )
    return output
  }

  fun t_int(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "int",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
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

  fun t_int_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true  (is-int 4))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_int(
          vx_core.vx_new_int(4)
        )
      )
    )
    return output
  }

  fun t_int_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true  (is-int \"4\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_int(
          vx_core.vx_new_string("4")
        )
      )
    )
    return output
  }

  fun t_int_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true  (is-int infinity))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_int(
          vx_core.c_infinity
        )
      )
    )
    return output
  }

  fun t_int_testdescribe_4(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true  (is-int neginfinity))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_int(
          vx_core.c_neginfinity
        )
      )
    )
    return output
  }

  fun t_int_testdescribe_5(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true  (is-int notanumber))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_int(
          vx_core.c_notanumber
        )
      )
    )
    return output
  }

  fun t_int_testdescribe_6(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false (is-int \"a\"))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_is_int(
          vx_core.vx_new_string("a")
        )
      )
    )
    return output
  }

  fun t_int_testdescribe_7(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false (is-int 5.5))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_is_int(
          vx_core.vx_new_decimal("5.5")
        )
      )
    )
    return output
  }

  fun t_string(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        t_string_testdescribe_1(context),
        t_string_testdescribe_2(context)
      )
    )
    return output
  }

  fun t_string_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"a\" (string \"a\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("a"),
        vx_core.f_new(
          vx_core.t_string,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a")
          )
        )
      )
    )
    return output
  }

  fun t_string_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"ab\" (string \"a\" \"b\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("ab"),
        vx_core.f_new(
          vx_core.t_string,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a"),
            vx_core.vx_new_string("b")
          )
        )
      )
    )
    return output
  }

  fun t_stringlist(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "stringlist",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        t_stringlist_testdescribe_1(context)
      )
    )
    return output
  }

  fun t_stringlist_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (new : stringlist \"a\" \"b\" \"c\")\n (stringlist\n  (anylist\n   \"a\"\n   (stringlist \"b\" \"c\"))))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a"),
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("c")
          )
        ),
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.f_new(
              vx_core.t_anylist,
              vx_core.vx_new(
                vx_core.t_anylist,
                vx_core.vx_new_string("a"),
                vx_core.f_new(
                  vx_core.t_stringlist,
                  vx_core.vx_new(
                    vx_core.t_anylist,
                    vx_core.vx_new_string("b"),
                    vx_core.vx_new_string("c")
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

  fun c_false(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "false",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        c_false_testdescribe_1(context)
      )
    )
    return output
  }

  fun c_false_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false false)",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.vx_new_boolean(false)
      )
    )
    return output
  }

  fun c_true(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "true",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        c_true_testdescribe_1(context)
      )
    )
    return output
  }

  fun c_true_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true true)",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.vx_new_boolean(true)
      )
    )
    return output
  }

  fun f_not(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "!",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_not_testdescribe_1(context),
        f_not_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_not_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false false)",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.vx_new_boolean(false)
      )
    )
    return output
  }

  fun f_not_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false (! true))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_not(
          vx_core.vx_new_boolean(true)
        )
      )
    )
    return output
  }

  fun f_ne(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "!=",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_ne_testdescribe_1(context),
        f_ne_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_ne_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-ne true false)",
      ":testresult", vx_test.f_test_ne(
        context,
        vx_core.vx_new_boolean(true),
        vx_core.vx_new_boolean(false)
      )
    )
    return output
  }

  fun f_ne_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-ne \"a\" \"b\")",
      ":testresult", vx_test.f_test_ne(
        context,
        vx_core.vx_new_string("a"),
        vx_core.vx_new_string("b")
      )
    )
    return output
  }

  fun f_multiply(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_multiply_testdescribe_1(context),
        f_multiply_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_multiply_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 6 (* 3 2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(6),
        vx_core.f_multiply(
          vx_core.vx_new_int(3),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_multiply_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test -10 (* 5 -2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(-10),
        vx_core.f_multiply(
          vx_core.vx_new_int(5),
          vx_core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  fun f_multiply_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_multiply_1_testdescribe_1(context),
        f_multiply_1_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_multiply_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 6.4 (* 3.2 2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_decimal("6.4"),
        vx_core.f_multiply_1(
          vx_core.vx_new_decimal("3.2"),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_multiply_1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test -10.2 (* 5.1 -2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_decimal("-10.2"),
        vx_core.f_multiply_1(
          vx_core.vx_new_decimal("5.1"),
          vx_core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  fun f_multiply_2(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*_2",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_multiply_2_testdescribe_1(context),
        f_multiply_2_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_multiply_2_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 24 (* 3 2 4))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(24),
        vx_core.f_multiply_2(
          vx_core.vx_new(
            vx_core.t_intlist,
            vx_core.vx_new_int(3),
            vx_core.vx_new_int(2),
            vx_core.vx_new_int(4)
          )
        )
      )
    )
    return output
  }

  fun f_multiply_2_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test -20 (* 5 -2 2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(-20),
        vx_core.f_multiply_2(
          vx_core.vx_new(
            vx_core.t_intlist,
            vx_core.vx_new_int(5),
            vx_core.vx_new_int(-2),
            vx_core.vx_new_int(2)
          )
        )
      )
    )
    return output
  }

  fun f_multiply_3(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "*_3",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_multiply_3_testdescribe_1(context),
        f_multiply_3_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_multiply_3_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 24 (* 3 2 4))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(24),
        vx_core.f_multiply_2(
          vx_core.vx_new(
            vx_core.t_intlist,
            vx_core.vx_new_int(3),
            vx_core.vx_new_int(2),
            vx_core.vx_new_int(4)
          )
        )
      )
    )
    return output
  }

  fun f_multiply_3_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test -20 (* 5 -2 2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(-20),
        vx_core.f_multiply_2(
          vx_core.vx_new(
            vx_core.t_intlist,
            vx_core.vx_new_int(5),
            vx_core.vx_new_int(-2),
            vx_core.vx_new_int(2)
          )
        )
      )
    )
    return output
  }

  fun f_plus(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "+",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_plus_testdescribe_1(context),
        f_plus_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_plus_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 5 (+ 2 3))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(5),
        vx_core.f_plus(
          vx_core.vx_new_int(2),
          vx_core.vx_new_int(3)
        )
      )
    )
    return output
  }

  fun f_plus_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 3 (+ 5 -2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(3),
        vx_core.f_plus(
          vx_core.vx_new_int(5),
          vx_core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  fun f_plus_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "+_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_plus_1_testdescribe_1(context),
        f_plus_1_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_plus_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 5 (+ 2  3))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(5),
        vx_core.f_plus(
          vx_core.vx_new_int(2),
          vx_core.vx_new_int(3)
        )
      )
    )
    return output
  }

  fun f_plus_1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 3 (+ 5 -2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(3),
        vx_core.f_plus(
          vx_core.vx_new_int(5),
          vx_core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  fun f_plus1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "+1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_plus1_testdescribe_1(context),
        f_plus1_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_plus1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test  3 (+1  2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(3),
        vx_core.f_plus1(
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_plus1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test -1 (+1 -2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(-1),
        vx_core.f_plus1(
          vx_core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  fun f_minus(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "-",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_minus_testdescribe_1(context),
        f_minus_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_minus_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 1 (- 3 2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(1),
        vx_core.f_minus(
          vx_core.vx_new_int(3),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_minus_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 7 (- 5 -2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(7),
        vx_core.f_minus(
          vx_core.vx_new_int(5),
          vx_core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  fun f_minus_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "-_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_minus_1_testdescribe_1(context),
        f_minus_1_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_minus_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 5 (+ 2 3))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(5),
        vx_core.f_plus(
          vx_core.vx_new_int(2),
          vx_core.vx_new_int(3)
        )
      )
    )
    return output
  }

  fun f_minus_1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 3 (+ 5 -2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(3),
        vx_core.f_plus(
          vx_core.vx_new_int(5),
          vx_core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  fun f_minus1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "-1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_minus1_testdescribe_1(context),
        f_minus1_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_minus1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test  1 (-1  2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(1),
        vx_core.f_minus1(
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_minus1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test -3 (-1 -2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(-3),
        vx_core.f_minus1(
          vx_core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  fun f_divide(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "/",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_divide_testdescribe_1(context),
        f_divide_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_divide_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 3 (/ 6 2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(3),
        vx_core.f_divide(
          vx_core.vx_new_int(6),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_divide_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test -5 (/ 10 -2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(-5),
        vx_core.f_divide(
          vx_core.vx_new_int(10),
          vx_core.vx_new_int(-2)
        )
      )
    )
    return output
  }

  fun f_lt(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_lt_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_lt_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (< 2 3))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_lt(
          vx_core.vx_new_int(2),
          vx_core.vx_new_int(3)
        )
      )
    )
    return output
  }

  fun f_lt_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_lt_1_testdescribe_1(context),
        f_lt_1_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_lt_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (< 2 3))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_lt(
          vx_core.vx_new_int(2),
          vx_core.vx_new_int(3)
        )
      )
    )
    return output
  }

  fun f_lt_1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (< \"b\" \"d\" \"z\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_lt_1(
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("d"),
            vx_core.vx_new_string("z")
          )
        )
      )
    )
    return output
  }

  fun f_chainfirst(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<-",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_chainfirst_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_chainfirst_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (*\n  (+\n   (- 5 3)\n   3)\n  2)\n (<-\n  5\n  (- 3)\n  (+ 3)\n  (* 2)))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_multiply(
          vx_core.f_plus(
            vx_core.f_minus(
              vx_core.vx_new_int(5),
              vx_core.vx_new_int(3)
            ),
            vx_core.vx_new_int(3)
          ),
          vx_core.vx_new_int(2)
        ),
        vx_core.f_multiply(
          vx_core.f_plus(
            vx_core.f_minus(
              vx_core.vx_new_int(5),
              vx_core.vx_new_int(3)
            ),
            vx_core.vx_new_int(3)
          ),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_chainlast(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<<-",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_chainlast_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_chainlast_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (* (+ (- 3 5) 3) 2)\n (<<-\n  5\n  (- 3)\n  (+ 3)\n  (* 2)))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_multiply(
          vx_core.f_plus(
            vx_core.f_minus(
              vx_core.vx_new_int(3),
              vx_core.vx_new_int(5)
            ),
            vx_core.vx_new_int(3)
          ),
          vx_core.vx_new_int(2)
        ),
        vx_core.f_multiply(
          vx_core.vx_new_int(2),
          vx_core.f_plus(
            vx_core.vx_new_int(3),
            vx_core.f_minus(
              vx_core.vx_new_int(3),
              vx_core.vx_new_int(5)
            )
          )
        )
      )
    )
    return output
  }

  fun f_le(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<=",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_le_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_le_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (<= 2 3))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_le(
          vx_core.vx_new_int(2),
          vx_core.vx_new_int(3)
        )
      )
    )
    return output
  }

  fun f_le_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "<=_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_le_1_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_le_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (<= \"b\" \"d\" \"z\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_le_1(
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("d"),
            vx_core.vx_new_string("z")
          )
        )
      )
    )
    return output
  }

  fun f_eq(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "=",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_eq_testdescribe_1(context),
        f_eq_testdescribe_2(context),
        f_eq_testdescribe_3(context),
        f_eq_testdescribe_4(context),
        f_eq_testdescribe_5(context)
      )
    )
    return output
  }

  fun f_eq_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (= true true))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_eq(
          vx_core.vx_new_boolean(true),
          vx_core.vx_new_boolean(true)
        )
      )
    )
    return output
  }

  fun f_eq_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (= 2 2))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_eq(
          vx_core.vx_new_int(2),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_eq_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (= \"a\" \"a\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_eq(
          vx_core.vx_new_string("a"),
          vx_core.vx_new_string("a")
        )
      )
    )
    return output
  }

  fun f_eq_testdescribe_4(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (=\n  (stringlist \"a\" \"b\" \"c\")\n  (new : stringlist \"a\" \"b\" \"c\")))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_eq(
          vx_core.f_new(
            vx_core.t_stringlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("a"),
              vx_core.vx_new_string("b"),
              vx_core.vx_new_string("c")
            )
          ),
          vx_core.f_new(
            vx_core.t_stringlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("a"),
              vx_core.vx_new_string("b"),
              vx_core.vx_new_string("c")
            )
          )
        )
      )
    )
    return output
  }

  fun f_eq_testdescribe_5(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (=\n  (stringmap :a \"1\" :b \"2\")\n  (new : stringmap :a \"1\" :b \"2\")))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_eq(
          vx_core.f_new(
            vx_core.t_stringmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string(":a"),
              vx_core.vx_new_string("1"),
              vx_core.vx_new_string(":b"),
              vx_core.vx_new_string("2")
            )
          ),
          vx_core.f_new(
            vx_core.t_stringmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string(":a"),
              vx_core.vx_new_string("1"),
              vx_core.vx_new_string(":b"),
              vx_core.vx_new_string("2")
            )
          )
        )
      )
    )
    return output
  }

  fun f_eq_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "=_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_eq_1_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_eq_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false (= 2 2 3))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_eq_1(
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_int(2),
            vx_core.vx_new_int(2),
            vx_core.vx_new_int(3)
          )
        )
      )
    )
    return output
  }

  fun f_eqeq(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "==",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_eqeq_testdescribe_1(context),
        f_eqeq_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_eqeq_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (== 0 0))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_eqeq(
          vx_core.vx_new_int(0),
          vx_core.vx_new_int(0)
        )
      )
    )
    return output
  }

  fun f_eqeq_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (== \"\" \"\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_eqeq(
          vx_core.vx_new_string(""),
          vx_core.vx_new_string("")
        )
      )
    )
    return output
  }

  fun f_gt(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_gt_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_gt_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (> 3 2))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_gt(
          vx_core.vx_new_int(3),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_gt_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_gt_1_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_gt_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (> \"z\" \"y\" \"b\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_gt_1(
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("z"),
            vx_core.vx_new_string("y"),
            vx_core.vx_new_string("b")
          )
        )
      )
    )
    return output
  }

  fun f_ge(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">=",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_ge_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_ge_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (>= 3 2))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_ge(
          vx_core.vx_new_int(3),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_ge_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", ">=_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_ge_1_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_ge_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (>= \"z\" \"b\" \"b\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_ge_1(
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("z"),
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("b")
          )
        )
      )
    )
    return output
  }

  fun f_and(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "and",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_and_testdescribe_1(context),
        f_and_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_and_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (and true true))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_and(
          vx_core.vx_new_boolean(true),
          vx_core.vx_new_boolean(true)
        )
      )
    )
    return output
  }

  fun f_and_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false\n (and true false))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_and(
          vx_core.vx_new_boolean(true),
          vx_core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  fun f_and_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "and_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_and_1_testdescribe_1(context),
        f_and_1_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_and_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (and true true true))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_and_1(
          vx_core.vx_new(
            vx_core.t_booleanlist,
            vx_core.vx_new_boolean(true),
            vx_core.vx_new_boolean(true),
            vx_core.vx_new_boolean(true)
          )
        )
      )
    )
    return output
  }

  fun f_and_1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false\n (and true true false))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_and_1(
          vx_core.vx_new(
            vx_core.t_booleanlist,
            vx_core.vx_new_boolean(true),
            vx_core.vx_new_boolean(true),
            vx_core.vx_new_boolean(false)
          )
        )
      )
    )
    return output
  }

  fun f_any_from_list(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-list",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_any_from_list_testdescribe_1(context),
        f_any_from_list_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_any_from_list_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (any<-list\n  (list \"a\" \"b\" \"c\")\n  2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("b"),
        vx_core.f_any_from_list(
          vx_core.t_any,
          vx_core.f_new(
            vx_core.t_list,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("a"),
              vx_core.vx_new_string("b"),
              vx_core.vx_new_string("c")
            )
          ),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_any_from_list_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (:2 (stringlist \"a\" \"b\" \"c\")))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("b"),
        vx_core.f_any_from_list(
          vx_core.t_string,
          vx_core.f_new(
            vx_core.t_stringlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("a"),
              vx_core.vx_new_string("b"),
              vx_core.vx_new_string("c")
            )
          ),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_any_from_list_start_reduce(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-list-start-reduce",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_any_from_list_start_reduce_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_any_from_list_start_reduce_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n 24\n (any<-list-start-reduce : int\n  (intlist 3 2 4)\n  1\n  (fn : int\n   [total : int\n    num   : int]\n   (* total num))))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(24),
        vx_core.f_any_from_list_start_reduce(
          vx_core.t_int,
          vx_core.f_new(
            vx_core.t_intlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_int(3),
              vx_core.vx_new_int(2),
              vx_core.vx_new_int(4)
            )
          ),
          vx_core.vx_new_int(1),
          vx_core.t_any_from_reduce.vx_fn_new({total_any : vx_core.Type_any, num_any : vx_core.Type_any ->
            var total : vx_core.Type_int = vx_core.f_any_from_any(vx_core.t_int, total_any)
            var num : vx_core.Type_int = vx_core.f_any_from_any(vx_core.t_int, num_any)
            var output_1 : vx_core.Type_any = vx_core.f_multiply(
              total,
              num
            )
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_any_from_map(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-map",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_any_from_map_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_any_from_map_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"v2\"\n (any<-map\n  (stringmap\n   :a \"v1\"\n   :b \"v2\"\n   :c \"v3\")\n  :b))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("v2"),
        vx_core.f_any_from_map(
          vx_core.t_string,
          vx_core.f_new(
            vx_core.t_stringmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string(":a"),
              vx_core.vx_new_string("v1"),
              vx_core.vx_new_string(":b"),
              vx_core.vx_new_string("v2"),
              vx_core.vx_new_string(":c"),
              vx_core.vx_new_string("v3")
            )
          ),
          vx_core.vx_new_string(":b")
        )
      )
    )
    return output
  }

  fun f_any_from_map_start_reduce(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "any<-map-start-reduce",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_any_from_map_start_reduce_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_any_from_map_start_reduce_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"xayb\"\n (any<-map-start-reduce\n  (stringmap\n   :a \"x\"\n   :b \"y\")\n  \"\"\n  (fn : string\n   [current : string\n    key     : string\n    value   : any]\n   (copy current\n    value\n    key))))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("xayb"),
        vx_core.f_any_from_map_start_reduce(
          vx_core.t_string,
          vx_core.f_new(
            vx_core.t_stringmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string(":a"),
              vx_core.vx_new_string("x"),
              vx_core.vx_new_string(":b"),
              vx_core.vx_new_string("y")
            )
          ),
          vx_core.vx_new_string(""),
          vx_core.t_any_from_any_key_value.vx_fn_new({current_any : vx_core.Type_any, key_any : vx_core.Type_any, value_any : vx_core.Type_any ->
            var current : vx_core.Type_string = vx_core.f_any_from_any(vx_core.t_string, current_any)
            var key : vx_core.Type_string = vx_core.f_any_from_any(vx_core.t_string, key_any)
            var value : vx_core.Type_any = vx_core.f_any_from_any(vx_core.t_any, value_any)
            var output_1 : vx_core.Type_any = vx_core.f_copy(
              current,
              vx_core.vx_new(
                vx_core.t_anylist,
                value,
                key
              )
            )
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_boolean_write_from_map_name_value(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "boolean-write<-map-name-value",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_boolean_write_from_map_name_value_testdescribe_1(context),
        f_boolean_write_from_map_name_value_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_boolean_write_from_map_name_value_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringmutablemap\n  :b \"y\"\n  :a \"x\")\n (let : stringmutablemap\n  [smap : stringmutablemap :=\n    (stringmutablemap\n     :b \"y\")\n   iswrite : boolean :=\n    (boolean-write<-map-name-value\n     smap :a \"x\")]\n  smap))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringmutablemap,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string(":b"),
            vx_core.vx_new_string("y"),
            vx_core.vx_new_string(":a"),
            vx_core.vx_new_string("x")
          )
        ),
        vx_core.f_let(
          vx_core.t_stringmutablemap,
          vx_core.t_any_from_func.vx_fn_new({ ->
            var smap : vx_core.Type_stringmutablemap = vx_core.f_new(
              vx_core.t_stringmutablemap,
              vx_core.vx_new(
                vx_core.t_anylist,
                vx_core.vx_new_string(":b"),
                vx_core.vx_new_string("y")
              )
            )
            var iswrite : vx_core.Type_boolean = vx_core.f_boolean_write_from_map_name_value(
              smap,
              vx_core.vx_new_string(":a"),
              vx_core.vx_new_string("x")
            )
            var output_1 : vx_core.Type_any = smap
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_boolean_write_from_map_name_value_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringmutablemap\n  :a \"x\")\n (let : stringmutablemap\n  [smap : stringmutablemap :=\n    (stringmutablemap\n     :b \"y\"\n     :a \"x\")\n   iswrite : boolean :=\n    (boolean-write<-map-name-value\n     smap :b \"\")]\n  smap))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringmutablemap,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string(":a"),
            vx_core.vx_new_string("x")
          )
        ),
        vx_core.f_let(
          vx_core.t_stringmutablemap,
          vx_core.t_any_from_func.vx_fn_new({ ->
            var smap : vx_core.Type_stringmutablemap = vx_core.f_new(
              vx_core.t_stringmutablemap,
              vx_core.vx_new(
                vx_core.t_anylist,
                vx_core.vx_new_string(":b"),
                vx_core.vx_new_string("y"),
                vx_core.vx_new_string(":a"),
                vx_core.vx_new_string("x")
              )
            )
            var iswrite : vx_core.Type_boolean = vx_core.f_boolean_write_from_map_name_value(
              smap,
              vx_core.vx_new_string(":b"),
              vx_core.vx_new_string("")
            )
            var output_2 : vx_core.Type_any = smap
            output_2
          })
        )
      )
    )
    return output
  }

  fun f_compare(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "compare",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_compare_testdescribe_1(context),
        f_compare_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_compare_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 1 (compare 3 2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(1),
        vx_core.f_compare(
          vx_core.vx_new_int(3),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_compare_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 1 (compare \"z\" \"a\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(1),
        vx_core.f_compare(
          vx_core.vx_new_string("z"),
          vx_core.vx_new_string("a")
        )
      )
    )
    return output
  }

  fun f_contains(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "contains",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_contains_testdescribe_1(context),
        f_contains_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_contains_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true  (contains \"abcde\" \"cd\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_contains(
          vx_core.vx_new_string("abcde"),
          vx_core.vx_new_string("cd")
        )
      )
    )
    return output
  }

  fun f_contains_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false (contains \"abcde\" \"dc\"))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_contains(
          vx_core.vx_new_string("abcde"),
          vx_core.vx_new_string("dc")
        )
      )
    )
    return output
  }

  fun f_contains_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "contains_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_contains_1_testdescribe_1(context),
        f_contains_1_testdescribe_2(context),
        f_contains_1_testdescribe_3(context)
      )
    )
    return output
  }

  fun f_contains_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (contains (stringlist \"1\" \"2\" \"3\") \"2\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_contains_1(
          vx_core.f_new(
            vx_core.t_stringlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("1"),
              vx_core.vx_new_string("2"),
              vx_core.vx_new_string("3")
            )
          ),
          vx_core.vx_new_string("2")
        )
      )
    )
    return output
  }

  fun f_contains_1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (contains (intlist 1 2 3) 2))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_contains_1(
          vx_core.f_new(
            vx_core.t_intlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_int(1),
              vx_core.vx_new_int(2),
              vx_core.vx_new_int(3)
            )
          ),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_contains_1_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false\n (contains (list 1 \"2\" 3) 2))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_contains_1(
          vx_core.f_new(
            vx_core.t_list,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_int(1),
              vx_core.vx_new_string("2"),
              vx_core.vx_new_int(3)
            )
          ),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_copy(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "copy",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_copy_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_copy_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"1\"\n  :b \"2\")\n (copy\n  (stringmap :a \"1\")\n  :b \"2\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringmap,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string(":a"),
            vx_core.vx_new_string("1"),
            vx_core.vx_new_string(":b"),
            vx_core.vx_new_string("2")
          )
        ),
        vx_core.f_copy(
          vx_core.f_new(
            vx_core.t_stringmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string(":a"),
              vx_core.vx_new_string("1")
            )
          ),
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string(":b"),
            vx_core.vx_new_string("2")
          )
        )
      )
    )
    return output
  }

  fun f_empty(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "empty",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_empty_testdescribe_1(context),
        f_empty_testdescribe_2(context),
        f_empty_testdescribe_3(context),
        f_empty_testdescribe_4(context)
      )
    )
    return output
  }

  fun f_empty_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test false  (empty boolean))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_boolean(false),
        vx_core.f_empty(
          vx_core.t_boolean
        )
      )
    )
    return output
  }

  fun f_empty_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"\"     (empty string))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string(""),
        vx_core.f_empty(
          vx_core.t_string
        )
      )
    )
    return output
  }

  fun f_empty_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test (list) (empty list))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_empty(
          vx_core.t_list
        ),
        vx_core.f_empty(
          vx_core.t_list
        )
      )
    )
    return output
  }

  fun f_empty_testdescribe_4(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test (map)  (empty map))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_empty(
          vx_core.t_map
        ),
        vx_core.f_empty(
          vx_core.t_map
        )
      )
    )
    return output
  }

  fun f_first_from_list(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "first<-list",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_first_from_list_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_first_from_list_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (first<-list\n  (stringlist\n   \"b\"\n   \"c\")))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("b"),
        vx_core.f_first_from_list(
          vx_core.t_string,
          vx_core.f_new(
            vx_core.t_stringlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("b"),
              vx_core.vx_new_string("c")
            )
          )
        )
      )
    )
    return output
  }

  fun f_first_from_list_any_from_any(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "first<-list-any<-any",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_first_from_list_any_from_any_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_first_from_list_any_from_any_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (first<-list-any<-any : string\n  (list nothing \"b\" \"c\")\n  resolve))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("b"),
        vx_core.f_first_from_list_any_from_any(
          vx_core.t_string,
          vx_core.f_new(
            vx_core.t_list,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.c_nothing,
              vx_core.vx_new_string("b"),
              vx_core.vx_new_string("c")
            )
          ),
          vx_core.t_resolve
        )
      )
    )
    return output
  }

  fun f_float_from_string(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "float<-string",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_float_from_string_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_float_from_string_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (float 2.3)\n (float<-string\n  \"2.3\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_float,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_decimal("2.3")
          )
        ),
        vx_core.f_float_from_string(
          vx_core.vx_new_string("2.3")
        )
      )
    )
    return output
  }

  fun f_if(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "if",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_if_testdescribe_1(context),
        f_if_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_if_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"a\"\n (if (= 2 2) \"a\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("a"),
        vx_core.f_if(
          vx_core.t_string,
          vx_core.f_eq(
            vx_core.vx_new_int(2),
            vx_core.vx_new_int(2)
          ),
          vx_core.vx_new_string("a")
        )
      )
    )
    return output
  }

  fun f_if_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"\"\n (if : string\n  (= 1 2)\n  \"a\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string(""),
        vx_core.f_if(
          vx_core.t_string,
          vx_core.f_eq(
            vx_core.vx_new_int(1),
            vx_core.vx_new_int(2)
          ),
          vx_core.vx_new_string("a")
        )
      )
    )
    return output
  }

  fun f_if_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "if_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_if_1_testdescribe_1(context),
        f_if_1_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_if_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"a\"\n (if\n  (= 2 2)\n  \"a\"\n  \"b\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("a"),
        vx_core.f_if_1(
          vx_core.t_string,
          vx_core.f_eq(
            vx_core.vx_new_int(2),
            vx_core.vx_new_int(2)
          ),
          vx_core.vx_new_string("a"),
          vx_core.vx_new_string("b")
        )
      )
    )
    return output
  }

  fun f_if_1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"b\"\n (if\n  (= 1 2)\n  \"a\"\n  \"b\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("b"),
        vx_core.f_if_1(
          vx_core.t_string,
          vx_core.f_eq(
            vx_core.vx_new_int(1),
            vx_core.vx_new_int(2)
          ),
          vx_core.vx_new_string("a"),
          vx_core.vx_new_string("b")
        )
      )
    )
    return output
  }

  fun f_if_2(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "if_2",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_if_2_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_if_2_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (if\n  (then (= 2 3) false)\n  (then (!= 3 3) false)\n  (else (! false))))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_if_2(
          vx_core.t_any,
          vx_core.vx_new(
            vx_core.t_thenelselist,
            vx_core.f_then(
              vx_core.t_boolean_from_func.vx_fn_new({ ->
                var output_1 : vx_core.Type_any = vx_core.f_eq(
                  vx_core.vx_new_int(2),
                  vx_core.vx_new_int(3)
                )
                output_1
              }),
              vx_core.t_any_from_func.vx_fn_new({ ->
                var output_2 : vx_core.Type_any = vx_core.vx_new_boolean(false)
                output_2
              })
            ),
            vx_core.f_then(
              vx_core.t_boolean_from_func.vx_fn_new({ ->
                var output_3 : vx_core.Type_any = vx_core.f_ne(
                  vx_core.vx_new_int(3),
                  vx_core.vx_new_int(3)
                )
                output_3
              }),
              vx_core.t_any_from_func.vx_fn_new({ ->
                var output_4 : vx_core.Type_any = vx_core.vx_new_boolean(false)
                output_4
              })
            ),
            vx_core.f_else(
              vx_core.t_any_from_func.vx_fn_new({ ->
                var output_5 : vx_core.Type_any = vx_core.f_not(
                  vx_core.vx_new_boolean(false)
                )
                output_5
              })
            )
          )
        )
      )
    )
    return output
  }

  fun f_int_from_string(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "int<-string",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
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

  fun f_int_from_string_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 4 (int<-string \"4\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(4),
        vx_core.f_int_from_string(
          vx_core.vx_new_string("4")
        )
      )
    )
    return output
  }

  fun f_int_from_string_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 5 (int<-string \"5.4\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(5),
        vx_core.f_int_from_string(
          vx_core.vx_new_string("5.4")
        )
      )
    )
    return output
  }

  fun f_int_from_string_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 5 (int<-string \"5.9\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(5),
        vx_core.f_int_from_string(
          vx_core.vx_new_string("5.9")
        )
      )
    )
    return output
  }

  fun f_int_from_string_testdescribe_4(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test notanumber  (int<-string \"notanumber\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.c_notanumber,
        vx_core.f_int_from_string(
          vx_core.vx_new_string("notanumber")
        )
      )
    )
    return output
  }

  fun f_int_from_string_testdescribe_5(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test infinity    (int<-string \"infinity\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.c_infinity,
        vx_core.f_int_from_string(
          vx_core.vx_new_string("infinity")
        )
      )
    )
    return output
  }

  fun f_int_from_string_testdescribe_6(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test neginfinity (int<-string \"neginfinity\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.c_neginfinity,
        vx_core.f_int_from_string(
          vx_core.vx_new_string("neginfinity")
        )
      )
    )
    return output
  }

  fun f_is_empty_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-empty_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_is_empty_1_testdescribe_1(context),
        f_is_empty_1_testdescribe_2(context),
        f_is_empty_1_testdescribe_3(context),
        f_is_empty_1_testdescribe_4(context)
      )
    )
    return output
  }

  fun f_is_empty_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (is-empty false))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_empty_1(
          vx_core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  fun f_is_empty_1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (is-empty \"\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_empty(
          vx_core.vx_new_string("")
        )
      )
    )
    return output
  }

  fun f_is_empty_1_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (is-empty (list)))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_empty_1(
          vx_core.f_empty(
            vx_core.t_list
          )
        )
      )
    )
    return output
  }

  fun f_is_empty_1_testdescribe_4(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (is-empty (map)))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_empty_1(
          vx_core.f_empty(
            vx_core.t_map
          )
        )
      )
    )
    return output
  }

  fun f_is_int(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-int",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_is_int_testdescribe_1(context),
        f_is_int_testdescribe_2(context),
        f_is_int_testdescribe_3(context),
        f_is_int_testdescribe_4(context)
      )
    )
    return output
  }

  fun f_is_int_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (is-int 2))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_int(
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_is_int_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (is-int \"2\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_int(
          vx_core.vx_new_string("2")
        )
      )
    )
    return output
  }

  fun f_is_int_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (is-int infinity))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_int(
          vx_core.c_infinity
        )
      )
    )
    return output
  }

  fun f_is_int_testdescribe_4(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true\n (is-int \"infinity\"))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_int(
          vx_core.vx_new_string("infinity")
        )
      )
    )
    return output
  }

  fun f_is_number(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "is-number",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_is_number_testdescribe_1(context),
        f_is_number_testdescribe_2(context),
        f_is_number_testdescribe_3(context)
      )
    )
    return output
  }

  fun f_is_number_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true  (is-number 5))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_number(
          vx_core.vx_new_int(5)
        )
      )
    )
    return output
  }

  fun f_is_number_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true  (is-number 5.5))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_is_number(
          vx_core.vx_new_decimal("5.5")
        )
      )
    )
    return output
  }

  fun f_is_number_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false (is-number \"a\"))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_is_number(
          vx_core.vx_new_string("a")
        )
      )
    )
    return output
  }

  fun f_last_from_list(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "last<-list",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_last_from_list_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_last_from_list_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"c\"\n (last<-list\n  (stringlist\n   \"b\"\n   \"c\")))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("c"),
        vx_core.f_last_from_list(
          vx_core.t_string,
          vx_core.f_new(
            vx_core.t_stringlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("b"),
              vx_core.vx_new_string("c")
            )
          )
        )
      )
    )
    return output
  }

  fun f_length(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "length",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_length_testdescribe_1(context),
        f_length_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_length_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n 4\n (length \"abcd\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(4),
        vx_core.f_length(
          vx_core.vx_new_string("abcd")
        )
      )
    )
    return output
  }

  fun f_length_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n 0\n (length \"\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(0),
        vx_core.f_length(
          vx_core.vx_new_string("")
        )
      )
    )
    return output
  }

  fun f_length_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "length_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_length_1_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_length_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n 3\n (length\n  (stringlist \"a\" \"b\" \"c\")))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(3),
        vx_core.f_length_1(
          vx_core.f_new(
            vx_core.t_stringlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("a"),
              vx_core.vx_new_string("b"),
              vx_core.vx_new_string("c")
            )
          )
        )
      )
    )
    return output
  }

  fun f_let(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "let",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_let_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_let_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n 7\n (let\n  [v1 : int := 2\n   v2 : int := (+ v1 3)]\n  (+ v1 v2)))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(7),
        vx_core.f_let(
          vx_core.t_int,
          vx_core.t_any_from_func.vx_fn_new({ ->
            var v1 : vx_core.Type_int = vx_core.vx_new_int(2)
            var v2 : vx_core.Type_int = vx_core.f_plus(
              v1,
              vx_core.vx_new_int(3)
            )
            var output_1 : vx_core.Type_any = vx_core.f_plus(
              v1,
              v2
            )
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_list_join_from_list(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list-join<-list",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_list_join_from_list_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_list_join_from_list_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\" \"d\")\n (list-join<-list : stringlist\n  (stringlistlist\n   (stringlist \"a\" \"b\")\n   (stringlist \"c\" \"d\"))))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a"),
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("c"),
            vx_core.vx_new_string("d")
          )
        ),
        vx_core.f_list_join_from_list(
          vx_core.t_stringlist,
          vx_core.f_new(
            vx_core.t_stringlistlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.f_new(
                vx_core.t_stringlist,
                vx_core.vx_new(
                  vx_core.t_anylist,
                  vx_core.vx_new_string("a"),
                  vx_core.vx_new_string("b")
                )
              ),
              vx_core.f_new(
                vx_core.t_stringlist,
                vx_core.vx_new(
                  vx_core.t_anylist,
                  vx_core.vx_new_string("c"),
                  vx_core.vx_new_string("d")
                )
              )
            )
          )
        )
      )
    )
    return output
  }

  fun f_list_join_from_list_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list-join<-list_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_list_join_from_list_1_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_list_join_from_list_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\" \"d\")\n (list-join<-list : stringlist\n  (stringlistlist\n   (stringlist \"a\" \"b\")\n   (stringlist \"c\" \"d\"))\n  (fn : stringlist\n   [values : stringlist]\n   values)))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a"),
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("c"),
            vx_core.vx_new_string("d")
          )
        ),
        vx_core.f_list_join_from_list_1(
          vx_core.t_stringlist,
          vx_core.f_new(
            vx_core.t_stringlistlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.f_new(
                vx_core.t_stringlist,
                vx_core.vx_new(
                  vx_core.t_anylist,
                  vx_core.vx_new_string("a"),
                  vx_core.vx_new_string("b")
                )
              ),
              vx_core.f_new(
                vx_core.t_stringlist,
                vx_core.vx_new(
                  vx_core.t_anylist,
                  vx_core.vx_new_string("c"),
                  vx_core.vx_new_string("d")
                )
              )
            )
          ),
          vx_core.t_any_from_any.vx_fn_new({values_any : vx_core.Type_any ->
            var values : vx_core.Type_stringlist = vx_core.f_any_from_any(vx_core.t_stringlist, values_any)
            var output_1 : vx_core.Type_any = values
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_list_from_list(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-list",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_list_from_list_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_list_from_list_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringlist \"10\" \"20\")\n (list<-list : stringlist\n  (anylist \"10\" \"20\")))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("10"),
            vx_core.vx_new_string("20")
          )
        ),
        vx_core.f_list_from_list(
          vx_core.t_stringlist,
          vx_core.f_new(
            vx_core.t_anylist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("10"),
              vx_core.vx_new_string("20")
            )
          )
        )
      )
    )
    return output
  }

  fun f_list_from_list_intany(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-list-intany",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_list_from_list_intany_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_list_from_list_intany_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a1\" \"b2\")\n (list<-list-intany : stringlist\n  (stringlist \"a\" \"b\")\n  (fn : stringlist\n   [index : int\n    value : string]\n   (string value index))))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a1"),
            vx_core.vx_new_string("b2")
          )
        ),
        vx_core.f_list_from_list_intany(
          vx_core.t_stringlist,
          vx_core.f_new(
            vx_core.t_stringlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("a"),
              vx_core.vx_new_string("b")
            )
          ),
          vx_core.t_any_from_int_any.vx_fn_new({index_any : vx_core.Type_any, value_any : vx_core.Type_any ->
            var index : vx_core.Type_int = vx_core.f_any_from_any(vx_core.t_int, index_any)
            var value : vx_core.Type_string = vx_core.f_any_from_any(vx_core.t_string, value_any)
            var output_1 : vx_core.Type_any = vx_core.f_new(
              vx_core.t_string,
              vx_core.vx_new(
                vx_core.t_anylist,
                value,
                index
              )
            )
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_list_from_map(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-map",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_list_from_map_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_list_from_map_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a1\" \"b2\")\n (list<-map : stringlist\n  (stringmap\n   :x \"a1\"\n   :y \"b2\")))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a1"),
            vx_core.vx_new_string("b2")
          )
        ),
        vx_core.f_list_from_map(
          vx_core.t_stringlist,
          vx_core.f_new(
            vx_core.t_stringmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string(":x"),
              vx_core.vx_new_string("a1"),
              vx_core.vx_new_string(":y"),
              vx_core.vx_new_string("b2")
            )
          )
        )
      )
    )
    return output
  }

  fun f_list_from_map_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "list<-map_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_list_from_map_1_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_list_from_map_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a1\" \"b2\")\n (list<-map : stringlist\n  (stringmap \"a\" \"1\" \"b\" \"2\")\n  (fn : string\n   [key   : string\n    value : string]\n   (string key value))))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a1"),
            vx_core.vx_new_string("b2")
          )
        ),
        vx_core.f_list_from_map_1(
          vx_core.t_stringlist,
          vx_core.f_new(
            vx_core.t_stringmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("a"),
              vx_core.vx_new_string("1"),
              vx_core.vx_new_string("b"),
              vx_core.vx_new_string("2")
            )
          ),
          vx_core.t_any_from_key_value.vx_fn_new({key_any : vx_core.Type_any, value_any : vx_core.Type_any ->
            var key : vx_core.Type_string = vx_core.f_any_from_any(vx_core.t_string, key_any)
            var value : vx_core.Type_string = vx_core.f_any_from_any(vx_core.t_string, value_any)
            var output_1 : vx_core.Type_any = vx_core.f_new(
              vx_core.t_string,
              vx_core.vx_new(
                vx_core.t_anylist,
                key,
                value
              )
            )
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_map_from_list(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "map<-list",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_map_from_list_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_map_from_list_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  \"keya\" \"a\"\n  \"keyb\" \"b\")\n (map<-list : stringmap\n  (stringlist \"a\" \"b\")\n  (fn : string\n   [value : string]\n   (string \"key\" value))))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringmap,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("keya"),
            vx_core.vx_new_string("a"),
            vx_core.vx_new_string("keyb"),
            vx_core.vx_new_string("b")
          )
        ),
        vx_core.f_map_from_list(
          vx_core.t_stringmap,
          vx_core.f_new(
            vx_core.t_stringlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("a"),
              vx_core.vx_new_string("b")
            )
          ),
          vx_core.t_any_from_any.vx_fn_new({value_any : vx_core.Type_any ->
            var value : vx_core.Type_string = vx_core.f_any_from_any(vx_core.t_string, value_any)
            var output_1 : vx_core.Type_any = vx_core.f_new(
              vx_core.t_string,
              vx_core.vx_new(
                vx_core.t_anylist,
                vx_core.vx_new_string("key"),
                value
              )
            )
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_map_from_map(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "map<-map",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_map_from_map_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_map_from_map_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringmap :a \"1\")\n (map<-map : stringmap\n  (anymap :a \"1\")))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringmap,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string(":a"),
            vx_core.vx_new_string("1")
          )
        ),
        vx_core.f_map_from_map(
          vx_core.t_stringmap,
          vx_core.f_new(
            vx_core.t_anymap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string(":a"),
              vx_core.vx_new_string("1")
            )
          )
        )
      )
    )
    return output
  }

  fun f_map_from_map_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "map<-map_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_map_from_map_1_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_map_from_map_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringmap\n  :a \"a1\"\n  :b \"b2\")\n (map<-map : stringmap\n  (stringmap\n   :a \"1\"\n   :b \"2\")\n  (fn : string\n   [key : string\n    value : string]\n   (string key value))))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringmap,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string(":a"),
            vx_core.vx_new_string("a1"),
            vx_core.vx_new_string(":b"),
            vx_core.vx_new_string("b2")
          )
        ),
        vx_core.f_map_from_map_1(
          vx_core.t_stringmap,
          vx_core.f_new(
            vx_core.t_stringmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string(":a"),
              vx_core.vx_new_string("1"),
              vx_core.vx_new_string(":b"),
              vx_core.vx_new_string("2")
            )
          ),
          vx_core.t_any_from_key_value.vx_fn_new({key_any : vx_core.Type_any, value_any : vx_core.Type_any ->
            var key : vx_core.Type_string = vx_core.f_any_from_any(vx_core.t_string, key_any)
            var value : vx_core.Type_string = vx_core.f_any_from_any(vx_core.t_string, value_any)
            var output_1 : vx_core.Type_any = vx_core.f_new(
              vx_core.t_string,
              vx_core.vx_new(
                vx_core.t_anylist,
                key,
                value
              )
            )
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_new(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "new",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
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

  fun f_new_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test true (new : boolean true))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_boolean(true),
        vx_core.f_new(
          vx_core.t_boolean,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_boolean(true)
          )
        )
      )
    )
    return output
  }

  fun f_new_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 4 (new : int 4))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(4),
        vx_core.f_new(
          vx_core.t_int,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_int(4)
          )
        )
      )
    )
    return output
  }

  fun f_new_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 5.4 (new : float 5.4))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_decimal("5.4"),
        vx_core.f_new(
          vx_core.t_float,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_decimal("5.4")
          )
        )
      )
    )
    return output
  }

  fun f_new_testdescribe_4(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"a\" (new : string \"a\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("a"),
        vx_core.f_new(
          vx_core.t_string,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a")
          )
        )
      )
    )
    return output
  }

  fun f_new_testdescribe_5(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\")\n (new : stringlist \"a\" \"b\" \"c\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a"),
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("c")
          )
        ),
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a"),
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("c")
          )
        )
      )
    )
    return output
  }

  fun f_new_testdescribe_6(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringmap :a \"1\" :b \"2\")\n (new : stringmap :a \"1\" :b \"2\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringmap,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string(":a"),
            vx_core.vx_new_string("1"),
            vx_core.vx_new_string(":b"),
            vx_core.vx_new_string("2")
          )
        ),
        vx_core.f_new(
          vx_core.t_stringmap,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string(":a"),
            vx_core.vx_new_string("1"),
            vx_core.vx_new_string(":b"),
            vx_core.vx_new_string("2")
          )
        )
      )
    )
    return output
  }

  fun f_new_from_type(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "new<-type",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
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

  fun f_new_from_type_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test true (new<-type boolean true))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_boolean(true),
        vx_core.f_new_from_type(
          vx_core.t_boolean,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_boolean(true)
          )
        )
      )
    )
    return output
  }

  fun f_new_from_type_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 4 (new<-type int 4))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(4),
        vx_core.f_new_from_type(
          vx_core.t_int,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_int(4)
          )
        )
      )
    )
    return output
  }

  fun f_new_from_type_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 5.4 (new<-type float 5.4))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_decimal("5.4"),
        vx_core.f_new_from_type(
          vx_core.t_float,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_decimal("5.4")
          )
        )
      )
    )
    return output
  }

  fun f_new_from_type_testdescribe_4(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"a\" (new<-type string \"a\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("a"),
        vx_core.f_new_from_type(
          vx_core.t_string,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a")
          )
        )
      )
    )
    return output
  }

  fun f_new_from_type_testdescribe_5(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringlist \"a\" \"b\" \"c\")\n (new<-type stringlist \"a\" \"b\" \"c\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a"),
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("c")
          )
        ),
        vx_core.f_new_from_type(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("a"),
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("c")
          )
        )
      )
    )
    return output
  }

  fun f_new_from_type_testdescribe_6(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringmap :a \"1\" :b \"2\")\n (new<-type stringmap :a \"1\" :b \"2\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringmap,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string(":a"),
            vx_core.vx_new_string("1"),
            vx_core.vx_new_string(":b"),
            vx_core.vx_new_string("2")
          )
        ),
        vx_core.f_new_from_type(
          vx_core.t_stringmap,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string(":a"),
            vx_core.vx_new_string("1"),
            vx_core.vx_new_string(":b"),
            vx_core.vx_new_string("2")
          )
        )
      )
    )
    return output
  }

  fun f_or(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "or",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_or_testdescribe_1(context),
        f_or_testdescribe_2(context),
        f_or_testdescribe_3(context)
      )
    )
    return output
  }

  fun f_or_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (or true true))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_or(
          vx_core.vx_new_boolean(true),
          vx_core.vx_new_boolean(true)
        )
      )
    )
    return output
  }

  fun f_or_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (or true false))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_or(
          vx_core.vx_new_boolean(true),
          vx_core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  fun f_or_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false (or false false))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_or(
          vx_core.vx_new_boolean(false),
          vx_core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  fun f_or_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "or_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_or_1_testdescribe_1(context),
        f_or_1_testdescribe_2(context)
      )
    )
    return output
  }

  fun f_or_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-true (or false true false))",
      ":testresult", vx_test.f_test_true(
        context,
        vx_core.f_or_1(
          vx_core.vx_new(
            vx_core.t_booleanlist,
            vx_core.vx_new_boolean(false),
            vx_core.vx_new_boolean(true),
            vx_core.vx_new_boolean(false)
          )
        )
      )
    )
    return output
  }

  fun f_or_1_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test-false (or false false false))",
      ":testresult", vx_test.f_test_false(
        context,
        vx_core.f_or_1(
          vx_core.vx_new(
            vx_core.t_booleanlist,
            vx_core.vx_new_boolean(false),
            vx_core.vx_new_boolean(false),
            vx_core.vx_new_boolean(false)
          )
        )
      )
    )
    return output
  }

  fun f_resolve(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "resolve",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_resolve_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_resolve_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"a\" (resolve \"a\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("a"),
        vx_core.f_resolve(
          vx_core.t_string,
          vx_core.vx_new_string("a")
        )
      )
    )
    return output
  }

  fun f_resolve_1(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "resolve_1",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_resolve_1_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_resolve_1_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 4 (resolve (fn : int [] (+ 1 3))))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(4),
        vx_core.f_resolve_1(
          vx_core.t_int,
          vx_core.t_any_from_func.vx_fn_new({ ->
            var output_1 : vx_core.Type_any = vx_core.f_plus(
              vx_core.vx_new_int(1),
              vx_core.vx_new_int(3)
            )
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_resolve_async(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "resolve-async",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_resolve_async_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_resolve_async_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 4 (resolve : int (fn : int [] (+ 1 3))))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(4),
        vx_core.f_resolve_1(
          vx_core.t_int,
          vx_core.t_any_from_func.vx_fn_new({ ->
            var output_1 : vx_core.Type_any = vx_core.f_plus(
              vx_core.vx_new_int(1),
              vx_core.vx_new_int(3)
            )
            output_1
          })
        )
      )
    )
    return output
  }

  fun f_string_repeat(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string-repeat",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_string_repeat_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_string_repeat_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"abab\" (string-repeat \"ab\" 2))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("abab"),
        vx_core.f_string_repeat(
          vx_core.vx_new_string("ab"),
          vx_core.vx_new_int(2)
        )
      )
    )
    return output
  }

  fun f_string_from_any(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string<-any",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
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

  fun f_string_from_any_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"true\"  (string<-any true))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("true"),
        vx_core.f_string_from_any(
          vx_core.vx_new_boolean(true)
        )
      )
    )
    return output
  }

  fun f_string_from_any_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"4\"     (string<-any 4))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("4"),
        vx_core.f_string_from_any(
          vx_core.vx_new_int(4)
        )
      )
    )
    return output
  }

  fun f_string_from_any_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"5.4\"   (string<-any 5.4))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("5.4"),
        vx_core.f_string_from_any(
          vx_core.vx_new_decimal("5.4")
        )
      )
    )
    return output
  }

  fun f_string_from_any_testdescribe_4(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"\\\"a\\\"\" (string<-any \"a\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("\"a\""),
        vx_core.f_string_from_any(
          vx_core.vx_new_string("a")
        )
      )
    )
    return output
  }

  fun f_string_from_any_testdescribe_5(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"(stringlist\n   \\\"a\\\"\n   \\\"b\\\"\n   \\\"c\\\")\"\n (string<-any (stringlist \"a\" \"b\" \"c\")))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("(stringlist\n \"a\"\n \"b\"\n \"c\")"),
        vx_core.f_string_from_any(
          vx_core.f_new(
            vx_core.t_stringlist,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("a"),
              vx_core.vx_new_string("b"),
              vx_core.vx_new_string("c")
            )
          )
        )
      )
    )
    return output
  }

  fun f_string_from_any_testdescribe_6(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"(stringmap\n   :a \\\"1\\\"\n   :b \\\"2\\\")\"\n (string<-any (stringmap :a \"1\" :b \"2\")))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("(stringmap\n :a \"1\"\n :b \"2\")"),
        vx_core.f_string_from_any(
          vx_core.f_new(
            vx_core.t_stringmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string(":a"),
              vx_core.vx_new_string("1"),
              vx_core.vx_new_string(":b"),
              vx_core.vx_new_string("2")
            )
          )
        )
      )
    )
    return output
  }

  fun f_string_from_string_find_replace(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "string<-string-find-replace",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_string_from_string_find_replace_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_string_from_string_find_replace_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n \"a!b!c\"\n (string<-string-find-replace\n  \"axybxyc\"\n  \"xy\"\n  \"!\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("a!b!c"),
        vx_core.f_string_from_string_find_replace(
          vx_core.vx_new_string("axybxyc"),
          vx_core.vx_new_string("xy"),
          vx_core.vx_new_string("!")
        )
      )
    )
    return output
  }

  fun f_stringlist_from_map(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "stringlist<-map",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_stringlist_from_map_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_stringlist_from_map_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n (stringlist \"b\" \"a\")\n (stringlist<-map\n  (intmap\n   :b 1\n   :a 2)))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.f_new(
          vx_core.t_stringlist,
          vx_core.vx_new(
            vx_core.t_anylist,
            vx_core.vx_new_string("b"),
            vx_core.vx_new_string("a")
          )
        ),
        vx_core.f_stringlist_from_map(
          vx_core.f_new(
            vx_core.t_intmap,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string(":b"),
              vx_core.vx_new_int(1),
              vx_core.vx_new_string(":a"),
              vx_core.vx_new_int(2)
            )
          )
        )
      )
    )
    return output
  }

  fun f_switch(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "switch",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_switch_testdescribe_1(context)
      )
    )
    return output
  }

  fun f_switch_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test 1\n (switch : int\n  \"d\"\n  (case (list \"b\" \"c\" \"d\") 1)\n  (else 2)))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_int(1),
        vx_core.f_switch(
          vx_core.t_int,
          vx_core.vx_new_string("d"),
          vx_core.vx_new(
            vx_core.t_thenelselist,
            vx_core.f_case(
              vx_core.f_new(
                vx_core.t_list,
                vx_core.vx_new(
                  vx_core.t_anylist,
                  vx_core.vx_new_string("b"),
                  vx_core.vx_new_string("c"),
                  vx_core.vx_new_string("d")
                )
              ),
              vx_core.t_any_from_func.vx_fn_new({ ->
                var output_1 : vx_core.Type_any = vx_core.vx_new_int(1)
                output_1
              })
            ),
            vx_core.f_else(
              vx_core.t_any_from_func.vx_fn_new({ ->
                var output_2 : vx_core.Type_any = vx_core.vx_new_int(2)
                output_2
              })
            )
          )
        )
      )
    )
    return output
  }

  fun f_type_from_any(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "type<-any",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_type_from_any_testdescribe_1(context),
        f_type_from_any_testdescribe_2(context),
        f_type_from_any_testdescribe_3(context)
      )
    )
    return output
  }

  fun f_type_from_any_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n boolean\n (type<-any false))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.t_boolean,
        vx_core.f_type_from_any(
          vx_core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  fun f_type_from_any_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n int\n (type<-any 5))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.t_int,
        vx_core.f_type_from_any(
          vx_core.vx_new_int(5)
        )
      )
    )
    return output
  }

  fun f_type_from_any_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test\n string\n (type<-any \"a\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.t_string,
        vx_core.f_type_from_any(
          vx_core.vx_new_string("a")
        )
      )
    )
    return output
  }

  fun f_typename_from_any(context : vx_core.Type_context) : vx_test.Type_testcase {
    var output : vx_test.Type_testcase = vx_core.vx_new(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/core",
      ":casename", "typename<-any",
      ":describelist",
      vx_core.vx_new(
        vx_test.t_testdescribelist,
        f_typename_from_any_testdescribe_1(context),
        f_typename_from_any_testdescribe_2(context),
        f_typename_from_any_testdescribe_3(context)
      )
    )
    return output
  }

  fun f_typename_from_any_testdescribe_1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"vx/core/boolean\" (typename<-any false))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("vx/core/boolean"),
        vx_core.f_typename_from_any(
          vx_core.vx_new_boolean(false)
        )
      )
    )
    return output
  }

  fun f_typename_from_any_testdescribe_2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"vx/core/int\"     (typename<-any 5))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("vx/core/int"),
        vx_core.f_typename_from_any(
          vx_core.vx_new_int(5)
        )
      )
    )
    return output
  }

  fun f_typename_from_any_testdescribe_3(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      ":describename", "(test \"vx/core/string\"  (typename<-any \"a\"))",
      ":testresult", vx_test.f_test(
        context,
        vx_core.vx_new_string("vx/core/string"),
        vx_core.f_typename_from_any(
          vx_core.vx_new_string("a")
        )
      )
    )
    return output
  }

  fun test_cases(context : vx_core.Type_context) : vx_test.Type_testcaselist {
    var testcases : List<vx_core.Type_any> = vx_core.arraylist_from_array(
      vx_coreTest.t_boolean(context),
      vx_coreTest.t_float(context),
      vx_coreTest.t_func(context),
      vx_coreTest.t_funclist(context),
      vx_coreTest.t_int(context),
      vx_coreTest.t_string(context),
      vx_coreTest.t_stringlist(context),
      vx_coreTest.c_false(context),
      vx_coreTest.c_true(context),
      vx_coreTest.f_not(context),
      vx_coreTest.f_ne(context),
      vx_coreTest.f_multiply(context),
      vx_coreTest.f_multiply_1(context),
      vx_coreTest.f_multiply_2(context),
      vx_coreTest.f_multiply_3(context),
      vx_coreTest.f_plus(context),
      vx_coreTest.f_plus_1(context),
      vx_coreTest.f_plus1(context),
      vx_coreTest.f_minus(context),
      vx_coreTest.f_minus_1(context),
      vx_coreTest.f_minus1(context),
      vx_coreTest.f_divide(context),
      vx_coreTest.f_lt(context),
      vx_coreTest.f_lt_1(context),
      vx_coreTest.f_chainfirst(context),
      vx_coreTest.f_chainlast(context),
      vx_coreTest.f_le(context),
      vx_coreTest.f_le_1(context),
      vx_coreTest.f_eq(context),
      vx_coreTest.f_eq_1(context),
      vx_coreTest.f_eqeq(context),
      vx_coreTest.f_gt(context),
      vx_coreTest.f_gt_1(context),
      vx_coreTest.f_ge(context),
      vx_coreTest.f_ge_1(context),
      vx_coreTest.f_and(context),
      vx_coreTest.f_and_1(context),
      vx_coreTest.f_any_from_list(context),
      vx_coreTest.f_any_from_list_start_reduce(context),
      vx_coreTest.f_any_from_map(context),
      vx_coreTest.f_any_from_map_start_reduce(context),
      vx_coreTest.f_boolean_write_from_map_name_value(context),
      vx_coreTest.f_compare(context),
      vx_coreTest.f_contains(context),
      vx_coreTest.f_contains_1(context),
      vx_coreTest.f_copy(context),
      vx_coreTest.f_empty(context),
      vx_coreTest.f_first_from_list(context),
      vx_coreTest.f_first_from_list_any_from_any(context),
      vx_coreTest.f_float_from_string(context),
      vx_coreTest.f_if(context),
      vx_coreTest.f_if_1(context),
      vx_coreTest.f_if_2(context),
      vx_coreTest.f_int_from_string(context),
      vx_coreTest.f_is_empty_1(context),
      vx_coreTest.f_is_int(context),
      vx_coreTest.f_is_number(context),
      vx_coreTest.f_last_from_list(context),
      vx_coreTest.f_length(context),
      vx_coreTest.f_length_1(context),
      vx_coreTest.f_let(context),
      vx_coreTest.f_list_join_from_list(context),
      vx_coreTest.f_list_join_from_list_1(context),
      vx_coreTest.f_list_from_list(context),
      vx_coreTest.f_list_from_list_intany(context),
      vx_coreTest.f_list_from_map(context),
      vx_coreTest.f_list_from_map_1(context),
      vx_coreTest.f_map_from_list(context),
      vx_coreTest.f_map_from_map(context),
      vx_coreTest.f_map_from_map_1(context),
      vx_coreTest.f_new(context),
      vx_coreTest.f_new_from_type(context),
      vx_coreTest.f_or(context),
      vx_coreTest.f_or_1(context),
      vx_coreTest.f_resolve(context),
      vx_coreTest.f_resolve_1(context),
      vx_coreTest.f_resolve_async(context),
      vx_coreTest.f_string_repeat(context),
      vx_coreTest.f_string_from_any(context),
      vx_coreTest.f_string_from_string_find_replace(context),
      vx_coreTest.f_stringlist_from_map(context),
      vx_coreTest.f_switch(context),
      vx_coreTest.f_type_from_any(context),
      vx_coreTest.f_typename_from_any(context)
    )
    var output : vx_test.Type_testcaselist = vx_core.vx_new(
      vx_test.t_testcaselist,
      testcases
    )
    return output
  }

  fun test_coveragesummary() : vx_test.Type_testcoveragesummary {
    var output : vx_test.Type_testcoveragesummary = vx_core.vx_new(
      vx_test.t_testcoveragesummary,
      ":testpkg", "vx/core", 
      ":constnums", vx_core.vx_new(vx_test.t_testcoveragenums, ":pct", 13, ":tests", 2, ":total", 15), 
      ":docnums", vx_core.vx_new(vx_test.t_testcoveragenums, ":pct", 91, ":tests", 236, ":total", 258), 
      ":funcnums", vx_core.vx_new(vx_test.t_testcoveragenums, ":pct", 55, ":tests", 75, ":total", 135), 
      ":bigospacenums", vx_core.vx_new(vx_test.t_testcoveragenums, ":pct", 0, ":tests", 1, ":total", 167), 
      ":bigotimenums", vx_core.vx_new(vx_test.t_testcoveragenums, ":pct", 0, ":tests", 1, ":total", 167), 
      ":totalnums", vx_core.vx_new(vx_test.t_testcoveragenums, ":pct", 37, ":tests", 84, ":total", 226), 
      ":typenums", vx_core.vx_new(vx_test.t_testcoveragenums, ":pct", 9, ":tests", 7, ":total", 76)
    )
    return output
  }

  fun test_coveragedetail() : vx_test.Type_testcoveragedetail {
    var output : vx_test.Type_testcoveragedetail = vx_core.vx_new(
      vx_test.t_testcoveragedetail,
      ":testpkg", "vx/core",
      ":typemap", vx_core.vx_new(
        vx_core.t_intmap,
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
        ":msgblock", 0,
        ":msgblocklist", 0,
        ":msglist", 0,
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
      ":constmap", vx_core.vx_new(
        vx_core.t_intmap,
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
      ":funcmap", vx_core.vx_new(
        vx_core.t_intmap,
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
        ":any<-struct", 0,
        ":async", 0,
        ":boolean-permission<-func", 0,
        ":boolean-write<-map-name-value", 2,
        ":boolean<-any", 0,
        ":boolean<-func", 0,
        ":boolean<-none", 0,
        ":case", 0,
        ":case_1", 0,
        ":compare", 2,
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
        ":list-join<-list", 1,
        ":list-join<-list_1", 1,
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
        ":main", 0,
        ":map<-list", 1,
        ":map<-map", 1,
        ":map<-map_1", 1,
        ":msg<-error", 0,
        ":msg<-error_1", 0,
        ":msg<-error_2", 0,
        ":msg<-warning", 0,
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

  fun test_package(context : vx_core.Type_context) : vx_test.Type_testpackage {
    var testcaselist : vx_test.Type_testcaselist = test_cases(context)
    var output : vx_test.Type_testpackage = vx_core.vx_new(
      vx_test.t_testpackage,
      ":testpkg", "vx/core", 
      ":caselist", testcaselist,
      ":coveragesummary", test_coveragesummary(),
      ":coveragedetail", test_coveragedetail()
    )
    return output
  }

}
