import java.util.*;
import java.util.concurrent.CompletableFuture;
import static org.junit.jupiter.api.Assertions.*;
import com.vxlisp.vx.*;
import com.vxlisp.vx.data.File;
import com.vxlisp.vx.Test;
import com.vxlisp.vx.web.Html;

public final class TestLib {


  public static String spath = Core.c_path_test_resources.vx_string();

  public static File.Type_file file_test(final File.Type_file file) {
    final File.Type_file output = Core.vx_copy(
      file,
      Core.vx_new_string(":path"),
      Core.vx_new_string(spath)
    );
    return output;
  }

  public static String read_test_file(final String path, final String filename) {
    File.Type_file file = Core.vx_new(
      File.t_file,
      Core.vx_new_string(":path"),
      Core.vx_new_string(path),
      Core.vx_new_string(":name"),
      Core.vx_new_string(filename)
    );
    Core.Type_string string_file = File.vx_string_read_from_file(file);
    final String output = string_file.vx_string();
    return output;
  }

  public static Test.Type_testdescribe sample_testdescribe1(final Core.Type_context context) {
    Test.Type_testdescribe output = Core.vx_new(
      Test.t_testdescribe,
      Core.vx_new_string(":describename"),
      Core.vx_new_string("(test-true true)"),
      Core.vx_new_string(":testpkg"),
      Core.vx_new_string("vx/core"),
      Core.vx_new_string(":testresult"),
      TestLib.sample_testresult1(context)
    );
    return output;
  }

  public static Test.Type_testdescribe sample_testdescribe2(final Core.Type_context context) {
    Test.Type_testdescribe output = Core.vx_new(
      Test.t_testdescribe,
      Core.vx_new_string(":describename"),
      Core.vx_new_string("(test-false false)"),
      Core.vx_new_string(":testpkg"),
      Core.vx_new_string("vx/core"),
      Core.vx_new_string(":testresult"),
      TestLib.sample_testresult2(context)
    );
    return output;
  }

  public static Test.Type_testdescribelist sample_testdescribelist(final Core.Type_context context) {
    Test.Type_testdescribelist output = Core.vx_any_from_any(
      Test.t_testdescribelist,
      Test.t_testdescribelist.vx_new(
        TestLib.sample_testdescribe1(context),
        TestLib.sample_testdescribe2(context)
      )
    );
    return output;
  }

  public static Test.Type_testresult sample_testresult1(final Core.Type_context context) {
    Test.Type_testresult output = Test.f_test_true(
      context,
      Core.vx_new_boolean(true)
    );
    return output;
  }

  public static Test.Type_testresult sample_testresult2(final Core.Type_context context) {
    Test.Type_testresult output = Test.f_test_false(
      context,
      Core.vx_new_boolean(false)
    );
    return output;
  }

  public static boolean test(final String testname, final String expected, final String actual) {
    assertEquals(expected, actual);
    boolean output = false;
    if (expected.equals(actual)) {
      System.out.println("Test Pass: " + testname);
      output = true;
    } else {
      System.out.println("Test Fail: " + testname);
      System.out.println(expected);
      System.out.println(actual);
    }
    return output;
  }

