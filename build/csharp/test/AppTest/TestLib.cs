using Xunit;

namespace AppTest;

public static class TestLib {


  public class TestOutputWriter : TextWriter {

    private readonly Xunit.Abstractions.ITestOutputHelper _output;

    public TestOutputWriter(Xunit.Abstractions.ITestOutputHelper output) {
      _output = output;
    }

    public override System.Text.Encoding Encoding => System.Text.Encoding.UTF8;

			 public override void WriteLine(int message) {
				  _output.WriteLine("" + message);
  		}

  		public override void WriteLine(string? message) {
  				_output.WriteLine(message);
  		}

  }

  public static bool EnableConsole(
    Xunit.Abstractions.ITestOutputHelper output) {
    TestOutputWriter converter = new TestOutputWriter(output);
    System.Console.SetOut(converter);
    return true;
  }

  public static string spath = Vx.Core.c_path_test_resources.vx_string();

  public static Vx.Data.File.Type_file file_test(Vx.Data.File.Type_file file) {
    Vx.Data.File.Type_file output = Vx.Core.vx_copy(
      file,
      Vx.Core.vx_new_string(":path"),
      Vx.Core.vx_new_string(spath)
    );
    return output;
  }

  public static string read_test_file(string path, string filename) {
    Vx.Data.File.Type_file file = Vx.Core.vx_new(
      Vx.Data.File.t_file,
      Vx.Core.vx_new_string(":path"),
      Vx.Core.vx_new_string(path),
      Vx.Core.vx_new_string(":name"),
      Vx.Core.vx_new_string(filename)
    );
    Vx.Core.Type_string string_file = Vx.Data.File.vx_string_read_from_file(file);
    string output = string_file.vx_string();
    return output;
  }

