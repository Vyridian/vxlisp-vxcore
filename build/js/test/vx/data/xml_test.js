'strict mode'

import vx_data_xml from "../../../src/vx/data/xml.js"
import vx_core from "../../../src/vx/core.js"
import vx_test from "../../../src/vx/test.js"
import vx_data_file from "../../../src/vx/data/file.js"
import vx_data_textblock from "../../../src/vx/data/textblock.js"
import vx_type from "../../../src/vx/type.js"

export default class vx_data_xml_test {


  static test_package(context) {
    const testcaselist = vx_data_xml_test.test_cases(context)
    const output = vx_core.f_new_from_type(
      vx_test.t_testpackage,
      ":testpkg", "vx/data/xml",
      ":caselist", testcaselist,
      ":coveragesummary", vx_data_xml_test.test_coveragesummary(),
      ":coveragedetail", vx_data_xml_test.test_coveragedetail()
    );
    return output;
  }

  static test_coveragesummary() {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcoveragesummary,
      "testpkg",   "vx/data/xml", 
      "constnums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 4), 
      "docnums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 66, ":tests", 14, ":total", 21), 
      "funcnums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 71, ":tests", 10, ":total", 14), 
      "bigospacenums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      "bigotimenums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 100, ":tests", 0, ":total", 0), 
      "totalnums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 47, ":tests", 10, ":total", 21), 
      "typenums", vx_core.f_new_from_type(vx_test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 3)
    )
    return output
  }

  static test_coveragedetail() {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcoveragedetail,
      "testpkg", "vx/data/xml",
      "typemap",
        vx_core.f_new_from_type(
          vx_core.t_intmap,
          "xml", 0,
          "xmllist", 0,
          "xmlpropmap", 0
        ),
      "constmap",
        vx_core.f_new_from_type(
          vx_core.t_intmap,
          "delimxml", 0,
          "delimxmlcdata", 0,
          "delimxmlcomment", 0,
          "delimxmlequal", 0
        ),
      "funcmap",
        vx_core.f_new_from_type(
          vx_core.t_intmap,
          "string-decodexml<-string", 0,
          "string-first<-xml", 1,
          "textblock-xml<-string", 1,
          "xml-angle<-xml-textblock", 3,
          "xml-close<-xml-textblock", 4,
          "xml-parse<-xml-textblock", 5,
          "xml-parse<-xml-textblocklist", 1,
          "xml-properties<-xml-textblocklist", 1,
          "xml-property<-xml-textblock", 3,
          "xml-read<-file", 0,
          "xml-text<-xml-textblock", 2,
          "xml<-file", 0,
          "xml<-string", 0,
          "xml<-textblock", 1
        )
    )
    return output
  }

  static f_string_first_from_xml(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/data/xml",
      ":casename", "string-first<-xml",
      ":describelist",
        vx_core.f_new_from_type(
          vx_test.t_testdescribelist,
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n \"text\"\n (string-first<-xml\n  (xml\n   :children\n    (xmllist\n     (xml\n      :text \"text\")))))",
            ":testresult",
            vx_test.f_test(
              context,
              "text",
              vx_data_xml.f_string_first_from_xml(
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xml},
                  ":children",
                  vx_core.f_new(
                    {"any-1": vx_data_xml.t_xmllist},
                    vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":text", "text")
                  )
                )
              )
            )
          )
        )
    )
    return output
  }

  static f_textblock_xml_from_string(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/data/xml",
      ":casename", "textblock-xml<-string",
      ":describelist",
        vx_core.f_new_from_type(
          vx_test.t_testdescribelist,
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (tb/textblock\n  :text\n   \"<doc>\n      <tag1>\n        <tag2 prop1=\\\"val1\\\" prop2=\\\"val2\\\" />\n      </tag1>\n    </doc>\"\n  :startpos 1\n  :endpos 70\n  :children\n   (tb/textblocklist\n    (tb/textblock\n     :text \"<doc>\"\n     :startpos 1\n     :endpos 5\n     :delim\n      (copy tb/delimbracketangle\n       :pos 0)\n     :children\n      (tb/textblocklist\n       (tb/textblock\n        :text \"doc\"\n        :startpos 2\n        :endpos 4)))\n    (tb/textblock\n     :text \"\n  \"\n     :startpos 6\n     :endpos 8)\n    (tb/textblock\n     :text \"<tag1>\"\n     :startpos 9\n     :endpos 14\n     :delim\n      (copy tb/delimbracketangle\n       :pos 0)\n     :children\n      (tb/textblocklist\n       (tb/textblock\n        :text \"tag1\"\n        :startpos 10\n        :endpos 13)))\n    (tb/textblock\n     :text \"\n    \"\n     :startpos 15\n     :endpos 19)\n    (tb/textblock\n     :text \"<tag2 prop1=\\\"val1\\\" prop2=\\\"val2\\\" />\"\n     :startpos 20\n     :endpos 53\n     :delim\n      (copy tb/delimbracketangle\n       :pos 0)\n     :children\n      (tb/textblocklist\n       (tb/textblock\n        :text \"tag2\"\n        :startpos 21\n        :endpos 24)\n       (tb/textblock\n        :text \" \"\n        :startpos 25\n        :endpos 25\n        :delim\n         (copy tb/delimwhitespace\n          :pos 0))\n       (textblock\n        :text \"prop1\"\n        :startpos 26\n        :endpos 30)\n       (textblock\n        :text \"=\"\n        :startpos 31\n        :endpos 31\n        :delim\n         (copy delimxmlequal\n          :pos 0))\n       (tb/textblock\n        :text \"\\\"val1\\\"\"\n        :startpos 32\n        :endpos 37\n        :delim\n         (copy tb/delimquote\n          :pos 0)\n        :children\n         (tb/textblocklist\n          (tb/textblock\n           :text \"val1\"\n           :startpos 33\n           :endpos 36)))\n       (tb/textblock\n        :text \" \"\n        :startpos 38\n        :endpos 38\n        :delim\n         (copy tb/delimwhitespace\n          :pos 0))\n       (tb/textblock\n        :text \"prop2\"\n        :startpos 39\n        :endpos 43)\n       (textblock\n        :text \"=\"\n        :startpos 44\n        :endpos 44\n        :delim\n         (copy delimxmlequal\n          :pos 0))\n       (tb/textblock\n        :text \"\\\"val2\\\"\"\n        :startpos 45\n        :endpos 50\n        :delim\n         (copy tb/delimquote\n          :pos 0)\n        :children\n         (tb/textblocklist\n          (tb/textblock\n           :text \"val2\"\n           :startpos 46\n           :endpos 49)))\n        (tb/textblock\n         :text \" \"\n         :startpos 51\n         :endpos 51\n         :delim\n          (copy tb/delimwhitespace\n           :pos 0))\n        (tb/textblock\n         :text \"/\"\n         :startpos 52\n         :endpos 52)))\n    (tb/textblock\n     :text \"\n  \"\n     :startpos 54\n     :endpos 56)\n    (tb/textblock\n     :text \"</tag1>\"\n     :startpos 57\n     :endpos 63\n     :delim\n      (copy tb/delimbracketangle\n       :pos 0)\n     :children\n      (tb/textblocklist\n       (tb/textblock\n        :text \"/tag1\"\n        :startpos 58\n        :endpos 62)))\n    (tb/textblock\n     :text \"\n\"\n     :startpos 64\n     :endpos 64)\n    (tb/textblock\n     :text \"</doc>\"\n     :startpos 65\n     :endpos 70\n     :delim\n      (copy tb/delimbracketangle\n       :pos 0)\n     :children\n      (tb/textblocklist\n       (tb/textblock\n        :text \"/doc\"\n        :startpos 66\n        :endpos 69)))))\n (textblock-xml<-string\n  \"<doc>\n     <tag1>\n       <tag2 prop1=\\\"val1\\\" prop2=\\\"val2\\\" />\n     </tag1>\n   </doc>\"))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_textblock.t_textblock},
                ":text",
                "<doc>\n  <tag1>\n    <tag2 prop1=\"val1\" prop2=\"val2\" />\n  </tag1>\n</doc>",
                ":startpos",
                1,
                ":endpos",
                70,
                ":children",
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblocklist},
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "<doc>",
                    ":startpos",
                    1,
                    ":endpos",
                    5,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimbracketangle,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "doc", ":startpos", 2, ":endpos", 4)
                    )
                  ),
                  vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "\n  ", ":startpos", 6, ":endpos", 8),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "<tag1>",
                    ":startpos",
                    9,
                    ":endpos",
                    14,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimbracketangle,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag1", ":startpos", 10, ":endpos", 13)
                    )
                  ),
                  vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "\n    ", ":startpos", 15, ":endpos", 19),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "<tag2 prop1=\"val1\" prop2=\"val2\" />",
                    ":startpos",
                    20,
                    ":endpos",
                    53,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimbracketangle,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag2", ":startpos", 21, ":endpos", 24),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        " ",
                        ":startpos",
                        25,
                        ":endpos",
                        25,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_textblock.c_delimwhitespace,
                          ":pos",
                          0
                        )
                      ),
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop1", ":startpos", 26, ":endpos", 30),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        "=",
                        ":startpos",
                        31,
                        ":endpos",
                        31,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_xml.c_delimxmlequal,
                          ":pos",
                          0
                        )
                      ),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        "\"val1\"",
                        ":startpos",
                        32,
                        ":endpos",
                        37,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_textblock.c_delimquote,
                          ":pos",
                          0
                        ),
                        ":children",
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblocklist},
                          vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val1", ":startpos", 33, ":endpos", 36)
                        )
                      ),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        " ",
                        ":startpos",
                        38,
                        ":endpos",
                        38,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_textblock.c_delimwhitespace,
                          ":pos",
                          0
                        )
                      ),
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop2", ":startpos", 39, ":endpos", 43),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        "=",
                        ":startpos",
                        44,
                        ":endpos",
                        44,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_xml.c_delimxmlequal,
                          ":pos",
                          0
                        )
                      ),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        "\"val2\"",
                        ":startpos",
                        45,
                        ":endpos",
                        50,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_textblock.c_delimquote,
                          ":pos",
                          0
                        ),
                        ":children",
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblocklist},
                          vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val2", ":startpos", 46, ":endpos", 49)
                        )
                      ),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        " ",
                        ":startpos",
                        51,
                        ":endpos",
                        51,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_textblock.c_delimwhitespace,
                          ":pos",
                          0
                        )
                      ),
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/", ":startpos", 52, ":endpos", 52)
                    )
                  ),
                  vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "\n  ", ":startpos", 54, ":endpos", 56),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "</tag1>",
                    ":startpos",
                    57,
                    ":endpos",
                    63,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimbracketangle,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/tag1", ":startpos", 58, ":endpos", 62)
                    )
                  ),
                  vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "\n", ":startpos", 64, ":endpos", 64),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "</doc>",
                    ":startpos",
                    65,
                    ":endpos",
                    70,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimbracketangle,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/doc", ":startpos", 66, ":endpos", 69)
                    )
                  )
                )
              ),
              vx_data_xml.f_textblock_xml_from_string("<doc>\n  <tag1>\n    <tag2 prop1=\"val1\" prop2=\"val2\" />\n  </tag1>\n</doc>")
            )
          )
        )
    )
    return output
  }

  static f_xml_angle_from_xml_textblock(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/data/xml",
      ":casename", "xml-angle<-xml-textblock",
      ":describelist",
        vx_core.f_new_from_type(
          vx_test.t_testdescribelist,
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag :notag)\n (xml-angle<-xml-textblock\n  (empty xml)\n  (empty tb/textblock)))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", ":notag"),
              vx_data_xml.f_xml_angle_from_xml_textblock(
                vx_core.f_empty(
                  vx_data_xml.t_xml
                ),
                vx_core.f_empty(
                  vx_data_textblock.t_textblock
                )
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\")\n (xml-angle<-xml-textblock\n  (empty xml)\n  (tb/textblock\n   :text \"<doc>\"\n   :startpos 1\n   :endpos 5\n   :delim\n    (copy tb/delimbracketangle\n     :pos 0)\n   :children\n    (tb/textblocklist\n     (tb/textblock\n      :text \"doc\"\n      :startpos 2\n      :endpos 4)))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
              vx_data_xml.f_xml_angle_from_xml_textblock(
                vx_core.f_empty(
                  vx_data_xml.t_xml
                ),
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblock},
                  ":text",
                  "<doc>",
                  ":startpos",
                  1,
                  ":endpos",
                  5,
                  ":delim",
                  vx_core.f_copy(
                    vx_data_textblock.c_delimbracketangle,
                    ":pos",
                    0
                  ),
                  ":children",
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblocklist},
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "doc", ":startpos", 2, ":endpos", 4)
                  )
                )
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"tag1\"\n  :children\n   (xmllist\n    (xml\n     :tag \"tag2\"\n     :propmap\n      (stringmap\n       :prop1 \"val1\"\n       :prop2 \"val2\"))))\n (xml-angle<-xml-textblock\n  (xml\n   :tag \"tag1\")\n  (tb/textblock\n   :text \"<tag2 prop1=\\\"val1\\\" prop2=\\\"val2\\\" />\"\n   :startpos 20\n   :endpos 53\n   :delim\n    (copy tb/delimbracketangle\n     :pos 0)\n   :children\n    (tb/textblocklist\n     (tb/textblock\n      :text \"tag2\"\n      :startpos 21\n      :endpos 24)\n     (tb/textblock\n      :text \" \"\n      :startpos 25\n      :endpos 25\n      :delim\n       (copy tb/delimwhitespace\n        :pos 0))\n     (tb/textblock\n      :text \"prop1\"\n      :startpos 26\n      :endpos 30)\n     (tb/textblock\n      :text \"=\"\n      :startpos 31\n      :endpos 31\n      :delim\n       (copy delimxmlequal\n        :pos 0))\n     (tb/textblock\n      :text \"\\\"val1\\\"\"\n      :startpos 32\n      :endpos 37\n      :delim\n       (copy tb/delimquote\n        :pos 0)\n      :children\n       (tb/textblocklist\n        (tb/textblock\n         :text \"val1\"\n         :startpos 33\n         :endpos 36)))\n     (tb/textblock\n      :text \" \"\n      :startpos 38\n      :endpos 38\n      :delim\n       (copy tb/delimwhitespace\n        :pos 0))\n     (tb/textblock\n      :text \"prop2\"\n      :startpos 39\n      :endpos 43)\n     (tb/textblock\n      :text \"=\"\n      :startpos 44\n      :endpos 44\n      :delim\n       (copy delimxmlequal\n        :pos 0))\n     (tb/textblock\n      :text \"\\\"val2\\\"\"\n      :startpos 45\n      :endpos 50\n      :delim\n       (copy tb/delimquote\n        :pos 0)\n      :children\n       (tb/textblocklist\n        (tb/textblock\n         :text \"val2\"\n         :startpos 46\n         :endpos 49)))\n      (tb/textblock\n       :text \" \"\n       :startpos 51\n       :endpos 51\n       :delim\n        (copy tb/delimwhitespace\n         :pos 0))\n      (tb/textblock\n       :text \"/\"\n       :startpos 52\n       :endpos 52)))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "tag1",
                ":children",
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xmllist},
                  vx_core.f_new(
                    {"any-1": vx_data_xml.t_xml},
                    ":tag",
                    "tag2",
                    ":propmap",
                    vx_core.f_new({"any-1": vx_core.t_stringmap}, ":prop1", "val1", ":prop2", "val2")
                  )
                )
              ),
              vx_data_xml.f_xml_angle_from_xml_textblock(
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "tag1"),
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblock},
                  ":text",
                  "<tag2 prop1=\"val1\" prop2=\"val2\" />",
                  ":startpos",
                  20,
                  ":endpos",
                  53,
                  ":delim",
                  vx_core.f_copy(
                    vx_data_textblock.c_delimbracketangle,
                    ":pos",
                    0
                  ),
                  ":children",
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblocklist},
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag2", ":startpos", 21, ":endpos", 24),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      " ",
                      ":startpos",
                      25,
                      ":endpos",
                      25,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimwhitespace,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop1", ":startpos", 26, ":endpos", 30),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "=",
                      ":startpos",
                      31,
                      ":endpos",
                      31,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_xml.c_delimxmlequal,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "\"val1\"",
                      ":startpos",
                      32,
                      ":endpos",
                      37,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimquote,
                        ":pos",
                        0
                      ),
                      ":children",
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblocklist},
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val1", ":startpos", 33, ":endpos", 36)
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      " ",
                      ":startpos",
                      38,
                      ":endpos",
                      38,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimwhitespace,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop2", ":startpos", 39, ":endpos", 43),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "=",
                      ":startpos",
                      44,
                      ":endpos",
                      44,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_xml.c_delimxmlequal,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "\"val2\"",
                      ":startpos",
                      45,
                      ":endpos",
                      50,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimquote,
                        ":pos",
                        0
                      ),
                      ":children",
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblocklist},
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val2", ":startpos", 46, ":endpos", 49)
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      " ",
                      ":startpos",
                      51,
                      ":endpos",
                      51,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimwhitespace,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/", ":startpos", 52, ":endpos", 52)
                  )
                )
              )
            )
          )
        )
    )
    return output
  }

  static f_xml_close_from_xml_textblock(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/data/xml",
      ":casename", "xml-close<-xml-textblock",
      ":describelist",
        vx_core.f_new_from_type(
          vx_test.t_testdescribelist,
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\")\n (xml-close<-xml-textblock\n  (xml\n   :tag \"doc\")\n  (tb/textblock\n   :text \"/\")))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
              vx_data_xml.f_xml_close_from_xml_textblock(
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
                vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/")
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\")\n (xml-close<-xml-textblock\n  (xml\n   :tag \"doc\")\n  (tb/textblock\n   :text \"</doc>\")))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
              vx_data_xml.f_xml_close_from_xml_textblock(
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
                vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "</doc>")
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\"\n  (msg\n   :code \":invalidxmlclosetag\"\n   :detail\n    (anymap\n     :tag \"/wrong\"\n     :startpos 0\n     :endpos 0\n     :line 0\n     :column 0)\n   :severity msg-error))\n (xml-close<-xml-textblock\n  (xml\n   :tag \"doc\")\n  (tb/textblock\n   :text \"/wrong\")))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "doc",
                vx_core.f_new(
                  {"any-1": vx_core.t_msg},
                  ":code",
                  ":invalidxmlclosetag",
                  ":detail",
                  vx_core.f_new({"any-1": vx_core.t_anymap}, ":tag", "/wrong", ":startpos", 0, ":endpos", 0, ":line", 0, ":column", 0),
                  ":severity",
                  vx_core.c_msg_error
                )
              ),
              vx_data_xml.f_xml_close_from_xml_textblock(
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
                vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/wrong")
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"top\"\n  :children\n   (xmllist\n    (xml\n     :tag \"doc\")))\n (xml-close<-xml-textblock\n  (xml\n   :tag \"doc\"\n   :parent\n    (xml\n     :tag \"top\"))\n  (tb/textblock\n   :text \"/\")))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "top",
                ":children",
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xmllist},
                  vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc")
                )
              ),
              vx_data_xml.f_xml_close_from_xml_textblock(
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xml},
                  ":tag",
                  "doc",
                  ":parent",
                  vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "top")
                ),
                vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/")
              )
            )
          )
        )
    )
    return output
  }

  static f_xml_parse_from_xml_textblock(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/data/xml",
      ":casename", "xml-parse<-xml-textblock",
      ":describelist",
        vx_core.f_new_from_type(
          vx_test.t_testdescribelist,
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\")\n (xml-parse<-xml-textblock\n  (empty xml)\n  (tb/textblock\n   :text \"<doc>\"\n   :delim\n    (copy tb/delimbracketangle\n     :pos 0)\n   :children\n    (tb/textblocklist\n     (tb/textblock\n      :text \"doc\")))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
              vx_data_xml.f_xml_parse_from_xml_textblock(
                vx_core.f_empty(
                  vx_data_xml.t_xml
                ),
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblock},
                  ":text",
                  "<doc>",
                  ":delim",
                  vx_core.f_copy(
                    vx_data_textblock.c_delimbracketangle,
                    ":pos",
                    0
                  ),
                  ":children",
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblocklist},
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "doc")
                  )
                )
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\")\n (xml-parse<-xml-textblock\n  (xml\n   :tag \"doc\")\n  (tb/textblock\n   :text \"\n  \"\n   :delim\n    (copy tb/delimwhitespace\n     :pos 0))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
              vx_data_xml.f_xml_parse_from_xml_textblock(
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblock},
                  ":text",
                  "\n  ",
                  ":delim",
                  vx_core.f_copy(
                    vx_data_textblock.c_delimwhitespace,
                    ":pos",
                    0
                  )
                )
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"tag1\"\n  :parent\n   (xml\n    :tag \"doc\"))\n (xml-parse<-xml-textblock\n  (xml\n   :tag \"doc\")\n  (tb/textblock\n   :text \"<tag1>\"\n   :delim\n    (copy tb/delimbracketangle\n     :pos 0)\n   :children\n    (tb/textblocklist\n     (tb/textblock\n      :text \"tag1\")))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "tag1",
                ":parent",
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc")
              ),
              vx_data_xml.f_xml_parse_from_xml_textblock(
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblock},
                  ":text",
                  "<tag1>",
                  ":delim",
                  vx_core.f_copy(
                    vx_data_textblock.c_delimbracketangle,
                    ":pos",
                    0
                  ),
                  ":children",
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblocklist},
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag1")
                  )
                )
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"tag1\"\n  :children\n   (xmllist\n    (xml\n     :tag \"tag2\"\n     :propmap\n      (stringmap\n       :prop1 \"val1\"\n       :prop2 \"val2\")))\n  :parent\n   (xml\n    :tag \"doc\"))\n (xml-parse<-xml-textblock\n  (xml\n   :tag \"tag1\"\n   :parent\n    (xml\n     :tag \"doc\"))\n  (tb/textblock\n   :text \"<tag2 prop1=\\\"val1\\\" prop2=\\\"val2\\\" />\"\n   :delim\n    (copy tb/delimbracketangle\n     :pos 0)\n   :children\n    (tb/textblocklist\n     (tb/textblock\n      :text \"tag2\")\n     (tb/textblock\n      :text \" \"\n      :delim\n       (copy tb/delimwhitespace\n        :pos 0))\n     (tb/textblock\n      :text \"prop1\")\n     (tb/textblock\n      :text \"=\"\n      :delim\n       (copy delimxmlequal\n        :pos 0))\n     (tb/textblock\n      :text \"\\\"val1\\\"\"\n      :delim\n       (copy tb/delimquote\n        :pos 0)\n      :children\n       (tb/textblocklist\n        (tb/textblock\n         :text \"val1\")))\n     (tb/textblock\n      :text \" \"\n      :delim\n       (copy tb/delimwhitespace\n        :pos 0))\n     (tb/textblock\n      :text \"prop2\")\n     (tb/textblock\n      :text \"=\"\n      :delim\n       (copy delimxmlequal\n        :pos 0))\n     (tb/textblock\n      :text \"\\\"val2\\\"\"\n      :delim\n       (copy tb/delimquote\n        :pos 0)\n      :children\n       (tb/textblocklist\n        (tb/textblock\n         :text \"val2\")))\n      (tb/textblock\n       :text \" \"\n       :delim\n        (copy tb/delimwhitespace\n         :pos 0))\n      (tb/textblock\n       :text \"/\")))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "tag1",
                ":children",
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xmllist},
                  vx_core.f_new(
                    {"any-1": vx_data_xml.t_xml},
                    ":tag",
                    "tag2",
                    ":propmap",
                    vx_core.f_new({"any-1": vx_core.t_stringmap}, ":prop1", "val1", ":prop2", "val2")
                  )
                ),
                ":parent",
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc")
              ),
              vx_data_xml.f_xml_parse_from_xml_textblock(
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xml},
                  ":tag",
                  "tag1",
                  ":parent",
                  vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc")
                ),
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblock},
                  ":text",
                  "<tag2 prop1=\"val1\" prop2=\"val2\" />",
                  ":delim",
                  vx_core.f_copy(
                    vx_data_textblock.c_delimbracketangle,
                    ":pos",
                    0
                  ),
                  ":children",
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblocklist},
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag2"),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      " ",
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimwhitespace,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop1"),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "=",
                      ":delim",
                      vx_core.f_copy(
                        vx_data_xml.c_delimxmlequal,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "\"val1\"",
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimquote,
                        ":pos",
                        0
                      ),
                      ":children",
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblocklist},
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val1")
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      " ",
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimwhitespace,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop2"),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "=",
                      ":delim",
                      vx_core.f_copy(
                        vx_data_xml.c_delimxmlequal,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "\"val2\"",
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimquote,
                        ":pos",
                        0
                      ),
                      ":children",
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblocklist},
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val2")
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      " ",
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimwhitespace,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/")
                  )
                )
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\"\n  :children\n   (xmllist\n    (xml\n    :tag \"tag1\"\n    :children\n     (xmllist\n      (xml\n       :tag \"tag2\"\n       :propmap\n        (stringmap\n         :prop1 \"val1\"\n         :prop2 \"val2\"))))))\n (xml-parse<-xml-textblock\n  (xml\n   :tag \"tag1\"\n   :children\n    (xmllist\n     (xml\n      :tag \"tag2\"\n      :propmap\n       (stringmap\n        :prop1 \"val1\"\n        :prop2 \"val2\")))\n   :parent\n    (xml\n     :tag \"doc\"))\n  (tb/textblock\n   :text \"</tag1>\"\n   :delim\n    (copy tb/delimbracketangle\n     :pos 0)\n   :children\n    (tb/textblocklist\n     (tb/textblock\n      :text \"/tag1\")))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "doc",
                ":children",
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xmllist},
                  vx_core.f_new(
                    {"any-1": vx_data_xml.t_xml},
                    ":tag",
                    "tag1",
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_xml.t_xmllist},
                      vx_core.f_new(
                        {"any-1": vx_data_xml.t_xml},
                        ":tag",
                        "tag2",
                        ":propmap",
                        vx_core.f_new({"any-1": vx_core.t_stringmap}, ":prop1", "val1", ":prop2", "val2")
                      )
                    )
                  )
                )
              ),
              vx_data_xml.f_xml_parse_from_xml_textblock(
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xml},
                  ":tag",
                  "tag1",
                  ":children",
                  vx_core.f_new(
                    {"any-1": vx_data_xml.t_xmllist},
                    vx_core.f_new(
                      {"any-1": vx_data_xml.t_xml},
                      ":tag",
                      "tag2",
                      ":propmap",
                      vx_core.f_new({"any-1": vx_core.t_stringmap}, ":prop1", "val1", ":prop2", "val2")
                    )
                  ),
                  ":parent",
                  vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc")
                ),
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblock},
                  ":text",
                  "</tag1>",
                  ":delim",
                  vx_core.f_copy(
                    vx_data_textblock.c_delimbracketangle,
                    ":pos",
                    0
                  ),
                  ":children",
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblocklist},
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/tag1")
                  )
                )
              )
            )
          )
        )
    )
    return output
  }

  static f_xml_parse_from_xml_textblocklist(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/data/xml",
      ":casename", "xml-parse<-xml-textblocklist",
      ":describelist",
        vx_core.f_new_from_type(
          vx_test.t_testdescribelist,
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\"\n  :children\n   (xmllist\n    (xml\n     :tag \"tag1\"\n     :children\n      (xmllist\n       (xml\n        :tag \"tag2\"\n        :propmap\n         (stringmap\n          :prop1 \"val1\"\n          :prop2 \"val2\"))))))\n (xml-parse<-xml-textblocklist\n  (empty xml)\n  (tb/textblocklist\n   (tb/textblock\n    :text \"<doc>\"\n    :startpos 1\n    :endpos 5\n    :delim\n     (copy tb/delimbracketangle\n      :pos 0)\n    :children\n     (tb/textblocklist\n      (tb/textblock\n       :text \"doc\"\n       :startpos 2\n       :endpos 4)))\n   (tb/textblock\n    :text \"\n  \"\n    :startpos 6\n    :endpos 8\n    :delim\n     (copy tb/delimwhitespace\n      :pos 0))\n   (tb/textblock\n    :text \"<tag1>\"\n    :startpos 9\n    :endpos 14\n    :delim\n     (copy tb/delimbracketangle\n      :pos 0)\n    :children\n     (tb/textblocklist\n      (tb/textblock\n       :text \"tag1\"\n       :startpos 10\n       :endpos 13)))\n   (tb/textblock\n    :text \"\n    \"\n    :startpos 15\n    :endpos 19\n    :delim\n     (copy tb/delimwhitespace\n      :pos 0))\n   (tb/textblock\n    :text \"<tag2 prop1=\\\"val1\\\" prop2=\\\"val2\\\" />\"\n    :startpos 20\n    :endpos 53\n    :delim\n     (copy tb/delimbracketangle\n      :pos 0)\n    :children\n     (tb/textblocklist\n      (tb/textblock\n       :text \"tag2\"\n       :startpos 21\n       :endpos 24)\n      (tb/textblock\n       :text \" \"\n       :startpos 25\n       :endpos 25\n       :delim\n        (copy tb/delimwhitespace\n         :pos 0))\n      (tb/textblock\n       :text \"prop1\"\n       :startpos 26\n       :endpos 30)\n      (tb/textblock\n       :text \"=\"\n       :startpos 31\n       :endpos 31\n       :delim\n        (copy delimxmlequal\n         :pos 0))\n      (tb/textblock\n       :text \"\\\"val1\\\"\"\n       :startpos 32\n       :endpos 37\n       :delim\n        (copy tb/delimquote\n         :pos 0)\n       :children\n        (tb/textblocklist\n         (tb/textblock\n          :text \"val1\"\n          :startpos 33\n          :endpos 36)))\n      (tb/textblock\n       :text \" \"\n       :startpos 38\n       :endpos 38\n       :delim\n        (copy tb/delimwhitespace\n         :pos 0))\n      (tb/textblock\n       :text \"prop2\"\n       :startpos 39\n       :endpos 43)\n      (tb/textblock\n       :text \"=\"\n       :startpos 44\n       :endpos 44\n       :delim\n        (copy delimxmlequal\n         :pos 0))\n      (tb/textblock\n       :text \"\\\"val2\\\"\"\n       :startpos 45\n       :endpos 50\n       :delim\n        (copy tb/delimquote\n         :pos 0)\n       :children\n        (tb/textblocklist\n         (tb/textblock\n          :text \"val2\"\n          :startpos 46\n          :endpos 49)))\n       (tb/textblock\n        :text \" \"\n        :startpos 51\n        :endpos 51\n        :delim\n         (copy tb/delimwhitespace\n          :pos 0))\n       (tb/textblock\n        :text \"/\"\n        :startpos 52\n        :endpos 52)))\n   (tb/textblock\n    :text \"\n  \"\n    :startpos 54\n    :endpos 56\n    :delim\n     (copy tb/delimwhitespace\n      :pos 0))\n   (tb/textblock\n    :text \"</tag1>\"\n    :startpos 57\n    :endpos 63\n    :delim\n     (copy tb/delimbracketangle\n      :pos 0)\n    :children\n     (tb/textblocklist\n      (tb/textblock\n       :text \"/tag1\"\n       :startpos 58\n       :endpos 62)))\n   (tb/textblock\n    :text \"\n\"\n    :startpos 64\n    :endpos 64\n    :delim\n     (copy tb/delimwhitespace\n      :pos 0))\n   (tb/textblock\n    :text \"</doc>\"\n    :startpos 65\n    :endpos 70\n    :delim\n     (copy tb/delimbracketangle\n      :pos 0)\n    :children\n     (tb/textblocklist\n      (tb/textblock\n       :text \"/doc\"\n       :startpos 66\n       :endpos 69))))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "doc",
                ":children",
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xmllist},
                  vx_core.f_new(
                    {"any-1": vx_data_xml.t_xml},
                    ":tag",
                    "tag1",
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_xml.t_xmllist},
                      vx_core.f_new(
                        {"any-1": vx_data_xml.t_xml},
                        ":tag",
                        "tag2",
                        ":propmap",
                        vx_core.f_new({"any-1": vx_core.t_stringmap}, ":prop1", "val1", ":prop2", "val2")
                      )
                    )
                  )
                )
              ),
              vx_data_xml.f_xml_parse_from_xml_textblocklist(
                vx_core.f_empty(
                  vx_data_xml.t_xml
                ),
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblocklist},
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "<doc>",
                    ":startpos",
                    1,
                    ":endpos",
                    5,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimbracketangle,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "doc", ":startpos", 2, ":endpos", 4)
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "\n  ",
                    ":startpos",
                    6,
                    ":endpos",
                    8,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimwhitespace,
                      ":pos",
                      0
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "<tag1>",
                    ":startpos",
                    9,
                    ":endpos",
                    14,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimbracketangle,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag1", ":startpos", 10, ":endpos", 13)
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "\n    ",
                    ":startpos",
                    15,
                    ":endpos",
                    19,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimwhitespace,
                      ":pos",
                      0
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "<tag2 prop1=\"val1\" prop2=\"val2\" />",
                    ":startpos",
                    20,
                    ":endpos",
                    53,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimbracketangle,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag2", ":startpos", 21, ":endpos", 24),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        " ",
                        ":startpos",
                        25,
                        ":endpos",
                        25,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_textblock.c_delimwhitespace,
                          ":pos",
                          0
                        )
                      ),
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop1", ":startpos", 26, ":endpos", 30),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        "=",
                        ":startpos",
                        31,
                        ":endpos",
                        31,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_xml.c_delimxmlequal,
                          ":pos",
                          0
                        )
                      ),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        "\"val1\"",
                        ":startpos",
                        32,
                        ":endpos",
                        37,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_textblock.c_delimquote,
                          ":pos",
                          0
                        ),
                        ":children",
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblocklist},
                          vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val1", ":startpos", 33, ":endpos", 36)
                        )
                      ),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        " ",
                        ":startpos",
                        38,
                        ":endpos",
                        38,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_textblock.c_delimwhitespace,
                          ":pos",
                          0
                        )
                      ),
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop2", ":startpos", 39, ":endpos", 43),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        "=",
                        ":startpos",
                        44,
                        ":endpos",
                        44,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_xml.c_delimxmlequal,
                          ":pos",
                          0
                        )
                      ),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        "\"val2\"",
                        ":startpos",
                        45,
                        ":endpos",
                        50,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_textblock.c_delimquote,
                          ":pos",
                          0
                        ),
                        ":children",
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblocklist},
                          vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val2", ":startpos", 46, ":endpos", 49)
                        )
                      ),
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblock},
                        ":text",
                        " ",
                        ":startpos",
                        51,
                        ":endpos",
                        51,
                        ":delim",
                        vx_core.f_copy(
                          vx_data_textblock.c_delimwhitespace,
                          ":pos",
                          0
                        )
                      ),
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/", ":startpos", 52, ":endpos", 52)
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "\n  ",
                    ":startpos",
                    54,
                    ":endpos",
                    56,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimwhitespace,
                      ":pos",
                      0
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "</tag1>",
                    ":startpos",
                    57,
                    ":endpos",
                    63,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimbracketangle,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/tag1", ":startpos", 58, ":endpos", 62)
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "\n",
                    ":startpos",
                    64,
                    ":endpos",
                    64,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimwhitespace,
                      ":pos",
                      0
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "</doc>",
                    ":startpos",
                    65,
                    ":endpos",
                    70,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimbracketangle,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/doc", ":startpos", 66, ":endpos", 69)
                    )
                  )
                )
              )
            )
          )
        )
    )
    return output
  }

  static f_xml_properties_from_xml_textblocklist(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/data/xml",
      ":casename", "xml-properties<-xml-textblocklist",
      ":describelist",
        vx_core.f_new_from_type(
          vx_test.t_testdescribelist,
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\"\n  :children\n   (xmllist\n    (xml\n     :tag \"tag2\"\n     :propmap\n      (stringmap\n       :prop1 \"val1\"\n       :prop2 \"val2\"))))\n (xml-properties<-xml-textblocklist\n  (xml\n   :tag :notag\n   :parent\n    (xml\n     :tag \"doc\"))\n  (tb/textblocklist\n   (tb/textblock\n    :text \"tag2\")\n   (tb/textblock\n    :text \" \"\n    :delim\n     (copy tb/delimwhitespace\n      :pos 0))\n   (tb/textblock\n    :text \"prop1\")\n   (tb/textblock\n    :text \"=\"\n    :delim\n     (copy delimxmlequal\n      :pos 0))\n   (tb/textblock\n    :text \"\\\"val1\\\"\"\n    :startpos 32\n    :endpos 37\n    :delim\n     (copy tb/delimquote\n      :pos 0)\n    :children\n     (tb/textblocklist\n      (tb/textblock\n       :text \"val1\")))\n   (tb/textblock\n    :text \" \"\n    :delim\n     (copy tb/delimwhitespace\n      :pos 0))\n   (tb/textblock\n    :text \"prop2\")\n   (tb/textblock\n    :text \"=\"\n    :delim\n     (copy delimxmlequal\n      :pos 0))\n   (tb/textblock\n    :text \"\\\"val2\\\"\"\n    :delim\n     (copy tb/delimquote\n      :pos 0)\n    :children\n     (tb/textblocklist\n      (tb/textblock\n       :text \"val2\")))\n   (tb/textblock\n    :text \" \"\n    :delim\n     (copy tb/delimwhitespace\n      :pos 0))\n   (tb/textblock\n    :text \"/\"))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "doc",
                ":children",
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xmllist},
                  vx_core.f_new(
                    {"any-1": vx_data_xml.t_xml},
                    ":tag",
                    "tag2",
                    ":propmap",
                    vx_core.f_new({"any-1": vx_core.t_stringmap}, ":prop1", "val1", ":prop2", "val2")
                  )
                )
              ),
              vx_data_xml.f_xml_properties_from_xml_textblocklist(
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xml},
                  ":tag",
                  ":notag",
                  ":parent",
                  vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc")
                ),
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblocklist},
                  vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag2"),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    " ",
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimwhitespace,
                      ":pos",
                      0
                    )
                  ),
                  vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop1"),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "=",
                    ":delim",
                    vx_core.f_copy(
                      vx_data_xml.c_delimxmlequal,
                      ":pos",
                      0
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "\"val1\"",
                    ":startpos",
                    32,
                    ":endpos",
                    37,
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimquote,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val1")
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    " ",
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimwhitespace,
                      ":pos",
                      0
                    )
                  ),
                  vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop2"),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "=",
                    ":delim",
                    vx_core.f_copy(
                      vx_data_xml.c_delimxmlequal,
                      ":pos",
                      0
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    "\"val2\"",
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimquote,
                      ":pos",
                      0
                    ),
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblocklist},
                      vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val2")
                    )
                  ),
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblock},
                    ":text",
                    " ",
                    ":delim",
                    vx_core.f_copy(
                      vx_data_textblock.c_delimwhitespace,
                      ":pos",
                      0
                    )
                  ),
                  vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/")
                )
              )
            )
          )
        )
    )
    return output
  }

  static f_xml_property_from_xml_textblock(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/data/xml",
      ":casename", "xml-property<-xml-textblock",
      ":describelist",
        vx_core.f_new_from_type(
          vx_test.t_testdescribelist,
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"tag1\")\n (xml-property<-xml-textblock\n  (xml\n   :tag \":notag\")\n  (tb/textblock\n   :text \"tag1\")))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "tag1"),
              vx_data_xml.f_xml_property_from_xml_textblock(
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", ":notag"),
                vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag1")
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"tag1\"\n  :prop \"prop1\")\n (xml-property<-xml-textblock\n  (xml\n   :tag \"tag1\")\n  (tb/textblock\n   :text \"prop1\")))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "tag1", ":prop", "prop1"),
              vx_data_xml.f_xml_property_from_xml_textblock(
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "tag1"),
                vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop1")
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"tag1\"\n  :propmap\n   (stringmap\n    :prop1 \"val1\"))\n (xml-property<-xml-textblock\n  (xml\n   :tag \"tag1\"\n   :prop \"prop1\")\n  (tb/textblock\n   :delim\n    (copy tb/delimquote\n     :pos 0)\n   :children\n    (tb/textblocklist\n     (tb/textblock\n      :text \"val1\")))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "tag1",
                ":propmap",
                vx_core.f_new({"any-1": vx_core.t_stringmap}, ":prop1", "val1")
              ),
              vx_data_xml.f_xml_property_from_xml_textblock(
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "tag1", ":prop", "prop1"),
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblock},
                  ":delim",
                  vx_core.f_copy(
                    vx_data_textblock.c_delimquote,
                    ":pos",
                    0
                  ),
                  ":children",
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblocklist},
                    vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val1")
                  )
                )
              )
            )
          )
        )
    )
    return output
  }

  static f_xml_text_from_xml_textblock(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/data/xml",
      ":casename", "xml-text<-xml-textblock",
      ":describelist",
        vx_core.f_new_from_type(
          vx_test.t_testdescribelist,
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :text \"text1\")\n (xml-text<-xml-textblock\n  (empty xml)\n  (tb/textblock\n   :text \"text1\")))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":text", "text1"),
              vx_data_xml.f_xml_text_from_xml_textblock(
                vx_core.f_empty(
                  vx_data_xml.t_xml
                ),
                vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "text1")
              )
            )
          ),
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\"\n  :children\n   (xmllist\n    (xml\n     :text \"text1\")))\n (xml-text<-xml-textblock\n  (xml\n   :tag \"doc\")\n  (tb/textblock\n   :text \"text1\")))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "doc",
                ":children",
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xmllist},
                  vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":text", "text1")
                )
              ),
              vx_data_xml.f_xml_text_from_xml_textblock(
                vx_core.f_new({"any-1": vx_data_xml.t_xml}, ":tag", "doc"),
                vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "text1")
              )
            )
          )
        )
    )
    return output
  }

  static f_xml_from_textblock(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/data/xml",
      ":casename", "xml<-textblock",
      ":describelist",
        vx_core.f_new_from_type(
          vx_test.t_testdescribelist,
          vx_core.f_new_from_type(
            vx_test.t_testdescribe,
            ":describename", "(test\n (xml\n  :tag \"doc\"\n  :children\n   (xmllist\n    (xml\n     :tag \"tag1\"\n     :children\n      (xmllist\n       (xml\n        :tag \"tag2\"\n        :propmap\n         (stringmap\n          :prop1 \"val1\"\n          :prop2 \"val2\"))))))\n (xml<-textblock\n  (tb/textblock\n   :text\n    \"<doc>\n       <tag1>\n         <tag2 prop1=\\\"val1\\\" prop2=\\\"val2\\\" />\n       </tag1>\n     </doc>\"\n   :startpos 1\n   :endpos 70\n   :children\n    (tb/textblocklist\n     (tb/textblock\n      :text \"<doc>\"\n      :startpos 1\n      :endpos 5\n      :delim\n       (copy tb/delimbracketangle\n        :pos 0)\n      :children\n       (tb/textblocklist\n        (tb/textblock\n         :text \"doc\"\n         :startpos 2\n         :endpos 4)))\n     (tb/textblock\n      :text \"\n  \"\n      :startpos 6\n      :endpos 8\n      :delim\n       (copy tb/delimwhitespace\n        :pos 0))\n     (tb/textblock\n      :text \"<tag1>\"\n      :startpos 9\n      :endpos 14\n      :delim\n       (copy tb/delimbracketangle\n        :pos 0)\n      :children\n       (tb/textblocklist\n        (tb/textblock\n         :text \"tag1\"\n         :startpos 10\n         :endpos 13)))\n     (tb/textblock\n      :text \"\n    \"\n      :startpos 15\n      :endpos 19\n      :delim\n       (copy tb/delimwhitespace\n        :pos 0))\n     (tb/textblock\n      :text \"<tag2 prop1=\\\"val1\\\" prop2=\\\"val2\\\" />\"\n      :startpos 20\n      :endpos 53\n      :delim\n       (copy tb/delimbracketangle\n        :pos 0)\n      :children\n       (tb/textblocklist\n        (tb/textblock\n         :text \"tag2\"\n         :startpos 21\n         :endpos 24)\n        (tb/textblock\n         :text \" \"\n         :startpos 25\n         :endpos 25\n         :delim\n          (copy tb/delimwhitespace\n           :pos 0))\n        (tb/textblock\n         :text \"prop1\"\n         :startpos 26\n         :endpos 30)\n        (tb/textblock\n         :text \"=\"\n         :startpos 31\n         :endpos 31\n         :delim\n          (copy delimxmlequal\n           :pos 0))\n        (tb/textblock\n         :text \"\\\"val1\\\"\"\n         :startpos 32\n         :endpos 37\n         :delim\n          (copy tb/delimquote\n           :pos 0)\n         :children\n          (tb/textblocklist\n           (tb/textblock\n            :text \"val1\"\n            :startpos 33\n            :endpos 36)))\n        (tb/textblock\n         :text \" \"\n         :startpos 38\n         :endpos 38\n         :delim\n          (copy tb/delimwhitespace\n           :pos 0))\n        (tb/textblock\n         :text \"prop2\"\n         :startpos 39\n         :endpos 43)\n        (tb/textblock\n         :text \"=\"\n         :startpos 44\n         :endpos 44\n         :delim\n          (copy delimxmlequal\n           :pos 0))\n        (tb/textblock\n         :text \"\\\"val2\\\"\"\n         :startpos 45\n         :endpos 50\n         :delim\n          (copy tb/delimquote\n           :pos 0)\n         :children\n          (tb/textblocklist\n           (tb/textblock\n            :text \"val2\"\n            :startpos 46\n            :endpos 49)))\n         (tb/textblock\n          :text \" \"\n          :startpos 51\n          :endpos 51\n          :delim\n           (copy tb/delimwhitespace\n            :pos 0))\n         (tb/textblock\n          :text \"/\"\n          :startpos 52\n          :endpos 52)))\n     (tb/textblock\n      :text \"\n  \"\n      :startpos 54\n      :endpos 56\n      :delim\n       (copy tb/delimwhitespace\n        :pos 0))\n     (tb/textblock\n      :text \"</tag1>\"\n      :startpos 57\n      :endpos 63\n      :delim\n       (copy tb/delimbracketangle\n        :pos 0)\n      :children\n       (tb/textblocklist\n        (tb/textblock\n         :text \"/tag1\"\n         :startpos 58\n         :endpos 62)))\n     (tb/textblock\n      :text \"\n\"\n      :startpos 64\n      :endpos 64\n      :delim\n       (copy tb/delimwhitespace\n        :pos 0))\n     (tb/textblock\n      :text \"</doc>\"\n      :startpos 65\n      :endpos 70\n      :delim\n       (copy tb/delimbracketangle\n        :pos 0)\n      :children\n       (tb/textblocklist\n        (tb/textblock\n         :text \"/doc\"\n         :startpos 66\n         :endpos 69)))))))",
            ":testresult",
            vx_test.f_test(
              context,
              vx_core.f_new(
                {"any-1": vx_data_xml.t_xml},
                ":tag",
                "doc",
                ":children",
                vx_core.f_new(
                  {"any-1": vx_data_xml.t_xmllist},
                  vx_core.f_new(
                    {"any-1": vx_data_xml.t_xml},
                    ":tag",
                    "tag1",
                    ":children",
                    vx_core.f_new(
                      {"any-1": vx_data_xml.t_xmllist},
                      vx_core.f_new(
                        {"any-1": vx_data_xml.t_xml},
                        ":tag",
                        "tag2",
                        ":propmap",
                        vx_core.f_new({"any-1": vx_core.t_stringmap}, ":prop1", "val1", ":prop2", "val2")
                      )
                    )
                  )
                )
              ),
              vx_data_xml.f_xml_from_textblock(
                vx_core.f_new(
                  {"any-1": vx_data_textblock.t_textblock},
                  ":text",
                  "<doc>\n  <tag1>\n    <tag2 prop1=\"val1\" prop2=\"val2\" />\n  </tag1>\n</doc>",
                  ":startpos",
                  1,
                  ":endpos",
                  70,
                  ":children",
                  vx_core.f_new(
                    {"any-1": vx_data_textblock.t_textblocklist},
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "<doc>",
                      ":startpos",
                      1,
                      ":endpos",
                      5,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimbracketangle,
                        ":pos",
                        0
                      ),
                      ":children",
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblocklist},
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "doc", ":startpos", 2, ":endpos", 4)
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "\n  ",
                      ":startpos",
                      6,
                      ":endpos",
                      8,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimwhitespace,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "<tag1>",
                      ":startpos",
                      9,
                      ":endpos",
                      14,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimbracketangle,
                        ":pos",
                        0
                      ),
                      ":children",
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblocklist},
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag1", ":startpos", 10, ":endpos", 13)
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "\n    ",
                      ":startpos",
                      15,
                      ":endpos",
                      19,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimwhitespace,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "<tag2 prop1=\"val1\" prop2=\"val2\" />",
                      ":startpos",
                      20,
                      ":endpos",
                      53,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimbracketangle,
                        ":pos",
                        0
                      ),
                      ":children",
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblocklist},
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "tag2", ":startpos", 21, ":endpos", 24),
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblock},
                          ":text",
                          " ",
                          ":startpos",
                          25,
                          ":endpos",
                          25,
                          ":delim",
                          vx_core.f_copy(
                            vx_data_textblock.c_delimwhitespace,
                            ":pos",
                            0
                          )
                        ),
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop1", ":startpos", 26, ":endpos", 30),
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblock},
                          ":text",
                          "=",
                          ":startpos",
                          31,
                          ":endpos",
                          31,
                          ":delim",
                          vx_core.f_copy(
                            vx_data_xml.c_delimxmlequal,
                            ":pos",
                            0
                          )
                        ),
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblock},
                          ":text",
                          "\"val1\"",
                          ":startpos",
                          32,
                          ":endpos",
                          37,
                          ":delim",
                          vx_core.f_copy(
                            vx_data_textblock.c_delimquote,
                            ":pos",
                            0
                          ),
                          ":children",
                          vx_core.f_new(
                            {"any-1": vx_data_textblock.t_textblocklist},
                            vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val1", ":startpos", 33, ":endpos", 36)
                          )
                        ),
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblock},
                          ":text",
                          " ",
                          ":startpos",
                          38,
                          ":endpos",
                          38,
                          ":delim",
                          vx_core.f_copy(
                            vx_data_textblock.c_delimwhitespace,
                            ":pos",
                            0
                          )
                        ),
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "prop2", ":startpos", 39, ":endpos", 43),
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblock},
                          ":text",
                          "=",
                          ":startpos",
                          44,
                          ":endpos",
                          44,
                          ":delim",
                          vx_core.f_copy(
                            vx_data_xml.c_delimxmlequal,
                            ":pos",
                            0
                          )
                        ),
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblock},
                          ":text",
                          "\"val2\"",
                          ":startpos",
                          45,
                          ":endpos",
                          50,
                          ":delim",
                          vx_core.f_copy(
                            vx_data_textblock.c_delimquote,
                            ":pos",
                            0
                          ),
                          ":children",
                          vx_core.f_new(
                            {"any-1": vx_data_textblock.t_textblocklist},
                            vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "val2", ":startpos", 46, ":endpos", 49)
                          )
                        ),
                        vx_core.f_new(
                          {"any-1": vx_data_textblock.t_textblock},
                          ":text",
                          " ",
                          ":startpos",
                          51,
                          ":endpos",
                          51,
                          ":delim",
                          vx_core.f_copy(
                            vx_data_textblock.c_delimwhitespace,
                            ":pos",
                            0
                          )
                        ),
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/", ":startpos", 52, ":endpos", 52)
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "\n  ",
                      ":startpos",
                      54,
                      ":endpos",
                      56,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimwhitespace,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "</tag1>",
                      ":startpos",
                      57,
                      ":endpos",
                      63,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimbracketangle,
                        ":pos",
                        0
                      ),
                      ":children",
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblocklist},
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/tag1", ":startpos", 58, ":endpos", 62)
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "\n",
                      ":startpos",
                      64,
                      ":endpos",
                      64,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimwhitespace,
                        ":pos",
                        0
                      )
                    ),
                    vx_core.f_new(
                      {"any-1": vx_data_textblock.t_textblock},
                      ":text",
                      "</doc>",
                      ":startpos",
                      65,
                      ":endpos",
                      70,
                      ":delim",
                      vx_core.f_copy(
                        vx_data_textblock.c_delimbracketangle,
                        ":pos",
                        0
                      ),
                      ":children",
                      vx_core.f_new(
                        {"any-1": vx_data_textblock.t_textblocklist},
                        vx_core.f_new({"any-1": vx_data_textblock.t_textblock}, ":text", "/doc", ":startpos", 66, ":endpos", 69)
                      )
                    )
                  )
                )
              )
            )
          )
        )
    )
    return output
  }

  static test_cases(context) {
    const output = vx_core.f_new_from_type(
      vx_test.t_testcaselist,
      vx_data_xml_test.f_string_first_from_xml(context),
      vx_data_xml_test.f_textblock_xml_from_string(context),
      vx_data_xml_test.f_xml_angle_from_xml_textblock(context),
      vx_data_xml_test.f_xml_close_from_xml_textblock(context),
      vx_data_xml_test.f_xml_parse_from_xml_textblock(context),
      vx_data_xml_test.f_xml_parse_from_xml_textblocklist(context),
      vx_data_xml_test.f_xml_properties_from_xml_textblocklist(context),
      vx_data_xml_test.f_xml_property_from_xml_textblock(context),
      vx_data_xml_test.f_xml_text_from_xml_textblock(context),
      vx_data_xml_test.f_xml_from_textblock(context)
    )
    return output
  }
}
