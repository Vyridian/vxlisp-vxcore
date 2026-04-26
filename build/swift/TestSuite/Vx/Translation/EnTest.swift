
import Vx

public enum Vx_Translation_EnTest {

  public static func f_translation_en(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/translation/en",
        ":casename",
        "translation-en",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_Translation_EnTest.f_translation_en_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_translation_en_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"Hello\"\n (trn/translate<-translation-string\n  (translation-en)\n  \"Hello\"))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("Hello"),
          Vx_Translate.f_translate_from_translation_string(
            Vx_Translation_En.f_translation_en(),
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
        Vx_Translation_EnTest.f_translation_en(context)
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
        "vx/translation/en",
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
            5,
            ":total",
            5
          ]
        ),
        ":funcnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            20,
            ":tests",
            1,
            ":total",
            5
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
            5
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
            5
          ]
        ),
        ":totalnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            20,
            ":tests",
            1,
            ":total",
            5
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
        "vx/translation/en",
        ":typemap",
        Vx_Core.e_intmap,
        ":constmap",
        Vx_Core.e_intmap,
        ":funcmap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":context-en", 0,
            ":context-test", 0,
            ":securitydata-test", 0,
            ":translation-en", 1,
            ":words", 0
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
        "vx/translation/en",
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