  public static boolean test_helloworld() {
    final String testname = "test_helloworld";
    final Core.Type_string helloworld = Core.vx_new_string("Hello World");
    final String expected = "Hello World";
    final String actual = helloworld.vx_string();
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static boolean test_async_new_from_value() {
    final String testname = "test_async_new_from_value";
    final Core.Type_string helloworld = Core.vx_new_string("Hello World");
    final CompletableFuture<Core.Type_string> async = Core.vx_async_new_from_value(helloworld);
    final Core.Type_string sync = Core.vx_sync_from_async(Core.t_string, async);
    final String expected = "Hello World";
    final String actual = sync.vx_string();
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static boolean test_async_from_async_fn() {
    final String testname = "test_async_from_async_fn";
    final Core.Type_string helloworld = Core.vx_new_string("Hello World");
    CompletableFuture<Core.Type_string> async = Core.vx_async_new_from_value(helloworld);
    CompletableFuture<Core.Type_string> async1 = Core.vx_async_from_async_fn(
      Core.t_string,
      async,
      (any) -> {
        return any;
      }
    );
    final Core.Type_string sync = Core.vx_sync_from_async(Core.t_string, async1);
    final String expected = "Hello World";
    final String actual = sync.vx_string();
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static boolean test_list_from_list_async() {
    final String testname = "test_list_from_list_async";
    final Core.Type_anylist sparams = Core.vx_anylist_from_arraystring("hello", "world");
    final Core.Type_stringlist slist = Core.f_new_from_type(Core.t_stringlist, sparams);
    Core.Func_any_from_any_async fn_async = Core.t_any_from_any_async.vx_fn_new((anyval) -> {
      Core.Type_string stringval = (Core.Type_string)anyval;
      String sout = stringval.vx_string() + "!";
      Core.Type_any outval = Core.vx_new_string(sout);
      CompletableFuture<Core.Type_any> output = Core.vx_async_new_from_value(outval);
      return output;
    });
    final CompletableFuture<Core.Type_stringlist> asynclist = Core.vx_list_from_list_async(Core.t_stringlist, slist, fn_async);
    final Core.Type_stringlist sync = Core.vx_sync_from_async(Core.t_stringlist, asynclist);
    final String expected = "(stringlist\n \"hello!\"\n \"world!\")";
    final String actual = Core.vx_string_from_any(sync);
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static Boolean test_run_testresult(final Core.Type_context context) {
    final String testname = "test_run_testresult";
    Test.Type_testresult testresult = TestLib.sample_testresult1(context);
    Test.Type_testresult testresult_resolved = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    );
    String expected = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testresult.txt"
    );
    String actual = Core.vx_string_from_any(testresult_resolved);
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static Boolean test_run_testdescribe(final Core.Type_context context) {
    final String testname = "test_run_testdescribe";
    final Test.Type_testdescribe testdescribe = TestLib.sample_testdescribe1(context);
    final Test.Type_testdescribe testdescribe_resolved = TestLib.run_testdescribe(
      "vx/core",
      "boolean",
      testdescribe
    );
    String expected = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribe.txt"
    );
    String actual = Core.vx_string_from_any(
      testdescribe_resolved
    );
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static Boolean test_run_testdescribelist(final Core.Type_context context) {
    final String testname = "test_run_testdescribelist";
    Test.Type_testresult testresult = TestLib.sample_testresult1(context);
    Test.Type_testresult testresult_resolved = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    );
    String expected = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribelist.txt"
    );
    String actual = Core.vx_string_from_any(testresult_resolved);
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static Boolean test_run_testresult_async(final Core.Type_context context) {
    final String testname = "test_run_testresult_async";
    Test.Type_testresult testresult = TestLib.sample_testresult1(context);
    Test.Type_testresult testresult_resolved = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    );
    String expected = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testresult_async.txt"
    );
    String actual = Core.vx_string_from_any(testresult_resolved);
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static Boolean test_run_testdescribelist_async(final Core.Type_context context) {
    final String testname = "test_run_testdescribelist_async";
    Test.Type_testdescribelist testdescribelist = TestLib.sample_testdescribelist(context);
    Test.Type_testdescribelist testdescribelist_resolved = TestLib.run_testdescribelist(
      "vx/core",
      "boolean",
      testdescribelist
    );
    String expected = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribelist_async.txt"
    );
    String actual = Core.vx_string_from_any(
      testdescribelist_resolved
    );
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static boolean test_pathfull_from_file() {
    final String testname = "test_pathfull_from_file";
    File.Type_file file = Core.vx_new(
      File.t_file,
      Core.vx_new_string(":path"), Core.vx_new_string(spath + "/vx"),
      Core.vx_new_string(":name"), Core.vx_new_string("string_read_from_file.txt"));
    Core.Type_string string_path = File.f_pathfull_from_file(file);
    String expected = spath + "/vx/string_read_from_file.txt";
    String actual = string_path.vx_string();
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static boolean test_read_file() {
    final String testname = "test_read_file";
    String expected = "testdata";
    String actual = read_test_file(spath + "/vx", "string_read_from_file.txt");
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static boolean test_write_file() {
    final String testname = "test_write_file";
    File.Type_file file = Core.vx_new(
      File.t_file, 
      Core.vx_new_string(":path"), Core.vx_new_string(spath + "/vx"),
      Core.vx_new_string(":name"), Core.vx_new_string("string_read_from_file.txt")
    );
    Core.Type_string string_path = File.f_pathfull_from_file(file);
    String expected = spath + "/vx/string_read_from_file.txt";
    String actual = string_path.vx_string();
    final boolean output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static Test.Type_testcase run_testcase(final Test.Type_testcase testcase) {
    final Core.Type_string testpkg = testcase.testpkg();
    final String stestpkg = testpkg.vx_string();
    final Core.Type_string casename = testcase.casename();
    final String scasename = casename.vx_string();
    final Test.Type_testdescribelist testdescribelist = testcase.describelist();
    final Test.Type_testdescribelist testdescribelist_resolved = TestLib.run_testdescribelist(
      stestpkg,
      scasename,
      testdescribelist
    );
    final Test.Type_testcase output = Core.vx_copy(
      testcase,
      Core.vx_new_string(":describelist"),
      testdescribelist_resolved
    );
    return output;
  }

  // Blocking
  // Only use if running a single testcase
  public static Test.Type_testcase run_testcase_async(final Test.Type_testcase testcase) {
    CompletableFuture<Test.Type_testcase> async_testcase = Test.f_resolve_testcase(testcase);
    Test.Type_testcase testcase_resolved = Core.vx_sync_from_async(
      Test.t_testcase,
      async_testcase
    );
    final Test.Type_testcase output = TestLib.run_testcase(testcase_resolved);
    return output;
  }

  public static Test.Type_testcaselist run_testcaselist(final Test.Type_testcaselist testcaselist) {
    final List<Test.Type_testcase> listtestcase = testcaselist.vx_listtestcase();
    List<Test.Type_testcase> listtestcase_resolved = new ArrayList<Test.Type_testcase>();
    for (Test.Type_testcase testcase : listtestcase) {
      final Test.Type_testcase testcase_resolved = TestLib.run_testcase(testcase);
      listtestcase_resolved.add(testcase_resolved);
    }
    final Test.Type_testcaselist output = Core.vx_any_from_any(
      Test.t_testcaselist,
      testcaselist.vx_new(
        listtestcase_resolved
      )
    );
    return output;
  }

  public static Test.Type_testdescribe run_testdescribe(final String testpkg, final String casename, final Test.Type_testdescribe describe) {
    final Core.Type_string testcode = describe.describename();
    final String message = testcode.vx_string();
    final Test.Type_testresult testresult = describe.testresult();
    final Test.Type_testdescribe output = Core.vx_copy(
      describe,
      ":testresult",
      TestLib.run_testresult(
        testpkg,
        casename,
        message,
        testresult
      )
    );
    return output;
  }

  public static Test.Type_testdescribelist run_testdescribelist(final String testpkg, final String casename, final Test.Type_testdescribelist testdescribelist) {
    final List<Test.Type_testdescribe> listtestdescribe = testdescribelist.vx_listtestdescribe();
    List<Test.Type_testdescribe> listtestdescribe_resolved = new ArrayList<Test.Type_testdescribe>();
    for (Test.Type_testdescribe testdescribe : listtestdescribe) {
      final Test.Type_testdescribe testdescribe_resolved = TestLib.run_testdescribe(
        testpkg,
        casename,
        testdescribe
      );
      listtestdescribe_resolved.add(testdescribe_resolved);
    }
    final Test.Type_testdescribelist output = Core.vx_any_from_any(
      Test.t_testdescribelist,
      testdescribelist.vx_new(
        listtestdescribe_resolved
      )
    );
    return output;
  }

  public static Test.Type_testpackage run_testpackage(final Test.Type_testpackage testpackage) {
    final Test.Type_testcaselist testcaselist = testpackage.caselist();
    final Test.Type_testcaselist testcaselist_resolved = TestLib.run_testcaselist(testcaselist);
    final Test.Type_testpackage output = Core.vx_copy(
      testpackage,
      Core.vx_new_string(":caselist"),
      testcaselist_resolved
    );
    return output;
  }

  // Blocking
  // This is the preferred way of calling test (1 block per package)
  public static Test.Type_testpackage run_testpackage_async(final Test.Type_testpackage testpackage) {
    CompletableFuture<Test.Type_testpackage> async_testpackage = Test.f_resolve_testpackage(testpackage);
    Test.Type_testpackage testpackage_resolved = Core.vx_sync_from_async(Test.t_testpackage, async_testpackage);
    Test.Type_testpackage output = TestLib.run_testpackage(testpackage_resolved);
    return output;
  }

  public static Test.Type_testresult run_testresult(final String testpkg, final String testname, final String message, final Test.Type_testresult testresult) {
    Core.Type_any valexpected = testresult.expected();
    Core.Type_any valactual = testresult.actual();
    boolean passfail = testresult.passfail().vx_boolean();
    String code = testresult.code().vx_string();
    String expected = Core.f_string_from_any(valexpected).vx_string();
    String actual = Core.f_string_from_any(valactual).vx_string();
    String msg = testpkg + "/" + testname + " " + message;
    if ((!passfail)) {
      System.out.println(msg);
      System.out.println(expected);
      System.out.println(actual);
      Core.f_log(testresult);
    }
    if ((code.equals(":ne"))) {
      assertNotEquals(expected, actual, msg);
    } else {
      assertEquals(expected, actual, msg);
    }
    final Test.Type_testresult output = testresult;
    return output;
  }

  // Blocking
  // This is the preferred way of writing testsuite (1 block per testsuite)
  public static boolean write_testpackagelist_async(final Core.Type_context context, final Test.Type_testpackagelist testpackagelist) {
    boolean output = false;
    CompletableFuture<Test.Type_testpackagelist> async_testpackagelist = Test.f_resolve_testpackagelist(testpackagelist);
    Test.Type_testpackagelist testpackagelist_resolved = Core.vx_sync_from_async(Test.t_testpackagelist, async_testpackagelist);
    File.Type_file filetest = file_test(Test.f_file_test());
    Core.Type_boolean valboolean = File.f_boolean_write_from_file_any(context, filetest, testpackagelist_resolved);
    output = valboolean.vx_boolean();
    Html.Type_div divtest = Test.f_div_from_testpackagelist(testpackagelist_resolved);
    Html.Type_html htmlnode = Test.f_html_from_divtest(divtest);
    File.Type_file filenode = file_test(Test.f_file_testnode());
    valboolean = File.f_boolean_write_from_file_any(context, filenode, htmlnode);
    output = output && valboolean.vx_boolean();
    File.Type_file filehtml = file_test(Test.f_file_testhtml());
    Core.Type_string shtml = Html.f_string_from_html(htmlnode);
    valboolean = File.f_boolean_write_from_file_string(context, filehtml, shtml);
    output = output && valboolean.vx_boolean();
    return output;
  }

}
