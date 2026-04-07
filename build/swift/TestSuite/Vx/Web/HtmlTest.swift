
import Vx

public enum Vx_Web_HtmlTest {

  public static func f_string_from_body_indent(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/web/html",
      ":casename", "string<-body-indent",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_string_from_body_indent_testdescribe_1(context),
        f_string_from_body_indent_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_string_from_body_indent_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<body></body>\"\n (string<-body-indent (body) 0))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<body></body>"),
        Vx_Web_Html.f_string_from_body_indent(
          Vx_Core.f_empty(
            Vx_Web_Html.t_body
          ),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func f_string_from_body_indent_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<body>\n  <div></div>\n</body>\"\n (string<-body-indent (body (div)) 0))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<body>\n  <div></div>\n</body>"),
        Vx_Web_Html.f_string_from_body_indent(
          Vx_Core.f_new(
            Vx_Web_Html.t_body,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.f_empty(
                Vx_Web_Html.t_div
              )
            )
          ),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func f_string_from_div_indent(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/web/html",
      ":casename", "string<-div-indent",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_string_from_div_indent_testdescribe_1(context),
        f_string_from_div_indent_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_string_from_div_indent_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<div></div>\"\n (string<-div-indent (div) 0))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<div></div>"),
        Vx_Web_Html.f_string_from_div_indent(
          Vx_Core.f_empty(
            Vx_Web_Html.t_div
          ),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func f_string_from_div_indent_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<div id=\\\"myid\\\"></div>\"\n (string<-div-indent\n  (div :id \"myid\") 0))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<div id=\"myid\"></div>"),
        Vx_Web_Html.f_string_from_div_indent(
          Vx_Core.f_new(
            Vx_Web_Html.t_div,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":id"),
              Vx_Core.vx_new_string("myid")
            )
          ),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func f_string_from_head_indent(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/web/html",
      ":casename", "string<-head-indent",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_string_from_head_indent_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_string_from_head_indent_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<head></head>\"\n (string<-head-indent (head) 0))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<head></head>"),
        Vx_Web_Html.f_string_from_head_indent(
          Vx_Core.f_empty(
            Vx_Web_Html.t_head
          ),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func f_string_from_html(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/web/html",
      ":casename", "string<-html",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_string_from_html_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_string_from_html_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<!DOCTYPE html>\n<html>\n  <head></head>\n  <body></body>\n  <footer></footer>\n</html>\"\n (string<-html\n  (html :head (head) :body (body))))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<!DOCTYPE html>\n<html>\n  <head></head>\n  <body></body>\n  <footer></footer>\n</html>"),
        Vx_Web_Html.f_string_from_html(
          Vx_Core.f_new(
            Vx_Web_Html.t_html,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":head"),
              Vx_Core.f_empty(
                Vx_Web_Html.t_head
              ),
              Vx_Core.vx_new_string(":body"),
              Vx_Core.f_empty(
                Vx_Web_Html.t_body
              )
            )
          )
        )
      )
    )
    return output
  }

  public static func f_string_from_img_indent(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/web/html",
      ":casename", "string<-img-indent",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_string_from_img_indent_testdescribe_1(context),
        f_string_from_img_indent_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_string_from_img_indent_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<img src=\\\"test.svg\\\" />\"\n (string<-img-indent\n  (img :src \"test.svg\")\n  0))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<img src=\"test.svg\" />"),
        Vx_Web_Html.f_string_from_img_indent(
          Vx_Core.f_new(
            Vx_Web_Html.t_img,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":src"),
              Vx_Core.vx_new_string("test.svg")
            )
          ),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func f_string_from_img_indent_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<img id=\\\"myid\\\" src=\\\"test.svg\\\" />\"\n (string<-img-indent\n  (img :id \"myid\" :src \"test.svg\")\n  0))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<img id=\"myid\" src=\"test.svg\" />"),
        Vx_Web_Html.f_string_from_img_indent(
          Vx_Core.f_new(
            Vx_Web_Html.t_img,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":id"),
              Vx_Core.vx_new_string("myid"),
              Vx_Core.vx_new_string(":src"),
              Vx_Core.vx_new_string("test.svg")
            )
          ),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func f_string_from_meta_indent(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/web/html",
      ":casename", "string<-meta-indent",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_string_from_meta_indent_testdescribe_1(context)
      )
    )
    return output
  }

  public static func f_string_from_meta_indent_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<meta charset=\\\"utf-8\\\" />\"\n (string<-meta-indent (meta :charset \"utf-8\") 0))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<meta charset=\"utf-8\" />"),
        Vx_Web_Html.f_string_from_meta_indent(
          Vx_Core.f_new(
            Vx_Web_Html.t_meta,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":charset"),
              Vx_Core.vx_new_string("utf-8")
            )
          ),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func f_string_from_p_indent(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcase {
    let output : any Vx_Test.Type_testcase = Vx_Core.vx_new(
      Vx_Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/web/html",
      ":casename", "string<-p-indent",
      ":describelist",
      Vx_Core.vx_new(
        Vx_Test.t_testdescribelist,
        f_string_from_p_indent_testdescribe_1(context),
        f_string_from_p_indent_testdescribe_2(context)
      )
    )
    return output
  }

  public static func f_string_from_p_indent_testdescribe_1(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<p>data</p>\"\n (string<-p-indent\n  (p :text \"data\")\n  0))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<p>data</p>"),
        Vx_Web_Html.f_string_from_p_indent(
          Vx_Core.f_new(
            Vx_Web_Html.t_p,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":text"),
              Vx_Core.vx_new_string("data")
            )
          ),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func f_string_from_p_indent_testdescribe_2(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testdescribe {
    let output : any Vx_Test.Type_testdescribe = Vx_Core.vx_new(
      Vx_Test.t_testdescribe,
      ":describename", "(test\n \"<p id=\\\"myid\\\">data</p>\"\n (string<-p-indent\n  (p :id \"myid\" :text \"data\")\n  0))",
      ":testresult", Vx_Test.f_test(
        context,
        Vx_Core.vx_new_string("<p id=\"myid\">data</p>"),
        Vx_Web_Html.f_string_from_p_indent(
          Vx_Core.f_new(
            Vx_Web_Html.t_p,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              Vx_Core.vx_new_string(":id"),
              Vx_Core.vx_new_string("myid"),
              Vx_Core.vx_new_string(":text"),
              Vx_Core.vx_new_string("data")
            )
          ),
          Vx_Core.vx_new_int(0)
        )
      )
    )
    return output
  }

  public static func test_cases(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcaselist {
    var testcases : [any Vx_Core.Type_any] = Vx_Core.arraylist_from_array(
      Vx_Web_HtmlTest.f_string_from_body_indent(context),
      Vx_Web_HtmlTest.f_string_from_div_indent(context),
      Vx_Web_HtmlTest.f_string_from_head_indent(context),
      Vx_Web_HtmlTest.f_string_from_html(context),
      Vx_Web_HtmlTest.f_string_from_img_indent(context),
      Vx_Web_HtmlTest.f_string_from_meta_indent(context),
      Vx_Web_HtmlTest.f_string_from_p_indent(context)
    )
    let output : any Vx_Test.Type_testcaselist = Vx_Core.vx_new(
      Vx_Test.t_testcaselist,
      testcases
    )
    return output
  }

  public static func test_coveragesummary() -> any Vx_Test.Type_testcoveragesummary {
    let output : any Vx_Test.Type_testcoveragesummary = Vx_Core.vx_new(
      Vx_Test.t_testcoveragesummary,
      ":testpkg", "vx/web/html", 
      ":constnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      ":docnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 98, ":tests", 73, ":total", 74), 
      ":funcnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 16, ":tests", 7, ":total", 42), 
      ":bigospacenums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 42), 
      ":bigotimenums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 42), 
      ":totalnums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 9, ":tests", 7, ":total", 74), 
      ":typenums", Vx_Core.vx_new(Vx_Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 32)
    )
    return output
  }

  public static func test_coveragedetail() -> any Vx_Test.Type_testcoveragedetail {
    let output : any Vx_Test.Type_testcoveragedetail = Vx_Core.vx_new(
      Vx_Test.t_testcoveragedetail,
      ":testpkg", "vx/web/html",
      ":typemap", Vx_Core.vx_new(
        Vx_Core.t_intmap,
        ":body", 0,
        ":details", 0,
        ":div", 0,
        ":divchild", 0,
        ":divchildlist", 0,
        ":divlist", 0,
        ":footer", 0,
        ":h1", 0,
        ":h2", 0,
        ":h3", 0,
        ":head", 0,
        ":headchild", 0,
        ":headchildlist", 0,
        ":html", 0,
        ":img", 0,
        ":meta", 0,
        ":node", 0,
        ":nodelist", 0,
        ":p", 0,
        ":propmap", 0,
        ":style", 0,
        ":stylelist", 0,
        ":stylemap", 0,
        ":stylesheet", 0,
        ":table", 0,
        ":tbody", 0,
        ":td", 0,
        ":tdlist", 0,
        ":thead", 0,
        ":title", 0,
        ":tr", 0,
        ":trlist", 0
      ), 
      ":constmap", Vx_Core.e_intmap, 
      ":funcmap", Vx_Core.vx_new(
        Vx_Core.t_intmap,
        ":htmlstring<-string", 0,
        ":string-indent", 0,
        ":string<-body-indent", 2,
        ":string<-details-indent", 0,
        ":string<-div-indent", 2,
        ":string<-footer-indent", 0,
        ":string<-h1-indent", 0,
        ":string<-h2-indent", 0,
        ":string<-h3-indent", 0,
        ":string<-head-indent", 1,
        ":string<-html", 1,
        ":string<-img-indent", 2,
        ":string<-indent", 0,
        ":string<-meta-indent", 1,
        ":string<-node", 0,
        ":string<-node-indent", 0,
        ":string<-nodelist-indent", 0,
        ":string<-nodelist-tag-prop-indent", 0,
        ":string<-p-indent", 2,
        ":string<-propname-val", 0,
        ":string<-propstyle", 0,
        ":string<-propstyle-stylelist", 0,
        ":string<-propstylelist", 0,
        ":string<-propstyleunique", 0,
        ":string<-style-indent", 0,
        ":string<-stylelist", 0,
        ":string<-stylelist-indent", 0,
        ":string<-stylepropmap-indent", 0,
        ":string<-stylesheet-indent", 0,
        ":string<-table-indent", 0,
        ":string<-tbody-indent", 0,
        ":string<-td-indent", 0,
        ":string<-thead-indent", 0,
        ":string<-title-indent", 0,
        ":string<-tr-indent", 0,
        ":string<-uri", 0,
        ":style<-stylesheet-name", 0,
        ":stylemap<-stylelist", 0,
        ":stylemap<-stylesheet", 0,
        ":styles<-stylesheet", 0,
        ":stylesheet-loadmap", 0,
        ":uri<-string", 0
      )
    )
    return output
  }

  public static func test_package(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testpackage {
    let testcaselist : any Vx_Test.Type_testcaselist = test_cases(context)
    let output : any Vx_Test.Type_testpackage = Vx_Core.vx_new(
      Vx_Test.t_testpackage,
      ":testpkg", "vx/web/html", 
      ":caselist", testcaselist,
      ":coveragesummary", test_coveragesummary(),
      ":coveragedetail", test_coveragedetail()
    )
    return output
  }

}
