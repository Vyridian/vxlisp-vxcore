public enum Vx {

  private static let initialized : Void = {
    Vx_Core.vx_initialize()
    Vx_Event.vx_initialize()
    Vx_Type.vx_initialize()
    Vx_Web_Html.vx_initialize()
    Vx_Collection.vx_initialize()
    Vx_Data_File.vx_initialize()
    Vx_Test.vx_initialize()
    Vx_Translate.vx_initialize()
    Vx_Translation_En.vx_initialize()
  }()

  public static func initialize() {
    _ = initialized
  }

}
