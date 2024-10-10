'strict mode'

import vx_data_tree from "../../../src/vx/data/tree.js"
import vx_core from "../../../src/vx/core.js"
import vx_test from "../../../src/vx/test.js"

export default class vx_data_tree_test {


  static test_package(context) {
    const testcaselist = vx_data_tree_test.test_cases(context)
    const output = vx_core.f_new_from_type(
      vx_test.t_testpackage,
      ":testpkg", "vx/data/tree",
      ":caselist", testcaselist,
      ":coveragesummary", vx_data_tree_test.test_coveragesummary(),
      ":coveragedetail", vx_data_tree_test.test_coveragedetail()
    );
    return output;
  }

  static test_coveragesummary() {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcoveragesummary,
      "testpkg",   "vx/data/tree", 
      "constnums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 3), 
      "docnums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 9), 
      "funcnums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      "bigospacenums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      "bigotimenums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      "totalnums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 9), 
      "typenums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 6)
    )
    return output
  }

  static test_coveragedetail() {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcoveragedetail,
      "testpkg", "vx/data/tree",
      "typemap",
        vx_core.f_new_from_type(
          vx_core.t_intmap,
          "branch", 0,
          "brancharrow", 0,
          "branchlist", 0,
          "leaf", 0,
          "leaflist", 0,
          "tree", 0
        ),
      "constmap",
        vx_core.f_new_from_type(
          vx_core.t_intmap,
          "brancharrow-down", 0,
          "brancharrow-up", 0,
          "brancharrow-updown", 0
        ),
      "funcmap",
        vx_core.f_new_from_type(
          vx_core.t_intmap
        )
    )
    return output
  }

  static test_cases(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcaselist
    )
    return output
  }
}
