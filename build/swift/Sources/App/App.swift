/**
 * App
 */
import Vx

public enum App {

  public static func main(_ args : [String]) {
    Vx.initialize()
    do {
      var output : String = ""
      let arglist : any Vx_Core.Type_anylist = Vx_Core.vx_anylist_from_arraystring(args)
      let context : any Vx_Core.Type_context = Vx_Translation_En.f_context_en(arglist)
      let mainstring : any Vx_Core.Type_string = Vx_Core.f_main(arglist)
      output = mainstring.vx_string()
      print(output)
    } catch {
      print(error)
    }
  }


  public static func args() -> [String] {
    let args1 : [String] = CommandLine.arguments
    let args2 : [String] = Array(args1.dropFirst())
    let output = args2.filter { $0 != "--args" }
    return output
  }

}

App.main(App.args())
