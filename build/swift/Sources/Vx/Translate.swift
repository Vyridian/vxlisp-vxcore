
import Foundation

public enum Vx_Translate {


  public protocol Func_session_from_session_name : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_session_from_session_name(
      _ session : any Vx_Core.Type_session,
      _ name : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_session
  }

  public class Class_session_from_session_name : Vx_Core.Class_base, Func_session_from_session_name {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_session_from_session_name = Vx_Translate.Class_session_from_session_name()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_session_from_session_name = Vx_Translate.Class_session_from_session_name()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "session<-session-name", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "session", // name
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_session_from_session_name
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_session_from_session_name
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let session : any Vx_Core.Type_session = Vx_Core.f_any_from_any(Vx_Core.t_session, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let name : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Translate.f_session_from_session_name(session, name)
      return output
    }

    public func vx_session_from_session_name(
      _ session : any Vx_Core.Type_session,
      _ name : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_session {
      let output : any Vx_Core.Type_session = Vx_Translate.f_session_from_session_name(session, name)
      return output
    }

  }

  public static let e_session_from_session_name : any Vx_Translate.Func_session_from_session_name = Vx_Translate.Class_session_from_session_name()
  public static let t_session_from_session_name : any Vx_Translate.Func_session_from_session_name = Vx_Translate.Class_session_from_session_name()

  public static func f_session_from_session_name(
    _ session : any Vx_Core.Type_session,
    _ name : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_session {
    var output : any Vx_Core.Type_session = Vx_Core.e_session
    output = Vx_Core.f_copy(
      Vx_Core.t_session,
      session,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        Vx_Core.vx_new_string(":translation"),
        Vx_Translate.f_translation_from_session_name(
          session,
          name
        )
      )
    )
    return output
  }


  public protocol Func_session_from_session_translation : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_session_from_session_translation(
      _ session : any Vx_Core.Type_session,
      _ translation : any Vx_Core.Type_translation
    ) -> any Vx_Core.Type_session
  }

  public class Class_session_from_session_translation : Vx_Core.Class_base, Func_session_from_session_translation {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_session_from_session_translation = Vx_Translate.Class_session_from_session_translation()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_session_from_session_translation = Vx_Translate.Class_session_from_session_translation()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "session<-session-translation", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "session", // name
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_session_from_session_translation
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_session_from_session_translation
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let session : any Vx_Core.Type_session = Vx_Core.f_any_from_any(Vx_Core.t_session, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let translation : any Vx_Core.Type_translation = Vx_Core.f_any_from_any(Vx_Core.t_translation, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Translate.f_session_from_session_translation(session, translation)
      return output
    }

    public func vx_session_from_session_translation(
      _ session : any Vx_Core.Type_session,
      _ translation : any Vx_Core.Type_translation
    ) -> any Vx_Core.Type_session {
      let output : any Vx_Core.Type_session = Vx_Translate.f_session_from_session_translation(session, translation)
      return output
    }

  }

  public static let e_session_from_session_translation : any Vx_Translate.Func_session_from_session_translation = Vx_Translate.Class_session_from_session_translation()
  public static let t_session_from_session_translation : any Vx_Translate.Func_session_from_session_translation = Vx_Translate.Class_session_from_session_translation()

  public static func f_session_from_session_translation(
    _ session : any Vx_Core.Type_session,
    _ translation : any Vx_Core.Type_translation
  ) -> any Vx_Core.Type_session {
    var output : any Vx_Core.Type_session = Vx_Core.e_session
    output = Vx_Core.f_copy(
      Vx_Core.t_session,
      session,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        Vx_Core.vx_new_string(":translation"),
        translation
      )
    )
    return output
  }


  public protocol Func_session_from_session_translationmap_name : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_session_from_session_translationmap_name(
      _ session : any Vx_Core.Type_session,
      _ translationmap : any Vx_Core.Type_translationmap,
      _ name : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_session
  }

  public class Class_session_from_session_translationmap_name : Vx_Core.Class_base, Func_session_from_session_translationmap_name {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_session_from_session_translationmap_name = Vx_Translate.Class_session_from_session_translationmap_name()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_session_from_session_translationmap_name = Vx_Translate.Class_session_from_session_translationmap_name()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "session<-session-translationmap-name", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "session", // name
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_session_from_session_translationmap_name
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_session_from_session_translationmap_name
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let session : any Vx_Core.Type_session = Vx_Core.f_any_from_any(Vx_Core.t_session, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let translationmap : any Vx_Core.Type_translationmap = Vx_Core.f_any_from_any(Vx_Core.t_translationmap, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let name : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(2)))
      output = Vx_Translate.f_session_from_session_translationmap_name(session, translationmap, name)
      return output
    }

