
import Foundation

public enum Vx_Type {

// vx_boolean_from_string_ends
public static func vx_boolean_from_string_ends(
  _ text : any Vx_Core.Type_string,
  _ ends : any Vx_Core.Type_string
) -> any Vx_Core.Type_boolean {
  let check = Vx_Core.vx_boolean_from_string_ends(
    text.vx_string(),
    ends.vx_string()
  )
  return Vx_Core.vx_new_boolean(check)
}

// vx_boolean_from_string_starts
public static func vx_boolean_from_string_starts(
  _ text : any Vx_Core.Type_string,
  _ starts : any Vx_Core.Type_string
) -> any Vx_Core.Type_boolean {
  let check = Vx_Core.vx_boolean_from_string_starts(
    text.vx_string(),
    starts.vx_string()
  )
  return Vx_Core.vx_new_boolean(check)
}

// vx_int_from_string_find (raw)
public static func vx_int_from_string_find(
  _ text : String,
  _ find : String
) -> Int {
  guard let range = text.range(of: find) else {
    return 0
  }
  return text.distance(from: text.startIndex, to: range.lowerBound) + 1
}

// vx_int_from_string_find (Vx wrapper)
public static func vx_int_from_string_find(
  _ text : any Vx_Core.Type_string,
  _ find : any Vx_Core.Type_string
) -> any Vx_Core.Type_int {
  let ipos = vx_int_from_string_find(
    text.vx_string(),
    find.vx_string()
  )
  return Vx_Core.vx_new_int(ipos)
}

// vx_int_from_string_findkeyword (raw + keyword support)
public static func vx_int_from_string_findkeyword(
  _ text : String,
  _ find : String
) -> Int {
  var output = -1
  if text.isEmpty {
    // do nothing, output remains -1
  } else if find == ":nonwhitespace" {
    let whitespace = " \n\r\t"
    for (i, char) in text.enumerated() {
      if !whitespace.contains(char) {
        output = i
        break
      }
    }
  } else if find == ":whitespace" {
    let whitespaceChars: [Character] = [" ", "\n", "\r", "\t"]
    for char in whitespaceChars {
      if let range = text.range(of: String(char)) {
        let pos = text.distance(from: text.startIndex, to: range.lowerBound)
        if output < 0 || pos < output {
          output = pos
        }
      }
    }
  } else {
    if let range = text.range(of: find) {
      output = text.distance(from: text.startIndex, to: range.lowerBound)
    }
  }
  return output + 1
}

// vx_int_from_string_findkeyword (Vx wrapper)
public static func vx_int_from_string_findkeyword(
  _ text : any Vx_Core.Type_string,
  _ find : any Vx_Core.Type_string
) -> any Vx_Core.Type_int {
  let ipos = vx_int_from_string_findkeyword(
    text.vx_string(),
    find.vx_string()
  )
  return Vx_Core.vx_new_int(ipos)
}

// vx_int_from_string_findlast
public static func vx_int_from_string_findlast(
  _ text : String,
  _ findlast : String
) -> Int {
  guard let range = text.range(of: findlast, options: .backwards) else {
    return 0
  }
  return text.distance(from: text.startIndex, to: range.lowerBound) + 1
}

public static func vx_int_from_string_findlast(
  _ text : any Vx_Core.Type_string,
  _ findlast : any Vx_Core.Type_string
) -> any Vx_Core.Type_int {
  let ipos = vx_int_from_string_findlast(
    text.vx_string(),
    findlast.vx_string()
  )
  return Vx_Core.vx_new_int(ipos)
}

// vx_string_from_string_start_end
public static func vx_string_from_string_start_end(
  _ text : any Vx_Core.Type_string,
  _ start : any Vx_Core.Type_int,
  _ end : any Vx_Core.Type_int
) -> any Vx_Core.Type_string {
  let stext = Vx_Core.vx_string_from_string_start_end(
    text.vx_string(),
    start.vx_int(),
    end.vx_int()
  )
  return Vx_Core.vx_new_string(stext)
}

// vx_string_from_stringlist_join
public static func vx_string_from_stringlist_join(
  _ vals : any Vx_Core.Type_stringlist,
  _ delim : any Vx_Core.Type_string
) -> any Vx_Core.Type_string {
  let strings = vals.vx_list().map { item in
    Vx_Core.f_any_from_any(Vx_Core.t_string, item).vx_string()
  }
  let joined = strings.joined(separator: delim.vx_string())
  return Vx_Core.vx_new_string(joined)
}

// vx_string_lowercase
public static func vx_string_lowercase(
  _ text : any Vx_Core.Type_string
) -> any Vx_Core.Type_string {
  let stext : String = text.vx_string().lowercased()
  return Vx_Core.vx_new_string(stext)
}

// vx_string_trim
public static func vx_string_trim(
  _ text : any Vx_Core.Type_string
) -> any Vx_Core.Type_string {
  let stext = text.vx_string().trimmingCharacters(in: .whitespacesAndNewlines)
  return Vx_Core.vx_new_string(stext)
}

// vx_string_uppercase
public static func vx_string_uppercase(
  _ text : any Vx_Core.Type_string
) -> any Vx_Core.Type_string {
  let stext : String = text.vx_string().uppercased()
  return Vx_Core.vx_new_string(stext)
}

// vx_stringlist_from_string_split
public static func vx_stringlist_from_string_split(
  _ text : any Vx_Core.Type_string,
  _ delim : any Vx_Core.Type_string
) -> any Vx_Core.Type_stringlist {
  let stext : String = text.vx_string()
  let sdelim : String = delim.vx_string()
  let parts = stext.components(separatedBy: sdelim)
  return Vx_Core.vx_new(Vx_Core.t_stringlist, parts)
}

// vx_uid (cryptographically secure random UID)
public static func vx_uid() -> any Vx_Core.Type_string {
  let uuid = UUID().uuidString
    .replacingOccurrences(of: "-", with: "")
    .lowercased()
  return Vx_Core.vx_new_string(uuid)
}


