
import Foundation

public enum Vx_Translation_En {


  public protocol Func_context_en : Vx_Core.Func_any_from_any, AnyObject {
    func vx_context_en(
      _ args : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_context
  }

  public class Class_context_en : Vx_Core.Class_base, Func_context_en {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translation_En.Class_context_en = Vx_Translation_En.Class_context_en()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translation_En.Class_context_en = Vx_Translation_En.Class_context_en()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translation/en", // pkgname
        "context-en", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "context", // name
          ":struct", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translation_En.e_context_en
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translation_En.t_context_en
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any.IFn) -> Vx_Core.Func_any_from_any {
      return Vx_Core.e_any_from_any
    }

    public func vx_any_from_any<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> T {
      var output : T = Vx_Core.f_empty(generic_any_1)
      let inputval : any Vx_Core.Type_anylist = value as! any Vx_Core.Type_anylist
      let outputval : any Vx_Core.Type_any = Vx_Translation_En.f_context_en(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let args : any Vx_Core.Type_anylist = Vx_Core.f_any_from_any(Vx_Core.t_anylist, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Translation_En.f_context_en(args)
      return output
    }

    public func vx_context_en(
      _ args : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_context {
      let output : any Vx_Core.Type_context = Vx_Translation_En.f_context_en(args)
      return output
    }

  }

  public static let e_context_en : any Vx_Translation_En.Func_context_en = Vx_Translation_En.Class_context_en()
  public static let t_context_en : any Vx_Translation_En.Func_context_en = Vx_Translation_En.Class_context_en()

  public static func f_context_en(
    _ args : any Vx_Core.Type_anylist
  ) -> any Vx_Core.Type_context {
    var output : any Vx_Core.Type_context = Vx_Core.e_context
    output = Vx_Core.f_new(
      Vx_Core.t_context,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        Vx_Core.vx_new_string(":session"),
        Vx_Core.f_new(
          Vx_Core.t_session,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":translation"),
            Vx_Translation_En.f_translation_en()
          )
        )
      )
    )
    return output
  }


  public protocol Func_context_test : Vx_Core.Func_any_from_any, AnyObject {
    func vx_context_test(
      _ args : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_context
  }

  public class Class_context_test : Vx_Core.Class_base, Func_context_test {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translation_En.Class_context_test = Vx_Translation_En.Class_context_test()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translation_En.Class_context_test = Vx_Translation_En.Class_context_test()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translation/en", // pkgname
        "context-test", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "context", // name
          ":struct", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translation_En.e_context_test
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translation_En.t_context_test
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any.IFn) -> Vx_Core.Func_any_from_any {
      return Vx_Core.e_any_from_any
    }

