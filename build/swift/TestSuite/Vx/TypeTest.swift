
import Vx

public enum Vx_TypeTest {

  public static func f_boolean_from_string_ends(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "boolean<-string-ends",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_boolean_from_string_ends_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_boolean_from_string_ends_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (boolean<-string-ends\n  \"abcd\"\n  \"cd\"))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_boolean_from_string_ends(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_string("cd")
          )
        )
      ]
    )
    return output
  }

  public static func f_boolean_from_string_starts(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "boolean<-string-starts",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_boolean_from_string_starts_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_boolean_from_string_starts_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (boolean<-string-starts\n  \"abcd\"\n  \"ab\"))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_boolean_from_string_starts(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_string("ab")
          )
        )
      ]
    )
    return output
  }

  public static func f_int_from_string_find(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "int<-string-find",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_int_from_string_find_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_int_from_string_find_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n 3\n (int<-string-find\n  \"abcdcdg\"\n  \"cd\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_int(3),
          Vx_Type.f_int_from_string_find(
            Vx_Core.vx_new_string("abcdcdg"),
            Vx_Core.vx_new_string("cd")
          )
        )
      ]
    )
    return output
  }

  public static func f_int_from_string_findkeyword(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "int<-string-findkeyword",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_int_from_string_findkeyword_testdescribe_1(context),
            Vx_TypeTest.f_int_from_string_findkeyword_testdescribe_2(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_int_from_string_findkeyword_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n 3\n (int<-string-findkeyword\n  \"ab\tcdefg\"\n  \":whitespace\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_int(3),
          Vx_Type.f_int_from_string_findkeyword(
            Vx_Core.vx_new_string("ab\tcdefg"),
            Vx_Core.vx_new_string(":whitespace")
          )
        )
      ]
    )
    return output
  }

  public static func f_int_from_string_findkeyword_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n 5\n (int<-string-findkeyword\n  \" \t\n\rab\"\n  \":nonwhitespace\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_int(5),
          Vx_Type.f_int_from_string_findkeyword(
            Vx_Core.vx_new_string(" \t\n\rab"),
            Vx_Core.vx_new_string(":nonwhitespace")
          )
        )
      ]
    )
    return output
  }

  public static func f_int_from_string_findlast(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "int<-string-findlast",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_int_from_string_findlast_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_int_from_string_findlast_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n 5\n (int<-string-findlast\n  \"abcdcdg\"\n  \"cd\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_int(5),
          Vx_Type.f_int_from_string_findlast(
            Vx_Core.vx_new_string("abcdcdg"),
            Vx_Core.vx_new_string("cd")
          )
        )
      ]
    )
    return output
  }

  public static func f_is_string(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "is-string",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_is_string_testdescribe_1(context),
            Vx_TypeTest.f_is_string_testdescribe_2(context),
            Vx_TypeTest.f_is_string_testdescribe_3(context),
            Vx_TypeTest.f_is_string_testdescribe_4(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_is_string_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (is-string \"\"))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_is_string(
            Vx_Core.vx_new_string("")
          )
        )
      ]
    )
    return output
  }

  public static func f_is_string_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (is-string \"a\"))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_is_string(
            Vx_Core.vx_new_string("a")
          )
        )
      ]
    )
    return output
  }

  public static func f_is_string_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-false\n (is-string 5))",
        ":testresult",
        Vx_Test.f_test_false(
          context,
          Vx_Type.f_is_string(
            Vx_Core.vx_new_int(5)
          )
        )
      ]
    )
    return output
  }

  public static func f_is_string_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-false\n (is-string (list)))",
        ":testresult",
        Vx_Test.f_test_false(
          context,
          Vx_Type.f_is_string(
            Vx_Core.f_empty(Vx_Core.t_list)
          )
        )
      ]
    )
    return output
  }

  public static func f_is_type(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "is-type",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_is_type_testdescribe_1(context),
            Vx_TypeTest.f_is_type_testdescribe_2(context),
            Vx_TypeTest.f_is_type_testdescribe_3(context),
            Vx_TypeTest.f_is_type_testdescribe_4(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_is_type_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (is-type false boolean))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_is_type(
            Vx_Core.vx_new_boolean(false),
            Vx_Core.t_boolean
          )
        )
      ]
    )
    return output
  }

  public static func f_is_type_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (is-type \"a\" string))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_is_type(
            Vx_Core.vx_new_string("a"),
            Vx_Core.t_string
          )
        )
      ]
    )
    return output
  }

  public static func f_is_type_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (is-type 5.5 number))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_is_type(
            Vx_Core.vx_new_decimal("5.5"),
            Vx_Core.t_number
          )
        )
      ]
    )
    return output
  }

  public static func f_is_type_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (is-type 4 int))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_is_type(
            Vx_Core.vx_new_int(4),
            Vx_Core.t_int
          )
        )
      ]
    )
    return output
  }

  public static func f_is_type_from_any_typelist(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "is-type<-any-typelist",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_is_type_from_any_typelist_testdescribe_1(context),
            Vx_TypeTest.f_is_type_from_any_typelist_testdescribe_2(context),
            Vx_TypeTest.f_is_type_from_any_typelist_testdescribe_3(context),
            Vx_TypeTest.f_is_type_from_any_typelist_testdescribe_4(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_is_type_from_any_typelist_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (is-type<-any-typelist\n  false\n  (typelist int boolean)))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_is_type_from_any_typelist(
            Vx_Core.vx_new_boolean(false),
            Vx_Core.f_new(
              Vx_Core.t_typelist,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.t_int,
                  Vx_Core.t_boolean
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_is_type_from_any_typelist_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (is-type<-any-typelist\n  \"a\"\n  (typelist number string)))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_is_type_from_any_typelist(
            Vx_Core.vx_new_string("a"),
            Vx_Core.f_new(
              Vx_Core.t_typelist,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.t_number,
                  Vx_Core.t_string
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_is_type_from_any_typelist_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (is-type<-any-typelist\n  5.5\n  (typelist string number)))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_is_type_from_any_typelist(
            Vx_Core.vx_new_decimal("5.5"),
            Vx_Core.f_new(
              Vx_Core.t_typelist,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.t_string,
                  Vx_Core.t_number
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_is_type_from_any_typelist_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (is-type<-any-typelist\n  4\n  (typelist string int)))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Type.f_is_type_from_any_typelist(
            Vx_Core.vx_new_int(4),
            Vx_Core.f_new(
              Vx_Core.t_typelist,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.t_string,
                  Vx_Core.t_int
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_string_lowercase(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "string-lowercase",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_string_lowercase_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_string_lowercase_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"abc\"\n (string-lowercase\n  \"AbC\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("abc"),
          Vx_Type.f_string_lowercase(
            Vx_Core.vx_new_string("AbC")
          )
        )
      ]
    )
    return output
  }

  public static func f_string_outdent(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "string-outdent",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_string_outdent_testdescribe_1(context),
            Vx_TypeTest.f_string_outdent_testdescribe_2(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_string_outdent_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"ab\"\n (string-outdent\n  \"ab\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("ab"),
          Vx_Type.f_string_outdent(
            Vx_Core.vx_new_string("ab")
          )
        )
      ]
    )
    return output
  }

  public static func f_string_outdent_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"a\nb\"\n (string-outdent\n  \"\n a\n b\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("a\nb"),
          Vx_Type.f_string_outdent(
            Vx_Core.vx_new_string("\n a\n b")
          )
        )
      ]
    )
    return output
  }

  public static func f_string_trim(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "string-trim",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_string_trim_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_string_trim_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"ab\"\n (string-trim\n  \" \t\nab\n\t \"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("ab"),
          Vx_Type.f_string_trim(
            Vx_Core.vx_new_string(" \t\nab\n\t ")
          )
        )
      ]
    )
    return output
  }

  public static func f_string_uppercase(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "string-uppercase",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_string_uppercase_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_string_uppercase_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"ABC\"\n (string-uppercase\n  \"aBc\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("ABC"),
          Vx_Type.f_string_uppercase(
            Vx_Core.vx_new_string("aBc")
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_int(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "string<-int",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_string_from_int_testdescribe_1(context),
            Vx_TypeTest.f_string_from_int_testdescribe_2(context),
            Vx_TypeTest.f_string_from_int_testdescribe_3(context),
            Vx_TypeTest.f_string_from_int_testdescribe_4(context),
            Vx_TypeTest.f_string_from_int_testdescribe_5(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_string_from_int_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"4\"\n (string<-int 4))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("4"),
          Vx_Type.f_string_from_int(
            Vx_Core.vx_new_int(4)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_int_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"51\"\n (string<-int 51))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("51"),
          Vx_Type.f_string_from_int(
            Vx_Core.vx_new_int(51)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_int_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"notanumber\"\n (string<-int notanumber))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("notanumber"),
          Vx_Type.f_string_from_int(Vx_Core.c_notanumber)
        )
      ]
    )
    return output
  }

  public static func f_string_from_int_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"infinity\"\n (string<-int infinity))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("infinity"),
          Vx_Type.f_string_from_int(Vx_Core.c_infinity)
        )
      ]
    )
    return output
  }

  public static func f_string_from_int_testdescribe_5(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"neginfinity\"\n (string<-int neginfinity))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("neginfinity"),
          Vx_Type.f_string_from_int(
            Vx_Core.c_neginfinity
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_end(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "string<-string-end",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_string_from_string_end_testdescribe_1(context),
            Vx_TypeTest.f_string_from_string_end_testdescribe_2(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_end_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"abc\"\n (string<-string-end\n  \"abcd\"\n  3))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("abc"),
          Vx_Type.f_string_from_string_end(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_int(3)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_end_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"ab\"\n (string<-string-end\n  \"abcd\"\n  2))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("ab"),
          Vx_Type.f_string_from_string_end(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_int(2)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_start(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "string<-string-start",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_string_from_string_start_testdescribe_1(context),
            Vx_TypeTest.f_string_from_string_start_testdescribe_2(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_start_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"abcd\"\n (string<-string-start\n  \"abcd\"\n  1))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("abcd"),
          Vx_Type.f_string_from_string_start(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_int(1)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_start_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"bcd\"\n (string<-string-start\n  \"abcd\"\n  2))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("bcd"),
          Vx_Type.f_string_from_string_start(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_int(2)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_start_end(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "string<-string-start-end",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_string_from_string_start_end_testdescribe_1(context),
            Vx_TypeTest.f_string_from_string_start_end_testdescribe_2(context),
            Vx_TypeTest.f_string_from_string_start_end_testdescribe_3(context),
            Vx_TypeTest.f_string_from_string_start_end_testdescribe_4(context),
            Vx_TypeTest.f_string_from_string_start_end_testdescribe_5(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_start_end_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"abc\"\n (string<-string-start-end\n  \"abcd\"\n  1\n  3))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("abc"),
          Vx_Type.f_string_from_string_start_end(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_int(1),
            Vx_Core.vx_new_int(3)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_start_end_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"bc\"\n (string<-string-start-end\n  \"abcd\"\n  2\n  3))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("bc"),
          Vx_Type.f_string_from_string_start_end(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_int(2),
            Vx_Core.vx_new_int(3)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_start_end_testdescribe_3(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"\"\n (string<-string-start-end\n  \"abcd\"\n  5\n  6))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string(""),
          Vx_Type.f_string_from_string_start_end(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_int(5),
            Vx_Core.vx_new_int(6)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_start_end_testdescribe_4(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"bcd\"\n (string<-string-start-end\n  \"abcd\"\n  2\n  5))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("bcd"),
          Vx_Type.f_string_from_string_start_end(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_int(2),
            Vx_Core.vx_new_int(5)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_string_start_end_testdescribe_5(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"bc\"\n (string<-string-start-end\n  \"abcd\"\n  2\n  -1))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("bc"),
          Vx_Type.f_string_from_string_start_end(
            Vx_Core.vx_new_string("abcd"),
            Vx_Core.vx_new_int(2),
            Vx_Core.vx_new_int(-1)
          )
        )
      ]
    )
    return output
  }

  public static func f_string_from_stringlist_join(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "string<-stringlist-join",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_string_from_stringlist_join_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_string_from_stringlist_join_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"a$b$c\"\n (string<-stringlist-join\n  (stringlist \"a\" \"b\" \"c\")\n  \"$\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("a$b$c"),
          Vx_Type.f_string_from_stringlist_join(
            Vx_Core.f_new(
              Vx_Core.t_stringlist,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string("a"),
                  Vx_Core.vx_new_string("b"),
                  Vx_Core.vx_new_string("c")
                ]
              )
            ),
            Vx_Core.vx_new_string("$")
          )
        )
      ]
    )
    return output
  }

  public static func f_stringlist_from_string_split(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/type",
        ":casename",
        "stringlist<-string-split",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TypeTest.f_stringlist_from_string_split_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_stringlist_from_string_split_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n (stringlist \"a\" \"b\" \"c\")\n (stringlist<-string-split\n  \"a$b$c\"\n  \"$\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.f_new(
            Vx_Core.t_stringlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.vx_new_string("a"),
                Vx_Core.vx_new_string("b"),
                Vx_Core.vx_new_string("c")
              ]
            )
          ),
          Vx_Type.f_stringlist_from_string_split(
            Vx_Core.vx_new_string("a$b$c"),
            Vx_Core.vx_new_string("$")
          )
        )
      ]
    )
    return output
  }

  public static func test_cases(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcaselist {
    var testcases : [any Vx_Core.Type_any] = Vx_Core.vx_arraylist_from_array(
      [
        Vx_TypeTest.f_boolean_from_string_ends(context),
        Vx_TypeTest.f_boolean_from_string_starts(context),
        Vx_TypeTest.f_int_from_string_find(context),
        Vx_TypeTest.f_int_from_string_findkeyword(context),
        Vx_TypeTest.f_int_from_string_findlast(context),
        Vx_TypeTest.f_is_string(context),
        Vx_TypeTest.f_is_type(context),
        Vx_TypeTest.f_is_type_from_any_typelist(context),
        Vx_TypeTest.f_string_lowercase(context),
        Vx_TypeTest.f_string_outdent(context),
        Vx_TypeTest.f_string_trim(context),
        Vx_TypeTest.f_string_uppercase(context),
        Vx_TypeTest.f_string_from_int(context),
        Vx_TypeTest.f_string_from_string_end(context),
        Vx_TypeTest.f_string_from_string_start(context),
        Vx_TypeTest.f_string_from_string_start_end(context),
        Vx_TypeTest.f_string_from_stringlist_join(context),
        Vx_TypeTest.f_stringlist_from_string_split(context)
      ]
    )
    let output : any Vx_Test.Type_testcaselist = Vx_Core.vx_new(
      Vx_Test.t_testcaselist,
      [
        testcases
      ]
    )
    return output
  }

  public static func test_coveragesummary() -> any Vx_Test.Type_testcoveragesummary {
    let output : any Vx_Test.Type_testcoveragesummary = Vx_Core.vx_new(
      Vx_Test.t_testcoveragesummary,
      [
        ":testpkg",
        "vx/type",
        ":constnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            100,
            ":tests",
            0,
            ":total",
            0
          ]
        ),
        ":docnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            81,
            ":tests",
            22,
            ":total",
            27
          ]
        ),
        ":funcnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            66,
            ":tests",
            18,
            ":total",
            27
          ]
        ),
        ":bigospacenums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            0,
            ":tests",
            0,
            ":total",
            27
          ]
        ),
        ":bigotimenums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            0,
            ":tests",
            0,
            ":total",
            27
          ]
        ),
        ":totalnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            66,
            ":tests",
            18,
            ":total",
            27
          ]
        ),
        ":typenums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            100,
            ":tests",
            0,
            ":total",
            0
          ]
        )
      ]
    )
    return output
  }

  public static func test_coveragedetail() -> any Vx_Test.Type_testcoveragedetail {
    let output : any Vx_Test.Type_testcoveragedetail = Vx_Core.vx_new(
      Vx_Test.t_testcoveragedetail,
      [
        ":testpkg",
        "vx/type",
        ":typemap",
        Vx_Core.e_intmap,
        ":constmap",
        Vx_Core.e_intmap,
        ":funcmap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":allowtypenames<-type", 0,
            ":allowtypes<-type", 0,
            ":any<-int", 0,
            ":boolean<-string-ends", 1,
            ":boolean<-string-starts", 1,
            ":int<-string-find", 1,
            ":int<-string-findkeyword", 2,
            ":int<-string-findlast", 1,
            ":is-boolean", 0,
            ":is-decimal", 0,
            ":is-none", 0,
            ":is-string", 4,
            ":is-type", 4,
            ":is-type<-any-typelist", 4,
            ":string-lowercase", 1,
            ":string-outdent", 2,
            ":string-trim", 1,
            ":string-uppercase", 1,
            ":string<-int", 5,
            ":string<-string-end", 2,
            ":string<-string-start", 2,
            ":string<-string-start-end", 5,
            ":string<-stringlist-join", 1,
            ":stringlist<-string-split", 1,
            ":traitnames<-any", 0,
            ":traits<-any", 0,
            ":uid", 0
          ]
        )
      ]
    )
    return output
  }

  public static func test_package(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testpackage {
    let testcaselist : any Vx_Test.Type_testcaselist = test_cases(context)
    let output : any Vx_Test.Type_testpackage = Vx_Core.vx_new(
      Vx_Test.t_testpackage,
      [
        ":testpkg",
        "vx/type",
        ":caselist",
        testcaselist,
        ":coveragesummary",
        test_coveragesummary(),
        ":coveragedetail",
        test_coveragedetail()
      ]
    )
    return output
  }

}
