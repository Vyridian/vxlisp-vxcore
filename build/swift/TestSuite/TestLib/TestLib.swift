import Vx

public enum TestLib {

  public static let spath : String = Vx_Core.c_path_test_resources.vx_string()

  public static func file_test(
    _ file : any Vx_Data_File.Type_file
  ) -> any Vx_Data_File.Type_file {
    let output : any Vx_Data_File.Type_file = Vx_Core.vx_copy(
      Vx_Data_File.t_file,
      file,
      Vx_Core.vx_new_string(":path"),
      Vx_Core.vx_new_string(spath)
    )
    return output
  }

  public static func read_test_file(
    _ path : String,
    _ filename : String
  ) -> String {
    var file : any Vx_Data_File.Type_file = Vx_Core.vx_new(
      Vx_Data_File.t_file,
      Vx_Core.vx_new_string(":path"),
      Vx_Core.vx_new_string(path),
      Vx_Core.vx_new_string(":name"),
      Vx_Core.vx_new_string(filename)
    )
    var string_file : any Vx_Core.Type_string = Vx_Data_File.vx_string_read_from_file(file)
    let output : String = string_file.vx_string()
    return output
  }

  public static func sample_testdescribe1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    var output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      Vx_Core.vx_new_string(":describename"),
      Vx_Core.vx_new_string("(test-true true)"),
      Vx_Core.vx_new_string(":testpkg"),
      Vx_Core.vx_new_string("vx/core"),
      Vx_Core.vx_new_string(":testresult"),
      TestLib.sample_testresult1(context)
    )
    return output
  }

  public static func sample_testdescribe2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    var output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      Vx_Core.vx_new_string(":describename"),
      Vx_Core.vx_new_string("(test-false false)"),
      Vx_Core.vx_new_string(":testpkg"),
      Vx_Core.vx_new_string("vx/core"),
      Vx_Core.vx_new_string(":testresult"),
      TestLib.sample_testresult2(context)
    )
    return output
  }

  public static func sample_testdescribelist(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribelist {
    var output : any Vx_Test.Type_testdescribelist = Vx_Core.vx_any_from_any(
      Vx_Test.t_testdescribelist,
      Vx_Test.t_testdescribelist.vx_new(
        TestLib.sample_testdescribe1(context),
        TestLib.sample_testdescribe2(context)
      )
    )
    return output
  }

  public static func sample_testresult1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.f_test_true(
      context,
      Vx_Core.vx_new_boolean(true)
    )
    return output
  }

  public static func sample_testresult2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.f_test_false(
      context,
      Vx_Core.vx_new_boolean(false)
    )
    return output
  }

  public static func test(
    _ testname : String,
    _ expected : String,
    _ actual : String
  ) -> Bool {
    var output : Bool = false
    if expected == actual {
      print("Test Pass: " + testname)
      output = true
    } else {
      print("Test Fail: " + testname)
      print(expected)
      print(actual)
    }
    return output
  }

  public static func test_helloworld() -> Bool {
    let testname : String = "test_helloworld"
    let helloworld : any Vx_Core.Type_string = Vx_Core.vx_new_string("Hello World")
    let expected : String = "Hello World"
    let actual : String = helloworld.vx_string()
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_async_new_from_value() -> Bool {
    let testname : String = "test_async_new_from_value"
    let helloworld : any Vx_Core.Type_string = Vx_Core.vx_new_string("Hello World")
    let async : Vx_Core.Future = Vx_Core.vx_async_new_from_value(helloworld)
    let sync : any Vx_Core.Type_string = Vx_Core.vx_sync_from_async(Vx_Core.t_string, async)
    let expected : String = "Hello World"
    let actual : String = sync.vx_string()
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_async_from_async_fn() -> Bool {
    let testname : String = "test_async_from_async_fn"
    let helloworld : any Vx_Core.Type_string = Vx_Core.vx_new_string("Hello World")
    var async : Vx_Core.Future = Vx_Core.vx_async_new_from_value(helloworld)
    var async1 : Vx_Core.Future = Vx_Core.vx_async_from_async_fn(
      Vx_Core.t_string,
      async,
      {(any) in
        return any
      }
    )
    let sync : any Vx_Core.Type_string = Vx_Core.vx_sync_from_async(Vx_Core.t_string, async1)
    let expected : String = "Hello World"
    let actual : String = sync.vx_string()
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_list_from_list_async() -> Bool {
    let testname : String = "test_list_from_list_async"
    let sparams : any Vx_Core.Type_anylist = Vx_Core.vx_anylist_from_arraystring("hello", "world")
    let slist : any Vx_Core.Type_stringlist = Vx_Core.f_new_from_type(Vx_Core.t_stringlist, sparams)
    let fn_async : Vx_Core.Func_any_from_any_async = Vx_Core.t_any_from_any_async.vx_fn_new({
      anyval in
      let stringval : any Vx_Core.Type_string = anyval as! Vx_Core.Type_string
      let sout : String = stringval.vx_string() + "!"
      let outval : any Vx_Core.Type_any = Vx_Core.vx_new_string(sout)
      let output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(outval)
      return output
    });
    let asynclist : Vx_Core.Future = Vx_Core.vx_list_from_list_async(Vx_Core.t_stringlist, slist, fn_async)
    let sync : any Vx_Core.Type_stringlist = Vx_Core.vx_sync_from_async(Vx_Core.t_stringlist, asynclist)
    let expected : String = "(stringlist\n \"hello!\"\n \"world!\")"
    let actual : String = Vx_Core.vx_string_from_any(sync)
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_run_testresult(
    _ context : any Vx_Core.Type_context
  ) -> Bool {
    let testname : String = "test_run_testresult"
    var testresult : any Vx_Test.Type_testresult = TestLib.sample_testresult1(context)
    var testresult_resolved : any Vx_Test.Type_testresult = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    )
    var expected : String = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testresult.txt"
    )
    var actual : String = Vx_Core.vx_string_from_any(testresult_resolved)
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_run_testdescribe(
    _ context : any Vx_Core.Type_context
  ) -> Bool {
    let testname : String = "test_run_testdescribe"
    let testdescribe : any Vx_Test.Type_testdescribe = TestLib.sample_testdescribe1(context)
    let testdescribe_resolved : any Vx_Test.Type_testdescribe = TestLib.run_testdescribe(
      "vx/core",
      "boolean",
      testdescribe
    )
    var expected : String = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribe.txt"
    )
    var actual : String = Vx_Core.vx_string_from_any(
      testdescribe_resolved
    )
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_run_testdescribelist(
    _ context : any Vx_Core.Type_context
  ) -> Bool {
    let testname : String = "test_run_testdescribelist"
    var testresult : any Vx_Test.Type_testresult = TestLib.sample_testresult1(context)
    var testresult_resolved : any Vx_Test.Type_testresult = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    )
    var expected : String = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribelist.txt"
    )
    var actual : String = Vx_Core.vx_string_from_any(testresult_resolved)
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_run_testresult_async(
    _ context : any Vx_Core.Type_context
  ) -> Bool {
    let testname : String = "test_run_testresult_async"
    var testresult : any Vx_Test.Type_testresult = TestLib.sample_testresult1(context)
    var testresult_resolved : any Vx_Test.Type_testresult = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    )
    var expected : String = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testresult_async.txt"
    )
    var actual : String = Vx_Core.vx_string_from_any(testresult_resolved)
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_run_testdescribelist_async(
    _ context : any Vx_Core.Type_context
  ) -> Bool {
    let testname : String = "test_run_testdescribelist_async"
    var testdescribelist : any Vx_Test.Type_testdescribelist = TestLib.sample_testdescribelist(context)
    var testdescribelist_resolved : any Vx_Test.Type_testdescribelist = TestLib.run_testdescribelist(
      "vx/core",
      "boolean",
      testdescribelist
    )
    var expected : String = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribelist_async.txt"
    )
    var actual : String = Vx_Core.vx_string_from_any(
      testdescribelist_resolved
    )
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_pathfull_from_file() -> Bool {
    let testname : String = "test_pathfull_from_file"
    var file : any Vx_Data_File.Type_file = Vx_Core.vx_new(
      Vx_Data_File.t_file,
      Vx_Core.vx_new_string(":path"), Vx_Core.vx_new_string(spath + "/vx"),
      Vx_Core.vx_new_string(":name"), Vx_Core.vx_new_string("string_read_from_file.txt"))
    var string_path : any Vx_Core.Type_string = Vx_Data_File.f_pathfull_from_file(file)
    var expected : String = spath + "/vx/string_read_from_file.txt"
    var actual : String = string_path.vx_string()
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_read_file() -> Bool {
    let testname : String = "test_read_file"
    var expected : String = "testdata"
    var actual : String = read_test_file(spath + "/vx", "string_read_from_file.txt")
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func test_write_file() -> Bool {
    let testname : String = "test_write_file"
    var file : any Vx_Data_File.Type_file = Vx_Core.vx_new(
      Vx_Data_File.t_file, 
      Vx_Core.vx_new_string(":path"), Vx_Core.vx_new_string(spath + "/vx"),
      Vx_Core.vx_new_string(":name"), Vx_Core.vx_new_string("string_read_from_file.txt")
    )
    var string_path : any Vx_Core.Type_string = Vx_Data_File.f_pathfull_from_file(file)
    var expected : String = spath + "/vx/string_read_from_file.txt"
    var actual : String = string_path.vx_string()
    let output : Bool = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  public static func run_testcase(
    _ testcase : any Vx_Test.Type_testcase
  ) -> any Vx_Test.Type_testcase {
    let testpkg : any Vx_Core.Type_string = testcase.testpkg()
    let stestpkg : String = testpkg.vx_string()
    let casename : any Vx_Core.Type_string = testcase.casename()
    let scasename : String = casename.vx_string()
    let testdescribelist : any Vx_Test.Type_testdescribelist = testcase.describelist()
    let testdescribelist_resolved : any Vx_Test.Type_testdescribelist = TestLib.run_testdescribelist(
      stestpkg,
      scasename,
      testdescribelist
    )
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_copy(
      Vx_Test.t_testcase,
      testcase,
      Vx_Core.vx_new_string(":describelist"),
      testdescribelist_resolved
    )
    return output
  }

  // Blocking
  // Only use if running a single testcase
  public static func run_testcase_async(
    _ testcase : any Vx_Test.Type_testcase
  ) -> any Vx_Test.Type_testcase {
    var async_testcase : Vx_Core.Future = Vx_Test.f_resolve_testcase(testcase)
    var testcase_resolved : any Vx_Test.Type_testcase = Vx_Core.vx_sync_from_async(
      Vx_Test.t_testcase,
      async_testcase
    )
    let output : any Vx_Test.Type_testcase = TestLib.run_testcase(testcase_resolved)
    return output
  }

  public static func run_testcaselist(
    _ testcaselist : any Vx_Test.Type_testcaselist
  ) -> any Vx_Test.Type_testcaselist {
    let listtestcase : [any Vx_Test.Type_testcase] = testcaselist.vx_listtestcase()
    var listtestcase_resolved : [any Vx_Test.Type_testcase] = []
    for testcase in listtestcase {
      let testcase_resolved : any Vx_Test.Type_testcase = TestLib.run_testcase(testcase)
      listtestcase_resolved.append(testcase_resolved)
    }
    let output : any Vx_Test.Type_testcaselist = Vx_Core.vx_any_from_any(
      Vx_Test.t_testcaselist,
      testcaselist.vx_new(
        listtestcase_resolved
      )
    )
    return output
  }

  public static func run_testdescribe(
    _ testpkg : String,
    _ casename : String,
    _ describe : any Vx_Test.Type_testdescribe
  ) -> any Vx_Test.Type_testdescribe {
    let testcode : any Vx_Core.Type_string = describe.describename()
    let message : String = testcode.vx_string()
    let testresult : any Vx_Test.Type_testresult = describe.testresult()
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_copy(
      Vx_Test.t_testdescribe,
      describe,
      ":testresult",
      TestLib.run_testresult(
        testpkg,
        casename,
        message,
        testresult
      )
    )
    return output
  }

  public static func run_testdescribelist(
    _ testpkg : String,
    _ casename : String,
    _ testdescribelist : any Vx_Test.Type_testdescribelist
  ) -> any Vx_Test.Type_testdescribelist {
    let listtestdescribe : [any Vx_Test.Type_testdescribe] = testdescribelist.vx_listtestdescribe()
    var listtestdescribe_resolved : [any Vx_Test.Type_testdescribe] = []
    for testdescribe in listtestdescribe {
      let testdescribe_resolved : any Vx_Test.Type_testdescribe = TestLib.run_testdescribe(
        testpkg,
        casename,
        testdescribe
      )
      listtestdescribe_resolved.append(testdescribe_resolved)
    }
    let output : any Vx_Test.Type_testdescribelist = Vx_Core.vx_any_from_any(
      Vx_Test.t_testdescribelist,
      testdescribelist.vx_new(
        listtestdescribe_resolved
      )
    )
    return output
  }

  public static func run_testpackage(
    _ testpackage : any Vx_Test.Type_testpackage
  ) -> any Vx_Test.Type_testpackage {
    let testcaselist : any Vx_Test.Type_testcaselist = testpackage.caselist()
    let testcaselist_resolved : any Vx_Test.Type_testcaselist = TestLib.run_testcaselist(testcaselist)
    let output : any Vx_Test.Type_testpackage = Vx_Core.vx_copy(
      Vx_Test.t_testpackage,
      testpackage,
      Vx_Core.vx_new_string(":caselist"),
      testcaselist_resolved
    )
    return output
  }

  // Blocking
  // This is the preferred way of calling test (1 block per package)
  public static func run_testpackage_async(
    _ testpackage : any Vx_Test.Type_testpackage
  ) -> any Vx_Test.Type_testpackage {
    var async_testpackage : Vx_Core.Future = Vx_Test.f_resolve_testpackage(testpackage)
    var testpackage_resolved : any Vx_Test.Type_testpackage = Vx_Core.vx_sync_from_async(Vx_Test.t_testpackage, async_testpackage)
    var output : any Vx_Test.Type_testpackage = TestLib.run_testpackage(testpackage_resolved)
    return output
  }

  public static func run_testresult(
    _ testpkg : String,
    _ testname : String,
    _ message : String,
    _ testresult : any Vx_Test.Type_testresult
  ) -> any Vx_Test.Type_testresult {
    var valexpected : any Vx_Core.Type_any = testresult.expected()
    var valactual : any Vx_Core.Type_any = testresult.actual()
    var passfail : Bool = testresult.passfail().vx_boolean()
    var code : String = testresult.code().vx_string()
    var expected : String = Vx_Core.f_string_from_any(valexpected).vx_string()
    var actual : String = Vx_Core.f_string_from_any(valactual).vx_string()
    var msg : String = testpkg + "/" + testname + " " + message
    if (!passfail) {
      print(msg)
      print(expected)
      print(actual)
      Vx_Core.f_log(testresult)
    }
    if code == ":ne" {
    } else {
    }
    let output : any Vx_Test.Type_testresult = testresult
    return output
  }

  // Blocking
  // This is the preferred way of writing testsuite (1 block per testsuite)
  public static func write_testpackagelist_async(
    _ context : any Vx_Core.Type_context,
    _ testpackagelist : any Vx_Test.Type_testpackagelist
  ) -> Bool {
    var output : Bool = false
    var async_testpackagelist : Vx_Core.Future = Vx_Test.f_resolve_testpackagelist(testpackagelist)
    var testpackagelist_resolved : any Vx_Test.Type_testpackagelist = Vx_Core.vx_sync_from_async(Vx_Test.t_testpackagelist, async_testpackagelist)
    var filetest : any Vx_Data_File.Type_file = file_test(Vx_Test.f_file_test())
    var valboolean : any Vx_Core.Type_boolean = Vx_Data_File.f_boolean_write_from_file_any(context, filetest, testpackagelist_resolved)
    output = valboolean.vx_boolean()
    var divtest : any Vx_Web_Html.Type_div = Vx_Test.f_div_from_testpackagelist(testpackagelist_resolved)
    var htmlnode : any Vx_Web_Html.Type_html = Vx_Test.f_html_from_divtest(divtest)
    var filenode : any Vx_Data_File.Type_file = file_test(Vx_Test.f_file_testnode())
    valboolean = Vx_Data_File.f_boolean_write_from_file_any(context, filenode, htmlnode)
    output = output && valboolean.vx_boolean()
    var filehtml : any Vx_Data_File.Type_file = file_test(Vx_Test.f_file_testhtml())
    var shtml : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_html(htmlnode)
    valboolean = Vx_Data_File.f_boolean_write_from_file_string(context, filehtml, shtml)
    output = output && valboolean.vx_boolean()
    return output
  }

}