  public static Vx.Test.Type_testdescribe sample_testdescribe1(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      Vx.Core.vx_new_string(":describename"),
      Vx.Core.vx_new_string("(test-true true)"),
      Vx.Core.vx_new_string(":testpkg"),
      Vx.Core.vx_new_string("vx/core"),
      Vx.Core.vx_new_string(":testresult"),
      TestLib.sample_testresult1(context)
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe sample_testdescribe2(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribe output = Vx.Core.vx_new(
      Vx.Test.t_testdescribe,
      Vx.Core.vx_new_string(":describename"),
      Vx.Core.vx_new_string("(test-false false)"),
      Vx.Core.vx_new_string(":testpkg"),
      Vx.Core.vx_new_string("vx/core"),
      Vx.Core.vx_new_string(":testresult"),
      TestLib.sample_testresult2(context)
    );
    return output;
  }

  public static Vx.Test.Type_testdescribelist sample_testdescribelist(Vx.Core.Type_context context) {
    Vx.Test.Type_testdescribelist output = Vx.Core.vx_any_from_any(
      Vx.Test.t_testdescribelist,
      Vx.Test.t_testdescribelist.vx_new(
        TestLib.sample_testdescribe1(context),
        TestLib.sample_testdescribe2(context)
      )
    );
    return output;
  }

  public static Vx.Test.Type_testresult sample_testresult1(Vx.Core.Type_context context) {
    Vx.Test.Type_testresult output = Vx.Test.f_test_true(
      context,
      Vx.Core.vx_new_boolean(true)
    );
    return output;
  }

  public static Vx.Test.Type_testresult sample_testresult2(Vx.Core.Type_context context) {
    Vx.Test.Type_testresult output = Vx.Test.f_test_false(
      context,
      Vx.Core.vx_new_boolean(false)
    );
    return output;
  }

  public static bool test(string testname, string expected, string actual) {
    Assert.Equal(expected, actual);
    bool output = false;
    if (expected == actual) {
      System.Console.WriteLine("Test Pass: " + testname);
      output = true;
    } else {
      System.Console.WriteLine("Test Fail: " + testname);
      System.Console.WriteLine(expected);
      System.Console.WriteLine(actual);
    }
    return output;
  }

  public static bool test_helloworld() {
    string testname = "test_helloworld";
    Vx.Core.Type_string helloworld = Vx.Core.vx_new_string("Hello World");
    string expected = "Hello World";
    string actual = helloworld.vx_string();
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_async_new_from_value() {
    string testname = "test_async_new_from_value";
    Vx.Core.Type_string helloworld = Vx.Core.vx_new_string("Hello World");
    Task<Vx.Core.Type_string> async = Vx.Core.vx_async_new_from_value(helloworld);
    Vx.Core.Type_string sync = Vx.Core.vx_sync_from_async(Vx.Core.t_string, async);
    string expected = "Hello World";
    string actual = sync.vx_string();
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_async_from_async_fn() {
    string testname = "test_async_from_async_fn";
    Vx.Core.Type_string helloworld = Vx.Core.vx_new_string("Hello World");
    Task<Vx.Core.Type_string> async = Vx.Core.vx_async_new_from_value(helloworld);
    Task<Vx.Core.Type_string> async1 = Vx.Core.vx_async_from_async_fn(
      Vx.Core.t_string,
      async,
      (any) => {
       	return any;
      }
    );
    Vx.Core.Type_string sync = Vx.Core.vx_sync_from_async(Vx.Core.t_string, async1);
    string expected = "Hello World";
    string actual = sync.vx_string();
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_list_from_list_async() {
    string testname = "test_list_from_list_async";
    Vx.Core.Type_anylist sparams = Vx.Core.vx_anylist_from_arraystring("hello", "world");
    Vx.Core.Type_stringlist slist = Vx.Core.f_new_from_type(Vx.Core.t_stringlist, sparams);
    Vx.Core.Func_any_from_any_async fn_async = Vx.Core.t_any_from_any_async.vx_fn_new((anyval) => {
      Vx.Core.Type_string stringval = (Vx.Core.Type_string)anyval;
      string sout = stringval.vx_string() + "!";
      Vx.Core.Type_any outval = Vx.Core.vx_new_string(sout);
      Task<Vx.Core.Type_any> output = Vx.Core.vx_async_new_from_value(outval);
      return output;
    });
    Task<Vx.Core.Type_stringlist> asynclist = Vx.Core.vx_list_from_list_async(Vx.Core.t_stringlist, slist, fn_async);
    Vx.Core.Type_stringlist sync = Vx.Core.vx_sync_from_async(Vx.Core.t_stringlist, asynclist);
    string expected = "(stringlist\n \"hello!\"\n \"world!\")";
    string actual = Vx.Core.vx_string_from_any(sync);
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_run_testresult(Vx.Core.Type_context context) {
    string testname = "test_run_testresult";
    Vx.Test.Type_testresult testresult = TestLib.sample_testresult1(context);
    Vx.Test.Type_testresult testresult_resolved = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    );
    string expected = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testresult.txt"
    );
    string actual = Vx.Core.vx_string_from_any(testresult_resolved);
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_run_testdescribe(Vx.Core.Type_context context) {
    string testname = "test_run_testdescribe";
    Vx.Test.Type_testdescribe testdescribe = TestLib.sample_testdescribe1(context);
    Vx.Test.Type_testdescribe testdescribe_resolved = TestLib.run_testdescribe(
      "vx/core",
      "boolean",
      testdescribe
    );
    string expected = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribe.txt"
    );
    string actual = Vx.Core.vx_string_from_any(
      testdescribe_resolved
    );
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_run_testdescribelist(Vx.Core.Type_context context) {
    string testname = "test_run_testdescribelist";
    Vx.Test.Type_testresult testresult = TestLib.sample_testresult1(context);
    Vx.Test.Type_testresult testresult_resolved = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    );
    string expected = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribelist.txt"
    );
    string actual = Vx.Core.vx_string_from_any(testresult_resolved);
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_run_testresult_async(Vx.Core.Type_context context) {
    string testname = "test_run_testresult_async";
    Vx.Test.Type_testresult testresult = TestLib.sample_testresult1(context);
    Vx.Test.Type_testresult testresult_resolved = TestLib.run_testresult(
      "vx/core",
      "boolean",
      "",
      testresult
    );
    string expected = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testresult_async.txt"
    );
    string actual = Vx.Core.vx_string_from_any(testresult_resolved);
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_run_testdescribelist_async(Vx.Core.Type_context context) {
    string testname = "test_run_testdescribelist_async";
    Vx.Test.Type_testdescribelist testdescribelist = TestLib.sample_testdescribelist(context);
    Vx.Test.Type_testdescribelist testdescribelist_resolved = TestLib.run_testdescribelist(
      "vx/core",
      "boolean",
      testdescribelist
    );
    string expected = TestLib.read_test_file(
      spath + "/vx",
      "test_run_testdescribelist_async.txt"
    );
    string actual = Vx.Core.vx_string_from_any(
      testdescribelist_resolved
    );
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_pathfull_from_file() {
    string testname = "test_pathfull_from_file";
    Vx.Data.File.Type_file file = Vx.Core.vx_new(
      Vx.Data.File.t_file,
      Vx.Core.vx_new_string(":path"), Vx.Core.vx_new_string(spath + "/vx"),
      Vx.Core.vx_new_string(":name"), Vx.Core.vx_new_string("string_read_from_file.txt"));
    Vx.Core.Type_string string_path = Vx.Data.File.f_pathfull_from_file(file);
    string expected = spath + "/vx/string_read_from_file.txt";
    string actual = string_path.vx_string();
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_read_file() {
    string testname = "test_read_file";
    string expected = "testdata";
    string actual = read_test_file(spath + "/vx", "string_read_from_file.txt");
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static bool test_write_file() {
    string testname = "test_write_file";
    Vx.Data.File.Type_file file = Vx.Core.vx_new(
      Vx.Data.File.t_file, 
      Vx.Core.vx_new_string(":path"), Vx.Core.vx_new_string(spath + "/vx"),
      Vx.Core.vx_new_string(":name"), Vx.Core.vx_new_string("string_read_from_file.txt")
    );
    Vx.Core.Type_string string_path = Vx.Data.File.f_pathfull_from_file(file);
    string expected = spath + "/vx/string_read_from_file.txt";
    string actual = string_path.vx_string();
    bool output = TestLib.test(
      testname,
      expected,
      actual
    );
    return output;
  }

  public static Vx.Test.Type_testcase run_testcase(Vx.Test.Type_testcase testcase) {
    Vx.Core.Type_string testpkg = testcase.testpkg();
    string stestpkg = testpkg.vx_string();
    Vx.Core.Type_string casename = testcase.casename();
    string scasename = casename.vx_string();
    Vx.Test.Type_testdescribelist testdescribelist = testcase.describelist();
    Vx.Test.Type_testdescribelist testdescribelist_resolved = TestLib.run_testdescribelist(
      stestpkg,
      scasename,
      testdescribelist
    );
    Vx.Test.Type_testcase output = Vx.Core.vx_copy(
      testcase,
      Vx.Core.vx_new_string(":describelist"),
      testdescribelist_resolved
    );
    return output;
  }

  // Blocking
  // Only use if running a single testcase
  public static Vx.Test.Type_testcase run_testcase_async(Vx.Test.Type_testcase testcase) {
    Task<Vx.Test.Type_testcase> async_testcase = Vx.Test.f_resolve_testcase(testcase);
    Vx.Test.Type_testcase testcase_resolved = Vx.Core.vx_sync_from_async(
      Vx.Test.t_testcase,
      async_testcase
    );
    Vx.Test.Type_testcase output = TestLib.run_testcase(testcase_resolved);
    return output;
  }

  public static Vx.Test.Type_testcaselist run_testcaselist(Vx.Test.Type_testcaselist testcaselist) {
    List<Vx.Test.Type_testcase> listtestcase = testcaselist.vx_listtestcase();
    List<Vx.Test.Type_testcase> listtestcase_resolved = new List<Vx.Test.Type_testcase>();
    foreach (Vx.Test.Type_testcase testcase in listtestcase) {
      Vx.Test.Type_testcase testcase_resolved = TestLib.run_testcase(testcase);
      listtestcase_resolved.Add(testcase_resolved);
    }
    Vx.Test.Type_testcaselist output = Vx.Core.vx_any_from_any(
      Vx.Test.t_testcaselist,
      testcaselist.vx_new(
        listtestcase_resolved
      )
    );
    return output;
  }

  public static Vx.Test.Type_testdescribe run_testdescribe(string testpkg, string casename, Vx.Test.Type_testdescribe describe) {
    Vx.Core.Type_string testcode = describe.describename();
    string message = testcode.vx_string();
    Vx.Test.Type_testresult testresult = describe.testresult();
    Vx.Test.Type_testdescribe output = Vx.Core.vx_copy(
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

  public static Vx.Test.Type_testdescribelist run_testdescribelist(string testpkg, string casename, Vx.Test.Type_testdescribelist testdescribelist) {
    List<Vx.Test.Type_testdescribe> listtestdescribe = testdescribelist.vx_listtestdescribe();
    List<Vx.Test.Type_testdescribe> listtestdescribe_resolved = new List<Vx.Test.Type_testdescribe>();
    foreach (Vx.Test.Type_testdescribe testdescribe in listtestdescribe) {
      Vx.Test.Type_testdescribe testdescribe_resolved = TestLib.run_testdescribe(
        testpkg,
        casename,
        testdescribe
      );
      listtestdescribe_resolved.Add(testdescribe_resolved);
    }
    Vx.Test.Type_testdescribelist output = Vx.Core.vx_any_from_any(
      Vx.Test.t_testdescribelist,
      testdescribelist.vx_new(
        listtestdescribe_resolved
      )
    );
    return output;
  }

  public static Vx.Test.Type_testpackage run_testpackage(Vx.Test.Type_testpackage testpackage) {
    Vx.Test.Type_testcaselist testcaselist = testpackage.caselist();
    Vx.Test.Type_testcaselist testcaselist_resolved = TestLib.run_testcaselist(testcaselist);
    Vx.Test.Type_testpackage output = Vx.Core.vx_copy(
      testpackage,
      Vx.Core.vx_new_string(":caselist"),
      testcaselist_resolved
    );
    return output;
  }

  // Blocking
  // This is the preferred way of calling test (1 block per package)
  public static Vx.Test.Type_testpackage run_testpackage_async(Vx.Test.Type_testpackage testpackage) {
    Task<Vx.Test.Type_testpackage> async_testpackage = Vx.Test.f_resolve_testpackage(testpackage);
    Vx.Test.Type_testpackage testpackage_resolved = Vx.Core.vx_sync_from_async(Vx.Test.t_testpackage, async_testpackage);
    Vx.Test.Type_testpackage output = TestLib.run_testpackage(testpackage_resolved);
    return output;
  }

  public static Vx.Test.Type_testresult run_testresult(string testpkg, string testname, string message, Vx.Test.Type_testresult testresult) {
    Vx.Core.Type_any valexpected = testresult.expected();
    Vx.Core.Type_any valactual = testresult.actual();
    bool passfail = testresult.passfail().vx_boolean();
    string code = testresult.code().vx_string();
    string expected = Vx.Core.f_string_from_any(valexpected).vx_string();
    string actual = Vx.Core.f_string_from_any(valactual).vx_string();
    string msg = testpkg + "/" + testname + " " + message;
    if ((!passfail)) {
      System.Console.WriteLine(msg);
      System.Console.WriteLine(expected);
      System.Console.WriteLine(actual);
      Vx.Core.f_log(testresult);
    }
    if ((code == ":ne")) {
      Assert.NotEqual(expected, actual);
    } else {
      Assert.Equal(expected, actual);
    }
    Vx.Test.Type_testresult output = testresult;
    return output;
  }

  // Blocking
  // This is the preferred way of writing testsuite (1 block per testsuite)
  public static bool write_testpackagelist_async(Vx.Core.Type_context context, Vx.Test.Type_testpackagelist testpackagelist) {
    bool output = false;
    Task<Vx.Test.Type_testpackagelist> async_testpackagelist = Vx.Test.f_resolve_testpackagelist(testpackagelist);
    Vx.Test.Type_testpackagelist testpackagelist_resolved = Vx.Core.vx_sync_from_async(Vx.Test.t_testpackagelist, async_testpackagelist);
    Vx.Data.File.Type_file filetest = file_test(Vx.Test.f_file_test());
    Vx.Core.Type_boolean valboolean = Vx.Data.File.f_boolean_write_from_file_any(context, filetest, testpackagelist_resolved);
    output = valboolean.vx_boolean();
    Vx.Web.Html.Type_div divtest = Vx.Test.f_div_from_testpackagelist(testpackagelist_resolved);
    Vx.Web.Html.Type_html htmlnode = Vx.Test.f_html_from_divtest(divtest);
    Vx.Data.File.Type_file filenode = file_test(Vx.Test.f_file_testnode());
    valboolean = Vx.Data.File.f_boolean_write_from_file_any(context, filenode, htmlnode);
    output = output && valboolean.vx_boolean();
    Vx.Data.File.Type_file filehtml = file_test(Vx.Test.f_file_testhtml());
    Vx.Core.Type_string shtml = Vx.Web.Html.f_string_from_html(htmlnode);
    valboolean = Vx.Data.File.f_boolean_write_from_file_string(context, filehtml, shtml);
    output = output && valboolean.vx_boolean();
    return output;
  }

}
