
import Vx

public enum Vx_Data_FileTest {

  public static func f_boolean_exists_from_file(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/data/file",
        ":casename",
        "boolean-exists<-file",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_Data_FileTest.f_boolean_exists_from_file_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_boolean_exists_from_file_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (boolean-exists<-file\n  (file\n   :name \"boolean_exists_from_file.txt\"\n   :path (string path-test-resources \"/vx\"))))",
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
                  Vx_Core.vx_new_string("boolean_exists_from_file.txt"),
                  Vx_Core.vx_new_string(":path"),
                  Vx_Core.f_new(
                    Vx_Core.t_string,
                    Vx_Core.vx_new(
                      Vx_Core.t_anylist,
                      [
                        Vx_Core.c_path_test_resources,
                        Vx_Core.vx_new_string("/vx")
                      ]
                    )
                  )
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_boolean_write_from_file_string(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/data/file",
        ":casename",
        "boolean-write<-file-string",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_Data_FileTest.f_boolean_write_from_file_string_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_boolean_write_from_file_string_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test-true\n (boolean-write<-file-string\n  (file\n   :name \"boolean_write_from_file_string.txt\"\n   :path (string path-test-resources \"/vx\"))\n  \"writetext\"))",
        ":testresult",
        Vx_Test.f_test_true(
          context,
          Vx_Data_File.f_boolean_write_from_file_string(
            context,
            Vx_Core.f_new(
              Vx_Data_File.t_file,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":name"),
                  Vx_Core.vx_new_string("boolean_write_from_file_string.txt"),
                  Vx_Core.vx_new_string(":path"),
                  Vx_Core.f_new(
                    Vx_Core.t_string,
                    Vx_Core.vx_new(
                      Vx_Core.t_anylist,
                      [
                        Vx_Core.c_path_test_resources,
                        Vx_Core.vx_new_string("/vx")
                      ]
                    )
                  )
                ]
              )
            ),
            Vx_Core.vx_new_string("writetext")
          )
        )
      ]
    )
    return output
  }

  public static func f_file_read_from_file(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/data/file",
        ":casename",
        "file-read<-file",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_Data_FileTest.f_file_read_from_file_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_file_read_from_file_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n (file\n  :name \"string_read_from_file.txt\"\n  :path (string path-test-resources \"/vx\")\n  :text \"testdata\")\n (file-read<-file\n  (file\n   :name \"string_read_from_file.txt\"\n   :path (string path-test-resources \"/vx\"))))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.f_new(
            Vx_Data_File.t_file,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.vx_new_string(":name"),
                Vx_Core.vx_new_string("string_read_from_file.txt"),
                Vx_Core.vx_new_string(":path"),
                Vx_Core.f_new(
                  Vx_Core.t_string,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.c_path_test_resources,
                      Vx_Core.vx_new_string("/vx")
                    ]
                  )
                ),
                Vx_Core.vx_new_string(":text"),
                Vx_Core.vx_new_string("testdata")
              ]
            )
          ),
          Vx_Data_File.f_file_read_from_file(
            context,
            Vx_Core.f_new(
              Vx_Data_File.t_file,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":name"),
                  Vx_Core.vx_new_string("string_read_from_file.txt"),
                  Vx_Core.vx_new_string(":path"),
                  Vx_Core.f_new(
                    Vx_Core.t_string,
                    Vx_Core.vx_new(
                      Vx_Core.t_anylist,
                      [
                        Vx_Core.c_path_test_resources,
                        Vx_Core.vx_new_string("/vx")
                      ]
                    )
                  )
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_pathfull_from_file(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/data/file",
        ":casename",
        "pathfull<-file",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_Data_FileTest.f_pathfull_from_file_testdescribe_1(context),
            Vx_Data_FileTest.f_pathfull_from_file_testdescribe_2(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_pathfull_from_file_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"fname\"\n (pathfull<-file\n  (file\n   :name \"fname\")))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("fname"),
          Vx_Data_File.f_pathfull_from_file(
            Vx_Core.f_new(
              Vx_Data_File.t_file,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":name"),
                  Vx_Core.vx_new_string("fname")
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_pathfull_from_file_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"fpath/fname\"\n (pathfull<-file\n  (file\n   :path \"fpath\"\n   :name \"fname\")))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("fpath/fname"),
          Vx_Data_File.f_pathfull_from_file(
            Vx_Core.f_new(
              Vx_Data_File.t_file,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":path"),
                  Vx_Core.vx_new_string("fpath"),
                  Vx_Core.vx_new_string(":name"),
                  Vx_Core.vx_new_string("fname")
                ]
              )
            )
          )
        )
      ]
    )
    return output
  }

  public static func f_string_read_from_file(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      [
        ":passfail",
        false,
        ":testpkg",
        "vx/data/file",
        ":casename",
        "string-read<-file",
        ":describelist",
        Vx_Core.vx_new(
          Vx_Test.t_testdescribelist,
          [
            Vx_Data_FileTest.f_string_read_from_file_testdescribe_1(context)
          ]
        )
      ]
    )
    return output
  }

  public static func f_string_read_from_file_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      [
        ":describename",
        "(test\n \"testdata\"\n (string-read<-file\n  (file\n   :name \"string_read_from_file.txt\"\n   :path (string path-test-resources \"/vx\"))))",
        ":testresult",
        Vx_Test.f_test(
          context,
          Vx_Core.vx_new_string("testdata"),
          Vx_Data_File.f_string_read_from_file(
            context,
            Vx_Core.f_new(
              Vx_Data_File.t_file,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":name"),
                  Vx_Core.vx_new_string("string_read_from_file.txt"),
                  Vx_Core.vx_new_string(":path"),
                  Vx_Core.f_new(
                    Vx_Core.t_string,
                    Vx_Core.vx_new(
                      Vx_Core.t_anylist,
                      [
                        Vx_Core.c_path_test_resources,
                        Vx_Core.vx_new_string("/vx")
                      ]
                    )
                  )
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
        Vx_Data_FileTest.f_boolean_exists_from_file(context),
        Vx_Data_FileTest.f_boolean_write_from_file_string(context),
        Vx_Data_FileTest.f_file_read_from_file(context),
        Vx_Data_FileTest.f_pathfull_from_file(context),
        Vx_Data_FileTest.f_string_read_from_file(context)
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
        "vx/data/file",
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
            92,
            ":tests",
            13,
            ":total",
            14
          ]
        ),
        ":funcnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            45,
            ":tests",
            5,
            ":total",
            11
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
            35,
            ":tests",
            5,
            ":total",
            14
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
            3
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
        "vx/data/file",
        ":typemap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":file", 0,
            ":fileformat", 0,
            ":filelist", 0
          ]
        ),
        ":constmap",
        Vx_Core.e_intmap,
        ":funcmap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":boolean-exists<-file", 1,
            ":boolean-write<-file", 0,
            ":boolean-write<-file-any", 0,
            ":boolean-write<-file-string", 1,
            ":file-read<-file", 1,
            ":file<-path", 0,
            ":name<-file", 0,
            ":path<-file", 0,
            ":pathcurrent<-os", 0,
            ":pathfull<-file", 2,
            ":string-read<-file", 1
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
        "vx/data/file",
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
