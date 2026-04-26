
import Vx

public enum Vx_TranslateTest {

  public static func f_translate(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/translate",
        ":casename",
        "translate",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TranslateTest.f_translate_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_translate_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"!NotFound!\"\n (translate \"!NotFound!\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("!NotFound!"),
          Vx_Translate.f_translate(
            context,
            Vx_Core.vx_new_string("!NotFound!")
          )
        )
      ]
    )
    return output
  }

  public static func f_translate_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/translate",
        ":casename",
        "translate_1",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TranslateTest.f_translate_1_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_translate_1_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"Repl Type Not Found\"\n (translate\n  (msg\n   :path \"vx/repl/repl/repl<-string-argmap\"\n   :code \"repltypenotfound\")))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("Repl Type Not Found"),
          Vx_Translate.f_translate_1(
            context,
            Vx_Core.f_new(
              Vx_Core.t_msg,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":path"),
                  Vx_Core.vx_new_string("vx/repl/repl/repl<-string-argmap"),
                  Vx_Core.vx_new_string(":code"),
                  Vx_Core.vx_new_string("repltypenotfound")
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_translate_from_translation_string(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/translate",
        ":casename",
        "translate<-translation-string",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TranslateTest.f_translate_from_translation_string_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_translate_from_translation_string_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"Hola\"\n (translate<-translation-string\n  (translation\n   :wordmap\n    (stringmap\n     \"Hello\" \"Hola\"))\n  \"Hello\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("Hola"),
          Vx_Translate.f_translate_from_translation_string(
            Vx_Core.f_new(
              Vx_Core.t_translation,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":wordmap"),
                  Vx_Core.f_new(
                    Vx_Core.t_stringmap,
                    Vx_Core.vx_new(
                      Vx_Core.t_anylist,
                      [
                        Vx_Core.vx_new_string("Hello"),
                        Vx_Core.vx_new_string("Hola")
                      ]
                    )
                  )
                ]
              )
            ),
            Vx_Core.vx_new_string("Hello")
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
        Vx_TranslateTest.f_translate(context),
        Vx_TranslateTest.f_translate_1(context),
        Vx_TranslateTest.f_translate_from_translation_string(context)
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
        "vx/translate",
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
            100,
            ":tests",
            11,
            ":total",
            11
          ]
        ),
        ":funcnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            30,
            ":tests",
            3,
            ":total",
            10
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
            11
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
            11
          ]
        ),
        ":totalnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            30,
            ":tests",
            3,
            ":total",
            10
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
        "vx/translate",
        ":typemap",
        Vx_Core.e_intmap,
        ":constmap",
        Vx_Core.e_intmap,
        ":funcmap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":session<-session-name", 0,
            ":session<-session-translation", 0,
            ":session<-session-translationmap-name", 0,
            ":translate", 1,
            ":translate_1", 1,
            ":translate<-translation-string", 1,
            ":translate<-translationmap-name-string", 0,
            ":translation-load-session", 0,
            ":translation<-context", 0,
            ":translation<-session-name", 0,
            ":translationmap<-translations", 0
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
        "vx/translate",
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
