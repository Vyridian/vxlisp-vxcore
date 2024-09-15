
package com.vxlisp.vx.data;

import com.vxlisp.vx.*;

public final class TreeTest {

  public static Test.Type_testcaselist test_cases(final Core.Type_context context) {
    Test.Type_testcaselist output = Test.e_testcaselist;
    return output;
  }

  public static Test.Type_testcoveragesummary test_coveragesummary() {
    Test.Type_testcoveragesummary output = Core.vx_new(
      Test.t_testcoveragesummary,
      ":testpkg", "vx/data/tree", 
      ":constnums", Core.vx_new(Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 3), 
      ":docnums", Core.vx_new(Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 9), 
      ":funcnums", Core.vx_new(Test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      ":bigospacenums", Core.vx_new(Test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      ":bigotimenums", Core.vx_new(Test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      ":totalnums", Core.vx_new(Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 9), 
      ":typenums", Core.vx_new(Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 6)
    );
    return output;
  }

  public static Test.Type_testcoveragedetail test_coveragedetail() {
    Test.Type_testcoveragedetail output = Core.vx_new(
      Test.t_testcoveragedetail,
      ":testpkg", "vx/data/tree",
      ":typemap", Core.vx_new(
        Core.t_intmap,
        ":branch", 0,
        ":brancharrow", 0,
        ":branchlist", 0,
        ":leaf", 0,
        ":leaflist", 0,
        ":tree", 0
      ), 
      ":constmap", Core.vx_new(
        Core.t_intmap,
        ":brancharrow-down", 0,
        ":brancharrow-up", 0,
        ":brancharrow-updown", 0
      ), 
      ":funcmap", Core.e_intmap
    );
    return output;
  }

  public static Test.Type_testpackage test_package(final Core.Type_context context) {
    Test.Type_testcaselist testcaselist = test_cases(context);
    Test.Type_testpackage output = Core.vx_new(
      Test.t_testpackage,
      ":testpkg", "vx/data/tree", 
      ":caselist", testcaselist,
      ":coveragesummary", test_coveragesummary(),
      ":coveragedetail", test_coveragedetail()
    );
    return output;
  }

}