  public protocol Func_allowtypenames_from_type : Vx_Core.Func_any_from_any, AnyObject {
    func vx_allowtypenames_from_type(
      _ type : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_stringlist
  }

  public class Class_allowtypenames_from_type : Vx_Core.Class_base, Func_allowtypenames_from_type {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_allowtypenames_from_type = Vx_Type.Class_allowtypenames_from_type()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_allowtypenames_from_type = Vx_Type.Class_allowtypenames_from_type()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "allowtypenames<-type", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "stringlist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Core.t_string
            ]
          ),
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_allowtypenames_from_type
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_allowtypenames_from_type
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
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Type.f_allowtypenames_from_type(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let type : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_allowtypenames_from_type(type)
      return output
    }

    public func vx_allowtypenames_from_type(
      _ type : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_stringlist {
      let output : any Vx_Core.Type_stringlist = Vx_Type.f_allowtypenames_from_type(type)
      return output
    }

  }

  public static let e_allowtypenames_from_type : any Vx_Type.Func_allowtypenames_from_type = Vx_Type.Class_allowtypenames_from_type()
  public static let t_allowtypenames_from_type : any Vx_Type.Func_allowtypenames_from_type = Vx_Type.Class_allowtypenames_from_type()

  public static func f_allowtypenames_from_type(
    _ type : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_stringlist {
    var output : any Vx_Core.Type_stringlist = Vx_Core.e_stringlist
    output = Vx_Core.f_typenames_from_typelist(
      Vx_Type.f_allowtypes_from_type(type)
    )
    return output
  }


  public protocol Func_allowtypes_from_type : Vx_Core.Func_any_from_any, AnyObject {
    func vx_allowtypes_from_type(
      _ type : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_typelist
  }

  public class Class_allowtypes_from_type : Vx_Core.Class_base, Func_allowtypes_from_type {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_allowtypes_from_type = Vx_Type.Class_allowtypes_from_type()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_allowtypes_from_type = Vx_Type.Class_allowtypes_from_type()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "allowtypes<-type", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "typelist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Core.t_any
            ]
          ),
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_allowtypes_from_type
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_allowtypes_from_type
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
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Type.f_allowtypes_from_type(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let type : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_allowtypes_from_type(type)
      return output
    }

    public func vx_allowtypes_from_type(
      _ type : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_typelist {
      let output : any Vx_Core.Type_typelist = Vx_Type.f_allowtypes_from_type(type)
      return output
    }

  }

  public static let e_allowtypes_from_type : any Vx_Type.Func_allowtypes_from_type = Vx_Type.Class_allowtypes_from_type()
  public static let t_allowtypes_from_type : any Vx_Type.Func_allowtypes_from_type = Vx_Type.Class_allowtypes_from_type()

  public static func f_allowtypes_from_type(
    _ type : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_typelist {
    var output : any Vx_Core.Type_typelist = Vx_Core.e_typelist
    output = Vx_Core.f_typedef_from_type(type).allowtypes()
    return output
  }


  public protocol Func_any_from_int : Vx_Core.Func_any_from_any, AnyObject {
    func vx_any_from_int<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_int
    ) -> T
  }

  public class Class_any_from_int : Vx_Core.Class_base, Func_any_from_int {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_any_from_int = Vx_Type.Class_any_from_int()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_any_from_int = Vx_Type.Class_any_from_int()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "any<-int", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "any-1",
          "",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_any_from_int
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_any_from_int
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
      let inputval : any Vx_Core.Type_int = value as! any Vx_Core.Type_int
      let outputval : any Vx_Core.Type_any = Vx_Type.f_any_from_int(
        Vx_Core.t_any,
        inputval
      )
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_any_1 : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let value : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_any_from_int(generic_any_1, value)
      return output
    }

    public func vx_any_from_int<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_int
    ) -> T {
      let output : T = Vx_Type.f_any_from_int(generic_any_1, value)
      return output
    }

  }

  public static let e_any_from_int : any Vx_Type.Func_any_from_int = Vx_Type.Class_any_from_int()
  public static let t_any_from_int : any Vx_Type.Func_any_from_int = Vx_Type.Class_any_from_int()

  public static func f_any_from_int<T : Vx_Core.Type_any>(
    _ generic_any_1 : T,
    _ value : any Vx_Core.Type_int
  ) -> T {
    var output : T = Vx_Core.f_empty(generic_any_1)
    return output
  }


  public protocol Func_boolean_from_string_ends : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_boolean_from_string_ends(
      _ text : any Vx_Core.Type_string,
      _ ends : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_boolean_from_string_ends : Vx_Core.Class_base, Func_boolean_from_string_ends {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_boolean_from_string_ends = Vx_Type.Class_boolean_from_string_ends()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_boolean_from_string_ends = Vx_Type.Class_boolean_from_string_ends()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "boolean<-string-ends", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "boolean",
          "",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_boolean_from_string_ends
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_boolean_from_string_ends
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let ends : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_boolean_from_string_ends(text, ends)
      return output
    }

    public func vx_boolean_from_string_ends(
      _ text : any Vx_Core.Type_string,
      _ ends : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Type.f_boolean_from_string_ends(text, ends)
      return output
    }

  }

  public static let e_boolean_from_string_ends : any Vx_Type.Func_boolean_from_string_ends = Vx_Type.Class_boolean_from_string_ends()
  public static let t_boolean_from_string_ends : any Vx_Type.Func_boolean_from_string_ends = Vx_Type.Class_boolean_from_string_ends()

  public static func f_boolean_from_string_ends(
    _ text : any Vx_Core.Type_string,
    _ ends : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Type.vx_boolean_from_string_ends(text, ends)
    return output
  }


  public protocol Func_boolean_from_string_starts : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_boolean_from_string_starts(
      _ text : any Vx_Core.Type_string,
      _ starts : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_boolean_from_string_starts : Vx_Core.Class_base, Func_boolean_from_string_starts {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_boolean_from_string_starts = Vx_Type.Class_boolean_from_string_starts()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_boolean_from_string_starts = Vx_Type.Class_boolean_from_string_starts()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "boolean<-string-starts", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "boolean",
          "",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_boolean_from_string_starts
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_boolean_from_string_starts
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let starts : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_boolean_from_string_starts(text, starts)
      return output
    }

    public func vx_boolean_from_string_starts(
      _ text : any Vx_Core.Type_string,
      _ starts : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Type.f_boolean_from_string_starts(text, starts)
      return output
    }

  }

  public static let e_boolean_from_string_starts : any Vx_Type.Func_boolean_from_string_starts = Vx_Type.Class_boolean_from_string_starts()
  public static let t_boolean_from_string_starts : any Vx_Type.Func_boolean_from_string_starts = Vx_Type.Class_boolean_from_string_starts()

  public static func f_boolean_from_string_starts(
    _ text : any Vx_Core.Type_string,
    _ starts : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Type.vx_boolean_from_string_starts(text, starts)
    return output
  }


  public protocol Func_int_from_string_find : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_int_from_string_find(
      _ text : any Vx_Core.Type_string,
      _ find : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_int
  }

  public class Class_int_from_string_find : Vx_Core.Class_base, Func_int_from_string_find {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_int_from_string_find = Vx_Type.Class_int_from_string_find()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_int_from_string_find = Vx_Type.Class_int_from_string_find()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "int<-string-find", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "int",
          "",
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Core.t_number
            ]
          ),
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_int_from_string_find
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_int_from_string_find
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let find : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_int_from_string_find(text, find)
      return output
    }

    public func vx_int_from_string_find(
      _ text : any Vx_Core.Type_string,
      _ find : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_int {
      let output : any Vx_Core.Type_int = Vx_Type.f_int_from_string_find(text, find)
      return output
    }

  }

  public static let e_int_from_string_find : any Vx_Type.Func_int_from_string_find = Vx_Type.Class_int_from_string_find()
  public static let t_int_from_string_find : any Vx_Type.Func_int_from_string_find = Vx_Type.Class_int_from_string_find()

  public static func f_int_from_string_find(
    _ text : any Vx_Core.Type_string,
    _ find : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_int {
    var output : any Vx_Core.Type_int = Vx_Core.e_int
    output = Vx_Type.vx_int_from_string_find(text, find)
    return output
  }


  public protocol Func_int_from_string_findkeyword : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_int_from_string_findkeyword(
      _ text : any Vx_Core.Type_string,
      _ find : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_int
  }

  public class Class_int_from_string_findkeyword : Vx_Core.Class_base, Func_int_from_string_findkeyword {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_int_from_string_findkeyword = Vx_Type.Class_int_from_string_findkeyword()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_int_from_string_findkeyword = Vx_Type.Class_int_from_string_findkeyword()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "int<-string-findkeyword", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "int",
          "",
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Core.t_number
            ]
          ),
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_int_from_string_findkeyword
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_int_from_string_findkeyword
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let find : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_int_from_string_findkeyword(text, find)
      return output
    }

    public func vx_int_from_string_findkeyword(
      _ text : any Vx_Core.Type_string,
      _ find : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_int {
      let output : any Vx_Core.Type_int = Vx_Type.f_int_from_string_findkeyword(text, find)
      return output
    }

  }

  public static let e_int_from_string_findkeyword : any Vx_Type.Func_int_from_string_findkeyword = Vx_Type.Class_int_from_string_findkeyword()
  public static let t_int_from_string_findkeyword : any Vx_Type.Func_int_from_string_findkeyword = Vx_Type.Class_int_from_string_findkeyword()

  public static func f_int_from_string_findkeyword(
    _ text : any Vx_Core.Type_string,
    _ find : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_int {
    var output : any Vx_Core.Type_int = Vx_Core.e_int
    output = Vx_Type.vx_int_from_string_findkeyword(text, find)
    return output
  }


  public protocol Func_int_from_string_findlast : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_int_from_string_findlast(
      _ text : any Vx_Core.Type_string,
      _ findlast : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_int
  }

  public class Class_int_from_string_findlast : Vx_Core.Class_base, Func_int_from_string_findlast {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_int_from_string_findlast = Vx_Type.Class_int_from_string_findlast()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_int_from_string_findlast = Vx_Type.Class_int_from_string_findlast()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "int<-string-findlast", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "int",
          "",
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Core.t_number
            ]
          ),
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_int_from_string_findlast
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_int_from_string_findlast
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let findlast : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_int_from_string_findlast(text, findlast)
      return output
    }

    public func vx_int_from_string_findlast(
      _ text : any Vx_Core.Type_string,
      _ findlast : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_int {
      let output : any Vx_Core.Type_int = Vx_Type.f_int_from_string_findlast(text, findlast)
      return output
    }

  }

  public static let e_int_from_string_findlast : any Vx_Type.Func_int_from_string_findlast = Vx_Type.Class_int_from_string_findlast()
  public static let t_int_from_string_findlast : any Vx_Type.Func_int_from_string_findlast = Vx_Type.Class_int_from_string_findlast()

  public static func f_int_from_string_findlast(
    _ text : any Vx_Core.Type_string,
    _ findlast : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_int {
    var output : any Vx_Core.Type_int = Vx_Core.e_int
    output = Vx_Type.vx_int_from_string_findlast(text, findlast)
    return output
  }


  public protocol Func_is_boolean : Vx_Core.Func_any_from_any, AnyObject {
    func vx_is_boolean(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_is_boolean : Vx_Core.Class_base, Func_is_boolean {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_boolean = Vx_Type.Class_is_boolean()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_boolean = Vx_Type.Class_is_boolean()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "is-boolean", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "boolean",
          "",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_is_boolean
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_is_boolean
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
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Type.f_is_boolean(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_is_boolean(value)
      return output
    }

    public func vx_is_boolean(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Type.f_is_boolean(value)
      return output
    }

  }

  public static let e_is_boolean : any Vx_Type.Func_is_boolean = Vx_Type.Class_is_boolean()
  public static let t_is_boolean : any Vx_Type.Func_is_boolean = Vx_Type.Class_is_boolean()

  public static func f_is_boolean(
    _ value : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Core.f_eq(
      Vx_Core.vx_new_string("boolean"),
      Vx_Core.f_typename_from_any(value)
    )
    return output
  }


  public protocol Func_is_decimal : Vx_Core.Func_any_from_any, AnyObject {
    func vx_is_decimal(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_is_decimal : Vx_Core.Class_base, Func_is_decimal {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_decimal = Vx_Type.Class_is_decimal()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_decimal = Vx_Type.Class_is_decimal()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "is-decimal", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "boolean",
          "",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_is_decimal
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_is_decimal
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
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Type.f_is_decimal(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_is_decimal(value)
      return output
    }

    public func vx_is_decimal(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Type.f_is_decimal(value)
      return output
    }

  }

  public static let e_is_decimal : any Vx_Type.Func_is_decimal = Vx_Type.Class_is_decimal()
  public static let t_is_decimal : any Vx_Type.Func_is_decimal = Vx_Type.Class_is_decimal()

  public static func f_is_decimal(
    _ value : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Core.f_eq(
      Vx_Core.vx_new_string("decimal"),
      Vx_Core.f_typename_from_any(value)
    )
    return output
  }


  public protocol Func_is_none : Vx_Core.Func_any_from_any, AnyObject {
    func vx_is_none(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_is_none : Vx_Core.Class_base, Func_is_none {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_none = Vx_Type.Class_is_none()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_none = Vx_Type.Class_is_none()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "is-none", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "boolean",
          "",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_is_none
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_is_none
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
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Type.f_is_none(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_is_none(value)
      return output
    }

    public func vx_is_none(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Type.f_is_none(value)
      return output
    }

  }

  public static let e_is_none : any Vx_Type.Func_is_none = Vx_Type.Class_is_none()
  public static let t_is_none : any Vx_Type.Func_is_none = Vx_Type.Class_is_none()

  public static func f_is_none(
    _ value : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Core.f_eq(
      value,
      Vx_Core.t_none
    )
    return output
  }


  public protocol Func_is_string : Vx_Core.Func_any_from_any, AnyObject {
    func vx_is_string(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_is_string : Vx_Core.Class_base, Func_is_string {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_string = Vx_Type.Class_is_string()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_string = Vx_Type.Class_is_string()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "is-string", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "boolean",
          "",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_is_string
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_is_string
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
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Type.f_is_string(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_is_string(value)
      return output
    }

    public func vx_is_string(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Type.f_is_string(value)
      return output
    }

  }

  public static let e_is_string : any Vx_Type.Func_is_string = Vx_Type.Class_is_string()
  public static let t_is_string : any Vx_Type.Func_is_string = Vx_Type.Class_is_string()

  public static func f_is_string(
    _ value : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Core.f_eq(
      Vx_Core.vx_new_string("vx/core/string"),
      Vx_Core.f_typename_from_any(value)
    )
    return output
  }


  public protocol Func_is_type : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_is_type(
      _ value : any Vx_Core.Type_any,
      _ type : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_is_type : Vx_Core.Class_base, Func_is_type {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_type = Vx_Type.Class_is_type()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_type = Vx_Type.Class_is_type()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "is-type", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "boolean",
          "",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_is_type
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_is_type
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let type : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_is_type(value, type)
      return output
    }

    public func vx_is_type(
      _ value : any Vx_Core.Type_any,
      _ type : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Type.f_is_type(value, type)
      return output
    }

  }

  public static let e_is_type : any Vx_Type.Func_is_type = Vx_Type.Class_is_type()
  public static let t_is_type : any Vx_Type.Func_is_type = Vx_Type.Class_is_type()

  public static func f_is_type(
    _ value : any Vx_Core.Type_any,
    _ type : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Core.f_or_1(
      Vx_Core.vx_new(
        Vx_Core.t_booleanlist,
        [
          Vx_Core.f_eq(
            Vx_Core.f_typename_from_type(type),
            Vx_Core.f_typename_from_any(value)
          ),
          Vx_Core.f_contains_1(
            Vx_Type.f_allowtypenames_from_type(type),
            Vx_Core.f_typename_from_any(value)
          ),
          Vx_Core.f_contains_1(
            Vx_Type.f_traitnames_from_any(value),
            Vx_Core.f_typename_from_type(type)
          )
        ]
      )
    )
    return output
  }


  public protocol Func_is_type_from_any_typelist : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_is_type_from_any_typelist(
      _ value : any Vx_Core.Type_any,
      _ typelist : any Vx_Core.Type_typelist
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_is_type_from_any_typelist : Vx_Core.Class_base, Func_is_type_from_any_typelist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_type_from_any_typelist = Vx_Type.Class_is_type_from_any_typelist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_is_type_from_any_typelist = Vx_Type.Class_is_type_from_any_typelist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "is-type<-any-typelist", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "boolean",
          "",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_is_type_from_any_typelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_is_type_from_any_typelist
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let typelist : any Vx_Core.Type_typelist = Vx_Core.f_any_from_any(
        Vx_Core.t_typelist,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_is_type_from_any_typelist(value, typelist)
      return output
    }

    public func vx_is_type_from_any_typelist(
      _ value : any Vx_Core.Type_any,
      _ typelist : any Vx_Core.Type_typelist
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Type.f_is_type_from_any_typelist(value, typelist)
      return output
    }

  }

  public static let e_is_type_from_any_typelist : any Vx_Type.Func_is_type_from_any_typelist = Vx_Type.Class_is_type_from_any_typelist()
  public static let t_is_type_from_any_typelist : any Vx_Type.Func_is_type_from_any_typelist = Vx_Type.Class_is_type_from_any_typelist()

  public static func f_is_type_from_any_typelist(
    _ value : any Vx_Core.Type_any,
    _ typelist : any Vx_Core.Type_typelist
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Core.f_any_from_list_start_reduce(
      Vx_Core.t_boolean,
      typelist,
      Vx_Core.vx_new_boolean(false),
      Vx_Core.t_any_from_reduce.vx_fn_new(
        {(result_any, type_any) in
          let result : any Vx_Core.Type_boolean = Vx_Core.f_any_from_any(
            Vx_Core.t_boolean,
            result_any
          )
          let type : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
            Vx_Core.t_any,
            type_any
          )
          var output_1 : any Vx_Core.Type_any = Vx_Core.f_or(
            result,
            Vx_Type.f_is_type(value, type)
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_lowercase : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_lowercase(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_lowercase : Vx_Core.Class_base, Func_string_lowercase {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_lowercase = Vx_Type.Class_string_lowercase()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_lowercase = Vx_Type.Class_string_lowercase()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "string-lowercase", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "string",
          ":string",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_string_lowercase
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_string_lowercase
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
      let inputval : any Vx_Core.Type_string = value as! any Vx_Core.Type_string
      let outputval : any Vx_Core.Type_any = Vx_Type.f_string_lowercase(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_string_lowercase(text)
      return output
    }

    public func vx_string_lowercase(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Type.f_string_lowercase(text)
      return output
    }

  }

  public static let e_string_lowercase : any Vx_Type.Func_string_lowercase = Vx_Type.Class_string_lowercase()
  public static let t_string_lowercase : any Vx_Type.Func_string_lowercase = Vx_Type.Class_string_lowercase()

  public static func f_string_lowercase(
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Type.vx_string_lowercase(text)
    return output
  }


  public protocol Func_string_outdent : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_outdent(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_outdent : Vx_Core.Class_base, Func_string_outdent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_outdent = Vx_Type.Class_string_outdent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_outdent = Vx_Type.Class_string_outdent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "string-outdent", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "string",
          ":string",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_string_outdent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_string_outdent
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
      let inputval : any Vx_Core.Type_string = value as! any Vx_Core.Type_string
      let outputval : any Vx_Core.Type_any = Vx_Type.f_string_outdent(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_string_outdent(text)
      return output
    }

    public func vx_string_outdent(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Type.f_string_outdent(text)
      return output
    }

  }

  public static let e_string_outdent : any Vx_Type.Func_string_outdent = Vx_Type.Class_string_outdent()
  public static let t_string_outdent : any Vx_Type.Func_string_outdent = Vx_Type.Class_string_outdent()

  public static func f_string_outdent(
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let pos : any Vx_Core.Type_int = Vx_Type.f_int_from_string_findkeyword(
            text,
            Vx_Core.vx_new_string(":nonwhitespace")
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_if_2(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_thenelselist,
              [
                Vx_Core.f_then(
                  Vx_Core.t_boolean_from_func.vx_fn_new(
                    {() in
                      var output_2 : any Vx_Core.Type_any = Vx_Core.f_eq(
                          Vx_Core.vx_new_int(0),
                          pos
                        )
                        return output_2
                      }
                  ),
                  Vx_Core.t_any_from_func.vx_fn_new(
                    {() in
      let output_3 : any Vx_Core.Type_any = text
                        return output_3
                      }
                  )
                ),
                Vx_Core.f_else(
                  Vx_Core.t_any_from_func.vx_fn_new(
                    {() in
                      var output_4 : any Vx_Core.Type_any = Vx_Core.f_let(
                          Vx_Core.t_string,
                          Vx_Core.t_any_from_func.vx_fn_new(
                            {() in
                              let indent : any Vx_Core.Type_string = Vx_Type.f_string_from_string_end(
                                text,
                                Vx_Core.f_minus1(pos)
                              )
                              let rest : any Vx_Core.Type_string = Vx_Type.f_string_from_string_start(text, pos)
                              let linepos : any Vx_Core.Type_int = Vx_Type.f_int_from_string_find(
                                indent,
                                Vx_Core.vx_new_string("\n")
                              )
                              let outdent : any Vx_Core.Type_string = Vx_Core.f_if_1(
                                Vx_Core.t_string,
                                Vx_Core.f_eq(
                                  Vx_Core.vx_new_int(0),
                                  linepos
                                ),
                                Vx_Core.vx_new_string(""),
                                Vx_Core.vx_new_string("\n")
                              )
                              let output_5 : any Vx_Core.Type_any = Vx_Core.f_string_from_string_find_replace(
                                rest,
                                indent,
                                outdent
                              )
                              return output_5
                            }
                          )
                        )
                        return output_4
                      }
                  )
                )
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_trim : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_trim(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_trim : Vx_Core.Class_base, Func_string_trim {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_trim = Vx_Type.Class_string_trim()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_trim = Vx_Type.Class_string_trim()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "string-trim", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "string",
          ":string",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_string_trim
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_string_trim
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
      let inputval : any Vx_Core.Type_string = value as! any Vx_Core.Type_string
      let outputval : any Vx_Core.Type_any = Vx_Type.f_string_trim(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_string_trim(text)
      return output
    }

    public func vx_string_trim(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Type.f_string_trim(text)
      return output
    }

  }

  public static let e_string_trim : any Vx_Type.Func_string_trim = Vx_Type.Class_string_trim()
  public static let t_string_trim : any Vx_Type.Func_string_trim = Vx_Type.Class_string_trim()

  public static func f_string_trim(
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Type.vx_string_trim(text)
    return output
  }


  public protocol Func_string_uppercase : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_uppercase(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_uppercase : Vx_Core.Class_base, Func_string_uppercase {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_uppercase = Vx_Type.Class_string_uppercase()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_uppercase = Vx_Type.Class_string_uppercase()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "string-uppercase", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "string",
          ":string",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_string_uppercase
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_string_uppercase
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
      let inputval : any Vx_Core.Type_string = value as! any Vx_Core.Type_string
      let outputval : any Vx_Core.Type_any = Vx_Type.f_string_uppercase(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_string_uppercase(text)
      return output
    }

    public func vx_string_uppercase(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Type.f_string_uppercase(text)
      return output
    }

  }

  public static let e_string_uppercase : any Vx_Type.Func_string_uppercase = Vx_Type.Class_string_uppercase()
  public static let t_string_uppercase : any Vx_Type.Func_string_uppercase = Vx_Type.Class_string_uppercase()

  public static func f_string_uppercase(
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Type.vx_string_uppercase(text)
    return output
  }


  public protocol Func_string_from_int : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_from_int(
      _ value : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_int : Vx_Core.Class_base, Func_string_from_int {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_from_int = Vx_Type.Class_string_from_int()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_from_int = Vx_Type.Class_string_from_int()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "string<-int", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "string",
          ":string",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_string_from_int
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_string_from_int
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
      let inputval : any Vx_Core.Type_int = value as! any Vx_Core.Type_int
      let outputval : any Vx_Core.Type_any = Vx_Type.f_string_from_int(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_string_from_int(value)
      return output
    }

    public func vx_string_from_int(
      _ value : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Type.f_string_from_int(value)
      return output
    }

  }

  public static let e_string_from_int : any Vx_Type.Func_string_from_int = Vx_Type.Class_string_from_int()
  public static let t_string_from_int : any Vx_Type.Func_string_from_int = Vx_Type.Class_string_from_int()

  public static func f_string_from_int(
    _ value : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_switch(
      Vx_Core.t_string,
      value,
      Vx_Core.vx_new(
        Vx_Core.t_thenelselist,
        [
          Vx_Core.f_case_1(
            Vx_Core.c_infinity,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_1 : any Vx_Core.Type_any = Vx_Core.vx_new_string("infinity")
                  return output_1
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Core.c_neginfinity,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_2 : any Vx_Core.Type_any = Vx_Core.vx_new_string("neginfinity")
                  return output_2
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Core.c_notanumber,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_3 : any Vx_Core.Type_any = Vx_Core.vx_new_string("notanumber")
                  return output_3
                }
            )
          ),
          Vx_Core.f_else(
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_4 : any Vx_Core.Type_any = Vx_Core.f_new(
                    Vx_Core.t_string,
                    Vx_Core.vx_new(
                      Vx_Core.t_anylist,
                      [
                        value
                      ]
                    )
                  )
                  return output_4
                }
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_string_from_string_end : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_string_end(
      _ text : any Vx_Core.Type_string,
      _ endpos : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_string_end : Vx_Core.Class_base, Func_string_from_string_end {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_from_string_end = Vx_Type.Class_string_from_string_end()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_from_string_end = Vx_Type.Class_string_from_string_end()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "string<-string-end", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "string",
          ":string",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_string_from_string_end
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_string_from_string_end
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let endpos : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_string_from_string_end(text, endpos)
      return output
    }

    public func vx_string_from_string_end(
      _ text : any Vx_Core.Type_string,
      _ endpos : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Type.f_string_from_string_end(text, endpos)
      return output
    }

  }

  public static let e_string_from_string_end : any Vx_Type.Func_string_from_string_end = Vx_Type.Class_string_from_string_end()
  public static let t_string_from_string_end : any Vx_Type.Func_string_from_string_end = Vx_Type.Class_string_from_string_end()

  public static func f_string_from_string_end(
    _ text : any Vx_Core.Type_string,
    _ endpos : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Type.f_string_from_string_start_end(
      text,
      Vx_Core.vx_new_int(1),
      endpos
    )
    return output
  }


  public protocol Func_string_from_string_start : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_string_start(
      _ text : any Vx_Core.Type_string,
      _ startpos : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_string_start : Vx_Core.Class_base, Func_string_from_string_start {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_from_string_start = Vx_Type.Class_string_from_string_start()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_from_string_start = Vx_Type.Class_string_from_string_start()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "string<-string-start", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "string",
          ":string",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_string_from_string_start
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_string_from_string_start
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let startpos : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_string_from_string_start(text, startpos)
      return output
    }

    public func vx_string_from_string_start(
      _ text : any Vx_Core.Type_string,
      _ startpos : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Type.f_string_from_string_start(text, startpos)
      return output
    }

  }

  public static let e_string_from_string_start : any Vx_Type.Func_string_from_string_start = Vx_Type.Class_string_from_string_start()
  public static let t_string_from_string_start : any Vx_Type.Func_string_from_string_start = Vx_Type.Class_string_from_string_start()

  public static func f_string_from_string_start(
    _ text : any Vx_Core.Type_string,
    _ startpos : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Type.f_string_from_string_start_end(
      text,
      startpos,
      Vx_Core.f_length(text)
    )
    return output
  }


  public protocol Func_string_from_string_start_end : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_string_start_end(
      _ text : any Vx_Core.Type_string,
      _ start : any Vx_Core.Type_int,
      _ end : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_string_start_end : Vx_Core.Class_base, Func_string_from_string_start_end {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_from_string_start_end = Vx_Type.Class_string_from_string_start_end()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_from_string_start_end = Vx_Type.Class_string_from_string_start_end()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "string<-string-start-end", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "string",
          ":string",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_string_from_string_start_end
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_string_from_string_start_end
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let start : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      let end : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(2)
        )
      )
      output = Vx_Type.f_string_from_string_start_end(text, start, end)
      return output
    }

    public func vx_string_from_string_start_end(
      _ text : any Vx_Core.Type_string,
      _ start : any Vx_Core.Type_int,
      _ end : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Type.f_string_from_string_start_end(text, start, end)
      return output
    }

  }

  public static let e_string_from_string_start_end : any Vx_Type.Func_string_from_string_start_end = Vx_Type.Class_string_from_string_start_end()
  public static let t_string_from_string_start_end : any Vx_Type.Func_string_from_string_start_end = Vx_Type.Class_string_from_string_start_end()

  public static func f_string_from_string_start_end(
    _ text : any Vx_Core.Type_string,
    _ start : any Vx_Core.Type_int,
    _ end : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Type.vx_string_from_string_start_end(text, start, end)
    return output
  }


  public protocol Func_string_from_stringlist_join : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_stringlist_join(
      _ vals : any Vx_Core.Type_stringlist,
      _ delim : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_stringlist_join : Vx_Core.Class_base, Func_string_from_stringlist_join {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_from_stringlist_join = Vx_Type.Class_string_from_stringlist_join()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_string_from_stringlist_join = Vx_Type.Class_string_from_stringlist_join()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "string<-stringlist-join", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "string",
          ":string",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_string_from_stringlist_join
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_string_from_stringlist_join
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let vals : any Vx_Core.Type_stringlist = Vx_Core.f_any_from_any(
        Vx_Core.t_stringlist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let delim : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_string_from_stringlist_join(vals, delim)
      return output
    }

    public func vx_string_from_stringlist_join(
      _ vals : any Vx_Core.Type_stringlist,
      _ delim : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Type.f_string_from_stringlist_join(vals, delim)
      return output
    }

  }

  public static let e_string_from_stringlist_join : any Vx_Type.Func_string_from_stringlist_join = Vx_Type.Class_string_from_stringlist_join()
  public static let t_string_from_stringlist_join : any Vx_Type.Func_string_from_stringlist_join = Vx_Type.Class_string_from_stringlist_join()

  public static func f_string_from_stringlist_join(
    _ vals : any Vx_Core.Type_stringlist,
    _ delim : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Type.vx_string_from_stringlist_join(vals, delim)
    return output
  }


  public protocol Func_stringlist_from_string_split : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_stringlist_from_string_split(
      _ text : any Vx_Core.Type_string,
      _ delim : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_stringlist
  }

  public class Class_stringlist_from_string_split : Vx_Core.Class_base, Func_stringlist_from_string_split {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_stringlist_from_string_split = Vx_Type.Class_stringlist_from_string_split()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_stringlist_from_string_split = Vx_Type.Class_stringlist_from_string_split()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "stringlist<-string-split", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "stringlist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Core.t_string
            ]
          ),
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_stringlist_from_string_split
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_stringlist_from_string_split
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let delim : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Type.f_stringlist_from_string_split(text, delim)
      return output
    }

    public func vx_stringlist_from_string_split(
      _ text : any Vx_Core.Type_string,
      _ delim : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_stringlist {
      let output : any Vx_Core.Type_stringlist = Vx_Type.f_stringlist_from_string_split(text, delim)
      return output
    }

  }

  public static let e_stringlist_from_string_split : any Vx_Type.Func_stringlist_from_string_split = Vx_Type.Class_stringlist_from_string_split()
  public static let t_stringlist_from_string_split : any Vx_Type.Func_stringlist_from_string_split = Vx_Type.Class_stringlist_from_string_split()

  public static func f_stringlist_from_string_split(
    _ text : any Vx_Core.Type_string,
    _ delim : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_stringlist {
    var output : any Vx_Core.Type_stringlist = Vx_Core.e_stringlist
    output = Vx_Type.vx_stringlist_from_string_split(text, delim)
    return output
  }


  public protocol Func_traitnames_from_any : Vx_Core.Func_any_from_any, AnyObject {
    func vx_traitnames_from_any(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_stringlist
  }

  public class Class_traitnames_from_any : Vx_Core.Class_base, Func_traitnames_from_any {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_traitnames_from_any = Vx_Type.Class_traitnames_from_any()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_traitnames_from_any = Vx_Type.Class_traitnames_from_any()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "traitnames<-any", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "stringlist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Core.t_string
            ]
          ),
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_traitnames_from_any
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_traitnames_from_any
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
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Type.f_traitnames_from_any(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_traitnames_from_any(value)
      return output
    }

    public func vx_traitnames_from_any(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_stringlist {
      let output : any Vx_Core.Type_stringlist = Vx_Type.f_traitnames_from_any(value)
      return output
    }

  }

  public static let e_traitnames_from_any : any Vx_Type.Func_traitnames_from_any = Vx_Type.Class_traitnames_from_any()
  public static let t_traitnames_from_any : any Vx_Type.Func_traitnames_from_any = Vx_Type.Class_traitnames_from_any()

  public static func f_traitnames_from_any(
    _ value : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_stringlist {
    var output : any Vx_Core.Type_stringlist = Vx_Core.e_stringlist
    output = Vx_Core.f_typenames_from_typelist(
      Vx_Type.f_traits_from_any(value)
    )
    return output
  }


  public protocol Func_traits_from_any : Vx_Core.Func_any_from_any, AnyObject {
    func vx_traits_from_any(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_typelist
  }

  public class Class_traits_from_any : Vx_Core.Class_base, Func_traits_from_any {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_traits_from_any = Vx_Type.Class_traits_from_any()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_traits_from_any = Vx_Type.Class_traits_from_any()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "traits<-any", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "typelist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Core.t_any
            ]
          ),
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_traits_from_any
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_traits_from_any
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
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Type.f_traits_from_any(inputval)
      output = Vx_Core.f_any_from_any(
        generic_any_1,
        outputval
      )
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Type.f_traits_from_any(value)
      return output
    }

    public func vx_traits_from_any(
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_typelist {
      let output : any Vx_Core.Type_typelist = Vx_Type.f_traits_from_any(value)
      return output
    }

  }

  public static let e_traits_from_any : any Vx_Type.Func_traits_from_any = Vx_Type.Class_traits_from_any()
  public static let t_traits_from_any : any Vx_Type.Func_traits_from_any = Vx_Type.Class_traits_from_any()

  public static func f_traits_from_any(
    _ value : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_typelist {
    var output : any Vx_Core.Type_typelist = Vx_Core.e_typelist
    output = Vx_Core.f_traits_from_typedef(
      Vx_Core.f_typedef_from_any(value)
    )
    return output
  }


  public protocol Func_uid : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_uid() -> any Vx_Core.Type_string
  }

  public class Class_uid : Vx_Core.Class_base, Func_uid {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_uid = Vx_Type.Class_uid()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Type.Class_uid = Vx_Type.Class_uid()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/type", // pkgname
        "uid", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "string",
          ":string",
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_typelist,
          Vx_Core.e_funclist,
          Vx_Core.e_funclist,
          Vx_Core.e_anylist,
          Vx_Core.e_anylist,
          Vx_Core.e_argmap
        ) // typedef
      )
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.e_uid
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Type.t_uid
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      output = Vx_Type.f_uid()
      return output
    }

    public func vx_uid() -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Type.f_uid()
      return output
    }

  }

  public static let e_uid : any Vx_Type.Func_uid = Vx_Type.Class_uid()
  public static let t_uid : any Vx_Type.Func_uid = Vx_Type.Class_uid()

  public static func f_uid() -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Type.vx_uid()
    return output
  }

  private static var initialized : Bool = false

  public static func vx_initialize() {
    guard !initialized else { return }
    initialized = true
    var maptype : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapconst : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapfunc : Vx_Core.MapMutable<any Vx_Core.Type_func> = Vx_Core.MapMutable<any Vx_Core.Type_func>()
    mapfunc.put("allowtypenames<-type", Vx_Type.t_allowtypenames_from_type)
    mapfunc.put("allowtypes<-type", Vx_Type.t_allowtypes_from_type)
    mapfunc.put("any<-int", Vx_Type.t_any_from_int)
    mapfunc.put("boolean<-string-ends", Vx_Type.t_boolean_from_string_ends)
    mapfunc.put("boolean<-string-starts", Vx_Type.t_boolean_from_string_starts)
    mapfunc.put("int<-string-find", Vx_Type.t_int_from_string_find)
    mapfunc.put("int<-string-findkeyword", Vx_Type.t_int_from_string_findkeyword)
    mapfunc.put("int<-string-findlast", Vx_Type.t_int_from_string_findlast)
    mapfunc.put("is-boolean", Vx_Type.t_is_boolean)
    mapfunc.put("is-decimal", Vx_Type.t_is_decimal)
    mapfunc.put("is-none", Vx_Type.t_is_none)
    mapfunc.put("is-string", Vx_Type.t_is_string)
    mapfunc.put("is-type", Vx_Type.t_is_type)
    mapfunc.put("is-type<-any-typelist", Vx_Type.t_is_type_from_any_typelist)
    mapfunc.put("string-lowercase", Vx_Type.t_string_lowercase)
    mapfunc.put("string-outdent", Vx_Type.t_string_outdent)
    mapfunc.put("string-trim", Vx_Type.t_string_trim)
    mapfunc.put("string-uppercase", Vx_Type.t_string_uppercase)
    mapfunc.put("string<-int", Vx_Type.t_string_from_int)
    mapfunc.put("string<-string-end", Vx_Type.t_string_from_string_end)
    mapfunc.put("string<-string-start", Vx_Type.t_string_from_string_start)
    mapfunc.put("string<-string-start-end", Vx_Type.t_string_from_string_start_end)
    mapfunc.put("string<-stringlist-join", Vx_Type.t_string_from_stringlist_join)
    mapfunc.put("stringlist<-string-split", Vx_Type.t_stringlist_from_string_split)
    mapfunc.put("traitnames<-any", Vx_Type.t_traitnames_from_any)
    mapfunc.put("traits<-any", Vx_Type.t_traits_from_any)
    mapfunc.put("uid", Vx_Type.t_uid)
    Vx_Core.vx_global_package_set(
      "vx/type",
      Vx_Core.vx_mapimmutable(maptype),
      Vx_Core.vx_mapimmutable(mapconst),
      Vx_Core.vx_mapimmutable(mapfunc)
    )
  }

}
