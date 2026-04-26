
import Vx

public enum Vx_TestTest {

  public static func f_file_test(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/test",
        ":casename",
        "file-test",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TestTest.f_file_test_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_file_test_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (boolean-exists<-file\n  (file\n   :name \"testsuite.vxlisp\"\n   :path path-test-resources)))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Data_File.f_boolean_exists_from_file(
            Vx_Core.f_new(
              Vx_Data_File.t_file,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":name"),
                  Vx_Core.vx_new_string("testsuite.vxlisp"),
                  Vx_Core.vx_new_string(":path"),
                  Vx_Core.c_path_test_resources
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_file_testhtml(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/test",
        ":casename",
        "file-testhtml",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TestTest.f_file_testhtml_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_file_testhtml_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (boolean-exists<-file\n  (file\n   :name \"testsuite.html\"\n   :path path-test-resources)))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Data_File.f_boolean_exists_from_file(
            Vx_Core.f_new(
              Vx_Data_File.t_file,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":name"),
                  Vx_Core.vx_new_string("testsuite.html"),
                  Vx_Core.vx_new_string(":path"),
                  Vx_Core.c_path_test_resources
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_file_testnode(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/test",
        ":casename",
        "file-testnode",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_TestTest.f_file_testnode_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_file_testnode_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (boolean-exists<-file\n  (file\n   :name \"testsuitenode.vxlisp\"\n   :path path-test-resources)))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Data_File.f_boolean_exists_from_file(
            Vx_Core.f_new(
              Vx_Data_File.t_file,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":name"),
                  Vx_Core.vx_new_string("testsuitenode.vxlisp"),
                  Vx_Core.vx_new_string(":path"),
                  Vx_Core.c_path_test_resources
                ]
              )
            )
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
        Vx_TestTest.f_file_test(context),
        Vx_TestTest.f_file_testhtml(context),
        Vx_TestTest.f_file_testnode(context)
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
        "vx/test",
        ":constnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            0,
            ":tests",
            0,
            ":total",
            1
          ]
        ),
        ":docnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            93,
            ":tests",
            43,
            ":total",
            46
          ]
        ),
        ":funcnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            10,
            ":tests",
            3,
            ":total",
            28
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
            34
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
            34
          ]
        ),
        ":totalnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            7,
            ":tests",
            3,
            ":total",
            40
          ]
        ),
        ":typenums",
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
        "vx/test",
        ":typemap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":testcase", 0,
            ":testcaselist", 0,
            ":testcoveragedetail", 0,
            ":testcoveragenums", 0,
            ":testcoveragesummary", 0,
            ":testdescribe", 0,
            ":testdescribelist", 0,
            ":testpackage", 0,
            ":testpackagelist", 0,
            ":testresult", 0,
            ":testresultlist", 0
          ]
        ),
        ":constmap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":stylesheet-test", 0
          ]
        ),
        ":funcmap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":context-test", 0,
            ":div<-testcaselist", 0,
            ":div<-testpackage", 0,
            ":div<-testpackagelist", 0,
            ":divchildlist<-testpackagelist", 0,
            ":file-test", 1,
            ":file-testhtml", 1,
            ":file-testnode", 1,
            ":html<-divtest", 0,
            ":p<-passfail", 0,
            ":p<-testcoveragenums", 0,
            ":resolve-testcase", 0,
            ":resolve-testcaselist", 0,
            ":resolve-testdescribe", 0,
            ":resolve-testdescribelist", 0,
            ":resolve-testpackage", 0,
            ":resolve-testpackagelist", 0,
            ":resolve-testresult", 0,
            ":security-test", 0,
            ":test", 0,
            ":test_1", 0,
            ":test-false", 0,
            ":test-false_1", 0,
            ":test-gt", 0,
            ":test-gt_1", 0,
            ":test-ne", 0,
            ":test-ne_1", 0,
            ":test-string", 0,
            ":test-string_1", 0,
            ":test-true", 0,
            ":test-true_1", 0,
            ":tr<-testdescribe-casename", 0,
            ":trlist<-testcase", 0,
            ":trlist<-testcaselist", 0
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
        "vx/test",
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
