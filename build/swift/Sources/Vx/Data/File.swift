
import Foundation

public enum Vx_Data_File {

public static func vx_boolean_exists_from_file(
  _ file: Vx_Data_File.Type_file
) -> Vx_Core.Type_boolean {
  let fullpath: Vx_Core.Type_string = Vx_Data_File.f_pathfull_from_file(file)
  let sfullpath: String = fullpath.vx_string()
  let normalized = Vx_Data_File.vx_path_normalize_from_path(sfullpath)
  let exists = FileManager.default.fileExists(atPath: normalized)
  return exists ? Vx_Core.c_true : Vx_Core.e_boolean
}

public static func vx_boolean_write_from_file_string(
  _ context: Vx_Core.Type_context,
  _ file: Vx_Data_File.Type_file,
  _ text: Vx_Core.Type_string
) -> Vx_Core.Type_boolean {
  let fullpath: Vx_Core.Type_string = Vx_Data_File.f_pathfull_from_file(file)
  let sfullpath: String = fullpath.vx_string()
  let normalized = Vx_Data_File.vx_path_normalize_from_path(sfullpath)
  let stext: String = text.vx_string()
  do {
    try stext.write(toFile: normalized, atomically: true, encoding: .utf8)
    return Vx_Core.c_true
  } catch {
    let msg = Vx_Core.vx_msg_from_exception("boolean-write<-file", error)
    return Vx_Core.vx_copy(
      Vx_Core.t_boolean,
      Vx_Core.c_false,
      msg
    )
  }
}

public static func vx_path_normalize_from_path(_ spath: String) -> String {
  var output = spath
  if !spath.contains(":") {
    let pathcurrent = vx_spathcurrent_from_os()
    output = pathcurrent + "/" + output
  }
  return output
}

public static func vx_pathcurrent_from_os() -> Vx_Core.Type_string {
  let stext = vx_spathcurrent_from_os()
  return Vx_Core.vx_new_string(stext)
}

public static func vx_spathcurrent_from_os() -> String {
  var output = FileManager.default.currentDirectoryPath
  if let range = output.range(of: "/TestSuite/AppTest") ?? output.range(of: "\\TestSuite\\AppTest") {
    let index = output.index(output.startIndex, offsetBy: range.lowerBound.utf16Offset(in: output))
    output = String(output[..<index])
  }
  return output
}

public static func vx_string_read_from_file(
    _ file: Vx_Data_File.Type_file
) -> Vx_Core.Type_string {
  let fullpath: Vx_Core.Type_string = Vx_Data_File.f_pathfull_from_file(file)
  let sfullpath: String = fullpath.vx_string()
  let normalized = Vx_Data_File.vx_path_normalize_from_path(sfullpath)
  guard FileManager.default.fileExists(atPath: normalized) else {
    let msg = Vx_Core.vx_msg_from_error(
      "string-read<-file",
      ":filenotfound",
      file
    )
    return Vx_Core.vx_new(Vx_Core.t_string, msg)
  }
  do {
    let scontent = try String(contentsOfFile: normalized, encoding: .utf8)
    return Vx_Core.vx_new_string(scontent)
  } catch {
    let msg = Vx_Core.vx_msg_from_exception("string-read<-file", error)
    return Vx_Core.vx_new(Vx_Core.t_string, msg)
  }
}

public static func vx_string_read_from_file(
  _ context: Vx_Core.Type_context,
  _ file: Vx_Data_File.Type_file
) -> Vx_Core.Type_string {
  return vx_string_read_from_file(file)
}


  public protocol Type_file : Vx_Core.Type_struct, AnyObject {
    func name() -> any Vx_Core.Type_string
    func format() -> any Vx_Data_File.Type_fileformat
    func path() -> any Vx_Core.Type_string
    func permission() -> any Vx_Core.Type_permission
    func text() -> any Vx_Core.Type_string
  }

  public class Class_file : Vx_Core.Class_base, Type_file {

    public var vx_p_name : (any Vx_Core.Type_string)? = nil

    public func name() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_name {
        output = testnull
      }
      return output
    }

    public var vx_p_format : (any Vx_Data_File.Type_fileformat)? = nil

    public func format() -> any Vx_Data_File.Type_fileformat {
      var output : any Vx_Data_File.Type_fileformat = Vx_Data_File.e_fileformat
      if let testnull = vx_p_format {
        output = testnull
      }
      return output
    }

    public var vx_p_path : (any Vx_Core.Type_string)? = nil