    public func vx_any_from_any<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> T {
      var output : T = Vx_Core.f_empty(generic_any_1)
      let inputval : any Vx_Core.Type_anylist = value as! any Vx_Core.Type_anylist
      let outputval : any Vx_Core.Type_any = Vx_Translation_En.f_context_test(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let args : any Vx_Core.Type_anylist = Vx_Core.f_any_from_any(Vx_Core.t_anylist, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Translation_En.f_context_test(args)
      return output
    }

    public func vx_context_test(
      _ args : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_context {
      let output : any Vx_Core.Type_context = Vx_Translation_En.f_context_test(args)
      return output
    }

  }

  public static let e_context_test : any Vx_Translation_En.Func_context_test = Vx_Translation_En.Class_context_test()
  public static let t_context_test : any Vx_Translation_En.Func_context_test = Vx_Translation_En.Class_context_test()

  public static func f_context_test(
    _ args : any Vx_Core.Type_anylist
  ) -> any Vx_Core.Type_context {
    var output : any Vx_Core.Type_context = Vx_Core.e_context
    output = Vx_Core.f_new(
      Vx_Core.t_context,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        Vx_Core.vx_new_string(":session"),
        Vx_Core.f_new(
          Vx_Core.t_session,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":translation"),
            Vx_Translation_En.f_translation_en(),
            Vx_Core.vx_new_string(":user"),
            Vx_Core.f_new(
              Vx_Core.t_user,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                Vx_Core.vx_new_string(":security"),
                Vx_Translation_En.f_securitydata_test()
              )
            )
          )
        )
      )
    )
    return output
  }


  public protocol Func_securitydata_test : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_securitydata_test() -> any Vx_Core.Type_security
  }

  public class Class_securitydata_test : Vx_Core.Class_base, Func_securitydata_test {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translation_En.Class_securitydata_test = Vx_Translation_En.Class_securitydata_test()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translation_En.Class_securitydata_test = Vx_Translation_En.Class_securitydata_test()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translation/en", // pkgname
        "securitydata-test", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "security", // name
          ":struct", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translation_En.e_securitydata_test
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translation_En.t_securitydata_test
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      output = Vx_Translation_En.f_securitydata_test()
      return output
    }

    public func vx_securitydata_test() -> any Vx_Core.Type_security {
      let output : any Vx_Core.Type_security = Vx_Translation_En.f_securitydata_test()
      return output
    }

  }

  public static let e_securitydata_test : any Vx_Translation_En.Func_securitydata_test = Vx_Translation_En.Class_securitydata_test()
  public static let t_securitydata_test : any Vx_Translation_En.Func_securitydata_test = Vx_Translation_En.Class_securitydata_test()

  public static func f_securitydata_test() -> any Vx_Core.Type_security {
    var output : any Vx_Core.Type_security = Vx_Core.e_security
    output = Vx_Core.f_new(
      Vx_Core.t_security,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        Vx_Core.vx_new_string(":allowfuncs"),
        Vx_Core.f_new(
          Vx_Core.t_funclist,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Data_File.t_boolean_write_from_file_any,
            Vx_Data_File.t_boolean_write_from_file_string,
            Vx_Data_File.t_file_read_from_file,
            Vx_Data_File.t_string_read_from_file
          )
        )
      )
    )
    return output
  }


  public protocol Func_translation_en : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_translation_en() -> any Vx_Core.Type_translation
  }

  public class Class_translation_en : Vx_Core.Class_base, Func_translation_en {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translation_En.Class_translation_en = Vx_Translation_En.Class_translation_en()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translation_En.Class_translation_en = Vx_Translation_En.Class_translation_en()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translation/en", // pkgname
        "translation-en", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "translation", // name
          ":struct", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.e_typelist, // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translation_En.e_translation_en
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translation_En.t_translation_en
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      output = Vx_Translation_En.f_translation_en()
      return output
    }

    public func vx_translation_en() -> any Vx_Core.Type_translation {
      let output : any Vx_Core.Type_translation = Vx_Translation_En.f_translation_en()
      return output
    }

  }

  public static let e_translation_en : any Vx_Translation_En.Func_translation_en = Vx_Translation_En.Class_translation_en()
  public static let t_translation_en : any Vx_Translation_En.Func_translation_en = Vx_Translation_En.Class_translation_en()

  public static func f_translation_en() -> any Vx_Core.Type_translation {
    var output : any Vx_Core.Type_translation = Vx_Core.e_translation
    output = Vx_Core.f_new(
      Vx_Core.t_translation,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        Vx_Core.vx_new_string(":name"),
        Vx_Core.vx_new_string("en"),
        Vx_Core.vx_new_string(":wordmap"),
        Vx_Translation_En.f_words()
      )
    )
    return output
  }


  public protocol Func_words : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_words() -> any Vx_Core.Type_stringmap
  }

  public class Class_words : Vx_Core.Class_base, Func_words {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translation_En.Class_words = Vx_Translation_En.Class_words()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translation_En.Class_words = Vx_Translation_En.Class_words()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translation/en", // pkgname
        "words", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "stringmap", // name
          ":map", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_string), // allowtypes
          Vx_Core.e_typelist, // disallowtypes
          Vx_Core.e_funclist, // allowfuncs
          Vx_Core.e_funclist, // disallowfuncs
          Vx_Core.e_anylist, // allowvalues
          Vx_Core.e_anylist, // disallowvalues
          Vx_Core.e_argmap // properties
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translation_En.e_words
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translation_En.t_words
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      output = Vx_Translation_En.f_words()
      return output
    }

    public func vx_words() -> any Vx_Core.Type_stringmap {
      let output : any Vx_Core.Type_stringmap = Vx_Translation_En.f_words()
      return output
    }

  }

  public static let e_words : any Vx_Translation_En.Func_words = Vx_Translation_En.Class_words()
  public static let t_words : any Vx_Translation_En.Func_words = Vx_Translation_En.Class_words()

  public static func f_words() -> any Vx_Core.Type_stringmap {
    var output : any Vx_Core.Type_stringmap = Vx_Core.e_stringmap
    output = Vx_Core.f_new(
      Vx_Core.t_stringmap,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        Vx_Core.vx_new_string("Hello"),
        Vx_Core.vx_new_string("Hello"),
        Vx_Core.vx_new_string("World"),
        Vx_Core.vx_new_string("World"),
        Vx_Core.vx_new_string("!vx/core/func exception"),
        Vx_Core.vx_new_string("Exception in Function"),
        Vx_Core.vx_new_string("!vx/core/func permissiondenied"),
        Vx_Core.vx_new_string("Permission Denied to Function"),
        Vx_Core.vx_new_string("!vx/repl/repl/repl<-string-argmap repltypenotfound"),
        Vx_Core.vx_new_string("Repl Type Not Found")
      )
    )
    return output
  }

  private static var initialized : Bool = false

  public static func vx_initialize() {
    guard !initialized else { return }
    initialized = true
    var maptype : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapconst : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapfunc : Vx_Core.MapMutable<any Vx_Core.Type_func> = Vx_Core.MapMutable<any Vx_Core.Type_func>()
    mapfunc.put("context-en", Vx_Translation_En.t_context_en)
    mapfunc.put("context-test", Vx_Translation_En.t_context_test)
    mapfunc.put("securitydata-test", Vx_Translation_En.t_securitydata_test)
    mapfunc.put("translation-en", Vx_Translation_En.t_translation_en)
    mapfunc.put("words", Vx_Translation_En.t_words)
    Vx_Core.vx_global_package_set(
      "vx/translation/en",
      Vx_Core.vx_mapimmutable(maptype),
      Vx_Core.vx_mapimmutable(mapconst),
      Vx_Core.vx_mapimmutable(mapfunc)
    )
  }

}
