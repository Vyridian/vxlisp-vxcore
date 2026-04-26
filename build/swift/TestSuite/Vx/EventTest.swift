
import Vx

public enum Vx_EventTest {

  public static func test_cases(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testcaselist {
    let output : any Vx_Test.Type_testcaselist = Vx_Test.e_testcaselist
    return output
  }

  public static func test_coveragesummary() -> any Vx_Test.Type_testcoveragesummary {
    let output : any Vx_Test.Type_testcoveragesummary = Vx_Core.vx_new(
      Vx_Test.t_testcoveragesummary,
      [
        ":testpkg",
        "vx/event",
        ":constnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            0,
            ":tests",
            0,
            ":total",
            4
          ]
        ),
        ":docnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            90,
            ":tests",
            10,
            ":total",
            11
          ]
        ),
        ":funcnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            0,
            ":tests",
            0,
            ":total",
            4
          ]
        ),
        ":bigospacenums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            0,
            ":tests",
            0,
            ":total",
            4
          ]
        ),
        ":bigotimenums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            0,
            ":tests",
            0,
            ":total",
            4
          ]
        ),
        ":totalnums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            0,
            ":tests",
            0,
            ":total",
            11
          ]
        ),
        ":typenums",
        Vx_Core.vx_new(
          Vx_Test.t_testcoveragenums,
          [
            ":pct",
            0,
            ":tests",
            0,
            ":total",
            3
          ]
        )
      ]
    )
    return output
  }

  public static func test_coveragedetail() -> any Vx_Test.Type_testcoveragedetail {
    let output : any Vx_Test.Type_testcoveragedetail = Vx_Core.vx_new(
      Vx_Test.t_testcoveragedetail,
      [
        ":testpkg",
        "vx/event",
        ":typemap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":event", 0,
            ":eventlist", 0,
            ":eventmap", 0
          ]
        ),
        ":constmap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":event-change", 0,
            ":event-click", 0,
            ":event-move", 0,
            ":event-select", 0
          ]
        ),
        ":funcmap",
        Vx_Core.vx_new(
          Vx_Core.t_intmap,
          [
            ":any-from<-event", 0,
            ":event<-event", 0,
            ":event<-event-async", 0,
            ":eventmap<-eventlist", 0
          ]
        )
      ]
    )
    return output
  }

  public static func test_package(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Test.Type_testpackage {
    let testcaselist : any Vx_Test.Type_testcaselist = test_cases(context)
    let output : any Vx_Test.Type_testpackage = Vx_Core.vx_new(
      Vx_Test.t_testpackage,
      [
        ":testpkg",
        "vx/event",
        ":caselist",
        testcaselist,
        ":coveragesummary",
        test_coveragesummary(),
        ":coveragedetail",
        test_coveragedetail()
      ]
    )
    return output
  }

}
