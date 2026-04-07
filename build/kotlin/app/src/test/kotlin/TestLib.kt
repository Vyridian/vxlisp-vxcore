import java.util.*
import java.util.concurrent.CompletableFuture
import org.junit.jupiter.api.Assertions.*
import com.vxlisp.vx.*
import com.vxlisp.vx.data.*
import com.vxlisp.vx.web.*

object TestLib {


  val spath : String = vx_core.c_path_test_resources.vx_string()

  fun file_test(file : vx_data_file.Type_file) : vx_data_file.Type_file {
    val output : vx_data_file.Type_file = vx_core.vx_copy(
      file,
      vx_core.vx_new_string(":path"),
      vx_core.vx_new_string(spath)
    )
    return output
  }

  fun read_test_file(path : String, filename : String) : String {
    var file : vx_data_file.Type_file = vx_core.vx_new(
      vx_data_file.t_file,
      vx_core.vx_new_string(":path"),
      vx_core.vx_new_string(path),
      vx_core.vx_new_string(":name"),
      vx_core.vx_new_string(filename)
    )
    var string_file : vx_core.Type_string = vx_data_file.vx_string_read_from_file(file)
    val output : String = string_file.vx_string()
    return output
  }

  fun sample_testdescribe1(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      vx_core.vx_new_string(":describename"),
      vx_core.vx_new_string("(test-true true)"),
      vx_core.vx_new_string(":testpkg"),
      vx_core.vx_new_string("vx/core"),
      vx_core.vx_new_string(":testresult"),
      TestLib.sample_testresult1(context)
    )
    return output
  }

  fun sample_testdescribe2(context : vx_core.Type_context) : vx_test.Type_testdescribe {
    var output : vx_test.Type_testdescribe = vx_core.vx_new(
      vx_test.t_testdescribe,
      vx_core.vx_new_string(":describename"),
      vx_core.vx_new_string("(test-false false)"),
      vx_core.vx_new_string(":testpkg"),
      vx_core.vx_new_string("vx/core"),
      vx_core.vx_new_string(":testresult"),
      TestLib.sample_testresult2(context)
    )
    return output
  }

  fun sample_testdescribelist(context : vx_core.Type_context) : vx_test.Type_testdescribelist {
    var output : vx_test.Type_testdescribelist = vx_core.vx_any_from_any(
      vx_test.t_testdescribelist,
      vx_test.t_testdescribelist.vx_new(
        TestLib.sample_testdescribe1(context),
        TestLib.sample_testdescribe2(context)
      )
    )
    return output
  }

  fun sample_testresult1(context : vx_core.Type_context) : vx_test.Type_testresult {
    var output : vx_test.Type_testresult = vx_test.f_test_true(
      context,
      vx_core.vx_new_boolean(true)
    )
    return output
  }

  fun sample_testresult2(context : vx_core.Type_context) : vx_test.Type_testresult {
    var output : vx_test.Type_testresult = vx_test.f_test_false(
      context,
      vx_core.vx_new_boolean(false)
    )
    return output
  }

  fun test(testname : String, expected : String, actual : String) : Boolean {
    assertEquals(expected, actual)
    var output : Boolean = false
    if (expected.equals(actual)) {
      println("Test Pass: " + testname)
      output = true
    } else {
      println("Test Fail: " + testname)
      println(expected)
      println(actual)
    }
    return output
  }

  fun test_helloworld() : Boolean {
    val testname : String = "test_helloworld"
    val helloworld : vx_core.Type_string = vx_core.vx_new_string("Hello World")
    val expected : String = "Hello World"
    val actual : String = helloworld.vx_string()
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_async_new_from_value() : Boolean {
    val testname : String = "test_async_new_from_value"
    val helloworld : vx_core.Type_string = vx_core.vx_new_string("Hello World")
    val async : CompletableFuture<vx_core.Type_string> = vx_core.vx_async_new_from_value(helloworld)
    val sync : vx_core.Type_string = vx_core.vx_sync_from_async(vx_core.t_string, async)
    val expected : String = "Hello World"
    val actual : String = sync.vx_string()
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_async_from_async_fn() : Boolean {
    val testname : String = "test_async_from_async_fn"
    val helloworld : vx_core.Type_string = vx_core.vx_new_string("Hello World")
    var async : CompletableFuture<vx_core.Type_string> = vx_core.vx_async_new_from_value(helloworld)
    var async1 : CompletableFuture<vx_core.Type_string> = vx_core.vx_async_from_async_fn(
      vx_core.t_string,
      async,
      {any ->
       	any
      }
    )
    val sync : vx_core.Type_string = vx_core.vx_sync_from_async(vx_core.t_string, async1)
    val expected : String = "Hello World"
    val actual : String = sync.vx_string()
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_list_from_list_async() : Boolean {
    val testname : String = "test_list_from_list_async"
    val sparams : vx_core.Type_anylist = vx_core.vx_anylist_from_arraystring("hello", "world")
    val slist : vx_core.Type_stringlist = vx_core.f_new_from_type(vx_core.t_stringlist, sparams)
    val fn_async : vx_core.Func_any_from_any_async = vx_core.t_any_from_any_async.vx_fn_new({
      anyval ->
      val stringval : vx_core.Type_string = anyval as vx_core.Type_string
      val sout : String = stringval.vx_string() + "!"
      val outval : vx_core.Type_any = vx_core.vx_new_string(sout)
      val output : CompletableFuture<vx_core.Type_any> = vx_core.vx_async_new_from_value(outval)
      output
    });
    val asynclist : CompletableFuture<vx_core.Type_stringlist> = vx_core.vx_list_from_list_async(vx_core.t_stringlist, slist, fn_async)
    val sync : vx_core.Type_stringlist = vx_core.vx_sync_from_async(vx_core.t_stringlist, asynclist)
    val expected : String = "(stringlist\n \"hello!\"\n \"world!\")"
    val actual : String = vx_core.vx_string_from_any(sync)
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_run_testresult(context : vx_core.Type_context) : Boolean {
    val testname : String = "test_run_testresult"
    var testresult : vx_test.Type_testresult = TestLib.sample_testresult1(context)
    var testresult_resolved : vx_test.Type_testresult = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    )
    var expected : String = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testresult.txt"
    )
    var actual : String = vx_core.vx_string_from_any(testresult_resolved)
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_run_testdescribe(context : vx_core.Type_context) : Boolean {
    val testname : String = "test_run_testdescribe"
    val testdescribe : vx_test.Type_testdescribe = TestLib.sample_testdescribe1(context)
    val testdescribe_resolved : vx_test.Type_testdescribe = TestLib.run_testdescribe(
      "vx/core",
      "boolean",
      testdescribe
    )
    var expected : String = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribe.txt"
    )
    var actual : String = vx_core.vx_string_from_any(
      testdescribe_resolved
    )
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_run_testdescribelist(context : vx_core.Type_context) : Boolean {
    val testname : String = "test_run_testdescribelist"
    var testresult : vx_test.Type_testresult = TestLib.sample_testresult1(context)
    var testresult_resolved : vx_test.Type_testresult = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    )
    var expected : String = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribelist.txt"
    )
    var actual : String = vx_core.vx_string_from_any(testresult_resolved)
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_run_testresult_async(context : vx_core.Type_context) : Boolean {
    val testname : String = "test_run_testresult_async"
    var testresult : vx_test.Type_testresult = TestLib.sample_testresult1(context)
    var testresult_resolved : vx_test.Type_testresult = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    )
    var expected : String = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testresult_async.txt"
    )
    var actual : String = vx_core.vx_string_from_any(testresult_resolved)
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_run_testdescribelist_async(context : vx_core.Type_context) : Boolean {
    val testname : String = "test_run_testdescribelist_async"
    var testdescribelist : vx_test.Type_testdescribelist = TestLib.sample_testdescribelist(context)
    var testdescribelist_resolved : vx_test.Type_testdescribelist = TestLib.run_testdescribelist(
      "vx/core",
      "boolean",
      testdescribelist
    )
    var expected : String = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribelist_async.txt"
    )
    var actual : String = vx_core.vx_string_from_any(
      testdescribelist_resolved
    )
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_pathfull_from_file() : Boolean {
    val testname : String = "test_pathfull_from_file"
    var file : vx_data_file.Type_file = vx_core.vx_new(
      vx_data_file.t_file,
      vx_core.vx_new_string(":path"), vx_core.vx_new_string(spath + "/vx"),
      vx_core.vx_new_string(":name"), vx_core.vx_new_string("string_read_from_file.txt"))
    var string_path : vx_core.Type_string = vx_data_file.f_pathfull_from_file(file)
    var expected : String = spath + "/vx/string_read_from_file.txt"
    var actual : String = string_path.vx_string()
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_read_file() : Boolean {
    val testname : String = "test_read_file"
    var expected : String = "testdata"
    var actual : String = read_test_file(spath + "/vx", "string_read_from_file.txt")
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun test_write_file() : Boolean {
    val testname : String = "test_write_file"
    var file : vx_data_file.Type_file = vx_core.vx_new(
      vx_data_file.t_file, 
      vx_core.vx_new_string(":path"), vx_core.vx_new_string(spath + "/vx"),
      vx_core.vx_new_string(":name"), vx_core.vx_new_string("string_read_from_file.txt")
    )
    var string_path : vx_core.Type_string = vx_data_file.f_pathfull_from_file(file)
    var expected : String = spath + "/vx/string_read_from_file.txt"
    var actual : String = string_path.vx_string()
    val output : Boolean = TestLib.test(
      testname,
      expected,
      actual
    )
    return output
  }

  fun run_testcase(testcase : vx_test.Type_testcase) : vx_test.Type_testcase {
    val testpkg : vx_core.Type_string = testcase.testpkg()
    val stestpkg : String = testpkg.vx_string()
    val casename : vx_core.Type_string = testcase.casename()
    val scasename : String = casename.vx_string()
    val testdescribelist : vx_test.Type_testdescribelist = testcase.describelist()
    val testdescribelist_resolved : vx_test.Type_testdescribelist = TestLib.run_testdescribelist(
      stestpkg,
      scasename,
      testdescribelist
    )
    val output : vx_test.Type_testcase = vx_core.vx_copy(
      testcase,
      vx_core.vx_new_string(":describelist"),
      testdescribelist_resolved
    )
    return output
  }

  // Blocking
  // Only use if running a single testcase
  fun run_testcase_async(testcase : vx_test.Type_testcase) : vx_test.Type_testcase {
    var async_testcase : CompletableFuture<vx_test.Type_testcase> = vx_test.f_resolve_testcase(testcase)
    var testcase_resolved : vx_test.Type_testcase = vx_core.vx_sync_from_async(
      vx_test.t_testcase,
      async_testcase
    )
    val output : vx_test.Type_testcase = TestLib.run_testcase(testcase_resolved)
    return output
  }

  fun run_testcaselist(testcaselist : vx_test.Type_testcaselist) : vx_test.Type_testcaselist {
    val listtestcase : List<vx_test.Type_testcase> = testcaselist.vx_listtestcase()
    var listtestcase_resolved : MutableList<vx_test.Type_testcase> = ArrayList<vx_test.Type_testcase>()
    for (testcase : vx_test.Type_testcase in listtestcase) {
      val testcase_resolved : vx_test.Type_testcase = TestLib.run_testcase(testcase)
      listtestcase_resolved.add(testcase_resolved)
    }
    val output : vx_test.Type_testcaselist = vx_core.vx_any_from_any(
      vx_test.t_testcaselist,
      testcaselist.vx_new(
        listtestcase_resolved
      )
    )
    return output
  }

  fun run_testdescribe(testpkg : String, casename : String, describe : vx_test.Type_testdescribe) : vx_test.Type_testdescribe {
    val testcode : vx_core.Type_string = describe.describename()
    val message : String = testcode.vx_string()
    val testresult : vx_test.Type_testresult = describe.testresult()
    val output : vx_test.Type_testdescribe = vx_core.vx_copy(
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

  fun run_testdescribelist(testpkg : String, casename : String, testdescribelist : vx_test.Type_testdescribelist) : vx_test.Type_testdescribelist {
    val listtestdescribe : List<vx_test.Type_testdescribe> = testdescribelist.vx_listtestdescribe()
    var listtestdescribe_resolved : MutableList<vx_test.Type_testdescribe> = ArrayList<vx_test.Type_testdescribe>()
    for (testdescribe : vx_test.Type_testdescribe in listtestdescribe) {
      val testdescribe_resolved : vx_test.Type_testdescribe = TestLib.run_testdescribe(
        testpkg,
        casename,
        testdescribe
      )
      listtestdescribe_resolved.add(testdescribe_resolved)
    }
    val output : vx_test.Type_testdescribelist = vx_core.vx_any_from_any(
      vx_test.t_testdescribelist,
      testdescribelist.vx_new(
        listtestdescribe_resolved
      )
    )
    return output
  }

  fun run_testpackage(testpackage : vx_test.Type_testpackage) : vx_test.Type_testpackage {
    val testcaselist : vx_test.Type_testcaselist = testpackage.caselist()
    val testcaselist_resolved : vx_test.Type_testcaselist = TestLib.run_testcaselist(testcaselist)
    val output : vx_test.Type_testpackage = vx_core.vx_copy(
      testpackage,
      vx_core.vx_new_string(":caselist"),
      testcaselist_resolved
    )
    return output
  }

  // Blocking
  // This is the preferred way of calling test (1 block per package)
  fun run_testpackage_async(testpackage : vx_test.Type_testpackage) : vx_test.Type_testpackage {
    var async_testpackage : CompletableFuture<vx_test.Type_testpackage> = vx_test.f_resolve_testpackage(testpackage)
    var testpackage_resolved : vx_test.Type_testpackage = vx_core.vx_sync_from_async(vx_test.t_testpackage, async_testpackage)
    var output : vx_test.Type_testpackage = TestLib.run_testpackage(testpackage_resolved)
    return output
  }

  fun run_testresult(testpkg : String, testname : String, message : String, testresult : vx_test.Type_testresult) : vx_test.Type_testresult {
    var valexpected : vx_core.Type_any = testresult.expected()
    var valactual : vx_core.Type_any = testresult.actual()
    var passfail : Boolean = testresult.passfail().vx_boolean()
    var code : String = testresult.code().vx_string()
    var expected : String = vx_core.f_string_from_any(valexpected).vx_string()
    var actual : String = vx_core.f_string_from_any(valactual).vx_string()
    var msg : String = testpkg + "/" + testname + " " + message
    if ((!passfail)) {
      println(msg)
      println(expected)
      println(actual)
      vx_core.f_log(testresult)
    }
    if ((code == ":ne")) {
      assertNotEquals(expected, actual, msg)
    } else {
      assertEquals(expected, actual, msg)
    }
    val output : vx_test.Type_testresult = testresult
    return output
  }

  // Blocking
  // This is the preferred way of writing testsuite (1 block per testsuite)
  fun write_testpackagelist_async(context : vx_core.Type_context, testpackagelist : vx_test.Type_testpackagelist) : Boolean {
    var output : Boolean = false
    var async_testpackagelist : CompletableFuture<vx_test.Type_testpackagelist> = vx_test.f_resolve_testpackagelist(testpackagelist)
    var testpackagelist_resolved : vx_test.Type_testpackagelist = vx_core.vx_sync_from_async(vx_test.t_testpackagelist, async_testpackagelist)
    var filetest : vx_data_file.Type_file = file_test(vx_test.f_file_test())
    var valboolean : vx_core.Type_boolean = vx_data_file.f_boolean_write_from_file_any(context, filetest, testpackagelist_resolved)
    output = valboolean.vx_boolean()
    var divtest : vx_web_html.Type_div = vx_test.f_div_from_testpackagelist(testpackagelist_resolved)
    var htmlnode : vx_web_html.Type_html = vx_test.f_html_from_divtest(divtest)
    var filenode : vx_data_file.Type_file = file_test(vx_test.f_file_testnode())
    valboolean = vx_data_file.f_boolean_write_from_file_any(context, filenode, htmlnode)
    output = output && valboolean.vx_boolean()
    var filehtml : vx_data_file.Type_file = file_test(vx_test.f_file_testhtml())
    var shtml : vx_core.Type_string = vx_web_html.f_string_from_html(htmlnode)
    valboolean = vx_data_file.f_boolean_write_from_file_string(context, filehtml, shtml)
    output = output && valboolean.vx_boolean()
    return output
  }

}