    public func vx_session_from_session_translationmap_name(
      _ session : any Vx_Core.Type_session,
      _ translationmap : any Vx_Core.Type_translationmap,
      _ name : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_session {
      let output : any Vx_Core.Type_session = Vx_Translate.f_session_from_session_translationmap_name(session, translationmap, name)
      return output
    }

  }

  public static let e_session_from_session_translationmap_name : any Vx_Translate.Func_session_from_session_translationmap_name = Vx_Translate.Class_session_from_session_translationmap_name()
  public static let t_session_from_session_translationmap_name : any Vx_Translate.Func_session_from_session_translationmap_name = Vx_Translate.Class_session_from_session_translationmap_name()

  public static func f_session_from_session_translationmap_name(
    _ session : any Vx_Core.Type_session,
    _ translationmap : any Vx_Core.Type_translationmap,
    _ name : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_session {
    var output : any Vx_Core.Type_session = Vx_Core.e_session
    output = Vx_Core.f_copy(
      Vx_Core.t_session,
      session,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        Vx_Core.vx_new_string(":translation"),
        Vx_Core.f_any_from_map(
          Vx_Core.t_anylist,
          translationmap,
          name
        ),
        Vx_Core.vx_new_string(":translationmap"),
        translationmap
      )
    )
    return output
  }


  public protocol Func_translate : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_translate(
      _ context : any Vx_Core.Type_context,
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_translate : Vx_Core.Class_base, Func_translate {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translate = Vx_Translate.Class_translate()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translate = Vx_Translate.Class_translate()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "translate", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "string", // name
          ":string", // extends
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_translate
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_translate
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_context.IFn) -> Vx_Core.Func_any_from_any_context {
      return Vx_Core.e_any_from_any_context
    }

    public func vx_any_from_any_context<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ context : any Vx_Core.Type_context,
      _ value : any Vx_Core.Type_any
    ) -> T {
      var output : T = Vx_Core.f_empty(generic_any_1)
      let inputval : any Vx_Core.Type_string = value as! any Vx_Core.Type_string
      let outputval : any Vx_Core.Type_any = Vx_Translate.f_translate(context, inputval)
      output = Vx_Core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Translate.f_translate(context, text)
      return output
    }

