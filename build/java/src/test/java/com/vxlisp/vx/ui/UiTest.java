
package com.vxlisp.vx.ui;

import java.util.List;
import com.vxlisp.vx.*;
import com.vxlisp.vx.data.*;

public final class UiTest {

  public static Test.Type_testcase f_boolean_writestate_from_uiapp(final Core.Type_context context) {
    Test.Type_testcase output = Core.vx_new(
      Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/ui/ui",
      ":casename", "boolean-writestate<-uiapp",
      ":describelist",
      Core.vx_new(
        Test.t_testdescribelist,
        f_boolean_writestate_from_uiapp_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Test.Type_testdescribe f_boolean_writestate_from_uiapp_testdescribe_1(final Core.Type_context context) {
    Test.Type_testdescribe output = Core.vx_new(
      Test.t_testdescribe,
      ":describename", "(test\n (ui :uid \"app\")\n (let : ui\n  [iswrite : boolean :=\n    (boolean-writestate<-uiapp\n     (ui :uid \"app\"))\n   appui : ui :=\n    (ui-readstate-uiapp)\n   isremoved : boolean :=\n    (boolean-removestate-uiapp)]\n  appui))",
      ":testresult", Test.f_test(
        context,
        Core.f_new(
          Ui.t_ui,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":uid"),
            Core.vx_new_string("app")
          )
        ),
        Core.f_let(
          Ui.t_ui,
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_boolean iswrite = Ui.f_boolean_writestate_from_uiapp(
              context,
              Core.f_new(
                Ui.t_ui,
                Core.vx_new(
                  Core.t_anylist,
                  Core.vx_new_string(":uid"),
                  Core.vx_new_string("app")
                )
              )
            );
            Ui.Type_ui appui = Ui.f_ui_readstate_uiapp(
              context
            );
            Core.Type_boolean isremoved = Ui.f_boolean_removestate_uiapp(
              context
            );
            Core.Type_any output_1 = appui;
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Test.Type_testcase f_string_parentuid_from_uid(final Core.Type_context context) {
    Test.Type_testcase output = Core.vx_new(
      Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/ui/ui",
      ":casename", "string-parentuid<-uid",
      ":describelist",
      Core.vx_new(
        Test.t_testdescribelist,
        f_string_parentuid_from_uid_testdescribe_1(context),
        f_string_parentuid_from_uid_testdescribe_2(context)
      )
    );
    return output;
  }

  public static Test.Type_testdescribe f_string_parentuid_from_uid_testdescribe_1(final Core.Type_context context) {
    Test.Type_testdescribe output = Core.vx_new(
      Test.t_testdescribe,
      ":describename", "(test\n \"\"\n (string-parentuid<-uid\n  \"a\"))",
      ":testresult", Test.f_test(
        context,
        Core.vx_new_string(""),
        Ui.f_string_parentuid_from_uid(
          Core.vx_new_string("a")
        )
      )
    );
    return output;
  }

  public static Test.Type_testdescribe f_string_parentuid_from_uid_testdescribe_2(final Core.Type_context context) {
    Test.Type_testdescribe output = Core.vx_new(
      Test.t_testdescribe,
      ":describename", "(test\n \"a/b\"\n (string-parentuid<-uid\n  \"a/b/c\"))",
      ":testresult", Test.f_test(
        context,
        Core.vx_new_string("a/b"),
        Ui.f_string_parentuid_from_uid(
          Core.vx_new_string("a/b/c")
        )
      )
    );
    return output;
  }

  public static Test.Type_testcase f_ui_readstate_uiapp(final Core.Type_context context) {
    Test.Type_testcase output = Core.vx_new(
      Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/ui/ui",
      ":casename", "ui-readstate-uiapp",
      ":describelist",
      Core.vx_new(
        Test.t_testdescribelist,
        f_ui_readstate_uiapp_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Test.Type_testdescribe f_ui_readstate_uiapp_testdescribe_1(final Core.Type_context context) {
    Test.Type_testdescribe output = Core.vx_new(
      Test.t_testdescribe,
      ":describename", "(test\n (ui\n  :uid \"myapp\")\n (let : ui\n  [iswrite : boolean :=\n    (boolean-writestate<-uiapp\n     (ui\n      :uid \"myapp\"))]\n  (ui-readstate-uiapp)))",
      ":testresult", Test.f_test(
        context,
        Core.f_new(
          Ui.t_ui,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":uid"),
            Core.vx_new_string("myapp")
          )
        ),
        Core.f_let(
          Ui.t_ui,
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_boolean iswrite = Ui.f_boolean_writestate_from_uiapp(
              context,
              Core.f_new(
                Ui.t_ui,
                Core.vx_new(
                  Core.t_anylist,
                  Core.vx_new_string(":uid"),
                  Core.vx_new_string("myapp")
                )
              )
            );
            Core.Type_any output_1 = Ui.f_ui_readstate_uiapp(
              context
            );
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Test.Type_testcase f_ui_readstate_from_uid(final Core.Type_context context) {
    Test.Type_testcase output = Core.vx_new(
      Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/ui/ui",
      ":casename", "ui-readstate<-uid",
      ":describelist",
      Core.vx_new(
        Test.t_testdescribelist,
        f_ui_readstate_from_uid_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Test.Type_testdescribe f_ui_readstate_from_uid_testdescribe_1(final Core.Type_context context) {
    Test.Type_testdescribe output = Core.vx_new(
      Test.t_testdescribe,
      ":describename", "(test\n (ui\n  :uid \"a/b/c\")\n (let : ui\n  [uiapp : ui :=\n    (ui\n     :uid \"a\"\n     :uimap\n      (uimap<-uilist\n       (ui\n        :uid \"a/b\"\n        :uimap\n         (uimap<-uilist\n          (ui\n           :uid \"a/b/c\")))))\n   iswrite : boolean :=\n    (boolean-writestate<-uiapp uiapp)\n   readval : ui :=\n    (ui-readstate<-uid\n     \"a/b/c\")\n   isremoved : boolean := (boolean-removestate-uiapp)]\n  readval))",
      ":testresult", Test.f_test(
        context,
        Core.f_new(
          Ui.t_ui,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":uid"),
            Core.vx_new_string("a/b/c")
          )
        ),
        Core.f_let(
          Ui.t_ui,
          Core.t_any_from_func.vx_fn_new(() -> {
            Ui.Type_ui uiapp = Core.f_new(
              Ui.t_ui,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":uid"),
                Core.vx_new_string("a"),
                Core.vx_new_string(":uimap"),
                Ui.f_uimap_from_uilist(
                  Core.vx_new(
                    Ui.t_uilist,
                    Core.f_new(
                      Ui.t_ui,
                      Core.vx_new(
                        Core.t_anylist,
                        Core.vx_new_string(":uid"),
                        Core.vx_new_string("a/b"),
                        Core.vx_new_string(":uimap"),
                        Ui.f_uimap_from_uilist(
                          Core.vx_new(
                            Ui.t_uilist,
                            Core.f_new(
                              Ui.t_ui,
                              Core.vx_new(
                                Core.t_anylist,
                                Core.vx_new_string(":uid"),
                                Core.vx_new_string("a/b/c")
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            );
            Core.Type_boolean iswrite = Ui.f_boolean_writestate_from_uiapp(
              context,
              uiapp
            );
            Ui.Type_ui readval = Ui.f_ui_readstate_from_uid(
              context,
              Core.vx_new_string("a/b/c")
            );
            Core.Type_boolean isremoved = Ui.f_boolean_removestate_uiapp(
              context
            );
            Core.Type_any output_1 = readval;
            return output_1;
          })
        )
      )
    );
    return output;
  }

  public static Test.Type_testcase f_ui_write_from_ui_visible(final Core.Type_context context) {
    Test.Type_testcase output = Core.vx_new(
      Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/ui/ui",
      ":casename", "ui-write<-ui-visible",
      ":describelist",
      Core.vx_new(
        Test.t_testdescribelist,
        f_ui_write_from_ui_visible_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Test.Type_testdescribe f_ui_write_from_ui_visible_testdescribe_1(final Core.Type_context context) {
    Test.Type_testdescribe output = Core.vx_new(
      Test.t_testdescribe,
      ":describename", "(test\n (ui\n  :uimap\n   (uimap\n    :a\n     (ui\n      :uid \"a\"\n      :hidden true)\n    :b\n     (ui\n      :uid \"b\")))\n (ui-write<-ui-visible\n  (ui\n   :uimap\n    (uimap\n     :a\n      (ui\n       :uid \"a\")\n     :b\n      (ui\n       :uid \"b\"\n       :hidden true)))\n  2))",
      ":testresult", Test.f_test(
        context,
        Core.f_new(
          Ui.t_ui,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":uimap"),
            Core.f_new(
              Ui.t_uimap,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":a"),
                Core.f_new(
                  Ui.t_ui,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.vx_new_string(":uid"),
                    Core.vx_new_string("a"),
                    Core.vx_new_string(":hidden"),
                    Core.vx_new_boolean(true)
                  )
                ),
                Core.vx_new_string(":b"),
                Core.f_new(
                  Ui.t_ui,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.vx_new_string(":uid"),
                    Core.vx_new_string("b")
                  )
                )
              )
            )
          )
        ),
        Ui.f_ui_write_from_ui_visible(
          Core.f_new(
            Ui.t_ui,
            Core.vx_new(
              Core.t_anylist,
              Core.vx_new_string(":uimap"),
              Core.f_new(
                Ui.t_uimap,
                Core.vx_new(
                  Core.t_anylist,
                  Core.vx_new_string(":a"),
                  Core.f_new(
                    Ui.t_ui,
                    Core.vx_new(
                      Core.t_anylist,
                      Core.vx_new_string(":uid"),
                      Core.vx_new_string("a")
                    )
                  ),
                  Core.vx_new_string(":b"),
                  Core.f_new(
                    Ui.t_ui,
                    Core.vx_new(
                      Core.t_anylist,
                      Core.vx_new_string(":uid"),
                      Core.vx_new_string("b"),
                      Core.vx_new_string(":hidden"),
                      Core.vx_new_boolean(true)
                    )
                  )
                )
              )
            )
          ),
          Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Test.Type_testcase f_ui_from_ui_find(final Core.Type_context context) {
    Test.Type_testcase output = Core.vx_new(
      Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/ui/ui",
      ":casename", "ui<-ui-find",
      ":describelist",
      Core.vx_new(
        Test.t_testdescribelist,
        f_ui_from_ui_find_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Test.Type_testdescribe f_ui_from_ui_find_testdescribe_1(final Core.Type_context context) {
    Test.Type_testdescribe output = Core.vx_new(
      Test.t_testdescribe,
      ":describename", "(test\n (ui\n  :uid \"a/b/c\")\n (ui<-ui-find\n  (ui\n   :uid \"a\"\n   :uimap\n    (uimap\n     :a/b\n      (ui\n       :uid \"a/b\"\n       :uimap\n        (uimap\n         :a/b/c\n          (ui\n           :uid \"a/b/c\")))))\n  \"a/b/c\"))",
      ":testresult", Test.f_test(
        context,
        Core.f_new(
          Ui.t_ui,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":uid"),
            Core.vx_new_string("a/b/c")
          )
        ),
        Ui.f_ui_from_ui_find(
          Core.f_new(
            Ui.t_ui,
            Core.vx_new(
              Core.t_anylist,
              Core.vx_new_string(":uid"),
              Core.vx_new_string("a"),
              Core.vx_new_string(":uimap"),
              Core.f_new(
                Ui.t_uimap,
                Core.vx_new(
                  Core.t_anylist,
                  Core.vx_new_string(":a/b"),
                  Core.f_new(
                    Ui.t_ui,
                    Core.vx_new(
                      Core.t_anylist,
                      Core.vx_new_string(":uid"),
                      Core.vx_new_string("a/b"),
                      Core.vx_new_string(":uimap"),
                      Core.f_new(
                        Ui.t_uimap,
                        Core.vx_new(
                          Core.t_anylist,
                          Core.vx_new_string(":a/b/c"),
                          Core.f_new(
                            Ui.t_ui,
                            Core.vx_new(
                              Core.t_anylist,
                              Core.vx_new_string(":uid"),
                              Core.vx_new_string("a/b/c")
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          ),
          Core.vx_new_string("a/b/c")
        )
      )
    );
    return output;
  }

  public static Test.Type_testcase f_ui_from_ui_selected(final Core.Type_context context) {
    Test.Type_testcase output = Core.vx_new(
      Test.t_testcase,
      ":passfail", false,
      ":testpkg", "vx/ui/ui",
      ":casename", "ui<-ui-selected",
      ":describelist",
      Core.vx_new(
        Test.t_testdescribelist,
        f_ui_from_ui_selected_testdescribe_1(context)
      )
    );
    return output;
  }

  public static Test.Type_testdescribe f_ui_from_ui_selected_testdescribe_1(final Core.Type_context context) {
    Test.Type_testdescribe output = Core.vx_new(
      Test.t_testdescribe,
      ":describename", "(test\n (ui\n  :uimap\n   (uimap\n    :a\n     (ui\n      :uid \"a\")\n    :b\n     (ui\n      :uid \"b\"\n      :selected true)))\n (ui<-ui-selected\n  (ui\n   :uimap\n    (uimap\n     :a\n      (ui\n       :uid \"a\"\n       :selected true)\n     :b\n      (ui\n       :uid \"b\")))\n  2))",
      ":testresult", Test.f_test(
        context,
        Core.f_new(
          Ui.t_ui,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":uimap"),
            Core.f_new(
              Ui.t_uimap,
              Core.vx_new(
                Core.t_anylist,
                Core.vx_new_string(":a"),
                Core.f_new(
                  Ui.t_ui,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.vx_new_string(":uid"),
                    Core.vx_new_string("a")
                  )
                ),
                Core.vx_new_string(":b"),
                Core.f_new(
                  Ui.t_ui,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.vx_new_string(":uid"),
                    Core.vx_new_string("b"),
                    Core.vx_new_string(":selected"),
                    Core.vx_new_boolean(true)
                  )
                )
              )
            )
          )
        ),
        Ui.f_ui_from_ui_selected(
          Core.f_new(
            Ui.t_ui,
            Core.vx_new(
              Core.t_anylist,
              Core.vx_new_string(":uimap"),
              Core.f_new(
                Ui.t_uimap,
                Core.vx_new(
                  Core.t_anylist,
                  Core.vx_new_string(":a"),
                  Core.f_new(
                    Ui.t_ui,
                    Core.vx_new(
                      Core.t_anylist,
                      Core.vx_new_string(":uid"),
                      Core.vx_new_string("a"),
                      Core.vx_new_string(":selected"),
                      Core.vx_new_boolean(true)
                    )
                  ),
                  Core.vx_new_string(":b"),
                  Core.f_new(
                    Ui.t_ui,
                    Core.vx_new(
                      Core.t_anylist,
                      Core.vx_new_string(":uid"),
                      Core.vx_new_string("b")
                    )
                  )
                )
              )
            )
          ),
          Core.vx_new_int(2)
        )
      )
    );
    return output;
  }

  public static Test.Type_testcaselist test_cases(final Core.Type_context context) {
    List<Core.Type_any> testcases = Core.arraylist_from_array(
      UiTest.f_boolean_writestate_from_uiapp(context),
      UiTest.f_string_parentuid_from_uid(context),
      UiTest.f_ui_readstate_uiapp(context),
      UiTest.f_ui_readstate_from_uid(context),
      UiTest.f_ui_write_from_ui_visible(context),
      UiTest.f_ui_from_ui_find(context),
      UiTest.f_ui_from_ui_selected(context)
    );
    Test.Type_testcaselist output = Core.vx_new(
      Test.t_testcaselist,
      testcases
    );
    return output;
  }

  public static Test.Type_testcoveragesummary test_coveragesummary() {
    Test.Type_testcoveragesummary output = Core.vx_new(
      Test.t_testcoveragesummary,
      ":testpkg", "vx/ui/ui", 
      ":constnums", Core.vx_new(Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 50), 
      ":docnums", Core.vx_new(Test.t_testcoveragenums, ":pct", 64, ":tests", 95, ":total", 147), 
      ":funcnums", Core.vx_new(Test.t_testcoveragenums, ":pct", 10, ":tests", 7, ":total", 68), 
      ":bigospacenums", Core.vx_new(Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 68), 
      ":bigotimenums", Core.vx_new(Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 68), 
      ":totalnums", Core.vx_new(Test.t_testcoveragenums, ":pct", 4, ":tests", 7, ":total", 147), 
      ":typenums", Core.vx_new(Test.t_testcoveragenums, ":pct", 0, ":tests", 0, ":total", 29)
    );
    return output;
  }

  public static Test.Type_testcoveragedetail test_coveragedetail() {
    Test.Type_testcoveragedetail output = Core.vx_new(
      Test.t_testcoveragedetail,
      ":testpkg", "vx/ui/ui",
      ":typemap", Core.vx_new(
        Core.t_intmap,
        ":align", 0,
        ":bounds", 0,
        ":cursor", 0,
        ":cursor-pointer", 0,
        ":flip", 0,
        ":font", 0,
        ":fontface", 0,
        ":fontfacelist", 0,
        ":fontfacemap", 0,
        ":fontmap", 0,
        ":fontstyle", 0,
        ":fontstylemap", 0,
        ":image", 0,
        ":layout", 0,
        ":layoutengine", 0,
        ":layoutlist", 0,
        ":layoutmap", 0,
        ":pin", 0,
        ":point", 0,
        ":pointtype", 0,
        ":style", 0,
        ":stylelist", 0,
        ":stylemap", 0,
        ":stylesheet", 0,
        ":styletype", 0,
        ":ui", 0,
        ":uiengine", 0,
        ":uilist", 0,
        ":uimap", 0
      ), 
      ":constmap", Core.vx_new(
        Core.t_intmap,
        ":align-center", 0,
        ":align-left", 0,
        ":align-right", 0,
        ":flip-x", 0,
        ":flip-xy", 0,
        ":flip-y", 0,
        ":layout-app", 0,
        ":layout-background", 0,
        ":layout-button", 0,
        ":layout-combobox", 0,
        ":layout-else", 0,
        ":layout-flow-columns", 0,
        ":layout-flow-item", 0,
        ":layout-flow-rows", 0,
        ":layout-image", 0,
        ":layout-label", 0,
        ":layout-main", 0,
        ":layout-maxpanel", 0,
        ":layout-menubar", 0,
        ":layout-menudrawer", 0,
        ":layout-msgbox", 0,
        ":layout-navbar", 0,
        ":layout-navdrawer", 0,
        ":layout-panel", 0,
        ":layout-parallax", 0,
        ":layout-statusbar", 0,
        ":layout-statusdrawer", 0,
        ":layout-text", 0,
        ":layout-textentry", 0,
        ":layout-titlebar", 0,
        ":pin-bottom", 0,
        ":pin-center", 0,
        ":pin-center-h", 0,
        ":pin-center-v", 0,
        ":pin-expand", 0,
        ":pin-left", 0,
        ":pin-right", 0,
        ":pin-top", 0,
        ":point-center", 0,
        ":point-lefttop", 0,
        ":point-rightbottom", 0,
        ":point-rotate-180", 0,
        ":point-rotate-270", 0,
        ":point-rotate-90", 0,
        ":pointtype-absolute", 0,
        ":pointtype-percent", 0,
        ":pointtype-relative", 0,
        ":styletype-custom", 0,
        ":styletype-shared", 0,
        ":styletype-system", 0
      ), 
      ":funcmap", Core.vx_new(
        Core.t_intmap,
        ":boolean-layout<-ui-parent-selected", 0,
        ":boolean-layout<-ui-parent-visible", 0,
        ":boolean-layoutaddchild<-ui-parent", 0,
        ":boolean-layoutremove<-ui", 0,
        ":boolean-layoutremove<-ui-keys", 0,
        ":boolean-layoutremove<-ui-parent", 0,
        ":boolean-layoutremove<-ui-start-end", 0,
        ":boolean-layoutselected<-ui", 0,
        ":boolean-layoutselected<-ui-parent", 0,
        ":boolean-layoutselected<-ui-selected", 0,
        ":boolean-layoutvisible<-ui", 0,
        ":boolean-print", 0,
        ":boolean-removestate-uiapp", 0,
        ":boolean-write<-ui-parent", 0,
        ":boolean-writeremove<-ui-uid", 0,
        ":boolean-writestate<-ui", 0,
        ":boolean-writestate<-uiapp", 1,
        ":boolean-writestate<-uiengine", 0,
        ":fontfacemap<-fontfacelist", 0,
        ":int-child<-ui-uid", 0,
        ":int-selected<-ui", 0,
        ":int-visible<-ui", 0,
        ":intlist-visible<-ui", 0,
        ":layout<-style", 0,
        ":layout<-ui", 0,
        ":layout<-ui-layoutengine", 0,
        ":layout<-ui-layoutmap-else", 0,
        ":layoutengine-readstate", 0,
        ":layoutmap<-layoutlist", 0,
        ":string-parentuid<-uid", 2,
        ":string-selected<-ui", 0,
        ":stringlist-selected<-ui", 0,
        ":stringlist<-ui", 0,
        ":stylemap<-stylelist", 0,
        ":stylesheet-readstate", 0,
        ":stylesheet-render", 0,
        ":ui-addlayout<-ui", 0,
        ":ui-addlayout<-ui-layoutengine", 0,
        ":ui-addlayout<-ui-layoutmap-else", 0,
        ":ui-addlayout<-ui-uiengine", 0,
        ":ui-child<-ui-pos", 0,
        ":ui-child<-ui-uid", 0,
        ":ui-from<-event", 0,
        ":ui-layout", 0,
        ":ui-layout<-fn-layout-ui-orig-parent", 0,
        ":ui-layout<-ui-orig-parent", 0,
        ":ui-layout<-ui-parent-selected", 0,
        ":ui-layout<-ui-parent-visible", 0,
        ":ui-readstate-uiapp", 1,
        ":ui-readstate<-uid", 1,
        ":ui-selected<-ui", 0,
        ":ui-visible<-ui", 0,
        ":ui-write<-ui-child", 0,
        ":ui-write<-ui-childmap", 0,
        ":ui-write<-ui-visible", 1,
        ":ui<-layout-ui-orig-parent", 0,
        ":ui<-ui-find", 1,
        ":ui<-ui-selected", 1,
        ":uid-selected<-ui", 0,
        ":uiengine-readstate", 0,
        ":uiengine-render", 0,
        ":uilist-selected<-ui", 0,
        ":uilist-visible<-ui", 0,
        ":uilist<-uimap", 0,
        ":uimap-addlayout<-uimap-layoutmap-else", 0,
        ":uimap-layout<-uimap-parent", 0,
        ":uimap<-uilist", 0,
        ":uimap<-uimap-data", 0
      )
    );
    return output;
  }

  public static Test.Type_testpackage test_package(final Core.Type_context context) {
    Test.Type_testcaselist testcaselist = test_cases(context);
    Test.Type_testpackage output = Core.vx_new(
      Test.t_testpackage,
      ":testpkg", "vx/ui/ui", 
      ":caselist", testcaselist,
      ":coveragesummary", test_coveragesummary(),
      ":coveragedetail", test_coveragedetail()
    );
    return output;
  }

}
