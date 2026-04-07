/**
 * Unit test for whole App.
 */
import Vx
import VxTest
import TestLib


public enum AppTest {


  static func main(_ args : [String]) {
    Vx.initialize()
    test_basics(context)
    test_writetestsuite(context)
  }

  public static let arglist : any Vx_Core.Type_anylist = Vx_Core.e_anylist
  public static let context : any Vx_Core.Type_context = Vx_Translation_En.f_context_test(arglist)

  public static func test_basics(
    _ context : Vx_Core.Type_context
  ) {
    TestLib.test_helloworld()
    TestLib.test_async_new_from_value()
    TestLib.test_async_from_async_fn()
    TestLib.test_list_from_list_async()
    TestLib.test_pathfull_from_file()
    TestLib.test_read_file()
    TestLib.test_write_file()
    TestLib.test_run_testresult(context)
    TestLib.test_run_testdescribe(context)
    TestLib.test_run_testdescribelist(context)
    TestLib.test_run_testresult_async(context)
  }

  public static func test_writetestsuite(
    _ context : Vx_Core.Type_context
  ) {
    var testpackagelist : any Vx_Test.Type_testpackagelist = Vx_Core.vx_new(
      Vx_Test.t_testpackagelist,
      Vx_CoreTest.test_package(context),
      Vx_EventTest.test_package(context),
      Vx_TypeTest.test_package(context),
      Vx_Web_HtmlTest.test_package(context),
      Vx_CollectionTest.test_package(context),
      Vx_Data_FileTest.test_package(context),
      Vx_TestTest.test_package(context),
      Vx_TranslateTest.test_package(context),
      Vx_Translation_EnTest.test_package(context)
    )
    TestLib.write_testpackagelist_async(context, testpackagelist)
  }

}

AppTest.main(CommandLine.arguments)