    public func vx_translate(
      _ context : any Vx_Core.Type_context,
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Translate.f_translate(context, text)
      return output
    }

  }

  public static let e_translate : any Vx_Translate.Func_translate = Vx_Translate.Class_translate()
  public static let t_translate : any Vx_Translate.Func_translate = Vx_Translate.Class_translate()

  public static func f_translate(
    _ context : any Vx_Core.Type_context,
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Translate.f_translate_from_translation_string(
      Vx_Translate.f_translation_from_context(
        context
      ),
      text
    )
    return output
  }


  public protocol Func_translate_1 : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_translate_1(
      _ context : any Vx_Core.Type_context,
      _ msg : any Vx_Core.Type_msg
    ) -> any Vx_Core.Type_string
  }

  public class Class_translate_1 : Vx_Core.Class_base, Func_translate_1 {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translate_1 = Vx_Translate.Class_translate_1()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translate_1 = Vx_Translate.Class_translate_1()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "translate", // name
        1, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "string", // name
          ":string", // extends
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_translate_1
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_translate_1
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_context.IFn) -> Vx_Core.Func_any_from_any_context {
      return Vx_Core.e_any_from_any_context
    }

    public func vx_any_from_any_context<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ context : any Vx_Core.Type_context,
      _ value : any Vx_Core.Type_any
    ) -> T {
      var output : T = Vx_Core.f_empty(generic_any_1)
      let inputval : any Vx_Core.Type_msg = value as! any Vx_Core.Type_msg
      let outputval : any Vx_Core.Type_any = Vx_Translate.f_translate_1(context, inputval)
      output = Vx_Core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let msg : any Vx_Core.Type_msg = Vx_Core.f_any_from_any(Vx_Core.t_msg, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Translate.f_translate_1(context, msg)
      return output
    }

    public func vx_translate_1(
      _ context : any Vx_Core.Type_context,
      _ msg : any Vx_Core.Type_msg
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Translate.f_translate_1(context, msg)
      return output
    }

  }

  public static let e_translate_1 : any Vx_Translate.Func_translate_1 = Vx_Translate.Class_translate_1()
  public static let t_translate_1 : any Vx_Translate.Func_translate_1 = Vx_Translate.Class_translate_1()

  public static func f_translate_1(
    _ context : any Vx_Core.Type_context,
    _ msg : any Vx_Core.Type_msg
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let path : any Vx_Core.Type_string = msg.path()
        let code : any Vx_Core.Type_string = msg.code()
        let text : any Vx_Core.Type_string = Vx_Core.f_new(
          Vx_Core.t_string,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string("!"),
            path,
            Vx_Core.vx_new_string(" "),
            code
          )
        )
        let output_1 : any Vx_Core.Type_any = Vx_Translate.f_translate(
          context,
          text
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_translate_from_translation_string : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_translate_from_translation_string(
      _ translation : any Vx_Core.Type_translation,
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_translate_from_translation_string : Vx_Core.Class_base, Func_translate_from_translation_string {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translate_from_translation_string = Vx_Translate.Class_translate_from_translation_string()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translate_from_translation_string = Vx_Translate.Class_translate_from_translation_string()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "translate<-translation-string", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "string", // name
          ":string", // extends
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_translate_from_translation_string
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_translate_from_translation_string
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let translation : any Vx_Core.Type_translation = Vx_Core.f_any_from_any(Vx_Core.t_translation, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Translate.f_translate_from_translation_string(translation, text)
      return output
    }

    public func vx_translate_from_translation_string(
      _ translation : any Vx_Core.Type_translation,
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Translate.f_translate_from_translation_string(translation, text)
      return output
    }

  }

  public static let e_translate_from_translation_string : any Vx_Translate.Func_translate_from_translation_string = Vx_Translate.Class_translate_from_translation_string()
  public static let t_translate_from_translation_string : any Vx_Translate.Func_translate_from_translation_string = Vx_Translate.Class_translate_from_translation_string()

  public static func f_translate_from_translation_string(
    _ translation : any Vx_Core.Type_translation,
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_if_1(
      Vx_Core.t_string,
      Vx_Core.f_is_empty_1(
        translation
      ),
      text,
      Vx_Core.f_let(
        Vx_Core.t_string,
        Vx_Core.t_any_from_func.vx_fn_new({() in
          let wordmap : any Vx_Core.Type_stringmap = translation.wordmap()
          let xlate : any Vx_Core.Type_string = Vx_Core.f_any_from_map(
            Vx_Core.t_string,
            wordmap,
            text
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_if_1(
            Vx_Core.t_string,
            Vx_Core.f_is_empty(
              xlate
            ),
            text,
            xlate
          )
          return output_1
        })
      )
    )
    return output
  }


  public protocol Func_translate_from_translationmap_name_string : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_translate_from_translationmap_name_string(
      _ translationmap : any Vx_Core.Type_translationmap,
      _ name : any Vx_Core.Type_string,
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_translate_from_translationmap_name_string : Vx_Core.Class_base, Func_translate_from_translationmap_name_string {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translate_from_translationmap_name_string = Vx_Translate.Class_translate_from_translationmap_name_string()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translate_from_translationmap_name_string = Vx_Translate.Class_translate_from_translationmap_name_string()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "translate<-translationmap-name-string", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "string", // name
          ":string", // extends
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_translate_from_translationmap_name_string
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_translate_from_translationmap_name_string
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let translationmap : any Vx_Core.Type_translationmap = Vx_Core.f_any_from_any(Vx_Core.t_translationmap, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let name : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(2)))
      output = Vx_Translate.f_translate_from_translationmap_name_string(translationmap, name, text)
      return output
    }

    public func vx_translate_from_translationmap_name_string(
      _ translationmap : any Vx_Core.Type_translationmap,
      _ name : any Vx_Core.Type_string,
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Translate.f_translate_from_translationmap_name_string(translationmap, name, text)
      return output
    }

  }

  public static let e_translate_from_translationmap_name_string : any Vx_Translate.Func_translate_from_translationmap_name_string = Vx_Translate.Class_translate_from_translationmap_name_string()
  public static let t_translate_from_translationmap_name_string : any Vx_Translate.Func_translate_from_translationmap_name_string = Vx_Translate.Class_translate_from_translationmap_name_string()

  public static func f_translate_from_translationmap_name_string(
    _ translationmap : any Vx_Core.Type_translationmap,
    _ name : any Vx_Core.Type_string,
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let translation : any Vx_Core.Type_translation = Vx_Core.f_any_from_map(
          Vx_Core.t_translation,
          translationmap,
          name
        )
        let output_1 : any Vx_Core.Type_any = Vx_Translate.f_translate_from_translation_string(
          translation,
          text
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_translation_load_session : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_translation_load_session(
      _ context : any Vx_Core.Type_context,
      _ translation : any Vx_Core.Type_translation
    ) -> any Vx_Core.Type_translation
  }

  public class Class_translation_load_session : Vx_Core.Class_base, Func_translation_load_session {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translation_load_session = Vx_Translate.Class_translation_load_session()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translation_load_session = Vx_Translate.Class_translation_load_session()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "translation-load-session", // name
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_translation_load_session
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_translation_load_session
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_context.IFn) -> Vx_Core.Func_any_from_any_context {
      return Vx_Core.e_any_from_any_context
    }

    public func vx_any_from_any_context<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ context : any Vx_Core.Type_context,
      _ value : any Vx_Core.Type_any
    ) -> T {
      var output : T = Vx_Core.f_empty(generic_any_1)
      let inputval : any Vx_Core.Type_translation = value as! any Vx_Core.Type_translation
      let outputval : any Vx_Core.Type_any = Vx_Translate.f_translation_load_session(context, inputval)
      output = Vx_Core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let translation : any Vx_Core.Type_translation = Vx_Core.f_any_from_any(Vx_Core.t_translation, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Translate.f_translation_load_session(context, translation)
      return output
    }

    public func vx_translation_load_session(
      _ context : any Vx_Core.Type_context,
      _ translation : any Vx_Core.Type_translation
    ) -> any Vx_Core.Type_translation {
      let output : any Vx_Core.Type_translation = Vx_Translate.f_translation_load_session(context, translation)
      return output
    }

  }

  public static let e_translation_load_session : any Vx_Translate.Func_translation_load_session = Vx_Translate.Class_translation_load_session()
  public static let t_translation_load_session : any Vx_Translate.Func_translation_load_session = Vx_Translate.Class_translation_load_session()

  public static func f_translation_load_session(
    _ context : any Vx_Core.Type_context,
    _ translation : any Vx_Core.Type_translation
  ) -> any Vx_Core.Type_translation {
    var output : any Vx_Core.Type_translation = Vx_Core.e_translation
    return output
  }


  public protocol Func_translation_from_context : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_translation_from_context(
      _ context : any Vx_Core.Type_context
    ) -> any Vx_Core.Type_translation
  }

  public class Class_translation_from_context : Vx_Core.Class_base, Func_translation_from_context {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translation_from_context = Vx_Translate.Class_translation_from_context()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translation_from_context = Vx_Translate.Class_translation_from_context()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "translation<-context", // name
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_translation_from_context
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_translation_from_context
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Translate.f_translation_from_context(context)
      return output
    }

    public func vx_translation_from_context(
      _ context : any Vx_Core.Type_context
    ) -> any Vx_Core.Type_translation {
      let output : any Vx_Core.Type_translation = Vx_Translate.f_translation_from_context(context)
      return output
    }

  }

  public static let e_translation_from_context : any Vx_Translate.Func_translation_from_context = Vx_Translate.Class_translation_from_context()
  public static let t_translation_from_context : any Vx_Translate.Func_translation_from_context = Vx_Translate.Class_translation_from_context()

  public static func f_translation_from_context(
    _ context : any Vx_Core.Type_context
  ) -> any Vx_Core.Type_translation {
    var output : any Vx_Core.Type_translation = Vx_Core.e_translation
    output = Vx_Core.f_session_from_context(
      context
    ).translation()
    return output
  }


  public protocol Func_translation_from_session_name : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_translation_from_session_name(
      _ session : any Vx_Core.Type_session,
      _ name : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_translation
  }

  public class Class_translation_from_session_name : Vx_Core.Class_base, Func_translation_from_session_name {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translation_from_session_name = Vx_Translate.Class_translation_from_session_name()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translation_from_session_name = Vx_Translate.Class_translation_from_session_name()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "translation<-session-name", // name
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_translation_from_session_name
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_translation_from_session_name
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let session : any Vx_Core.Type_session = Vx_Core.f_any_from_any(Vx_Core.t_session, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let name : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Translate.f_translation_from_session_name(session, name)
      return output
    }

    public func vx_translation_from_session_name(
      _ session : any Vx_Core.Type_session,
      _ name : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_translation {
      let output : any Vx_Core.Type_translation = Vx_Translate.f_translation_from_session_name(session, name)
      return output
    }

  }

  public static let e_translation_from_session_name : any Vx_Translate.Func_translation_from_session_name = Vx_Translate.Class_translation_from_session_name()
  public static let t_translation_from_session_name : any Vx_Translate.Func_translation_from_session_name = Vx_Translate.Class_translation_from_session_name()

  public static func f_translation_from_session_name(
    _ session : any Vx_Core.Type_session,
    _ name : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_translation {
    var output : any Vx_Core.Type_translation = Vx_Core.e_translation
    output = Vx_Core.f_let(
      Vx_Core.t_translation,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let translationmap : any Vx_Core.Type_translationmap = session.translationmap()
        let output_1 : any Vx_Core.Type_any = Vx_Core.f_any_from_map(
          Vx_Core.t_translation,
          translationmap,
          name
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_translationmap_from_translations : Vx_Core.Func_any_from_any, AnyObject {
    func vx_translationmap_from_translations(
      _ translations : any Vx_Core.Type_translationlist
    ) -> any Vx_Core.Type_translationmap
  }

  public class Class_translationmap_from_translations : Vx_Core.Class_base, Func_translationmap_from_translations {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translationmap_from_translations = Vx_Translate.Class_translationmap_from_translations()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Translate.Class_translationmap_from_translations = Vx_Translate.Class_translationmap_from_translations()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/translate", // pkgname
        "translationmap<-translations", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "translationmap", // name
          ":map", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Core.t_translation), // allowtypes
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
      let output : any Vx_Core.Type_any = Vx_Translate.e_translationmap_from_translations
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Translate.t_translationmap_from_translations
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
      let inputval : any Vx_Core.Type_translationlist = value as! any Vx_Core.Type_translationlist
      let outputval : any Vx_Core.Type_any = Vx_Translate.f_translationmap_from_translations(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let translations : any Vx_Core.Type_translationlist = Vx_Core.f_any_from_any(Vx_Core.t_translationlist, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Translate.f_translationmap_from_translations(translations)
      return output
    }

    public func vx_translationmap_from_translations(
      _ translations : any Vx_Core.Type_translationlist
    ) -> any Vx_Core.Type_translationmap {
      let output : any Vx_Core.Type_translationmap = Vx_Translate.f_translationmap_from_translations(translations)
      return output
    }

  }

  public static let e_translationmap_from_translations : any Vx_Translate.Func_translationmap_from_translations = Vx_Translate.Class_translationmap_from_translations()
  public static let t_translationmap_from_translations : any Vx_Translate.Func_translationmap_from_translations = Vx_Translate.Class_translationmap_from_translations()

  public static func f_translationmap_from_translations(
    _ translations : any Vx_Core.Type_translationlist
  ) -> any Vx_Core.Type_translationmap {
    var output : any Vx_Core.Type_translationmap = Vx_Core.e_translationmap
    output = Vx_Core.f_map_from_list(
      Vx_Core.t_translationmap,
      translations,
      Vx_Core.t_any_from_any.vx_fn_new({(translation_any) in
        let translation : any Vx_Core.Type_translation = Vx_Core.f_any_from_any(Vx_Core.t_translation, translation_any)
        var output_1 : any Vx_Core.Type_any = translation.name()
        return output_1
      })
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
    mapfunc.put("session<-session-name", Vx_Translate.t_session_from_session_name)
    mapfunc.put("session<-session-translation", Vx_Translate.t_session_from_session_translation)
    mapfunc.put("session<-session-translationmap-name", Vx_Translate.t_session_from_session_translationmap_name)
    mapfunc.put("translate", Vx_Translate.t_translate)
    mapfunc.put("translate_1", Vx_Translate.t_translate_1)
    mapfunc.put("translate<-translation-string", Vx_Translate.t_translate_from_translation_string)
    mapfunc.put("translate<-translationmap-name-string", Vx_Translate.t_translate_from_translationmap_name_string)
    mapfunc.put("translation-load-session", Vx_Translate.t_translation_load_session)
    mapfunc.put("translation<-context", Vx_Translate.t_translation_from_context)
    mapfunc.put("translation<-session-name", Vx_Translate.t_translation_from_session_name)
    mapfunc.put("translationmap<-translations", Vx_Translate.t_translationmap_from_translations)
    Vx_Core.vx_global_package_set(
      "vx/translate",
      Vx_Core.vx_mapimmutable(maptype),
      Vx_Core.vx_mapimmutable(mapconst),
      Vx_Core.vx_mapimmutable(mapfunc)
    )
  }

}