    public func path() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_path {
        output = testnull
      }
      return output
    }

    public var vx_p_permission : (any Vx_Core.Type_permission)? = nil

    public func permission() -> any Vx_Core.Type_permission {
      var output : any Vx_Core.Type_permission = Vx_Core.e_permission
      if let testnull = vx_p_permission {
        output = testnull
      }
      return output
    }

    public var vx_p_text : (any Vx_Core.Type_string)? = nil

    public func text() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_text {
        output = testnull
      }
      return output
    }

    public func vx_any(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      var skey : String = key.vx_string()
      if false {
      } else if skey == ":name" {
        output = self.name()
      } else if skey == ":format" {
        output = self.format()
      } else if skey == ":path" {
        output = self.path()
      } else if skey == ":permission" {
        output = self.permission()
      } else if skey == ":text" {
        output = self.text()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":name", self.name())
      map.put(":format", self.format())
      map.put(":path", self.path())
      map.put(":permission", self.permission())
      map.put(":text", self.text())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Data_File.Type_file = Vx_Core.vx_copy(Vx_Data_File.e_file, vals)
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Data_File.Type_file = self
      var ischanged : Bool = false
      var value : Vx_Data_File.Class_file = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_name : any Vx_Core.Type_string = value.name()
      var vx_p_format : any Vx_Data_File.Type_fileformat = value.format()
      var vx_p_path : any Vx_Core.Type_string = value.path()
      var vx_p_permission : any Vx_Core.Type_permission = value.permission()
      var vx_p_text : any Vx_Core.Type_string = value.text()
      var validkeys : [String] = []
      validkeys.append(":name")
      validkeys.append(":format")
      validkeys.append(":path")
      validkeys.append(":permission")
      validkeys.append(":text")
      var key : String = ""
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      var msgval : any Vx_Core.Type_any = Vx_Core.e_any
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(msgblock, valsub)
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(msgblock, valsub)
        } else if key == "" {
          var istestkey : Bool = false
          var testkey : String = ""
          if false {
          } else if let valstr = valsub as? any Vx_Core.Type_string {
            testkey = valstr.vx_string()
            istestkey = true
          } else if let sval = valsub as? String {
            testkey = sval
            istestkey = true
          } else {
            if false {
            } else if let valmsg = valsub as? any Vx_Core.Type_any {
              msgval = valmsg
            } else {
              msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
            }
            msg = Vx_Core.vx_msg_from_error("vx/data/file/file", ":invalidkeytype", msgval)
            msgblock = Vx_Core.vx_copy(msgblock, msg)
          }
          if istestkey {
            if !testkey.hasPrefix(":") {
              testkey = ":" + testkey
            }
            var isvalidkey : Bool = validkeys.contains(testkey)
            if isvalidkey {
              key = testkey
            } else {
              msgval = Vx_Core.vx_new_string(testkey)
              msg = Vx_Core.vx_msg_from_error("vx/data/file/file", ":invalidkey", msgval)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if false {
          } else if key == ":name" {
            if Vx_Core.vx_issame(valsub, vx_p_name) {
            } else if let valname = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_name = valname
            } else if valsub is String {
              ischanged = true
              vx_p_name = Vx_Core.vx_new(Vx_Core.t_string, valsub)
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("name"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
              msg = Vx_Core.vx_msg_from_error("vx/data/file/file", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else if key == ":format" {
            if Vx_Core.vx_issame(valsub, vx_p_format) {
            } else if let valformat = valsub as? any Vx_Data_File.Type_fileformat {
              ischanged = true
              vx_p_format = valformat
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("format"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
              msg = Vx_Core.vx_msg_from_error("vx/data/file/file", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else if key == ":path" {
            if Vx_Core.vx_issame(valsub, vx_p_path) {
            } else if let valpath = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_path = valpath
            } else if valsub is String {
              ischanged = true
              vx_p_path = Vx_Core.vx_new(Vx_Core.t_string, valsub)
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("path"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
              msg = Vx_Core.vx_msg_from_error("vx/data/file/file", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else if key == ":permission" {
            if Vx_Core.vx_issame(valsub, vx_p_permission) {
            } else if let valpermission = valsub as? any Vx_Core.Type_permission {
              ischanged = true
              vx_p_permission = valpermission
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("permission"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
              msg = Vx_Core.vx_msg_from_error("vx/data/file/file", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else if key == ":text" {
            if Vx_Core.vx_issame(valsub, vx_p_text) {
            } else if let valtext = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_text = valtext
            } else if valsub is String {
              ischanged = true
              vx_p_text = Vx_Core.vx_new(Vx_Core.t_string, valsub)
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("text"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
              msg = Vx_Core.vx_msg_from_error("vx/data/file/file", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = Vx_Core.vx_new_string(key)
            msg = Vx_Core.vx_msg_from_error("vx/data/file/file", ":invalidkey", msgval)
            msgblock = Vx_Core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Data_File.Class_file = Vx_Data_File.Class_file()
        work.vx_p_name = vx_p_name
        work.vx_p_format = vx_p_format
        work.vx_p_path = vx_p_path
        work.vx_p_permission = vx_p_permission
        work.vx_p_text = vx_p_text
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Data_File.e_file
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Data_File.t_file
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/data/file", // pkgname
        "file", // name
        ":struct", // extends
        Vx_Core.e_typelist, // traits
        Vx_Core.e_typelist, // allowtypes
        Vx_Core.e_typelist, // disallowtypes
        Vx_Core.e_funclist, // allowfuncs
        Vx_Core.e_funclist, // disallowfuncs
        Vx_Core.e_anylist, // allowvalues
        Vx_Core.e_anylist, // disallowvalues
        Vx_Core.e_argmap // properties
      )
      return output
    }

  }

  public static let e_file : any Vx_Data_File.Type_file = Vx_Data_File.Class_file()
  public static let t_file : any Vx_Data_File.Type_file = Vx_Data_File.Class_file()


  public protocol Type_fileformat : Vx_Core.Type_any, AnyObject {
  }

  public class Class_fileformat : Vx_Core.Class_base, Type_fileformat {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Data_File.Type_fileformat = Vx_Core.vx_copy(Vx_Data_File.e_fileformat, vals)
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Data_File.Type_fileformat = self
      var ischanged : Bool = false
      var value : Vx_Data_File.Class_fileformat = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Data_File.Class_fileformat = Vx_Data_File.Class_fileformat()
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Data_File.e_fileformat
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Data_File.t_fileformat
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/data/file", // pkgname
        "fileformat", // name
        ":string", // extends
        Vx_Core.e_typelist, // traits
        Vx_Core.e_typelist, // allowtypes
        Vx_Core.e_typelist, // disallowtypes
        Vx_Core.e_funclist, // allowfuncs
        Vx_Core.e_funclist, // disallowfuncs
        Vx_Core.e_anylist, // allowvalues
        Vx_Core.e_anylist, // disallowvalues
        Vx_Core.e_argmap // properties
      )
      return output
    }

  }

  public static let e_fileformat : any Vx_Data_File.Type_fileformat = Vx_Data_File.Class_fileformat()
  public static let t_fileformat : any Vx_Data_File.Type_fileformat = Vx_Data_File.Class_fileformat()


  public protocol Type_filelist : Vx_Core.Type_list, AnyObject {
    func vx_listfile() -> [any Vx_Data_File.Type_file]
    func vx_file(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Data_File.Type_file
  }

  public class Class_filelist : Vx_Core.Class_base, Type_filelist {

    public var vx_p_list : [any Vx_Data_File.Type_file] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_file(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Data_File.Type_file {
      var output : any Vx_Data_File.Type_file = Vx_Data_File.e_file
      var list : Vx_Data_File.Class_filelist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Data_File.Type_file] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listfile() -> [any Vx_Data_File.Type_file] {
      var output : [any Vx_Data_File.Type_file] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Data_File.Type_file = self.vx_file(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Data_File.Type_filelist = Vx_Core.vx_copy(Vx_Data_File.e_filelist, vals)
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Data_File.Type_filelist = self
      var ischanged : Bool = false
      var value : Vx_Data_File.Class_filelist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Data_File.Type_file] = Array(value.vx_listfile())
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(msgblock, valsub)
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(msgblock, valsub)
        } else if let multi = valsub as? any Vx_Data_File.Type_filelist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listfile())
        } else if let allowsub = valsub as? any Vx_Data_File.Type_file {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Data_File.Type_file {
          var subitem : any Vx_Data_File.Type_file = valsub as! any Vx_Data_File.Type_file
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Data_File.Type_file {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error("vx/data/file/filelist", ":invalidtype", anyinvalid)
          msgblock = Vx_Core.vx_copy(msgblock, msg)
        } else {
          msg = Vx_Core.vx_msg_from_error("vx/data/file/filelist", ":invalidtype", Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub)))
          msgblock = Vx_Core.vx_copy(msgblock, msg)
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Data_File.Class_filelist = Vx_Data_File.Class_filelist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Data_File.e_filelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Data_File.t_filelist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/data/file", // pkgname
        "filelist", // name
        ":list", // extends
        Vx_Core.e_typelist, // traits
        Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Data_File.t_file), // allowtypes
        Vx_Core.e_typelist, // disallowtypes
        Vx_Core.e_funclist, // allowfuncs
        Vx_Core.e_funclist, // disallowfuncs
        Vx_Core.e_anylist, // allowvalues
        Vx_Core.e_anylist, // disallowvalues
        Vx_Core.e_argmap // properties
      )
      return output
    }

  }

  public static let e_filelist : any Vx_Data_File.Type_filelist = Vx_Data_File.Class_filelist()
  public static let t_filelist : any Vx_Data_File.Type_filelist = Vx_Data_File.Class_filelist()


  public protocol Func_boolean_exists_from_file : Vx_Core.Func_any_from_any, AnyObject {
    func vx_boolean_exists_from_file(
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_boolean_exists_from_file : Vx_Core.Class_base, Func_boolean_exists_from_file {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_boolean_exists_from_file = Vx_Data_File.Class_boolean_exists_from_file()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_boolean_exists_from_file = Vx_Data_File.Class_boolean_exists_from_file()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "boolean-exists<-file", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_boolean_exists_from_file
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_boolean_exists_from_file
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
      let inputval : any Vx_Data_File.Type_file = value as! any Vx_Data_File.Type_file
      let outputval : any Vx_Core.Type_any = Vx_Data_File.f_boolean_exists_from_file(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let file : any Vx_Data_File.Type_file = Vx_Core.f_any_from_any(Vx_Data_File.t_file, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Data_File.f_boolean_exists_from_file(file)
      return output
    }

    public func vx_boolean_exists_from_file(
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Data_File.f_boolean_exists_from_file(file)
      return output
    }

  }

  public static let e_boolean_exists_from_file : any Vx_Data_File.Func_boolean_exists_from_file = Vx_Data_File.Class_boolean_exists_from_file()
  public static let t_boolean_exists_from_file : any Vx_Data_File.Func_boolean_exists_from_file = Vx_Data_File.Class_boolean_exists_from_file()

  public static func f_boolean_exists_from_file(
    _ file : any Vx_Data_File.Type_file
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Data_File.vx_boolean_exists_from_file(file)
    return output
  }


  public protocol Func_boolean_write_from_file : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_boolean_write_from_file(
      _ context : any Vx_Core.Type_context,
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_boolean_write_from_file : Vx_Core.Class_base, Func_boolean_write_from_file {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_boolean_write_from_file = Vx_Data_File.Class_boolean_write_from_file()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_boolean_write_from_file = Vx_Data_File.Class_boolean_write_from_file()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "boolean-write<-file", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_boolean_write_from_file
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_boolean_write_from_file
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
      let inputval : any Vx_Data_File.Type_file = value as! any Vx_Data_File.Type_file
      let outputval : any Vx_Core.Type_any = Vx_Data_File.f_boolean_write_from_file(context, inputval)
      output = Vx_Core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let file : any Vx_Data_File.Type_file = Vx_Core.f_any_from_any(Vx_Data_File.t_file, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Data_File.f_boolean_write_from_file(context, file)
      return output
    }

    public func vx_boolean_write_from_file(
      _ context : any Vx_Core.Type_context,
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Data_File.f_boolean_write_from_file(context, file)
      return output
    }

  }

  public static let e_boolean_write_from_file : any Vx_Data_File.Func_boolean_write_from_file = Vx_Data_File.Class_boolean_write_from_file()
  public static let t_boolean_write_from_file : any Vx_Data_File.Func_boolean_write_from_file = Vx_Data_File.Class_boolean_write_from_file()

  public static func f_boolean_write_from_file(
    _ context : any Vx_Core.Type_context,
    _ file : any Vx_Data_File.Type_file
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Data_File.f_boolean_write_from_file_string(
      context,
      file,
      file.text()
    )
    return output
  }


  public protocol Func_boolean_write_from_file_any : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_boolean_write_from_file_any(
      _ context : any Vx_Core.Type_context,
      _ file : any Vx_Data_File.Type_file,
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_boolean_write_from_file_any : Vx_Core.Class_base, Func_boolean_write_from_file_any {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_boolean_write_from_file_any = Vx_Data_File.Class_boolean_write_from_file_any()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_boolean_write_from_file_any = Vx_Data_File.Class_boolean_write_from_file_any()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "boolean-write<-file-any", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_boolean_write_from_file_any
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_boolean_write_from_file_any
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let file : any Vx_Data_File.Type_file = Vx_Core.f_any_from_any(Vx_Data_File.t_file, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let value : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(2)))
      output = Vx_Data_File.f_boolean_write_from_file_any(context, file, value)
      return output
    }

    public func vx_boolean_write_from_file_any(
      _ context : any Vx_Core.Type_context,
      _ file : any Vx_Data_File.Type_file,
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Data_File.f_boolean_write_from_file_any(context, file, value)
      return output
    }

  }

  public static let e_boolean_write_from_file_any : any Vx_Data_File.Func_boolean_write_from_file_any = Vx_Data_File.Class_boolean_write_from_file_any()
  public static let t_boolean_write_from_file_any : any Vx_Data_File.Func_boolean_write_from_file_any = Vx_Data_File.Class_boolean_write_from_file_any()

  public static func f_boolean_write_from_file_any(
    _ context : any Vx_Core.Type_context,
    _ file : any Vx_Data_File.Type_file,
    _ value : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    output = Vx_Data_File.f_boolean_write_from_file_string(
      context,
      file,
      Vx_Core.f_string_from_any(
        value
      )
    )
    return output
  }


  public protocol Func_boolean_write_from_file_string : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_boolean_write_from_file_string(
      _ context : any Vx_Core.Type_context,
      _ file : any Vx_Data_File.Type_file,
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_boolean
  }

  public class Class_boolean_write_from_file_string : Vx_Core.Class_base, Func_boolean_write_from_file_string {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_boolean_write_from_file_string = Vx_Data_File.Class_boolean_write_from_file_string()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_boolean_write_from_file_string = Vx_Data_File.Class_boolean_write_from_file_string()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "boolean-write<-file-string", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "boolean", // name
          "", // extends
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_boolean_write_from_file_string
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_boolean_write_from_file_string
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let file : any Vx_Data_File.Type_file = Vx_Core.f_any_from_any(Vx_Data_File.t_file, arglist.vx_any(Vx_Core.vx_new_int(1)))
      let text : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(2)))
      output = Vx_Data_File.f_boolean_write_from_file_string(context, file, text)
      return output
    }

    public func vx_boolean_write_from_file_string(
      _ context : any Vx_Core.Type_context,
      _ file : any Vx_Data_File.Type_file,
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_boolean {
      let output : any Vx_Core.Type_boolean = Vx_Data_File.f_boolean_write_from_file_string(context, file, text)
      return output
    }

  }

  public static let e_boolean_write_from_file_string : any Vx_Data_File.Func_boolean_write_from_file_string = Vx_Data_File.Class_boolean_write_from_file_string()
  public static let t_boolean_write_from_file_string : any Vx_Data_File.Func_boolean_write_from_file_string = Vx_Data_File.Class_boolean_write_from_file_string()

  public static func f_boolean_write_from_file_string(
    _ context : any Vx_Core.Type_context,
    _ file : any Vx_Data_File.Type_file,
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_boolean {
    var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
    if Vx_Core.f_boolean_permission_from_func(
      context,
      Vx_Data_File.t_boolean_write_from_file_string
    ).vx_boolean() {
      do {
        output = Vx_Data_File.vx_boolean_write_from_file_string(context, file, text)
      } catch {
        var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
          "vx/data/file/boolean-write<-file-string",
          error
        )
        output = Vx_Core.vx_copy(
          Vx_Core.t_boolean,
          output,
          msg
        )
      }
    } else {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_error(
        "vx/core/func",
        ":permissiondenied",
        Vx_Core.vx_new_string(
          "boolean-write<-file-string"
        )
      )
      output = Vx_Core.vx_copy(
        Vx_Core.t_boolean,
        output,
        msg
      )
    }
    return output
  }


  public protocol Func_file_read_from_file : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_file_read_from_file(
      _ context : any Vx_Core.Type_context,
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Data_File.Type_file
  }

  public class Class_file_read_from_file : Vx_Core.Class_base, Func_file_read_from_file {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_file_read_from_file = Vx_Data_File.Class_file_read_from_file()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_file_read_from_file = Vx_Data_File.Class_file_read_from_file()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "file-read<-file", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/data/file", // pkgname
          "file", // name
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_file_read_from_file
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_file_read_from_file
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
      let inputval : any Vx_Data_File.Type_file = value as! any Vx_Data_File.Type_file
      let outputval : any Vx_Core.Type_any = Vx_Data_File.f_file_read_from_file(context, inputval)
      output = Vx_Core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let file : any Vx_Data_File.Type_file = Vx_Core.f_any_from_any(Vx_Data_File.t_file, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Data_File.f_file_read_from_file(context, file)
      return output
    }

    public func vx_file_read_from_file(
      _ context : any Vx_Core.Type_context,
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Data_File.Type_file {
      let output : any Vx_Data_File.Type_file = Vx_Data_File.f_file_read_from_file(context, file)
      return output
    }

  }

  public static let e_file_read_from_file : any Vx_Data_File.Func_file_read_from_file = Vx_Data_File.Class_file_read_from_file()
  public static let t_file_read_from_file : any Vx_Data_File.Func_file_read_from_file = Vx_Data_File.Class_file_read_from_file()

  public static func f_file_read_from_file(
    _ context : any Vx_Core.Type_context,
    _ file : any Vx_Data_File.Type_file
  ) -> any Vx_Data_File.Type_file {
    var output : any Vx_Data_File.Type_file = Vx_Data_File.e_file
    if Vx_Core.f_boolean_permission_from_func(
      context,
      Vx_Data_File.t_file_read_from_file
    ).vx_boolean() {
      output = Vx_Core.f_copy(
        Vx_Data_File.t_file,
        file,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          Vx_Core.vx_new_string(":text"),
          Vx_Data_File.f_string_read_from_file(
            context,
            file
          )
        )
      )
    } else {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_error(
        "vx/core/func",
        ":permissiondenied",
        Vx_Core.vx_new_string("file-read<-file")
      )
      output = Vx_Core.vx_copy(
        Vx_Data_File.t_file,
        output,
        msg
      )
    }
    return output
  }


  public protocol Func_file_from_path : Vx_Core.Func_any_from_any, AnyObject {
    func vx_file_from_path(
      _ path : any Vx_Core.Type_string
    ) -> any Vx_Data_File.Type_file
  }

  public class Class_file_from_path : Vx_Core.Class_base, Func_file_from_path {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_file_from_path = Vx_Data_File.Class_file_from_path()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_file_from_path = Vx_Data_File.Class_file_from_path()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "file<-path", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/data/file", // pkgname
          "file", // name
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_file_from_path
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_file_from_path
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
      let outputval : any Vx_Core.Type_any = Vx_Data_File.f_file_from_path(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let path : any Vx_Core.Type_string = Vx_Core.f_any_from_any(Vx_Core.t_string, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Data_File.f_file_from_path(path)
      return output
    }

    public func vx_file_from_path(
      _ path : any Vx_Core.Type_string
    ) -> any Vx_Data_File.Type_file {
      let output : any Vx_Data_File.Type_file = Vx_Data_File.f_file_from_path(path)
      return output
    }

  }

  public static let e_file_from_path : any Vx_Data_File.Func_file_from_path = Vx_Data_File.Class_file_from_path()
  public static let t_file_from_path : any Vx_Data_File.Func_file_from_path = Vx_Data_File.Class_file_from_path()

  public static func f_file_from_path(
    _ path : any Vx_Core.Type_string
  ) -> any Vx_Data_File.Type_file {
    var output : any Vx_Data_File.Type_file = Vx_Data_File.e_file
    output = Vx_Core.f_let(
      Vx_Data_File.t_file,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let pos : any Vx_Core.Type_int = Vx_Type.f_int_from_string_findlast(
          path,
          Vx_Core.vx_new_string("/")
        )
        let name : any Vx_Core.Type_string = Vx_Type.f_string_from_string_start(
          path,
          Vx_Core.f_plus1(
            pos
          )
        )
        let pth : any Vx_Core.Type_string = Vx_Type.f_string_from_string_end(
          path,
          Vx_Core.f_minus1(
            pos
          )
        )
        let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
          Vx_Data_File.t_file,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            Vx_Core.vx_new_string(":name"),
            name,
            Vx_Core.vx_new_string(":path"),
            pth
          )
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_name_from_file : Vx_Core.Func_any_from_any, AnyObject {
    func vx_name_from_file(
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_string
  }

  public class Class_name_from_file : Vx_Core.Class_base, Func_name_from_file {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_name_from_file = Vx_Data_File.Class_name_from_file()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_name_from_file = Vx_Data_File.Class_name_from_file()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "name<-file", // name
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_name_from_file
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_name_from_file
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
      let inputval : any Vx_Data_File.Type_file = value as! any Vx_Data_File.Type_file
      let outputval : any Vx_Core.Type_any = Vx_Data_File.f_name_from_file(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let file : any Vx_Data_File.Type_file = Vx_Core.f_any_from_any(Vx_Data_File.t_file, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Data_File.f_name_from_file(file)
      return output
    }

    public func vx_name_from_file(
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Data_File.f_name_from_file(file)
      return output
    }

  }

  public static let e_name_from_file : any Vx_Data_File.Func_name_from_file = Vx_Data_File.Class_name_from_file()
  public static let t_name_from_file : any Vx_Data_File.Func_name_from_file = Vx_Data_File.Class_name_from_file()

  public static func f_name_from_file(
    _ file : any Vx_Data_File.Type_file
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = file.name()
    return output
  }


  public protocol Func_path_from_file : Vx_Core.Func_any_from_any, AnyObject {
    func vx_path_from_file(
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_string
  }

  public class Class_path_from_file : Vx_Core.Class_base, Func_path_from_file {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_path_from_file = Vx_Data_File.Class_path_from_file()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_path_from_file = Vx_Data_File.Class_path_from_file()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "path<-file", // name
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_path_from_file
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_path_from_file
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
      let inputval : any Vx_Data_File.Type_file = value as! any Vx_Data_File.Type_file
      let outputval : any Vx_Core.Type_any = Vx_Data_File.f_path_from_file(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let file : any Vx_Data_File.Type_file = Vx_Core.f_any_from_any(Vx_Data_File.t_file, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Data_File.f_path_from_file(file)
      return output
    }

    public func vx_path_from_file(
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Data_File.f_path_from_file(file)
      return output
    }

  }

  public static let e_path_from_file : any Vx_Data_File.Func_path_from_file = Vx_Data_File.Class_path_from_file()
  public static let t_path_from_file : any Vx_Data_File.Func_path_from_file = Vx_Data_File.Class_path_from_file()

  public static func f_path_from_file(
    _ file : any Vx_Data_File.Type_file
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = file.path()
    return output
  }


  public protocol Func_pathcurrent_from_os : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_pathcurrent_from_os() -> any Vx_Core.Type_string
  }

  public class Class_pathcurrent_from_os : Vx_Core.Class_base, Func_pathcurrent_from_os {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_pathcurrent_from_os = Vx_Data_File.Class_pathcurrent_from_os()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_pathcurrent_from_os = Vx_Data_File.Class_pathcurrent_from_os()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "pathcurrent<-os", // name
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_pathcurrent_from_os
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_pathcurrent_from_os
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      output = Vx_Data_File.f_pathcurrent_from_os()
      return output
    }

    public func vx_pathcurrent_from_os() -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Data_File.f_pathcurrent_from_os()
      return output
    }

  }

  public static let e_pathcurrent_from_os : any Vx_Data_File.Func_pathcurrent_from_os = Vx_Data_File.Class_pathcurrent_from_os()
  public static let t_pathcurrent_from_os : any Vx_Data_File.Func_pathcurrent_from_os = Vx_Data_File.Class_pathcurrent_from_os()

  public static func f_pathcurrent_from_os() -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Data_File.vx_pathcurrent_from_os()
    return output
  }


  public protocol Func_pathfull_from_file : Vx_Core.Func_any_from_any, AnyObject {
    func vx_pathfull_from_file(
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_string
  }

  public class Class_pathfull_from_file : Vx_Core.Class_base, Func_pathfull_from_file {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_pathfull_from_file = Vx_Data_File.Class_pathfull_from_file()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_pathfull_from_file = Vx_Data_File.Class_pathfull_from_file()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "pathfull<-file", // name
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_pathfull_from_file
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_pathfull_from_file
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
      let inputval : any Vx_Data_File.Type_file = value as! any Vx_Data_File.Type_file
      let outputval : any Vx_Core.Type_any = Vx_Data_File.f_pathfull_from_file(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let file : any Vx_Data_File.Type_file = Vx_Core.f_any_from_any(Vx_Data_File.t_file, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Data_File.f_pathfull_from_file(file)
      return output
    }

    public func vx_pathfull_from_file(
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Data_File.f_pathfull_from_file(file)
      return output
    }

  }

  public static let e_pathfull_from_file : any Vx_Data_File.Func_pathfull_from_file = Vx_Data_File.Class_pathfull_from_file()
  public static let t_pathfull_from_file : any Vx_Data_File.Func_pathfull_from_file = Vx_Data_File.Class_pathfull_from_file()

  public static func f_pathfull_from_file(
    _ file : any Vx_Data_File.Type_file
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let path : any Vx_Core.Type_string = Vx_Data_File.f_path_from_file(
          file
        )
        let name : any Vx_Core.Type_string = Vx_Data_File.f_name_from_file(
          file
        )
        let output_1 : any Vx_Core.Type_any = Vx_Core.f_if_2(
          Vx_Core.t_string,
          Vx_Core.vx_new(
            Vx_Core.t_thenelselist,
            Vx_Core.f_then(
              Vx_Core.t_boolean_from_func.vx_fn_new({() in
                var output_2 : any Vx_Core.Type_any = Vx_Core.f_is_empty(
                  path
                )
                return output_2
              }),
              Vx_Core.t_any_from_func.vx_fn_new({() in
                let output_3 : any Vx_Core.Type_any = name
                return output_3
              })
            ),
            Vx_Core.f_else(
              Vx_Core.t_any_from_func.vx_fn_new({() in
                var output_4 : any Vx_Core.Type_any = Vx_Core.f_new(
                  Vx_Core.t_string,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    path,
                    Vx_Core.vx_new_string("/"),
                    name
                  )
                )
                return output_4
              })
            )
          )
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_string_read_from_file : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_string_read_from_file(
      _ context : any Vx_Core.Type_context,
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_read_from_file : Vx_Core.Class_base, Func_string_read_from_file {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_string_read_from_file = Vx_Data_File.Class_string_read_from_file()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Data_File.Class_string_read_from_file = Vx_Data_File.Class_string_read_from_file()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/data/file", // pkgname
        "string-read<-file", // name
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
      let output : any Vx_Core.Type_any = Vx_Data_File.e_string_read_from_file
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Data_File.t_string_read_from_file
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
      let inputval : any Vx_Data_File.Type_file = value as! any Vx_Data_File.Type_file
      let outputval : any Vx_Core.Type_any = Vx_Data_File.f_string_read_from_file(context, inputval)
      output = Vx_Core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let file : any Vx_Data_File.Type_file = Vx_Core.f_any_from_any(Vx_Data_File.t_file, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Data_File.f_string_read_from_file(context, file)
      return output
    }

    public func vx_string_read_from_file(
      _ context : any Vx_Core.Type_context,
      _ file : any Vx_Data_File.Type_file
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Data_File.f_string_read_from_file(context, file)
      return output
    }

  }

  public static let e_string_read_from_file : any Vx_Data_File.Func_string_read_from_file = Vx_Data_File.Class_string_read_from_file()
  public static let t_string_read_from_file : any Vx_Data_File.Func_string_read_from_file = Vx_Data_File.Class_string_read_from_file()

  public static func f_string_read_from_file(
    _ context : any Vx_Core.Type_context,
    _ file : any Vx_Data_File.Type_file
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    if Vx_Core.f_boolean_permission_from_func(
      context,
      Vx_Data_File.t_string_read_from_file
    ).vx_boolean() {
      do {
        output = Vx_Data_File.vx_string_read_from_file(context, file)
      } catch {
        var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
          "vx/data/file/string-read<-file",
          error
        )
        output = Vx_Core.vx_copy(
          Vx_Core.t_string,
          output,
          msg
        )
      }
    } else {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_error(
        "vx/core/func",
        ":permissiondenied",
        Vx_Core.vx_new_string("string-read<-file")
      )
      output = Vx_Core.vx_copy(
        Vx_Core.t_string,
        output,
        msg
      )
    }
    return output
  }

  private static var initialized : Bool = false

  public static func vx_initialize() {
    guard !initialized else { return }
    initialized = true
    var maptype : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapconst : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapfunc : Vx_Core.MapMutable<any Vx_Core.Type_func> = Vx_Core.MapMutable<any Vx_Core.Type_func>()
    maptype.put("file", Vx_Data_File.t_file)
    maptype.put("fileformat", Vx_Data_File.t_fileformat)
    maptype.put("filelist", Vx_Data_File.t_filelist)
    mapfunc.put("boolean-exists<-file", Vx_Data_File.t_boolean_exists_from_file)
    mapfunc.put("boolean-write<-file", Vx_Data_File.t_boolean_write_from_file)
    mapfunc.put("boolean-write<-file-any", Vx_Data_File.t_boolean_write_from_file_any)
    mapfunc.put("boolean-write<-file-string", Vx_Data_File.t_boolean_write_from_file_string)
    mapfunc.put("file-read<-file", Vx_Data_File.t_file_read_from_file)
    mapfunc.put("file<-path", Vx_Data_File.t_file_from_path)
    mapfunc.put("name<-file", Vx_Data_File.t_name_from_file)
    mapfunc.put("path<-file", Vx_Data_File.t_path_from_file)
    mapfunc.put("pathcurrent<-os", Vx_Data_File.t_pathcurrent_from_os)
    mapfunc.put("pathfull<-file", Vx_Data_File.t_pathfull_from_file)
    mapfunc.put("string-read<-file", Vx_Data_File.t_string_read_from_file)
    Vx_Core.vx_global_package_set(
      "vx/data/file",
      Vx_Core.vx_mapimmutable(maptype),
      Vx_Core.vx_mapimmutable(mapconst),
      Vx_Core.vx_mapimmutable(mapfunc)
    )
  }

}
