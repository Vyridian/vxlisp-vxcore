
import Foundation

public enum Vx_Test {


  public protocol Type_testcase : Vx_Core.Type_struct, AnyObject {
    func passfail() -> any Vx_Core.Type_boolean
    func testpkg() -> any Vx_Core.Type_string
    func casename() -> any Vx_Core.Type_string
    func describelist() -> any Vx_Test.Type_testdescribelist
  }

  public class Class_testcase : Vx_Core.Class_base, Type_testcase {

    public var vx_p_passfail : (any Vx_Core.Type_boolean)? = nil

    public func passfail() -> any Vx_Core.Type_boolean {
      var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
      if let testnull = vx_p_passfail {
        output = testnull
      }
      return output
    }

    public var vx_p_testpkg : (any Vx_Core.Type_string)? = nil

    public func testpkg() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_testpkg {
        output = testnull
      }
      return output
    }

    public var vx_p_casename : (any Vx_Core.Type_string)? = nil

    public func casename() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_casename {
        output = testnull
      }
      return output
    }

    public var vx_p_describelist : (any Vx_Test.Type_testdescribelist)? = nil

    public func describelist() -> any Vx_Test.Type_testdescribelist {
      var output : any Vx_Test.Type_testdescribelist = Vx_Test.e_testdescribelist
      if let testnull = vx_p_describelist {
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
      } else if skey == ":passfail" {
        output = self.passfail()
      } else if skey == ":testpkg" {
        output = self.testpkg()
      } else if skey == ":casename" {
        output = self.casename()
      } else if skey == ":describelist" {
        output = self.describelist()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":passfail", self.passfail())
      map.put(":testpkg", self.testpkg())
      map.put(":casename", self.casename())
      map.put(":describelist", self.describelist())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcase = Vx_Core.vx_copy(
        Vx_Test.t_testcase,
        Vx_Test.e_testcase,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcase = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testcase = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_passfail : any Vx_Core.Type_boolean = value.passfail()
      var vx_p_testpkg : any Vx_Core.Type_string = value.testpkg()
      var vx_p_casename : any Vx_Core.Type_string = value.casename()
      var vx_p_describelist : any Vx_Test.Type_testdescribelist = value.describelist()
      var validkeys : [String] = []
      validkeys.append(":passfail")
      validkeys.append(":testpkg")
      validkeys.append(":casename")
      validkeys.append(":describelist")
      var key : String = ""
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      var msgval : any Vx_Core.Type_any = Vx_Core.e_any
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
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
              msgval = Vx_Core.vx_new_string(
                Vx_Core.vx_string_from_object(valsub)
              )
            }
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testcase",
              ":invalidkeytype",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
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
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcase",
                ":invalidkey",
                msgval
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          }
        } else {
          if false {
          } else if key == ":passfail" {
            if Vx_Core.vx_issame(valsub, vx_p_passfail) {
            } else if let valpassfail = valsub as? any Vx_Core.Type_boolean {
              ischanged = true
              vx_p_passfail = valpassfail
            } else if valsub is Bool {
              ischanged = true
              vx_p_passfail = Vx_Core.vx_new(
                Vx_Core.t_boolean,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("passfail"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcase",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":testpkg" {
            if Vx_Core.vx_issame(valsub, vx_p_testpkg) {
            } else if let valtestpkg = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_testpkg = valtestpkg
            } else if valsub is String {
              ischanged = true
              vx_p_testpkg = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("testpkg"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcase",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":casename" {
            if Vx_Core.vx_issame(valsub, vx_p_casename) {
            } else if let valcasename = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_casename = valcasename
            } else if valsub is String {
              ischanged = true
              vx_p_casename = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("casename"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcase",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":describelist" {
            if Vx_Core.vx_issame(valsub, vx_p_describelist) {
            } else if let valdescribelist = valsub as? any Vx_Test.Type_testdescribelist {
              ischanged = true
              vx_p_describelist = valdescribelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("describelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcase",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else {
            msgval = Vx_Core.vx_new_string(key)
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testcase",
              ":invalidkey",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
          }
          key = ""
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testcase = Vx_Test.Class_testcase()
        work.vx_p_passfail = vx_p_passfail
        work.vx_p_testpkg = vx_p_testpkg
        work.vx_p_casename = vx_p_casename
        work.vx_p_describelist = vx_p_describelist
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testcase
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testcase
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testcase",
        ":struct",
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testcase : any Vx_Test.Type_testcase = Vx_Test.Class_testcase()
  public static let t_testcase : any Vx_Test.Type_testcase = Vx_Test.Class_testcase()


  public protocol Type_testcaselist : Vx_Core.Type_list, AnyObject {
    func vx_listtestcase() -> [any Vx_Test.Type_testcase]
    func vx_testcase(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Test.Type_testcase
  }

  public class Class_testcaselist : Vx_Core.Class_base, Type_testcaselist {

    public var vx_p_list : [any Vx_Test.Type_testcase] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_testcase(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Test.Type_testcase {
      var output : any Vx_Test.Type_testcase = Vx_Test.e_testcase
      var list : Vx_Test.Class_testcaselist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Test.Type_testcase] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listtestcase() -> [any Vx_Test.Type_testcase] {
      var output : [any Vx_Test.Type_testcase] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcase = self.vx_testcase(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcaselist = Vx_Core.vx_copy(
        Vx_Test.t_testcaselist,
        Vx_Test.e_testcaselist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcaselist = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testcaselist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Test.Type_testcase] = Array(value.vx_listtestcase())
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if let multi = valsub as? any Vx_Test.Type_testcaselist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listtestcase())
        } else if let allowsub = valsub as? any Vx_Test.Type_testcase {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Test.Type_testcase {
          var subitem : any Vx_Test.Type_testcase = valsub as! any Vx_Test.Type_testcase
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Test.Type_testcase {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/test/testcaselist",
            ":invalidtype",
            anyinvalid
          )
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              msg
            ]
          )
        } else {
          msg = Vx_Core.vx_msg_from_error(
            "vx/test/testcaselist",
            ":invalidtype",
            Vx_Core.vx_new_string(
              Vx_Core.vx_string_from_object(valsub)
            )
          )
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              msg
            ]
          )
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testcaselist = Vx_Test.Class_testcaselist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testcaselist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testcaselist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testcaselist",
        ":list",
        Vx_Core.e_typelist,
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Test.t_testcase
          ]
        ),
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testcaselist : any Vx_Test.Type_testcaselist = Vx_Test.Class_testcaselist()
  public static let t_testcaselist : any Vx_Test.Type_testcaselist = Vx_Test.Class_testcaselist()


  public protocol Type_testcoveragedetail : Vx_Core.Type_struct, AnyObject {
    func constmap() -> any Vx_Core.Type_intmap
    func funcmap() -> any Vx_Core.Type_intmap
    func testpkg() -> any Vx_Core.Type_string
    func typemap() -> any Vx_Core.Type_intmap
  }

  public class Class_testcoveragedetail : Vx_Core.Class_base, Type_testcoveragedetail {

    public var vx_p_constmap : (any Vx_Core.Type_intmap)? = nil

    public func constmap() -> any Vx_Core.Type_intmap {
      var output : any Vx_Core.Type_intmap = Vx_Core.e_intmap
      if let testnull = vx_p_constmap {
        output = testnull
      }
      return output
    }

    public var vx_p_funcmap : (any Vx_Core.Type_intmap)? = nil

    public func funcmap() -> any Vx_Core.Type_intmap {
      var output : any Vx_Core.Type_intmap = Vx_Core.e_intmap
      if let testnull = vx_p_funcmap {
        output = testnull
      }
      return output
    }

    public var vx_p_testpkg : (any Vx_Core.Type_string)? = nil

    public func testpkg() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_testpkg {
        output = testnull
      }
      return output
    }

    public var vx_p_typemap : (any Vx_Core.Type_intmap)? = nil

    public func typemap() -> any Vx_Core.Type_intmap {
      var output : any Vx_Core.Type_intmap = Vx_Core.e_intmap
      if let testnull = vx_p_typemap {
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
      } else if skey == ":constmap" {
        output = self.constmap()
      } else if skey == ":funcmap" {
        output = self.funcmap()
      } else if skey == ":testpkg" {
        output = self.testpkg()
      } else if skey == ":typemap" {
        output = self.typemap()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":constmap", self.constmap())
      map.put(":funcmap", self.funcmap())
      map.put(":testpkg", self.testpkg())
      map.put(":typemap", self.typemap())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcoveragedetail = Vx_Core.vx_copy(
        Vx_Test.t_testcoveragedetail,
        Vx_Test.e_testcoveragedetail,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcoveragedetail = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testcoveragedetail = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_constmap : any Vx_Core.Type_intmap = value.constmap()
      var vx_p_funcmap : any Vx_Core.Type_intmap = value.funcmap()
      var vx_p_testpkg : any Vx_Core.Type_string = value.testpkg()
      var vx_p_typemap : any Vx_Core.Type_intmap = value.typemap()
      var validkeys : [String] = []
      validkeys.append(":constmap")
      validkeys.append(":funcmap")
      validkeys.append(":testpkg")
      validkeys.append(":typemap")
      var key : String = ""
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      var msgval : any Vx_Core.Type_any = Vx_Core.e_any
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
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
              msgval = Vx_Core.vx_new_string(
                Vx_Core.vx_string_from_object(valsub)
              )
            }
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testcoveragedetail",
              ":invalidkeytype",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
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
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragedetail",
                ":invalidkey",
                msgval
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          }
        } else {
          if false {
          } else if key == ":constmap" {
            if Vx_Core.vx_issame(valsub, vx_p_constmap) {
            } else if let valconstmap = valsub as? any Vx_Core.Type_intmap {
              ischanged = true
              vx_p_constmap = valconstmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("constmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragedetail",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":funcmap" {
            if Vx_Core.vx_issame(valsub, vx_p_funcmap) {
            } else if let valfuncmap = valsub as? any Vx_Core.Type_intmap {
              ischanged = true
              vx_p_funcmap = valfuncmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("funcmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragedetail",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":testpkg" {
            if Vx_Core.vx_issame(valsub, vx_p_testpkg) {
            } else if let valtestpkg = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_testpkg = valtestpkg
            } else if valsub is String {
              ischanged = true
              vx_p_testpkg = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("testpkg"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragedetail",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":typemap" {
            if Vx_Core.vx_issame(valsub, vx_p_typemap) {
            } else if let valtypemap = valsub as? any Vx_Core.Type_intmap {
              ischanged = true
              vx_p_typemap = valtypemap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("typemap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragedetail",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else {
            msgval = Vx_Core.vx_new_string(key)
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testcoveragedetail",
              ":invalidkey",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
          }
          key = ""
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testcoveragedetail = Vx_Test.Class_testcoveragedetail()
        work.vx_p_constmap = vx_p_constmap
        work.vx_p_funcmap = vx_p_funcmap
        work.vx_p_testpkg = vx_p_testpkg
        work.vx_p_typemap = vx_p_typemap
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testcoveragedetail
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testcoveragedetail
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testcoveragedetail",
        ":struct",
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testcoveragedetail : any Vx_Test.Type_testcoveragedetail = Vx_Test.Class_testcoveragedetail()
  public static let t_testcoveragedetail : any Vx_Test.Type_testcoveragedetail = Vx_Test.Class_testcoveragedetail()


  public protocol Type_testcoveragenums : Vx_Core.Type_struct, AnyObject {
    func pct() -> any Vx_Core.Type_int
    func testpkg() -> any Vx_Core.Type_string
    func tests() -> any Vx_Core.Type_int
    func total() -> any Vx_Core.Type_int
  }

  public class Class_testcoveragenums : Vx_Core.Class_base, Type_testcoveragenums {

    public var vx_p_pct : (any Vx_Core.Type_int)? = nil

    public func pct() -> any Vx_Core.Type_int {
      var output : any Vx_Core.Type_int = Vx_Core.e_int
      if let testnull = vx_p_pct {
        output = testnull
      }
      return output
    }

    public var vx_p_testpkg : (any Vx_Core.Type_string)? = nil

    public func testpkg() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_testpkg {
        output = testnull
      }
      return output
    }

    public var vx_p_tests : (any Vx_Core.Type_int)? = nil

    public func tests() -> any Vx_Core.Type_int {
      var output : any Vx_Core.Type_int = Vx_Core.e_int
      if let testnull = vx_p_tests {
        output = testnull
      }
      return output
    }

    public var vx_p_total : (any Vx_Core.Type_int)? = nil

    public func total() -> any Vx_Core.Type_int {
      var output : any Vx_Core.Type_int = Vx_Core.e_int
      if let testnull = vx_p_total {
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
      } else if skey == ":pct" {
        output = self.pct()
      } else if skey == ":testpkg" {
        output = self.testpkg()
      } else if skey == ":tests" {
        output = self.tests()
      } else if skey == ":total" {
        output = self.total()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":pct", self.pct())
      map.put(":testpkg", self.testpkg())
      map.put(":tests", self.tests())
      map.put(":total", self.total())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcoveragenums = Vx_Core.vx_copy(
        Vx_Test.t_testcoveragenums,
        Vx_Test.e_testcoveragenums,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcoveragenums = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testcoveragenums = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_pct : any Vx_Core.Type_int = value.pct()
      var vx_p_testpkg : any Vx_Core.Type_string = value.testpkg()
      var vx_p_tests : any Vx_Core.Type_int = value.tests()
      var vx_p_total : any Vx_Core.Type_int = value.total()
      var validkeys : [String] = []
      validkeys.append(":pct")
      validkeys.append(":testpkg")
      validkeys.append(":tests")
      validkeys.append(":total")
      var key : String = ""
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      var msgval : any Vx_Core.Type_any = Vx_Core.e_any
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
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
              msgval = Vx_Core.vx_new_string(
                Vx_Core.vx_string_from_object(valsub)
              )
            }
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testcoveragenums",
              ":invalidkeytype",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
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
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragenums",
                ":invalidkey",
                msgval
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          }
        } else {
          if false {
          } else if key == ":pct" {
            if Vx_Core.vx_issame(valsub, vx_p_pct) {
            } else if let valpct = valsub as? any Vx_Core.Type_int {
              ischanged = true
              vx_p_pct = valpct
            } else if valsub is Int {
              ischanged = true
              vx_p_pct = Vx_Core.vx_new(
                Vx_Core.t_int,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("pct"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragenums",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":testpkg" {
            if Vx_Core.vx_issame(valsub, vx_p_testpkg) {
            } else if let valtestpkg = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_testpkg = valtestpkg
            } else if valsub is String {
              ischanged = true
              vx_p_testpkg = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("testpkg"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragenums",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":tests" {
            if Vx_Core.vx_issame(valsub, vx_p_tests) {
            } else if let valtests = valsub as? any Vx_Core.Type_int {
              ischanged = true
              vx_p_tests = valtests
            } else if valsub is Int {
              ischanged = true
              vx_p_tests = Vx_Core.vx_new(
                Vx_Core.t_int,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("tests"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragenums",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":total" {
            if Vx_Core.vx_issame(valsub, vx_p_total) {
            } else if let valtotal = valsub as? any Vx_Core.Type_int {
              ischanged = true
              vx_p_total = valtotal
            } else if valsub is Int {
              ischanged = true
              vx_p_total = Vx_Core.vx_new(
                Vx_Core.t_int,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("total"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragenums",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else {
            msgval = Vx_Core.vx_new_string(key)
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testcoveragenums",
              ":invalidkey",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
          }
          key = ""
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testcoveragenums = Vx_Test.Class_testcoveragenums()
        work.vx_p_pct = vx_p_pct
        work.vx_p_testpkg = vx_p_testpkg
        work.vx_p_tests = vx_p_tests
        work.vx_p_total = vx_p_total
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testcoveragenums
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testcoveragenums
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testcoveragenums",
        ":struct",
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testcoveragenums : any Vx_Test.Type_testcoveragenums = Vx_Test.Class_testcoveragenums()
  public static let t_testcoveragenums : any Vx_Test.Type_testcoveragenums = Vx_Test.Class_testcoveragenums()


  public protocol Type_testcoveragesummary : Vx_Core.Type_struct, AnyObject {
    func bigospacenums() -> any Vx_Test.Type_testcoveragenums
    func bigotimenums() -> any Vx_Test.Type_testcoveragenums
    func constnums() -> any Vx_Test.Type_testcoveragenums
    func docnums() -> any Vx_Test.Type_testcoveragenums
    func funcnums() -> any Vx_Test.Type_testcoveragenums
    func testpkg() -> any Vx_Core.Type_string
    func totalnums() -> any Vx_Test.Type_testcoveragenums
    func typenums() -> any Vx_Test.Type_testcoveragenums
  }

  public class Class_testcoveragesummary : Vx_Core.Class_base, Type_testcoveragesummary {

    public var vx_p_bigospacenums : (any Vx_Test.Type_testcoveragenums)? = nil

    public func bigospacenums() -> any Vx_Test.Type_testcoveragenums {
      var output : any Vx_Test.Type_testcoveragenums = Vx_Test.e_testcoveragenums
      if let testnull = vx_p_bigospacenums {
        output = testnull
      }
      return output
    }

    public var vx_p_bigotimenums : (any Vx_Test.Type_testcoveragenums)? = nil

    public func bigotimenums() -> any Vx_Test.Type_testcoveragenums {
      var output : any Vx_Test.Type_testcoveragenums = Vx_Test.e_testcoveragenums
      if let testnull = vx_p_bigotimenums {
        output = testnull
      }
      return output
    }

    public var vx_p_constnums : (any Vx_Test.Type_testcoveragenums)? = nil

    public func constnums() -> any Vx_Test.Type_testcoveragenums {
      var output : any Vx_Test.Type_testcoveragenums = Vx_Test.e_testcoveragenums
      if let testnull = vx_p_constnums {
        output = testnull
      }
      return output
    }

    public var vx_p_docnums : (any Vx_Test.Type_testcoveragenums)? = nil

    public func docnums() -> any Vx_Test.Type_testcoveragenums {
      var output : any Vx_Test.Type_testcoveragenums = Vx_Test.e_testcoveragenums
      if let testnull = vx_p_docnums {
        output = testnull
      }
      return output
    }

    public var vx_p_funcnums : (any Vx_Test.Type_testcoveragenums)? = nil

    public func funcnums() -> any Vx_Test.Type_testcoveragenums {
      var output : any Vx_Test.Type_testcoveragenums = Vx_Test.e_testcoveragenums
      if let testnull = vx_p_funcnums {
        output = testnull
      }
      return output
    }

    public var vx_p_testpkg : (any Vx_Core.Type_string)? = nil

    public func testpkg() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_testpkg {
        output = testnull
      }
      return output
    }

    public var vx_p_totalnums : (any Vx_Test.Type_testcoveragenums)? = nil

    public func totalnums() -> any Vx_Test.Type_testcoveragenums {
      var output : any Vx_Test.Type_testcoveragenums = Vx_Test.e_testcoveragenums
      if let testnull = vx_p_totalnums {
        output = testnull
      }
      return output
    }

    public var vx_p_typenums : (any Vx_Test.Type_testcoveragenums)? = nil

    public func typenums() -> any Vx_Test.Type_testcoveragenums {
      var output : any Vx_Test.Type_testcoveragenums = Vx_Test.e_testcoveragenums
      if let testnull = vx_p_typenums {
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
      } else if skey == ":bigospacenums" {
        output = self.bigospacenums()
      } else if skey == ":bigotimenums" {
        output = self.bigotimenums()
      } else if skey == ":constnums" {
        output = self.constnums()
      } else if skey == ":docnums" {
        output = self.docnums()
      } else if skey == ":funcnums" {
        output = self.funcnums()
      } else if skey == ":testpkg" {
        output = self.testpkg()
      } else if skey == ":totalnums" {
        output = self.totalnums()
      } else if skey == ":typenums" {
        output = self.typenums()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":bigospacenums", self.bigospacenums())
      map.put(":bigotimenums", self.bigotimenums())
      map.put(":constnums", self.constnums())
      map.put(":docnums", self.docnums())
      map.put(":funcnums", self.funcnums())
      map.put(":testpkg", self.testpkg())
      map.put(":totalnums", self.totalnums())
      map.put(":typenums", self.typenums())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcoveragesummary = Vx_Core.vx_copy(
        Vx_Test.t_testcoveragesummary,
        Vx_Test.e_testcoveragesummary,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testcoveragesummary = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testcoveragesummary = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_bigospacenums : any Vx_Test.Type_testcoveragenums = value.bigospacenums()
      var vx_p_bigotimenums : any Vx_Test.Type_testcoveragenums = value.bigotimenums()
      var vx_p_constnums : any Vx_Test.Type_testcoveragenums = value.constnums()
      var vx_p_docnums : any Vx_Test.Type_testcoveragenums = value.docnums()
      var vx_p_funcnums : any Vx_Test.Type_testcoveragenums = value.funcnums()
      var vx_p_testpkg : any Vx_Core.Type_string = value.testpkg()
      var vx_p_totalnums : any Vx_Test.Type_testcoveragenums = value.totalnums()
      var vx_p_typenums : any Vx_Test.Type_testcoveragenums = value.typenums()
      var validkeys : [String] = []
      validkeys.append(":bigospacenums")
      validkeys.append(":bigotimenums")
      validkeys.append(":constnums")
      validkeys.append(":docnums")
      validkeys.append(":funcnums")
      validkeys.append(":testpkg")
      validkeys.append(":totalnums")
      validkeys.append(":typenums")
      var key : String = ""
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      var msgval : any Vx_Core.Type_any = Vx_Core.e_any
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
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
              msgval = Vx_Core.vx_new_string(
                Vx_Core.vx_string_from_object(valsub)
              )
            }
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testcoveragesummary",
              ":invalidkeytype",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
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
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragesummary",
                ":invalidkey",
                msgval
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          }
        } else {
          if false {
          } else if key == ":bigospacenums" {
            if Vx_Core.vx_issame(valsub, vx_p_bigospacenums) {
            } else if let valbigospacenums = valsub as? any Vx_Test.Type_testcoveragenums {
              ischanged = true
              vx_p_bigospacenums = valbigospacenums
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("bigospacenums"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragesummary",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":bigotimenums" {
            if Vx_Core.vx_issame(valsub, vx_p_bigotimenums) {
            } else if let valbigotimenums = valsub as? any Vx_Test.Type_testcoveragenums {
              ischanged = true
              vx_p_bigotimenums = valbigotimenums
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("bigotimenums"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragesummary",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":constnums" {
            if Vx_Core.vx_issame(valsub, vx_p_constnums) {
            } else if let valconstnums = valsub as? any Vx_Test.Type_testcoveragenums {
              ischanged = true
              vx_p_constnums = valconstnums
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("constnums"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragesummary",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":docnums" {
            if Vx_Core.vx_issame(valsub, vx_p_docnums) {
            } else if let valdocnums = valsub as? any Vx_Test.Type_testcoveragenums {
              ischanged = true
              vx_p_docnums = valdocnums
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("docnums"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragesummary",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":funcnums" {
            if Vx_Core.vx_issame(valsub, vx_p_funcnums) {
            } else if let valfuncnums = valsub as? any Vx_Test.Type_testcoveragenums {
              ischanged = true
              vx_p_funcnums = valfuncnums
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("funcnums"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragesummary",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":testpkg" {
            if Vx_Core.vx_issame(valsub, vx_p_testpkg) {
            } else if let valtestpkg = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_testpkg = valtestpkg
            } else if valsub is String {
              ischanged = true
              vx_p_testpkg = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("testpkg"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragesummary",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":totalnums" {
            if Vx_Core.vx_issame(valsub, vx_p_totalnums) {
            } else if let valtotalnums = valsub as? any Vx_Test.Type_testcoveragenums {
              ischanged = true
              vx_p_totalnums = valtotalnums
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("totalnums"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragesummary",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":typenums" {
            if Vx_Core.vx_issame(valsub, vx_p_typenums) {
            } else if let valtypenums = valsub as? any Vx_Test.Type_testcoveragenums {
              ischanged = true
              vx_p_typenums = valtypenums
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("typenums"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testcoveragesummary",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else {
            msgval = Vx_Core.vx_new_string(key)
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testcoveragesummary",
              ":invalidkey",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
          }
          key = ""
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testcoveragesummary = Vx_Test.Class_testcoveragesummary()
        work.vx_p_bigospacenums = vx_p_bigospacenums
        work.vx_p_bigotimenums = vx_p_bigotimenums
        work.vx_p_constnums = vx_p_constnums
        work.vx_p_docnums = vx_p_docnums
        work.vx_p_funcnums = vx_p_funcnums
        work.vx_p_testpkg = vx_p_testpkg
        work.vx_p_totalnums = vx_p_totalnums
        work.vx_p_typenums = vx_p_typenums
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testcoveragesummary
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testcoveragesummary
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testcoveragesummary",
        ":struct",
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testcoveragesummary : any Vx_Test.Type_testcoveragesummary = Vx_Test.Class_testcoveragesummary()
  public static let t_testcoveragesummary : any Vx_Test.Type_testcoveragesummary = Vx_Test.Class_testcoveragesummary()


  public protocol Type_testdescribe : Vx_Core.Type_struct, AnyObject {
    func describename() -> any Vx_Core.Type_string
    func testpkg() -> any Vx_Core.Type_string
    func testresult() -> any Vx_Test.Type_testresult
  }

  public class Class_testdescribe : Vx_Core.Class_base, Type_testdescribe {

    public var vx_p_describename : (any Vx_Core.Type_string)? = nil

    public func describename() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_describename {
        output = testnull
      }
      return output
    }

    public var vx_p_testpkg : (any Vx_Core.Type_string)? = nil

    public func testpkg() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_testpkg {
        output = testnull
      }
      return output
    }

    public var vx_p_testresult : (any Vx_Test.Type_testresult)? = nil

    public func testresult() -> any Vx_Test.Type_testresult {
      var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
      if let testnull = vx_p_testresult {
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
      } else if skey == ":describename" {
        output = self.describename()
      } else if skey == ":testpkg" {
        output = self.testpkg()
      } else if skey == ":testresult" {
        output = self.testresult()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":describename", self.describename())
      map.put(":testpkg", self.testpkg())
      map.put(":testresult", self.testresult())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testdescribe = Vx_Core.vx_copy(
        Vx_Test.t_testdescribe,
        Vx_Test.e_testdescribe,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testdescribe = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testdescribe = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_describename : any Vx_Core.Type_string = value.describename()
      var vx_p_testpkg : any Vx_Core.Type_string = value.testpkg()
      var vx_p_testresult : any Vx_Test.Type_testresult = value.testresult()
      var validkeys : [String] = []
      validkeys.append(":describename")
      validkeys.append(":testpkg")
      validkeys.append(":testresult")
      var key : String = ""
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      var msgval : any Vx_Core.Type_any = Vx_Core.e_any
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
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
              msgval = Vx_Core.vx_new_string(
                Vx_Core.vx_string_from_object(valsub)
              )
            }
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testdescribe",
              ":invalidkeytype",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
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
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testdescribe",
                ":invalidkey",
                msgval
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          }
        } else {
          if false {
          } else if key == ":describename" {
            if Vx_Core.vx_issame(valsub, vx_p_describename) {
            } else if let valdescribename = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_describename = valdescribename
            } else if valsub is String {
              ischanged = true
              vx_p_describename = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("describename"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testdescribe",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":testpkg" {
            if Vx_Core.vx_issame(valsub, vx_p_testpkg) {
            } else if let valtestpkg = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_testpkg = valtestpkg
            } else if valsub is String {
              ischanged = true
              vx_p_testpkg = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("testpkg"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testdescribe",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":testresult" {
            if Vx_Core.vx_issame(valsub, vx_p_testresult) {
            } else if let valtestresult = valsub as? any Vx_Test.Type_testresult {
              ischanged = true
              vx_p_testresult = valtestresult
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("testresult"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testdescribe",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else {
            msgval = Vx_Core.vx_new_string(key)
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testdescribe",
              ":invalidkey",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
          }
          key = ""
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testdescribe = Vx_Test.Class_testdescribe()
        work.vx_p_describename = vx_p_describename
        work.vx_p_testpkg = vx_p_testpkg
        work.vx_p_testresult = vx_p_testresult
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testdescribe
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testdescribe
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testdescribe",
        ":struct",
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testdescribe : any Vx_Test.Type_testdescribe = Vx_Test.Class_testdescribe()
  public static let t_testdescribe : any Vx_Test.Type_testdescribe = Vx_Test.Class_testdescribe()


  public protocol Type_testdescribelist : Vx_Core.Type_list, AnyObject {
    func vx_listtestdescribe() -> [any Vx_Test.Type_testdescribe]
    func vx_testdescribe(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Test.Type_testdescribe
  }

  public class Class_testdescribelist : Vx_Core.Class_base, Type_testdescribelist {

    public var vx_p_list : [any Vx_Test.Type_testdescribe] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_testdescribe(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Test.Type_testdescribe {
      var output : any Vx_Test.Type_testdescribe = Vx_Test.e_testdescribe
      var list : Vx_Test.Class_testdescribelist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Test.Type_testdescribe] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listtestdescribe() -> [any Vx_Test.Type_testdescribe] {
      var output : [any Vx_Test.Type_testdescribe] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testdescribe = self.vx_testdescribe(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testdescribelist = Vx_Core.vx_copy(
        Vx_Test.t_testdescribelist,
        Vx_Test.e_testdescribelist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testdescribelist = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testdescribelist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Test.Type_testdescribe] = Array(value.vx_listtestdescribe())
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if let multi = valsub as? any Vx_Test.Type_testdescribelist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listtestdescribe())
        } else if let allowsub = valsub as? any Vx_Test.Type_testdescribe {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Test.Type_testdescribe {
          var subitem : any Vx_Test.Type_testdescribe = valsub as! any Vx_Test.Type_testdescribe
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Test.Type_testdescribe {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/test/testdescribelist",
            ":invalidtype",
            anyinvalid
          )
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              msg
            ]
          )
        } else {
          msg = Vx_Core.vx_msg_from_error(
            "vx/test/testdescribelist",
            ":invalidtype",
            Vx_Core.vx_new_string(
              Vx_Core.vx_string_from_object(valsub)
            )
          )
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              msg
            ]
          )
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testdescribelist = Vx_Test.Class_testdescribelist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testdescribelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testdescribelist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testdescribelist",
        ":list",
        Vx_Core.e_typelist,
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Test.t_testdescribe
          ]
        ),
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testdescribelist : any Vx_Test.Type_testdescribelist = Vx_Test.Class_testdescribelist()
  public static let t_testdescribelist : any Vx_Test.Type_testdescribelist = Vx_Test.Class_testdescribelist()


  public protocol Type_testpackage : Vx_Core.Type_struct, AnyObject {
    func caselist() -> any Vx_Test.Type_testcaselist
    func coveragedetail() -> any Vx_Test.Type_testcoveragedetail
    func coveragesummary() -> any Vx_Test.Type_testcoveragesummary
    func passfail() -> any Vx_Core.Type_boolean
    func testpkg() -> any Vx_Core.Type_string
  }

  public class Class_testpackage : Vx_Core.Class_base, Type_testpackage {

    public var vx_p_caselist : (any Vx_Test.Type_testcaselist)? = nil

    public func caselist() -> any Vx_Test.Type_testcaselist {
      var output : any Vx_Test.Type_testcaselist = Vx_Test.e_testcaselist
      if let testnull = vx_p_caselist {
        output = testnull
      }
      return output
    }

    public var vx_p_coveragedetail : (any Vx_Test.Type_testcoveragedetail)? = nil

    public func coveragedetail() -> any Vx_Test.Type_testcoveragedetail {
      var output : any Vx_Test.Type_testcoveragedetail = Vx_Test.e_testcoveragedetail
      if let testnull = vx_p_coveragedetail {
        output = testnull
      }
      return output
    }

    public var vx_p_coveragesummary : (any Vx_Test.Type_testcoveragesummary)? = nil

    public func coveragesummary() -> any Vx_Test.Type_testcoveragesummary {
      var output : any Vx_Test.Type_testcoveragesummary = Vx_Test.e_testcoveragesummary
      if let testnull = vx_p_coveragesummary {
        output = testnull
      }
      return output
    }

    public var vx_p_passfail : (any Vx_Core.Type_boolean)? = nil

    public func passfail() -> any Vx_Core.Type_boolean {
      var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
      if let testnull = vx_p_passfail {
        output = testnull
      }
      return output
    }

    public var vx_p_testpkg : (any Vx_Core.Type_string)? = nil

    public func testpkg() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_testpkg {
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
      } else if skey == ":caselist" {
        output = self.caselist()
      } else if skey == ":coveragedetail" {
        output = self.coveragedetail()
      } else if skey == ":coveragesummary" {
        output = self.coveragesummary()
      } else if skey == ":passfail" {
        output = self.passfail()
      } else if skey == ":testpkg" {
        output = self.testpkg()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":caselist", self.caselist())
      map.put(":coveragedetail", self.coveragedetail())
      map.put(":coveragesummary", self.coveragesummary())
      map.put(":passfail", self.passfail())
      map.put(":testpkg", self.testpkg())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testpackage = Vx_Core.vx_copy(
        Vx_Test.t_testpackage,
        Vx_Test.e_testpackage,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testpackage = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testpackage = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_caselist : any Vx_Test.Type_testcaselist = value.caselist()
      var vx_p_coveragedetail : any Vx_Test.Type_testcoveragedetail = value.coveragedetail()
      var vx_p_coveragesummary : any Vx_Test.Type_testcoveragesummary = value.coveragesummary()
      var vx_p_passfail : any Vx_Core.Type_boolean = value.passfail()
      var vx_p_testpkg : any Vx_Core.Type_string = value.testpkg()
      var validkeys : [String] = []
      validkeys.append(":caselist")
      validkeys.append(":coveragedetail")
      validkeys.append(":coveragesummary")
      validkeys.append(":passfail")
      validkeys.append(":testpkg")
      var key : String = ""
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      var msgval : any Vx_Core.Type_any = Vx_Core.e_any
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
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
              msgval = Vx_Core.vx_new_string(
                Vx_Core.vx_string_from_object(valsub)
              )
            }
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testpackage",
              ":invalidkeytype",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
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
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testpackage",
                ":invalidkey",
                msgval
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          }
        } else {
          if false {
          } else if key == ":caselist" {
            if Vx_Core.vx_issame(valsub, vx_p_caselist) {
            } else if let valcaselist = valsub as? any Vx_Test.Type_testcaselist {
              ischanged = true
              vx_p_caselist = valcaselist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("caselist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testpackage",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":coveragedetail" {
            if Vx_Core.vx_issame(valsub, vx_p_coveragedetail) {
            } else if let valcoveragedetail = valsub as? any Vx_Test.Type_testcoveragedetail {
              ischanged = true
              vx_p_coveragedetail = valcoveragedetail
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("coveragedetail"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testpackage",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":coveragesummary" {
            if Vx_Core.vx_issame(valsub, vx_p_coveragesummary) {
            } else if let valcoveragesummary = valsub as? any Vx_Test.Type_testcoveragesummary {
              ischanged = true
              vx_p_coveragesummary = valcoveragesummary
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("coveragesummary"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testpackage",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":passfail" {
            if Vx_Core.vx_issame(valsub, vx_p_passfail) {
            } else if let valpassfail = valsub as? any Vx_Core.Type_boolean {
              ischanged = true
              vx_p_passfail = valpassfail
            } else if valsub is Bool {
              ischanged = true
              vx_p_passfail = Vx_Core.vx_new(
                Vx_Core.t_boolean,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("passfail"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testpackage",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":testpkg" {
            if Vx_Core.vx_issame(valsub, vx_p_testpkg) {
            } else if let valtestpkg = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_testpkg = valtestpkg
            } else if valsub is String {
              ischanged = true
              vx_p_testpkg = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("testpkg"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testpackage",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else {
            msgval = Vx_Core.vx_new_string(key)
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testpackage",
              ":invalidkey",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
          }
          key = ""
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testpackage = Vx_Test.Class_testpackage()
        work.vx_p_caselist = vx_p_caselist
        work.vx_p_coveragedetail = vx_p_coveragedetail
        work.vx_p_coveragesummary = vx_p_coveragesummary
        work.vx_p_passfail = vx_p_passfail
        work.vx_p_testpkg = vx_p_testpkg
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testpackage
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testpackage
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testpackage",
        ":struct",
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testpackage : any Vx_Test.Type_testpackage = Vx_Test.Class_testpackage()
  public static let t_testpackage : any Vx_Test.Type_testpackage = Vx_Test.Class_testpackage()


  public protocol Type_testpackagelist : Vx_Core.Type_list, AnyObject {
    func vx_listtestpackage() -> [any Vx_Test.Type_testpackage]
    func vx_testpackage(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Test.Type_testpackage
  }

  public class Class_testpackagelist : Vx_Core.Class_base, Type_testpackagelist {

    public var vx_p_list : [any Vx_Test.Type_testpackage] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_testpackage(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Test.Type_testpackage {
      var output : any Vx_Test.Type_testpackage = Vx_Test.e_testpackage
      var list : Vx_Test.Class_testpackagelist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Test.Type_testpackage] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listtestpackage() -> [any Vx_Test.Type_testpackage] {
      var output : [any Vx_Test.Type_testpackage] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testpackage = self.vx_testpackage(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testpackagelist = Vx_Core.vx_copy(
        Vx_Test.t_testpackagelist,
        Vx_Test.e_testpackagelist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testpackagelist = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testpackagelist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Test.Type_testpackage] = Array(value.vx_listtestpackage())
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if let multi = valsub as? any Vx_Test.Type_testpackagelist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listtestpackage())
        } else if let allowsub = valsub as? any Vx_Test.Type_testpackage {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Test.Type_testpackage {
          var subitem : any Vx_Test.Type_testpackage = valsub as! any Vx_Test.Type_testpackage
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Test.Type_testpackage {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/test/testpackagelist",
            ":invalidtype",
            anyinvalid
          )
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              msg
            ]
          )
        } else {
          msg = Vx_Core.vx_msg_from_error(
            "vx/test/testpackagelist",
            ":invalidtype",
            Vx_Core.vx_new_string(
              Vx_Core.vx_string_from_object(valsub)
            )
          )
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              msg
            ]
          )
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testpackagelist = Vx_Test.Class_testpackagelist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testpackagelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testpackagelist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testpackagelist",
        ":list",
        Vx_Core.e_typelist,
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Test.t_testpackage
          ]
        ),
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testpackagelist : any Vx_Test.Type_testpackagelist = Vx_Test.Class_testpackagelist()
  public static let t_testpackagelist : any Vx_Test.Type_testpackagelist = Vx_Test.Class_testpackagelist()


  public protocol Type_testresult : Vx_Core.Type_struct, AnyObject {
    func code() -> any Vx_Core.Type_string
    func passfail() -> any Vx_Core.Type_boolean
    func expected() -> any Vx_Core.Type_any
    func actual() -> any Vx_Core.Type_any
    func fn_actual() -> any Vx_Core.Func_any_from_func_async
  }

  public class Class_testresult : Vx_Core.Class_base, Type_testresult {

    public var vx_p_code : (any Vx_Core.Type_string)? = nil

    public func code() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_code {
        output = testnull
      }
      return output
    }

    public var vx_p_passfail : (any Vx_Core.Type_boolean)? = nil

    public func passfail() -> any Vx_Core.Type_boolean {
      var output : any Vx_Core.Type_boolean = Vx_Core.e_boolean
      if let testnull = vx_p_passfail {
        output = testnull
      }
      return output
    }

    public var vx_p_expected : (any Vx_Core.Type_any)? = nil

    public func expected() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      if let testnull = vx_p_expected {
        output = testnull
      }
      return output
    }

    public var vx_p_actual : (any Vx_Core.Type_any)? = nil

    public func actual() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      if let testnull = vx_p_actual {
        output = testnull
      }
      return output
    }

    public var vx_p_fn_actual : (any Vx_Core.Func_any_from_func_async)? = nil

    public func fn_actual() -> any Vx_Core.Func_any_from_func_async {
      var output : any Vx_Core.Func_any_from_func_async = Vx_Core.e_any_from_func_async
      if let testnull = vx_p_fn_actual {
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
      } else if skey == ":code" {
        output = self.code()
      } else if skey == ":passfail" {
        output = self.passfail()
      } else if skey == ":expected" {
        output = self.expected()
      } else if skey == ":actual" {
        output = self.actual()
      } else if skey == ":fn-actual" {
        output = self.fn_actual()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":code", self.code())
      map.put(":passfail", self.passfail())
      map.put(":expected", self.expected())
      map.put(":actual", self.actual())
      map.put(":fn-actual", self.fn_actual())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testresult = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        Vx_Test.e_testresult,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testresult = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testresult = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_code : any Vx_Core.Type_string = value.code()
      var vx_p_passfail : any Vx_Core.Type_boolean = value.passfail()
      var vx_p_expected : any Vx_Core.Type_any = value.expected()
      var vx_p_actual : any Vx_Core.Type_any = value.actual()
      var vx_p_fn_actual : any Vx_Core.Func_any_from_func_async = value.fn_actual()
      var validkeys : [String] = []
      validkeys.append(":code")
      validkeys.append(":passfail")
      validkeys.append(":expected")
      validkeys.append(":actual")
      validkeys.append(":fn-actual")
      var key : String = ""
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      var msgval : any Vx_Core.Type_any = Vx_Core.e_any
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
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
              msgval = Vx_Core.vx_new_string(
                Vx_Core.vx_string_from_object(valsub)
              )
            }
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testresult",
              ":invalidkeytype",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
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
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testresult",
                ":invalidkey",
                msgval
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          }
        } else {
          if false {
          } else if key == ":code" {
            if Vx_Core.vx_issame(valsub, vx_p_code) {
            } else if let valcode = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_code = valcode
            } else if valsub is String {
              ischanged = true
              vx_p_code = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("code"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testresult",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":passfail" {
            if Vx_Core.vx_issame(valsub, vx_p_passfail) {
            } else if let valpassfail = valsub as? any Vx_Core.Type_boolean {
              ischanged = true
              vx_p_passfail = valpassfail
            } else if valsub is Bool {
              ischanged = true
              vx_p_passfail = Vx_Core.vx_new(
                Vx_Core.t_boolean,
                [
                  valsub
                ]
              )
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("passfail"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testresult",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":expected" {
            if Vx_Core.vx_issame(valsub, vx_p_expected) {
            } else if let valexpected = valsub as? any Vx_Core.Type_any {
              ischanged = true
              vx_p_expected = valexpected
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("expected"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testresult",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":actual" {
            if Vx_Core.vx_issame(valsub, vx_p_actual) {
            } else if let valactual = valsub as? any Vx_Core.Type_any {
              ischanged = true
              vx_p_actual = valactual
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("actual"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testresult",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else if key == ":fn-actual" {
            if Vx_Core.vx_issame(valsub, vx_p_fn_actual) {
            } else if let valfn_actual = valsub as? any Vx_Core.Func_any_from_func_async {
              ischanged = true
              vx_p_fn_actual = valfn_actual
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("fn-actual"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/test/testresult",
                ":invalidvalue",
                msgmap
              )
              msgblock = Vx_Core.vx_copy(
                Vx_Core.t_msgblock,
                msgblock,
                [
                  msg
                ]
              )
            }
          } else {
            msgval = Vx_Core.vx_new_string(key)
            msg = Vx_Core.vx_msg_from_error(
              "vx/test/testresult",
              ":invalidkey",
              msgval
            )
            msgblock = Vx_Core.vx_copy(
              Vx_Core.t_msgblock,
              msgblock,
              [
                msg
              ]
            )
          }
          key = ""
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testresult = Vx_Test.Class_testresult()
        work.vx_p_code = vx_p_code
        work.vx_p_passfail = vx_p_passfail
        work.vx_p_expected = vx_p_expected
        work.vx_p_actual = vx_p_actual
        work.vx_p_fn_actual = vx_p_fn_actual
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testresult
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testresult
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testresult",
        ":struct",
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testresult : any Vx_Test.Type_testresult = Vx_Test.Class_testresult()
  public static let t_testresult : any Vx_Test.Type_testresult = Vx_Test.Class_testresult()


  public protocol Type_testresultlist : Vx_Core.Type_list, AnyObject {
    func vx_listtestresult() -> [any Vx_Test.Type_testresult]
    func vx_testresult(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_testresultlist : Vx_Core.Class_base, Type_testresultlist {

    public var vx_p_list : [any Vx_Test.Type_testresult] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_testresult(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Test.Type_testresult {
      var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
      var list : Vx_Test.Class_testresultlist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Test.Type_testresult] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listtestresult() -> [any Vx_Test.Type_testresult] {
      var output : [any Vx_Test.Type_testresult] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testresult = self.vx_testresult(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testresultlist = Vx_Core.vx_copy(
        Vx_Test.t_testresultlist,
        Vx_Test.e_testresultlist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Test.Type_testresultlist = self
      var ischanged : Bool = false
      var value : Vx_Test.Class_testresultlist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Test.Type_testresult] = Array(value.vx_listtestresult())
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              valsub
            ]
          )
        } else if let multi = valsub as? any Vx_Test.Type_testresultlist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listtestresult())
        } else if let allowsub = valsub as? any Vx_Test.Type_testresult {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Test.Type_testresult {
          var subitem : any Vx_Test.Type_testresult = valsub as! any Vx_Test.Type_testresult
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Test.Type_testresult {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/test/testresultlist",
            ":invalidtype",
            anyinvalid
          )
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              msg
            ]
          )
        } else {
          msg = Vx_Core.vx_msg_from_error(
            "vx/test/testresultlist",
            ":invalidtype",
            Vx_Core.vx_new_string(
              Vx_Core.vx_string_from_object(valsub)
            )
          )
          msgblock = Vx_Core.vx_copy(
            Vx_Core.t_msgblock,
            msgblock,
            [
              msg
            ]
          )
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Test.Class_testresultlist = Vx_Test.Class_testresultlist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.e_testresultlist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Test.t_testresultlist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/test",
        "testresultlist",
        ":list",
        Vx_Core.e_typelist,
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Test.t_testresult
          ]
        ),
        Vx_Core.e_typelist,
        Vx_Core.e_funclist,
        Vx_Core.e_funclist,
        Vx_Core.e_anylist,
        Vx_Core.e_anylist,
        Vx_Core.e_argmap
      )
      return output
    }

  }

  public static let e_testresultlist : any Vx_Test.Type_testresultlist = Vx_Test.Class_testresultlist()
  public static let t_testresultlist : any Vx_Test.Type_testresultlist = Vx_Test.Class_testresultlist()


  public class Const_stylesheet_test {
    public static func constdef() -> any Vx_Core.Type_constdef {
      let output : any Vx_Core.Type_constdef = Vx_Core.constdef_new(
        "vx/test", // pkgname
        "stylesheet-test", // name
        Vx_Web_Html.t_stylesheet
      )
      return output
    }

    public static func const_new(
      _ output : any Vx_Web_Html.Type_stylesheet
    ) -> () {
      var outval : Vx_Web_Html.Class_stylesheet = output as! Vx_Web_Html.Class_stylesheet
      outval.vx_p_constdef = constdef()
      var value : any Vx_Web_Html.Type_stylesheet = Vx_Web_Html.f_stylesheet_loadmap(
        Vx_Core.f_new(
          Vx_Web_Html.t_stylesheet,
          Vx_Core.vx_new(
            Vx_Core.t_anylist,
            [
              Vx_Core.vx_new_string(":name"),
              Vx_Core.vx_new_string("Test Suite"),
              Vx_Core.vx_new_string(":styles"),
              Vx_Core.f_new(
                Vx_Web_Html.t_stylelist,
                Vx_Core.vx_new(
                  Vx_Core.t_anylist,
                  [
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string("body"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("font-size"),
                                Vx_Core.vx_new_string("0.9em"),
                                Vx_Core.vx_new_string("font-family"),
                                Vx_Core.vx_new_string("sans-serif")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string("details summary"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("cursor"),
                                Vx_Core.vx_new_string("pointer"),
                                Vx_Core.vx_new_string("display"),
                                Vx_Core.vx_new_string("inline-flex"),
                                Vx_Core.vx_new_string("gap"),
                                Vx_Core.vx_new_string("10px")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string("table"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("vertical-align"),
                                Vx_Core.vx_new_string("top"),
                                Vx_Core.vx_new_string("border-collapse"),
                                Vx_Core.vx_new_string("collapse"),
                                Vx_Core.vx_new_string("margin"),
                                Vx_Core.vx_new_string("25px 0"),
                                Vx_Core.vx_new_string("min-width"),
                                Vx_Core.vx_new_string("400px"),
                                Vx_Core.vx_new_string("box-shadow"),
                                Vx_Core.vx_new_string("0 0 20px rgba(0, 0, 0, 0.15)")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string("thead tr"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("background-color"),
                                Vx_Core.vx_new_string("#009879"),
                                Vx_Core.vx_new_string("color"),
                                Vx_Core.vx_new_string("#ffffff"),
                                Vx_Core.vx_new_string("text-align"),
                                Vx_Core.vx_new_string("left")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string("td"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("padding"),
                                Vx_Core.vx_new_string("10px 10px"),
                                Vx_Core.vx_new_string("vertical-align"),
                                Vx_Core.vx_new_string("top")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string("tbody tr"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("border-bottom"),
                                Vx_Core.vx_new_string("1px solid #dddddd")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string("tbody tr:nth-of-type(even)"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("background-color"),
                                Vx_Core.vx_new_string("#f3f3f3")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string("tbody tr:last-of-type"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("border-bottom"),
                                Vx_Core.vx_new_string("2px solid #009879")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string("tbody tr.active-row"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("font-weight"),
                                Vx_Core.vx_new_string("bold"),
                                Vx_Core.vx_new_string("color"),
                                Vx_Core.vx_new_string("#009879")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string(".failflag"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("background-color"),
                                Vx_Core.vx_new_string("red"),
                                Vx_Core.vx_new_string("color"),
                                Vx_Core.vx_new_string("white"),
                                Vx_Core.vx_new_string("padding-left"),
                                Vx_Core.vx_new_string("4px"),
                                Vx_Core.vx_new_string("padding-right"),
                                Vx_Core.vx_new_string("4px"),
                                Vx_Core.vx_new_string("padding-top"),
                                Vx_Core.vx_new_string("1px"),
                                Vx_Core.vx_new_string("padding-bottom"),
                                Vx_Core.vx_new_string("1px")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string(".passflag"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("background-color"),
                                Vx_Core.vx_new_string("green"),
                                Vx_Core.vx_new_string("color"),
                                Vx_Core.vx_new_string("white"),
                                Vx_Core.vx_new_string("padding-left"),
                                Vx_Core.vx_new_string("4px"),
                                Vx_Core.vx_new_string("padding-right"),
                                Vx_Core.vx_new_string("4px"),
                                Vx_Core.vx_new_string("padding-top"),
                                Vx_Core.vx_new_string("1px"),
                                Vx_Core.vx_new_string("padding-bottom"),
                                Vx_Core.vx_new_string("1px")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string(".coveragenums"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("width"),
                                Vx_Core.vx_new_string("90px")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string(".coveragepct"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("text-align"),
                                Vx_Core.vx_new_string("right")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string(".coveragepctgreen"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("background-color"),
                                Vx_Core.vx_new_string("green"),
                                Vx_Core.vx_new_string("color"),
                                Vx_Core.vx_new_string("white"),
                                Vx_Core.vx_new_string("text-align"),
                                Vx_Core.vx_new_string("right")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string(".coveragepctred"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("background-color"),
                                Vx_Core.vx_new_string("red"),
                                Vx_Core.vx_new_string("color"),
                                Vx_Core.vx_new_string("white"),
                                Vx_Core.vx_new_string("text-align"),
                                Vx_Core.vx_new_string("right")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string(".pkgheader"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("display"),
                                Vx_Core.vx_new_string("inline-flex"),
                                Vx_Core.vx_new_string("gap"),
                                Vx_Core.vx_new_string("10px")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string(".pkgname"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("font-weight"),
                                Vx_Core.vx_new_string("bold"),
                                Vx_Core.vx_new_string("width"),
                                Vx_Core.vx_new_string("180px")
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Vx_Core.f_new(
                      Vx_Web_Html.t_style,
                      Vx_Core.vx_new(
                        Vx_Core.t_anylist,
                        [
                          Vx_Core.vx_new_string(":name"),
                          Vx_Core.vx_new_string(".preformatted"),
                          Vx_Core.vx_new_string(":props"),
                          Vx_Core.f_new(
                            Vx_Web_Html.t_propmap,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string("display"),
                                Vx_Core.vx_new_string("block"),
                                Vx_Core.vx_new_string("unicode-bidi"),
                                Vx_Core.vx_new_string("embed"),
                                Vx_Core.vx_new_string("font-family"),
                                Vx_Core.vx_new_string("monospace"),
                                Vx_Core.vx_new_string("white-space"),
                                Vx_Core.vx_new_string("pre")
                              ]
                            )
                          )
                        ]
                      )
                    )
                  ]
                )
              )
            ]
          )
        )
      )
      outval.vx_p_id = value.id()
      outval.vx_p_eventmap = value.eventmap()
      outval.vx_p_style = value.style()
      outval.vx_p_style_unique = value.style_unique()
      outval.vx_p_stylelist = value.stylelist()
      outval.vx_p_name = value.name()
      outval.vx_p_styles = value.styles()
      outval.vx_p_stylemap = value.stylemap()
    }

  }

  public static let c_stylesheet_test : any Vx_Web_Html.Type_stylesheet = Vx_Web_Html.Class_stylesheet()


  public protocol Func_context_test : Vx_Core.Func_any_from_any, AnyObject {
    func vx_context_test(
      _ args : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_context
  }

  public class Class_context_test : Vx_Core.Class_base, Func_context_test {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_context_test = Vx_Test.Class_context_test()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_context_test = Vx_Test.Class_context_test()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "context-test", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "context",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_context_test
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_context_test
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
      let outputval : any Vx_Core.Type_any = Vx_Test.f_context_test(inputval)
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
      let args : any Vx_Core.Type_anylist = Vx_Core.f_any_from_any(
        Vx_Core.t_anylist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Test.f_context_test(args)
      return output
    }

    public func vx_context_test(
      _ args : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_context {
      let output : any Vx_Core.Type_context = Vx_Test.f_context_test(args)
      return output
    }

  }

  public static let e_context_test : any Vx_Test.Func_context_test = Vx_Test.Class_context_test()
  public static let t_context_test : any Vx_Test.Func_context_test = Vx_Test.Class_context_test()

  public static func f_context_test(
    _ args : any Vx_Core.Type_anylist
  ) -> any Vx_Core.Type_context {
    var output : any Vx_Core.Type_context = Vx_Core.e_context
    output = Vx_Core.f_new(
      Vx_Core.t_context,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        [
          Vx_Core.vx_new_string(":session"),
          Vx_Core.f_new(
            Vx_Core.t_session,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.vx_new_string(":user"),
                Vx_Core.f_new(
                  Vx_Core.t_user,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.vx_new_string(":security"),
                      Vx_Test.f_security_test()
                    ]
                  )
                )
              ]
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_div_from_testcaselist : Vx_Core.Func_any_from_any, AnyObject {
    func vx_div_from_testcaselist(
      _ testcaselist : any Vx_Test.Type_testcaselist
    ) -> any Vx_Web_Html.Type_div
  }

  public class Class_div_from_testcaselist : Vx_Core.Class_base, Func_div_from_testcaselist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_div_from_testcaselist = Vx_Test.Class_div_from_testcaselist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_div_from_testcaselist = Vx_Test.Class_div_from_testcaselist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "div<-testcaselist", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "div",
          ":struct",
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_node,
              Vx_Web_Html.t_divchild
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
      let output : any Vx_Core.Type_any = Vx_Test.e_div_from_testcaselist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_div_from_testcaselist
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
      let inputval : any Vx_Test.Type_testcaselist = value as! any Vx_Test.Type_testcaselist
      let outputval : any Vx_Core.Type_any = Vx_Test.f_div_from_testcaselist(inputval)
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
      let testcaselist : any Vx_Test.Type_testcaselist = Vx_Core.f_any_from_any(
        Vx_Test.t_testcaselist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Test.f_div_from_testcaselist(testcaselist)
      return output
    }

    public func vx_div_from_testcaselist(
      _ testcaselist : any Vx_Test.Type_testcaselist
    ) -> any Vx_Web_Html.Type_div {
      let output : any Vx_Web_Html.Type_div = Vx_Test.f_div_from_testcaselist(testcaselist)
      return output
    }

  }

  public static let e_div_from_testcaselist : any Vx_Test.Func_div_from_testcaselist = Vx_Test.Class_div_from_testcaselist()
  public static let t_div_from_testcaselist : any Vx_Test.Func_div_from_testcaselist = Vx_Test.Class_div_from_testcaselist()

  public static func f_div_from_testcaselist(
    _ testcaselist : any Vx_Test.Type_testcaselist
  ) -> any Vx_Web_Html.Type_div {
    var output : any Vx_Web_Html.Type_div = Vx_Web_Html.e_div
    output = Vx_Core.f_new(
      Vx_Web_Html.t_div,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        [
          Vx_Core.f_new(
            Vx_Web_Html.t_table,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.vx_new_string(":thead"),
                Vx_Core.f_new(
                  Vx_Web_Html.t_thead,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.f_new(
                        Vx_Web_Html.t_tr,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.f_new(
                              Vx_Web_Html.t_td,
                              Vx_Core.vx_new(
                                Vx_Core.t_anylist,
                                [
                                  Vx_Core.f_new(
                                    Vx_Web_Html.t_p,
                                    Vx_Core.vx_new(
                                      Vx_Core.t_anylist,
                                      [
                                        Vx_Core.vx_new_string(":text"),
                                        Vx_Core.vx_new_string("Pass?")
                                      ]
                                    )
                                  )
                                ]
                              )
                            ),
                            Vx_Core.f_new(
                              Vx_Web_Html.t_td,
                              Vx_Core.vx_new(
                                Vx_Core.t_anylist,
                                [
                                  Vx_Core.f_new(
                                    Vx_Web_Html.t_p,
                                    Vx_Core.vx_new(
                                      Vx_Core.t_anylist,
                                      [
                                        Vx_Core.vx_new_string(":text"),
                                        Vx_Core.vx_new_string("Name")
                                      ]
                                    )
                                  )
                                ]
                              )
                            ),
                            Vx_Core.f_new(
                              Vx_Web_Html.t_td,
                              Vx_Core.vx_new(
                                Vx_Core.t_anylist,
                                [
                                  Vx_Core.f_new(
                                    Vx_Web_Html.t_p,
                                    Vx_Core.vx_new(
                                      Vx_Core.t_anylist,
                                      [
                                        Vx_Core.vx_new_string(":text"),
                                        Vx_Core.vx_new_string("Test")
                                      ]
                                    )
                                  )
                                ]
                              )
                            ),
                            Vx_Core.f_new(
                              Vx_Web_Html.t_td,
                              Vx_Core.vx_new(
                                Vx_Core.t_anylist,
                                [
                                  Vx_Core.f_new(
                                    Vx_Web_Html.t_p,
                                    Vx_Core.vx_new(
                                      Vx_Core.t_anylist,
                                      [
                                        Vx_Core.vx_new_string(":text"),
                                        Vx_Core.vx_new_string("Expected")
                                      ]
                                    )
                                  )
                                ]
                              )
                            ),
                            Vx_Core.f_new(
                              Vx_Web_Html.t_td,
                              Vx_Core.vx_new(
                                Vx_Core.t_anylist,
                                [
                                  Vx_Core.f_new(
                                    Vx_Web_Html.t_p,
                                    Vx_Core.vx_new(
                                      Vx_Core.t_anylist,
                                      [
                                        Vx_Core.vx_new_string(":text"),
                                        Vx_Core.vx_new_string("Actual")
                                      ]
                                    )
                                  )
                                ]
                              )
                            )
                          ]
                        )
                      )
                    ]
                  )
                ),
                Vx_Core.vx_new_string(":tbody"),
                Vx_Core.f_new(
                  Vx_Web_Html.t_tbody,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Test.f_trlist_from_testcaselist(testcaselist)
                    ]
                  )
                )
              ]
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_div_from_testpackage : Vx_Core.Func_any_from_any, AnyObject {
    func vx_div_from_testpackage(
      _ testpackage : any Vx_Test.Type_testpackage
    ) -> any Vx_Web_Html.Type_div
  }

  public class Class_div_from_testpackage : Vx_Core.Class_base, Func_div_from_testpackage {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_div_from_testpackage = Vx_Test.Class_div_from_testpackage()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_div_from_testpackage = Vx_Test.Class_div_from_testpackage()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "div<-testpackage", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "div",
          ":struct",
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_node,
              Vx_Web_Html.t_divchild
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
      let output : any Vx_Core.Type_any = Vx_Test.e_div_from_testpackage
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_div_from_testpackage
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
      let inputval : any Vx_Test.Type_testpackage = value as! any Vx_Test.Type_testpackage
      let outputval : any Vx_Core.Type_any = Vx_Test.f_div_from_testpackage(inputval)
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
      let testpackage : any Vx_Test.Type_testpackage = Vx_Core.f_any_from_any(
        Vx_Test.t_testpackage,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Test.f_div_from_testpackage(testpackage)
      return output
    }

    public func vx_div_from_testpackage(
      _ testpackage : any Vx_Test.Type_testpackage
    ) -> any Vx_Web_Html.Type_div {
      let output : any Vx_Web_Html.Type_div = Vx_Test.f_div_from_testpackage(testpackage)
      return output
    }

  }

  public static let e_div_from_testpackage : any Vx_Test.Func_div_from_testpackage = Vx_Test.Class_div_from_testpackage()
  public static let t_div_from_testpackage : any Vx_Test.Func_div_from_testpackage = Vx_Test.Class_div_from_testpackage()

  public static func f_div_from_testpackage(
    _ testpackage : any Vx_Test.Type_testpackage
  ) -> any Vx_Web_Html.Type_div {
    var output : any Vx_Web_Html.Type_div = Vx_Web_Html.e_div
    output = Vx_Core.f_let(
      Vx_Web_Html.t_div,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let testcoveragesummary : any Vx_Test.Type_testcoveragesummary = testpackage.coveragesummary()
          let pkgname : any Vx_Core.Type_string = testpackage.testpkg()
          let caselist : any Vx_Test.Type_testcaselist = testpackage.caselist()
          let passfail : any Vx_Core.Type_boolean = testpackage.passfail()
          let pkgnamestyle : any Vx_Web_Html.Type_style = Vx_Web_Html.f_style_from_stylesheet_name(
            Vx_Test.c_stylesheet_test,
            Vx_Core.vx_new_string(".pkgname")
          )
          let node : any Vx_Web_Html.Type_div = Vx_Test.f_div_from_testcaselist(caselist)
          let nodes : any Vx_Web_Html.Type_divchildlist = Vx_Core.f_new(
            Vx_Web_Html.t_divchildlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                node
              ]
            )
          )
          let p_passfail : any Vx_Web_Html.Type_p = Vx_Test.f_p_from_passfail(passfail)
          let p_pkgname : any Vx_Web_Html.Type_p = Vx_Core.f_new(
            Vx_Web_Html.t_p,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.vx_new_string(":style"),
                pkgnamestyle,
                Vx_Core.vx_new_string(":text"),
                pkgname
              ]
            )
          )
          let p_totalnums : any Vx_Web_Html.Type_p = Vx_Test.f_p_from_testcoveragenums(
            testcoveragesummary.totalnums()
          )
          let p_coveragenums : any Vx_Web_Html.Type_p = Vx_Test.f_p_from_testcoveragenums(
            testcoveragesummary.typenums()
          )
          let p_constnums : any Vx_Web_Html.Type_p = Vx_Test.f_p_from_testcoveragenums(
            testcoveragesummary.constnums()
          )
          let p_funcnums : any Vx_Web_Html.Type_p = Vx_Test.f_p_from_testcoveragenums(
            testcoveragesummary.funcnums()
          )
          let p_docnums : any Vx_Web_Html.Type_p = Vx_Test.f_p_from_testcoveragenums(
            testcoveragesummary.docnums()
          )
          let p_bigospacenums : any Vx_Web_Html.Type_p = Vx_Test.f_p_from_testcoveragenums(
            testcoveragesummary.bigospacenums()
          )
          let p_bigotimenums : any Vx_Web_Html.Type_p = Vx_Test.f_p_from_testcoveragenums(
            testcoveragesummary.bigotimenums()
          )
          let summary : any Vx_Web_Html.Type_divchildlist = Vx_Core.f_new(
            Vx_Web_Html.t_divchildlist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                p_passfail,
                p_pkgname,
                p_totalnums,
                p_coveragenums,
                p_constnums,
                p_funcnums,
                p_docnums,
                p_bigospacenums,
                p_bigotimenums
              ]
            )
          )
          let details : any Vx_Web_Html.Type_details = Vx_Core.f_new(
            Vx_Web_Html.t_details,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.vx_new_string(":summary"),
                summary,
                Vx_Core.vx_new_string(":nodes"),
                nodes
              ]
            )
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Web_Html.t_div,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                details
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_div_from_testpackagelist : Vx_Core.Func_any_from_any, AnyObject {
    func vx_div_from_testpackagelist(
      _ testpackagelist : any Vx_Test.Type_testpackagelist
    ) -> any Vx_Web_Html.Type_div
  }

  public class Class_div_from_testpackagelist : Vx_Core.Class_base, Func_div_from_testpackagelist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_div_from_testpackagelist = Vx_Test.Class_div_from_testpackagelist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_div_from_testpackagelist = Vx_Test.Class_div_from_testpackagelist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "div<-testpackagelist", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "div",
          ":struct",
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_node,
              Vx_Web_Html.t_divchild
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
      let output : any Vx_Core.Type_any = Vx_Test.e_div_from_testpackagelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_div_from_testpackagelist
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
      let inputval : any Vx_Test.Type_testpackagelist = value as! any Vx_Test.Type_testpackagelist
      let outputval : any Vx_Core.Type_any = Vx_Test.f_div_from_testpackagelist(inputval)
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
      let testpackagelist : any Vx_Test.Type_testpackagelist = Vx_Core.f_any_from_any(
        Vx_Test.t_testpackagelist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Test.f_div_from_testpackagelist(testpackagelist)
      return output
    }

    public func vx_div_from_testpackagelist(
      _ testpackagelist : any Vx_Test.Type_testpackagelist
    ) -> any Vx_Web_Html.Type_div {
      let output : any Vx_Web_Html.Type_div = Vx_Test.f_div_from_testpackagelist(testpackagelist)
      return output
    }

  }

  public static let e_div_from_testpackagelist : any Vx_Test.Func_div_from_testpackagelist = Vx_Test.Class_div_from_testpackagelist()
  public static let t_div_from_testpackagelist : any Vx_Test.Func_div_from_testpackagelist = Vx_Test.Class_div_from_testpackagelist()

  public static func f_div_from_testpackagelist(
    _ testpackagelist : any Vx_Test.Type_testpackagelist
  ) -> any Vx_Web_Html.Type_div {
    var output : any Vx_Web_Html.Type_div = Vx_Web_Html.e_div
    output = Vx_Core.f_let(
      Vx_Web_Html.t_div,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let stylepassfail : any Vx_Web_Html.Type_style = Vx_Web_Html.f_style_from_stylesheet_name(
            Vx_Test.c_stylesheet_test,
            Vx_Core.vx_new_string(".passfail")
          )
          let stylepkgname : any Vx_Web_Html.Type_style = Vx_Web_Html.f_style_from_stylesheet_name(
            Vx_Test.c_stylesheet_test,
            Vx_Core.vx_new_string(".pkgname")
          )
          let stylepkgheader : any Vx_Web_Html.Type_style = Vx_Web_Html.f_style_from_stylesheet_name(
            Vx_Test.c_stylesheet_test,
            Vx_Core.vx_new_string(".pkgheader")
          )
          let stylecoveragenum : any Vx_Web_Html.Type_style = Vx_Web_Html.f_style_from_stylesheet_name(
            Vx_Test.c_stylesheet_test,
            Vx_Core.vx_new_string(".coveragenums")
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Web_Html.t_div,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.f_new(
                  Vx_Web_Html.t_div,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.vx_new_string(":style"),
                      stylepkgheader,
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            stylepassfail,
                            Vx_Core.vx_new_string(":text"),
                            Vx_Core.vx_new_string("Pass?")
                          ]
                        )
                      ),
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            stylepkgname,
                            Vx_Core.vx_new_string(":text"),
                            Vx_Core.vx_new_string("Package Name")
                          ]
                        )
                      ),
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            stylecoveragenum,
                            Vx_Core.vx_new_string(":text"),
                            Vx_Core.vx_new_string("Coverage")
                          ]
                        )
                      ),
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            stylecoveragenum,
                            Vx_Core.vx_new_string(":text"),
                            Vx_Core.vx_new_string("(type)")
                          ]
                        )
                      ),
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            stylecoveragenum,
                            Vx_Core.vx_new_string(":text"),
                            Vx_Core.vx_new_string("(const)")
                          ]
                        )
                      ),
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            stylecoveragenum,
                            Vx_Core.vx_new_string(":text"),
                            Vx_Core.vx_new_string("(func)")
                          ]
                        )
                      ),
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            stylecoveragenum,
                            Vx_Core.vx_new_string(":text"),
                            Vx_Core.vx_new_string(":doc")
                          ]
                        )
                      ),
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            stylecoveragenum,
                            Vx_Core.vx_new_string(":text"),
                            Vx_Core.vx_new_string(":bigospace")
                          ]
                        )
                      ),
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            stylecoveragenum,
                            Vx_Core.vx_new_string(":text"),
                            Vx_Core.vx_new_string(":bigotime")
                          ]
                        )
                      )
                    ]
                  )
                ),
                Vx_Core.f_new(
                  Vx_Web_Html.t_div,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Test.f_divchildlist_from_testpackagelist(testpackagelist)
                    ]
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


  public protocol Func_divchildlist_from_testpackagelist : Vx_Core.Func_any_from_any, AnyObject {
    func vx_divchildlist_from_testpackagelist(
      _ testpackagelist : any Vx_Test.Type_testpackagelist
    ) -> any Vx_Web_Html.Type_divchildlist
  }

  public class Class_divchildlist_from_testpackagelist : Vx_Core.Class_base, Func_divchildlist_from_testpackagelist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_divchildlist_from_testpackagelist = Vx_Test.Class_divchildlist_from_testpackagelist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_divchildlist_from_testpackagelist = Vx_Test.Class_divchildlist_from_testpackagelist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "divchildlist<-testpackagelist", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "divchildlist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_divchild
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
      let output : any Vx_Core.Type_any = Vx_Test.e_divchildlist_from_testpackagelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_divchildlist_from_testpackagelist
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
      let inputval : any Vx_Test.Type_testpackagelist = value as! any Vx_Test.Type_testpackagelist
      let outputval : any Vx_Core.Type_any = Vx_Test.f_divchildlist_from_testpackagelist(inputval)
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
      let testpackagelist : any Vx_Test.Type_testpackagelist = Vx_Core.f_any_from_any(
        Vx_Test.t_testpackagelist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Test.f_divchildlist_from_testpackagelist(testpackagelist)
      return output
    }

    public func vx_divchildlist_from_testpackagelist(
      _ testpackagelist : any Vx_Test.Type_testpackagelist
    ) -> any Vx_Web_Html.Type_divchildlist {
      let output : any Vx_Web_Html.Type_divchildlist = Vx_Test.f_divchildlist_from_testpackagelist(testpackagelist)
      return output
    }

  }

  public static let e_divchildlist_from_testpackagelist : any Vx_Test.Func_divchildlist_from_testpackagelist = Vx_Test.Class_divchildlist_from_testpackagelist()
  public static let t_divchildlist_from_testpackagelist : any Vx_Test.Func_divchildlist_from_testpackagelist = Vx_Test.Class_divchildlist_from_testpackagelist()

  public static func f_divchildlist_from_testpackagelist(
    _ testpackagelist : any Vx_Test.Type_testpackagelist
  ) -> any Vx_Web_Html.Type_divchildlist {
    var output : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
    output = Vx_Core.f_list_from_list_1(
      Vx_Web_Html.t_divchildlist,
      testpackagelist,
      Vx_Test.t_div_from_testpackage
    )
    return output
  }


  public protocol Func_file_test : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_file_test() -> any Vx_Data_File.Type_file
  }

  public class Class_file_test : Vx_Core.Class_base, Func_file_test {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_file_test = Vx_Test.Class_file_test()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_file_test = Vx_Test.Class_file_test()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "file-test", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/data/file",
          "file",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_file_test
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_file_test
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      output = Vx_Test.f_file_test()
      return output
    }

    public func vx_file_test() -> any Vx_Data_File.Type_file {
      let output : any Vx_Data_File.Type_file = Vx_Test.f_file_test()
      return output
    }

  }

  public static let e_file_test : any Vx_Test.Func_file_test = Vx_Test.Class_file_test()
  public static let t_file_test : any Vx_Test.Func_file_test = Vx_Test.Class_file_test()

  public static func f_file_test() -> any Vx_Data_File.Type_file {
    var output : any Vx_Data_File.Type_file = Vx_Data_File.e_file
    output = Vx_Core.f_new(
      Vx_Data_File.t_file,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        [
          Vx_Core.vx_new_string(":name"),
          Vx_Core.vx_new_string("testsuite.vxlisp"),
          Vx_Core.vx_new_string(":path"),
          Vx_Core.c_path_test_resources
        ]
      )
    )
    return output
  }


  public protocol Func_file_testhtml : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_file_testhtml() -> any Vx_Data_File.Type_file
  }

  public class Class_file_testhtml : Vx_Core.Class_base, Func_file_testhtml {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_file_testhtml = Vx_Test.Class_file_testhtml()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_file_testhtml = Vx_Test.Class_file_testhtml()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "file-testhtml", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/data/file",
          "file",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_file_testhtml
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_file_testhtml
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      output = Vx_Test.f_file_testhtml()
      return output
    }

    public func vx_file_testhtml() -> any Vx_Data_File.Type_file {
      let output : any Vx_Data_File.Type_file = Vx_Test.f_file_testhtml()
      return output
    }

  }

  public static let e_file_testhtml : any Vx_Test.Func_file_testhtml = Vx_Test.Class_file_testhtml()
  public static let t_file_testhtml : any Vx_Test.Func_file_testhtml = Vx_Test.Class_file_testhtml()

  public static func f_file_testhtml() -> any Vx_Data_File.Type_file {
    var output : any Vx_Data_File.Type_file = Vx_Data_File.e_file
    output = Vx_Core.f_new(
      Vx_Data_File.t_file,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        [
          Vx_Core.vx_new_string(":name"),
          Vx_Core.vx_new_string("testsuite.html"),
          Vx_Core.vx_new_string(":path"),
          Vx_Core.c_path_test_resources
        ]
      )
    )
    return output
  }


  public protocol Func_file_testnode : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_file_testnode() -> any Vx_Data_File.Type_file
  }

  public class Class_file_testnode : Vx_Core.Class_base, Func_file_testnode {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_file_testnode = Vx_Test.Class_file_testnode()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_file_testnode = Vx_Test.Class_file_testnode()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "file-testnode", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/data/file",
          "file",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_file_testnode
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_file_testnode
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      output = Vx_Test.f_file_testnode()
      return output
    }

    public func vx_file_testnode() -> any Vx_Data_File.Type_file {
      let output : any Vx_Data_File.Type_file = Vx_Test.f_file_testnode()
      return output
    }

  }

  public static let e_file_testnode : any Vx_Test.Func_file_testnode = Vx_Test.Class_file_testnode()
  public static let t_file_testnode : any Vx_Test.Func_file_testnode = Vx_Test.Class_file_testnode()

  public static func f_file_testnode() -> any Vx_Data_File.Type_file {
    var output : any Vx_Data_File.Type_file = Vx_Data_File.e_file
    output = Vx_Core.f_new(
      Vx_Data_File.t_file,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        [
          Vx_Core.vx_new_string(":name"),
          Vx_Core.vx_new_string("testsuitenode.vxlisp"),
          Vx_Core.vx_new_string(":path"),
          Vx_Core.c_path_test_resources
        ]
      )
    )
    return output
  }


  public protocol Func_html_from_divtest : Vx_Core.Func_any_from_any, AnyObject {
    func vx_html_from_divtest(
      _ divtest : any Vx_Web_Html.Type_div
    ) -> any Vx_Web_Html.Type_html
  }

  public class Class_html_from_divtest : Vx_Core.Class_base, Func_html_from_divtest {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_html_from_divtest = Vx_Test.Class_html_from_divtest()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_html_from_divtest = Vx_Test.Class_html_from_divtest()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "html<-divtest", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "html",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_html_from_divtest
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_html_from_divtest
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
      let inputval : any Vx_Web_Html.Type_div = value as! any Vx_Web_Html.Type_div
      let outputval : any Vx_Core.Type_any = Vx_Test.f_html_from_divtest(inputval)
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
      let divtest : any Vx_Web_Html.Type_div = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_div,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Test.f_html_from_divtest(divtest)
      return output
    }

    public func vx_html_from_divtest(
      _ divtest : any Vx_Web_Html.Type_div
    ) -> any Vx_Web_Html.Type_html {
      let output : any Vx_Web_Html.Type_html = Vx_Test.f_html_from_divtest(divtest)
      return output
    }

  }

  public static let e_html_from_divtest : any Vx_Test.Func_html_from_divtest = Vx_Test.Class_html_from_divtest()
  public static let t_html_from_divtest : any Vx_Test.Func_html_from_divtest = Vx_Test.Class_html_from_divtest()

  public static func f_html_from_divtest(
    _ divtest : any Vx_Web_Html.Type_div
  ) -> any Vx_Web_Html.Type_html {
    var output : any Vx_Web_Html.Type_html = Vx_Web_Html.e_html
    output = Vx_Core.f_new(
      Vx_Web_Html.t_html,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        [
          Vx_Core.vx_new_string(":lang"),
          Vx_Core.vx_new_string("en"),
          Vx_Core.vx_new_string(":head"),
          Vx_Core.f_new(
            Vx_Web_Html.t_head,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.f_new(
                  Vx_Web_Html.t_meta,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.vx_new_string(":charset"),
                      Vx_Core.vx_new_string("utf-8")
                    ]
                  )
                ),
                Vx_Core.f_new(
                  Vx_Web_Html.t_meta,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.vx_new_string(":name"),
                      Vx_Core.vx_new_string("viewport"),
                      Vx_Core.vx_new_string(":content"),
                      Vx_Core.vx_new_string("width=device-width, initial-scale=1.0")
                    ]
                  )
                ),
                Vx_Core.f_new(
                  Vx_Web_Html.t_title,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.vx_new_string(":text"),
                      Vx_Core.vx_new_string("Test Suite")
                    ]
                  )
                ),
                Vx_Test.c_stylesheet_test
              ]
            )
          ),
          Vx_Core.vx_new_string(":body"),
          Vx_Core.f_new(
            Vx_Web_Html.t_body,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.f_new(
                  Vx_Web_Html.t_div,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.f_new(
                        Vx_Web_Html.t_h1,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string("Test Suite")
                          ]
                        )
                      )
                    ]
                  )
                ),
                divtest
              ]
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_p_from_passfail : Vx_Core.Func_any_from_any, AnyObject {
    func vx_p_from_passfail(
      _ passfail : any Vx_Core.Type_boolean
    ) -> any Vx_Web_Html.Type_p
  }

  public class Class_p_from_passfail : Vx_Core.Class_base, Func_p_from_passfail {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_p_from_passfail = Vx_Test.Class_p_from_passfail()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_p_from_passfail = Vx_Test.Class_p_from_passfail()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "p<-passfail", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "p",
          ":struct",
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_node,
              Vx_Web_Html.t_divchild
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
      let output : any Vx_Core.Type_any = Vx_Test.e_p_from_passfail
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_p_from_passfail
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
      let inputval : any Vx_Core.Type_boolean = value as! any Vx_Core.Type_boolean
      let outputval : any Vx_Core.Type_any = Vx_Test.f_p_from_passfail(inputval)
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
      let passfail : any Vx_Core.Type_boolean = Vx_Core.f_any_from_any(
        Vx_Core.t_boolean,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Test.f_p_from_passfail(passfail)
      return output
    }

    public func vx_p_from_passfail(
      _ passfail : any Vx_Core.Type_boolean
    ) -> any Vx_Web_Html.Type_p {
      let output : any Vx_Web_Html.Type_p = Vx_Test.f_p_from_passfail(passfail)
      return output
    }

  }

  public static let e_p_from_passfail : any Vx_Test.Func_p_from_passfail = Vx_Test.Class_p_from_passfail()
  public static let t_p_from_passfail : any Vx_Test.Func_p_from_passfail = Vx_Test.Class_p_from_passfail()

  public static func f_p_from_passfail(
    _ passfail : any Vx_Core.Type_boolean
  ) -> any Vx_Web_Html.Type_p {
    var output : any Vx_Web_Html.Type_p = Vx_Web_Html.e_p
    output = Vx_Core.f_let(
      Vx_Web_Html.t_p,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let text : any Vx_Core.Type_string = Vx_Core.f_if_1(
            Vx_Core.t_string,
            passfail,
            Vx_Core.vx_new_string("Pass"),
            Vx_Core.vx_new_string("Fail")
          )
          let stylename : any Vx_Core.Type_string = Vx_Core.f_if_1(
            Vx_Core.t_string,
            passfail,
            Vx_Core.vx_new_string(".passflag"),
            Vx_Core.vx_new_string(".failflag")
          )
          let style : any Vx_Web_Html.Type_style = Vx_Web_Html.f_style_from_stylesheet_name(
            Vx_Test.c_stylesheet_test,
            stylename
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Web_Html.t_p,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.vx_new_string(":style"),
                style,
                Vx_Core.vx_new_string(":text"),
                text
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_p_from_testcoveragenums : Vx_Core.Func_any_from_any, AnyObject {
    func vx_p_from_testcoveragenums(
      _ nums : any Vx_Test.Type_testcoveragenums
    ) -> any Vx_Web_Html.Type_p
  }

  public class Class_p_from_testcoveragenums : Vx_Core.Class_base, Func_p_from_testcoveragenums {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_p_from_testcoveragenums = Vx_Test.Class_p_from_testcoveragenums()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_p_from_testcoveragenums = Vx_Test.Class_p_from_testcoveragenums()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "p<-testcoveragenums", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "p",
          ":struct",
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_node,
              Vx_Web_Html.t_divchild
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
      let output : any Vx_Core.Type_any = Vx_Test.e_p_from_testcoveragenums
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_p_from_testcoveragenums
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
      let inputval : any Vx_Test.Type_testcoveragenums = value as! any Vx_Test.Type_testcoveragenums
      let outputval : any Vx_Core.Type_any = Vx_Test.f_p_from_testcoveragenums(inputval)
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
      let nums : any Vx_Test.Type_testcoveragenums = Vx_Core.f_any_from_any(
        Vx_Test.t_testcoveragenums,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Test.f_p_from_testcoveragenums(nums)
      return output
    }

    public func vx_p_from_testcoveragenums(
      _ nums : any Vx_Test.Type_testcoveragenums
    ) -> any Vx_Web_Html.Type_p {
      let output : any Vx_Web_Html.Type_p = Vx_Test.f_p_from_testcoveragenums(nums)
      return output
    }

  }

  public static let e_p_from_testcoveragenums : any Vx_Test.Func_p_from_testcoveragenums = Vx_Test.Class_p_from_testcoveragenums()
  public static let t_p_from_testcoveragenums : any Vx_Test.Func_p_from_testcoveragenums = Vx_Test.Class_p_from_testcoveragenums()

  public static func f_p_from_testcoveragenums(
    _ nums : any Vx_Test.Type_testcoveragenums
  ) -> any Vx_Web_Html.Type_p {
    var output : any Vx_Web_Html.Type_p = Vx_Web_Html.e_p
    output = Vx_Core.f_new(
      Vx_Web_Html.t_p,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        [
          Vx_Core.vx_new_string(":style"),
          Vx_Web_Html.f_style_from_stylesheet_name(
            Vx_Test.c_stylesheet_test,
            Vx_Core.vx_new_string(".coveragenums")
          ),
          Vx_Core.vx_new_string(":text"),
          Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                nums.pct(),
                Vx_Core.vx_new_string("% "),
                nums.tests(),
                Vx_Core.vx_new_string("/"),
                nums.total()
              ]
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_resolve_testcase : Vx_Core.Func_any_from_any_async, AnyObject {
    func vx_resolve_testcase(
      _ testcase : any Vx_Test.Type_testcase
    ) -> Vx_Core.Future
  }

  public class Class_resolve_testcase : Vx_Core.Class_base, Func_resolve_testcase {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testcase = Vx_Test.Class_resolve_testcase()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testcase = Vx_Test.Class_resolve_testcase()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "resolve-testcase", // name
        0, // idx
        true, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testcase",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_resolve_testcase
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_resolve_testcase
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_async.IFn) -> Vx_Core.Func_any_from_any_async {
      return Vx_Core.e_any_from_any_async
    }

    public func vx_any_from_any_async<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> Vx_Core.Future {
      let inputval : any Vx_Test.Type_testcase = Vx_Core.f_any_from_any(
        Vx_Test.t_testcase,
        value
      )
      let future : Vx_Core.Future = Vx_Test.f_resolve_testcase(inputval)
      let output : Vx_Core.Future = Vx_Core.vx_async_from_async(generic_any_1, future)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Core.e_any)
      let testcase : any Vx_Test.Type_testcase = Vx_Core.f_any_from_any(
        Vx_Test.t_testcase,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      var future : Vx_Core.Future = Vx_Test.f_resolve_testcase(testcase)
      output = Vx_Core.vx_async_from_async(
        Vx_Core.t_any,
        future
      )
      return output
    }

    public func vx_resolve_testcase(
      _ testcase : any Vx_Test.Type_testcase
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Test.f_resolve_testcase(testcase)
      return output
    }

  }

  public static let e_resolve_testcase : any Vx_Test.Func_resolve_testcase = Vx_Test.Class_resolve_testcase()
  public static let t_resolve_testcase : any Vx_Test.Func_resolve_testcase = Vx_Test.Class_resolve_testcase()

  public static func f_resolve_testcase(
    _ testcase : any Vx_Test.Type_testcase
  ) -> Vx_Core.Future {
    var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Test.e_testcase)
    output = Vx_Core.f_let_async(
      Vx_Test.t_testcase,
      Vx_Core.t_any_from_func_async.vx_fn_new(
        {() in
          let describelist : any Vx_Test.Type_testdescribelist = testcase.describelist()
        let future_resolvedlist : Vx_Core.Future = Vx_Test.f_resolve_testdescribelist(describelist)
        let output_1 : Vx_Core.Future = Vx_Core.vx_async_from_async_fn(
          Vx_Core.t_any,
          future_resolvedlist,
          {(resolvedlist_any) in
            let resolvedlist : any Vx_Test.Type_testdescribelist = Vx_Core.vx_any_from_any(
              Vx_Test.t_testdescribelist,
              resolvedlist_any
            )
              let passfaillist : any Vx_Core.Type_booleanlist = Vx_Core.f_list_from_list_1(
                Vx_Core.t_booleanlist,
                resolvedlist,
                Vx_Core.t_any_from_any.vx_fn_new(
                  {(testdescribe_any) in
                    let testdescribe : any Vx_Test.Type_testdescribe = Vx_Core.f_any_from_any(
                      Vx_Test.t_testdescribe,
                      testdescribe_any
                    )
                    var output_3 : any Vx_Core.Type_any = Vx_Core.f_let(
                      Vx_Core.t_boolean,
                      Vx_Core.t_any_from_func.vx_fn_new(
                        {() in
                          let testresult : any Vx_Test.Type_testresult = testdescribe.testresult()
                          let output_4 : any Vx_Core.Type_any = testresult.passfail()
                          return output_4
                        }
                      )
                    )
                    return output_3
                  }
                )
              )
              let passfail : any Vx_Core.Type_boolean = Vx_Core.f_and_1(passfaillist)
            let output_2 : any Vx_Core.Type_any = Vx_Core.f_copy(
              Vx_Test.t_testcase,
              testcase,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":passfail"),
                  passfail,
                  Vx_Core.vx_new_string(":describelist"),
                  resolvedlist
                ]
              )
            )
              return output_2
            }
        )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_resolve_testcaselist : Vx_Core.Func_any_from_any_async, AnyObject {
    func vx_resolve_testcaselist(
      _ testcaselist : any Vx_Test.Type_testcaselist
    ) -> Vx_Core.Future
  }

  public class Class_resolve_testcaselist : Vx_Core.Class_base, Func_resolve_testcaselist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testcaselist = Vx_Test.Class_resolve_testcaselist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testcaselist = Vx_Test.Class_resolve_testcaselist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "resolve-testcaselist", // name
        0, // idx
        true, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testcaselist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Test.t_testcase
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
      let output : any Vx_Core.Type_any = Vx_Test.e_resolve_testcaselist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_resolve_testcaselist
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_async.IFn) -> Vx_Core.Func_any_from_any_async {
      return Vx_Core.e_any_from_any_async
    }

    public func vx_any_from_any_async<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> Vx_Core.Future {
      let inputval : any Vx_Test.Type_testcaselist = Vx_Core.f_any_from_any(
        Vx_Test.t_testcaselist,
        value
      )
      let future : Vx_Core.Future = Vx_Test.f_resolve_testcaselist(inputval)
      let output : Vx_Core.Future = Vx_Core.vx_async_from_async(generic_any_1, future)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Core.e_any)
      let testcaselist : any Vx_Test.Type_testcaselist = Vx_Core.f_any_from_any(
        Vx_Test.t_testcaselist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      var future : Vx_Core.Future = Vx_Test.f_resolve_testcaselist(testcaselist)
      output = Vx_Core.vx_async_from_async(
        Vx_Core.t_any,
        future
      )
      return output
    }

    public func vx_resolve_testcaselist(
      _ testcaselist : any Vx_Test.Type_testcaselist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Test.f_resolve_testcaselist(testcaselist)
      return output
    }

  }

  public static let e_resolve_testcaselist : any Vx_Test.Func_resolve_testcaselist = Vx_Test.Class_resolve_testcaselist()
  public static let t_resolve_testcaselist : any Vx_Test.Func_resolve_testcaselist = Vx_Test.Class_resolve_testcaselist()

  public static func f_resolve_testcaselist(
    _ testcaselist : any Vx_Test.Type_testcaselist
  ) -> Vx_Core.Future {
    var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Test.e_testcaselist)
    output = Vx_Core.f_list_from_list_async(
      Vx_Test.t_testcaselist,
      testcaselist,
      Vx_Test.t_resolve_testcase
    )
    return output
  }


  public protocol Func_resolve_testdescribe : Vx_Core.Func_any_from_any_async, AnyObject {
    func vx_resolve_testdescribe(
      _ testdescribe : any Vx_Test.Type_testdescribe
    ) -> Vx_Core.Future
  }

  public class Class_resolve_testdescribe : Vx_Core.Class_base, Func_resolve_testdescribe {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testdescribe = Vx_Test.Class_resolve_testdescribe()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testdescribe = Vx_Test.Class_resolve_testdescribe()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "resolve-testdescribe", // name
        0, // idx
        true, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testdescribe",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_resolve_testdescribe
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_resolve_testdescribe
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_async.IFn) -> Vx_Core.Func_any_from_any_async {
      return Vx_Core.e_any_from_any_async
    }

    public func vx_any_from_any_async<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> Vx_Core.Future {
      let inputval : any Vx_Test.Type_testdescribe = Vx_Core.f_any_from_any(
        Vx_Test.t_testdescribe,
        value
      )
      let future : Vx_Core.Future = Vx_Test.f_resolve_testdescribe(inputval)
      let output : Vx_Core.Future = Vx_Core.vx_async_from_async(generic_any_1, future)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Core.e_any)
      let testdescribe : any Vx_Test.Type_testdescribe = Vx_Core.f_any_from_any(
        Vx_Test.t_testdescribe,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      var future : Vx_Core.Future = Vx_Test.f_resolve_testdescribe(testdescribe)
      output = Vx_Core.vx_async_from_async(
        Vx_Core.t_any,
        future
      )
      return output
    }

    public func vx_resolve_testdescribe(
      _ testdescribe : any Vx_Test.Type_testdescribe
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Test.f_resolve_testdescribe(testdescribe)
      return output
    }

  }

  public static let e_resolve_testdescribe : any Vx_Test.Func_resolve_testdescribe = Vx_Test.Class_resolve_testdescribe()
  public static let t_resolve_testdescribe : any Vx_Test.Func_resolve_testdescribe = Vx_Test.Class_resolve_testdescribe()

  public static func f_resolve_testdescribe(
    _ testdescribe : any Vx_Test.Type_testdescribe
  ) -> Vx_Core.Future {
    var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Test.e_testdescribe)
    output = Vx_Core.f_let_async(
      Vx_Test.t_testdescribe,
      Vx_Core.t_any_from_func_async.vx_fn_new(
        {() in
          let testresult : any Vx_Test.Type_testresult = testdescribe.testresult()
        let future_resolved : Vx_Core.Future = Vx_Test.f_resolve_testresult(testresult)
        let output_1 : Vx_Core.Future = Vx_Core.vx_async_from_async_fn(
          Vx_Core.t_any,
          future_resolved,
          {(resolved_any) in
            let resolved : any Vx_Test.Type_testresult = Vx_Core.vx_any_from_any(
              Vx_Test.t_testresult,
              resolved_any
            )
            let output_2 : any Vx_Core.Type_any = Vx_Core.f_copy(
              Vx_Test.t_testdescribe,
              testdescribe,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":testresult"),
                  resolved
                ]
              )
            )
              return output_2
            }
        )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_resolve_testdescribelist : Vx_Core.Func_any_from_any_async, AnyObject {
    func vx_resolve_testdescribelist(
      _ testdescribelist : any Vx_Test.Type_testdescribelist
    ) -> Vx_Core.Future
  }

  public class Class_resolve_testdescribelist : Vx_Core.Class_base, Func_resolve_testdescribelist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testdescribelist = Vx_Test.Class_resolve_testdescribelist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testdescribelist = Vx_Test.Class_resolve_testdescribelist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "resolve-testdescribelist", // name
        0, // idx
        true, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testdescribelist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Test.t_testdescribe
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
      let output : any Vx_Core.Type_any = Vx_Test.e_resolve_testdescribelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_resolve_testdescribelist
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_async.IFn) -> Vx_Core.Func_any_from_any_async {
      return Vx_Core.e_any_from_any_async
    }

    public func vx_any_from_any_async<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> Vx_Core.Future {
      let inputval : any Vx_Test.Type_testdescribelist = Vx_Core.f_any_from_any(
        Vx_Test.t_testdescribelist,
        value
      )
      let future : Vx_Core.Future = Vx_Test.f_resolve_testdescribelist(inputval)
      let output : Vx_Core.Future = Vx_Core.vx_async_from_async(generic_any_1, future)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Core.e_any)
      let testdescribelist : any Vx_Test.Type_testdescribelist = Vx_Core.f_any_from_any(
        Vx_Test.t_testdescribelist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      var future : Vx_Core.Future = Vx_Test.f_resolve_testdescribelist(testdescribelist)
      output = Vx_Core.vx_async_from_async(
        Vx_Core.t_any,
        future
      )
      return output
    }

    public func vx_resolve_testdescribelist(
      _ testdescribelist : any Vx_Test.Type_testdescribelist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Test.f_resolve_testdescribelist(testdescribelist)
      return output
    }

  }

  public static let e_resolve_testdescribelist : any Vx_Test.Func_resolve_testdescribelist = Vx_Test.Class_resolve_testdescribelist()
  public static let t_resolve_testdescribelist : any Vx_Test.Func_resolve_testdescribelist = Vx_Test.Class_resolve_testdescribelist()

  public static func f_resolve_testdescribelist(
    _ testdescribelist : any Vx_Test.Type_testdescribelist
  ) -> Vx_Core.Future {
    var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Test.e_testdescribelist)
    output = Vx_Core.f_list_from_list_async(
      Vx_Test.t_testdescribelist,
      testdescribelist,
      Vx_Test.t_resolve_testdescribe
    )
    return output
  }


  public protocol Func_resolve_testpackage : Vx_Core.Func_any_from_any_async, AnyObject {
    func vx_resolve_testpackage(
      _ testpackage : any Vx_Test.Type_testpackage
    ) -> Vx_Core.Future
  }

  public class Class_resolve_testpackage : Vx_Core.Class_base, Func_resolve_testpackage {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testpackage = Vx_Test.Class_resolve_testpackage()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testpackage = Vx_Test.Class_resolve_testpackage()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "resolve-testpackage", // name
        0, // idx
        true, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testpackage",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_resolve_testpackage
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_resolve_testpackage
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_async.IFn) -> Vx_Core.Func_any_from_any_async {
      return Vx_Core.e_any_from_any_async
    }

    public func vx_any_from_any_async<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> Vx_Core.Future {
      let inputval : any Vx_Test.Type_testpackage = Vx_Core.f_any_from_any(
        Vx_Test.t_testpackage,
        value
      )
      let future : Vx_Core.Future = Vx_Test.f_resolve_testpackage(inputval)
      let output : Vx_Core.Future = Vx_Core.vx_async_from_async(generic_any_1, future)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Core.e_any)
      let testpackage : any Vx_Test.Type_testpackage = Vx_Core.f_any_from_any(
        Vx_Test.t_testpackage,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      var future : Vx_Core.Future = Vx_Test.f_resolve_testpackage(testpackage)
      output = Vx_Core.vx_async_from_async(
        Vx_Core.t_any,
        future
      )
      return output
    }

    public func vx_resolve_testpackage(
      _ testpackage : any Vx_Test.Type_testpackage
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Test.f_resolve_testpackage(testpackage)
      return output
    }

  }

  public static let e_resolve_testpackage : any Vx_Test.Func_resolve_testpackage = Vx_Test.Class_resolve_testpackage()
  public static let t_resolve_testpackage : any Vx_Test.Func_resolve_testpackage = Vx_Test.Class_resolve_testpackage()

  public static func f_resolve_testpackage(
    _ testpackage : any Vx_Test.Type_testpackage
  ) -> Vx_Core.Future {
    var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Test.e_testpackage)
    output = Vx_Core.f_let_async(
      Vx_Test.t_testpackage,
      Vx_Core.t_any_from_func_async.vx_fn_new(
        {() in
          let testcaselist : any Vx_Test.Type_testcaselist = testpackage.caselist()
        let future_resolvedlist : Vx_Core.Future = Vx_Test.f_resolve_testcaselist(testcaselist)
        let output_1 : Vx_Core.Future = Vx_Core.vx_async_from_async_fn(
          Vx_Core.t_any,
          future_resolvedlist,
          {(resolvedlist_any) in
            let resolvedlist : any Vx_Test.Type_testcaselist = Vx_Core.vx_any_from_any(
              Vx_Test.t_testcaselist,
              resolvedlist_any
            )
              let passfaillist : any Vx_Core.Type_booleanlist = Vx_Core.f_list_from_list_1(
                Vx_Core.t_booleanlist,
                resolvedlist,
                Vx_Core.t_any_from_any.vx_fn_new(
                  {(testcase_any) in
                    let testcase : any Vx_Test.Type_testcase = Vx_Core.f_any_from_any(
                      Vx_Test.t_testcase,
                      testcase_any
                    )
                    var output_3 : any Vx_Core.Type_any = testcase.passfail()
                    return output_3
                  }
                )
              )
              let passfail : any Vx_Core.Type_boolean = Vx_Core.f_and_1(passfaillist)
            let output_2 : any Vx_Core.Type_any = Vx_Core.f_copy(
              Vx_Test.t_testpackage,
              testpackage,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  Vx_Core.vx_new_string(":passfail"),
                  passfail,
                  Vx_Core.vx_new_string(":caselist"),
                  resolvedlist
                ]
              )
            )
              return output_2
            }
        )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_resolve_testpackagelist : Vx_Core.Func_any_from_any_async, AnyObject {
    func vx_resolve_testpackagelist(
      _ testpackagelist : any Vx_Test.Type_testpackagelist
    ) -> Vx_Core.Future
  }

  public class Class_resolve_testpackagelist : Vx_Core.Class_base, Func_resolve_testpackagelist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testpackagelist = Vx_Test.Class_resolve_testpackagelist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testpackagelist = Vx_Test.Class_resolve_testpackagelist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "resolve-testpackagelist", // name
        0, // idx
        true, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testpackagelist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Test.t_testpackage
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
      let output : any Vx_Core.Type_any = Vx_Test.e_resolve_testpackagelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_resolve_testpackagelist
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_async.IFn) -> Vx_Core.Func_any_from_any_async {
      return Vx_Core.e_any_from_any_async
    }

    public func vx_any_from_any_async<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> Vx_Core.Future {
      let inputval : any Vx_Test.Type_testpackagelist = Vx_Core.f_any_from_any(
        Vx_Test.t_testpackagelist,
        value
      )
      let future : Vx_Core.Future = Vx_Test.f_resolve_testpackagelist(inputval)
      let output : Vx_Core.Future = Vx_Core.vx_async_from_async(generic_any_1, future)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Core.e_any)
      let testpackagelist : any Vx_Test.Type_testpackagelist = Vx_Core.f_any_from_any(
        Vx_Test.t_testpackagelist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      var future : Vx_Core.Future = Vx_Test.f_resolve_testpackagelist(testpackagelist)
      output = Vx_Core.vx_async_from_async(
        Vx_Core.t_any,
        future
      )
      return output
    }

    public func vx_resolve_testpackagelist(
      _ testpackagelist : any Vx_Test.Type_testpackagelist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Test.f_resolve_testpackagelist(testpackagelist)
      return output
    }

  }

  public static let e_resolve_testpackagelist : any Vx_Test.Func_resolve_testpackagelist = Vx_Test.Class_resolve_testpackagelist()
  public static let t_resolve_testpackagelist : any Vx_Test.Func_resolve_testpackagelist = Vx_Test.Class_resolve_testpackagelist()

  public static func f_resolve_testpackagelist(
    _ testpackagelist : any Vx_Test.Type_testpackagelist
  ) -> Vx_Core.Future {
    var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Test.e_testpackagelist)
    output = Vx_Core.f_list_from_list_async(
      Vx_Test.t_testpackagelist,
      testpackagelist,
      Vx_Test.t_resolve_testpackage
    )
    return output
  }


  public protocol Func_resolve_testresult : Vx_Core.Func_any_from_any_async, AnyObject {
    func vx_resolve_testresult(
      _ testresult : any Vx_Test.Type_testresult
    ) -> Vx_Core.Future
  }

  public class Class_resolve_testresult : Vx_Core.Class_base, Func_resolve_testresult {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testresult = Vx_Test.Class_resolve_testresult()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_resolve_testresult = Vx_Test.Class_resolve_testresult()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "resolve-testresult", // name
        0, // idx
        true, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_resolve_testresult
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_resolve_testresult
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_async.IFn) -> Vx_Core.Func_any_from_any_async {
      return Vx_Core.e_any_from_any_async
    }

    public func vx_any_from_any_async<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ value : any Vx_Core.Type_any
    ) -> Vx_Core.Future {
      let inputval : any Vx_Test.Type_testresult = Vx_Core.f_any_from_any(
        Vx_Test.t_testresult,
        value
      )
      let future : Vx_Core.Future = Vx_Test.f_resolve_testresult(inputval)
      let output : Vx_Core.Future = Vx_Core.vx_async_from_async(generic_any_1, future)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Core.e_any)
      let testresult : any Vx_Test.Type_testresult = Vx_Core.f_any_from_any(
        Vx_Test.t_testresult,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      var future : Vx_Core.Future = Vx_Test.f_resolve_testresult(testresult)
      output = Vx_Core.vx_async_from_async(
        Vx_Core.t_any,
        future
      )
      return output
    }

    public func vx_resolve_testresult(
      _ testresult : any Vx_Test.Type_testresult
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Test.f_resolve_testresult(testresult)
      return output
    }

  }

  public static let e_resolve_testresult : any Vx_Test.Func_resolve_testresult = Vx_Test.Class_resolve_testresult()
  public static let t_resolve_testresult : any Vx_Test.Func_resolve_testresult = Vx_Test.Class_resolve_testresult()

  public static func f_resolve_testresult(
    _ testresult : any Vx_Test.Type_testresult
  ) -> Vx_Core.Future {
    var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Test.e_testresult)
    output = Vx_Core.f_let_async(
      Vx_Test.t_testresult,
      Vx_Core.t_any_from_func_async.vx_fn_new(
        {() in
          let fn_actual : any Vx_Core.Func_any_from_func_async = testresult.fn_actual()
          let expected : any Vx_Core.Type_any = testresult.expected()
        let future_actual : Vx_Core.Future = Vx_Core.f_resolve_async(
          Vx_Core.t_any,
          fn_actual
        )
        let output_1 : Vx_Core.Future = Vx_Core.vx_async_from_async_fn(
          Vx_Core.t_any,
          future_actual,
          {(actual_any) in
            let actual : any Vx_Core.Type_any = Vx_Core.vx_any_from_any(
              Vx_Core.t_any,
              actual_any
            )
            let output_6 : any Vx_Core.Type_any = Vx_Core.f_if_2(
              Vx_Test.t_testresult,
              Vx_Core.vx_new(
                Vx_Core.t_thenelselist,
                [
                  Vx_Core.f_then(
                    Vx_Core.t_boolean_from_func.vx_fn_new(
                      {() in
                        var output_2 : any Vx_Core.Type_any = Vx_Core.f_is_empty_1(fn_actual)
                          return output_2
                        }
                    ),
                    Vx_Core.t_any_from_func.vx_fn_new(
                      {() in
      let output_3 : any Vx_Core.Type_any = testresult
                          return output_3
                        }
                    )
                  ),
                  Vx_Core.f_else(
                    Vx_Core.t_any_from_func.vx_fn_new(
                      {() in
                        var output_4 : any Vx_Core.Type_any = Vx_Core.f_let(
                            Vx_Test.t_testresult,
                            Vx_Core.t_any_from_func.vx_fn_new(
                              {() in
                                let passfail : any Vx_Core.Type_boolean = Vx_Core.f_eq(expected, actual)
                                let output_5 : any Vx_Core.Type_any = Vx_Core.f_copy(
                                  Vx_Test.t_testresult,
                                  testresult,
                                  Vx_Core.vx_new(
                                    Vx_Core.t_anylist,
                                    [
                                      Vx_Core.vx_new_string(":passfail"),
                                      passfail,
                                      Vx_Core.vx_new_string(":actual"),
                                      actual
                                    ]
                                  )
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
              return output_6
            }
        )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_security_test : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_security_test() -> any Vx_Core.Type_security
  }

  public class Class_security_test : Vx_Core.Class_base, Func_security_test {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_security_test = Vx_Test.Class_security_test()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_security_test = Vx_Test.Class_security_test()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "security-test", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core",
          "security",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_security_test
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_security_test
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      output = Vx_Test.f_security_test()
      return output
    }

    public func vx_security_test() -> any Vx_Core.Type_security {
      let output : any Vx_Core.Type_security = Vx_Test.f_security_test()
      return output
    }

  }

  public static let e_security_test : any Vx_Test.Func_security_test = Vx_Test.Class_security_test()
  public static let t_security_test : any Vx_Test.Func_security_test = Vx_Test.Class_security_test()

  public static func f_security_test() -> any Vx_Core.Type_security {
    var output : any Vx_Core.Type_security = Vx_Core.e_security
    output = Vx_Core.f_new(
      Vx_Core.t_security,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        [
          Vx_Core.vx_new_string(":allowfuncs"),
          Vx_Core.f_new(
            Vx_Core.t_funclist,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Data_File.t_boolean_write_from_file_any,
                Vx_Data_File.t_boolean_write_from_file_string,
                Vx_Data_File.t_file_read_from_file,
                Vx_Data_File.t_string_read_from_file
              ]
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_test : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_test(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test : Vx_Core.Class_base, Func_test {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test = Vx_Test.Class_test()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test = Vx_Test.Class_test()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let expected : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      let actual : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(2)
        )
      )
      output = Vx_Test.f_test(context, expected, actual)
      return output
    }

    public func vx_test(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test(context, expected, actual)
      return output
    }

  }

  public static let e_test : any Vx_Test.Func_test = Vx_Test.Class_test()
  public static let t_test : any Vx_Test.Func_test = Vx_Test.Class_test()

  public static func f_test(
    _ context : any Vx_Core.Type_context,
    _ expected : any Vx_Core.Type_any,
    _ actual : any Vx_Core.Type_any
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":eq"),
            Vx_Core.vx_new_string(":passfail"),
            Vx_Core.f_eq(expected, actual),
            Vx_Core.vx_new_string(":expected"),
            expected,
            Vx_Core.vx_new_string(":actual"),
            actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_1 : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_test_1(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_1 : Vx_Core.Class_base, Func_test_1 {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_1 = Vx_Test.Class_test_1()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_1 = Vx_Test.Class_test_1()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test", // name
        1, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_1
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_1
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let expected : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      let fn_actual : any Vx_Core.Func_any_from_func_async = Vx_Core.f_any_from_any(
        Vx_Core.t_any_from_func_async,
        arglist.vx_any(
          Vx_Core.vx_new_int(2)
        )
      )
      output = Vx_Test.f_test_1(context, expected, fn_actual)
      return output
    }

    public func vx_test_1(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_1(context, expected, fn_actual)
      return output
    }

  }

  public static let e_test_1 : any Vx_Test.Func_test_1 = Vx_Test.Class_test_1()
  public static let t_test_1 : any Vx_Test.Func_test_1 = Vx_Test.Class_test_1()

  public static func f_test_1(
    _ context : any Vx_Core.Type_context,
    _ expected : any Vx_Core.Type_any,
    _ fn_actual : any Vx_Core.Func_any_from_func_async
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":eq"),
            Vx_Core.vx_new_string(":expected"),
            expected,
            Vx_Core.vx_new_string(":fn-actual"),
            fn_actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_false : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_test_false(
      _ context : any Vx_Core.Type_context,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_false : Vx_Core.Class_base, Func_test_false {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_false = Vx_Test.Class_test_false()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_false = Vx_Test.Class_test_false()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test-false", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_false
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_false
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
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Test.f_test_false(context, inputval)
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
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let actual : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Test.f_test_false(context, actual)
      return output
    }

    public func vx_test_false(
      _ context : any Vx_Core.Type_context,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_false(context, actual)
      return output
    }

  }

  public static let e_test_false : any Vx_Test.Func_test_false = Vx_Test.Class_test_false()
  public static let t_test_false : any Vx_Test.Func_test_false = Vx_Test.Class_test_false()

  public static func f_test_false(
    _ context : any Vx_Core.Type_context,
    _ actual : any Vx_Core.Type_any
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":false"),
            Vx_Core.vx_new_string(":passfail"),
            Vx_Core.f_eq(
              Vx_Core.vx_new_boolean(false),
              actual
            ),
            Vx_Core.vx_new_string(":expected"),
            Vx_Core.vx_new_boolean(false),
            Vx_Core.vx_new_string(":actual"),
            actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test-false",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_false_1 : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_test_false_1(
      _ context : any Vx_Core.Type_context,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_false_1 : Vx_Core.Class_base, Func_test_false_1 {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_false_1 = Vx_Test.Class_test_false_1()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_false_1 = Vx_Test.Class_test_false_1()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test-false", // name
        1, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_false_1
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_false_1
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
      let inputval : any Vx_Core.Func_any_from_func_async = value as! any Vx_Core.Func_any_from_func_async
      let outputval : any Vx_Core.Type_any = Vx_Test.f_test_false_1(context, inputval)
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
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let fn_actual : any Vx_Core.Func_any_from_func_async = Vx_Core.f_any_from_any(
        Vx_Core.t_any_from_func_async,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Test.f_test_false_1(context, fn_actual)
      return output
    }

    public func vx_test_false_1(
      _ context : any Vx_Core.Type_context,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_false_1(context, fn_actual)
      return output
    }

  }

  public static let e_test_false_1 : any Vx_Test.Func_test_false_1 = Vx_Test.Class_test_false_1()
  public static let t_test_false_1 : any Vx_Test.Func_test_false_1 = Vx_Test.Class_test_false_1()

  public static func f_test_false_1(
    _ context : any Vx_Core.Type_context,
    _ fn_actual : any Vx_Core.Func_any_from_func_async
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":false"),
            Vx_Core.vx_new_string(":expected"),
            Vx_Core.vx_new_boolean(false),
            Vx_Core.vx_new_string(":fn-actual"),
            fn_actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test-false",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_gt : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_test_gt(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_gt : Vx_Core.Class_base, Func_test_gt {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_gt = Vx_Test.Class_test_gt()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_gt = Vx_Test.Class_test_gt()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test-gt", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_gt
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_gt
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let expected : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      let actual : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(2)
        )
      )
      output = Vx_Test.f_test_gt(context, expected, actual)
      return output
    }

    public func vx_test_gt(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_gt(context, expected, actual)
      return output
    }

  }

  public static let e_test_gt : any Vx_Test.Func_test_gt = Vx_Test.Class_test_gt()
  public static let t_test_gt : any Vx_Test.Func_test_gt = Vx_Test.Class_test_gt()

  public static func f_test_gt(
    _ context : any Vx_Core.Type_context,
    _ expected : any Vx_Core.Type_any,
    _ actual : any Vx_Core.Type_any
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":gt"),
            Vx_Core.vx_new_string(":passfail"),
            Vx_Core.f_gt(expected, actual),
            Vx_Core.vx_new_string(":expected"),
            expected,
            Vx_Core.vx_new_string(":actual"),
            actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test-gt",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_gt_1 : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_test_gt_1(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_gt_1 : Vx_Core.Class_base, Func_test_gt_1 {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_gt_1 = Vx_Test.Class_test_gt_1()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_gt_1 = Vx_Test.Class_test_gt_1()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test-gt", // name
        1, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_gt_1
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_gt_1
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let expected : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      let fn_actual : any Vx_Core.Func_any_from_func_async = Vx_Core.f_any_from_any(
        Vx_Core.t_any_from_func_async,
        arglist.vx_any(
          Vx_Core.vx_new_int(2)
        )
      )
      output = Vx_Test.f_test_gt_1(context, expected, fn_actual)
      return output
    }

    public func vx_test_gt_1(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_gt_1(context, expected, fn_actual)
      return output
    }

  }

  public static let e_test_gt_1 : any Vx_Test.Func_test_gt_1 = Vx_Test.Class_test_gt_1()
  public static let t_test_gt_1 : any Vx_Test.Func_test_gt_1 = Vx_Test.Class_test_gt_1()

  public static func f_test_gt_1(
    _ context : any Vx_Core.Type_context,
    _ expected : any Vx_Core.Type_any,
    _ fn_actual : any Vx_Core.Func_any_from_func_async
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":gt"),
            Vx_Core.vx_new_string(":expected"),
            expected,
            Vx_Core.vx_new_string(":fn-actual"),
            fn_actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test-gt",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_ne : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_test_ne(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_ne : Vx_Core.Class_base, Func_test_ne {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_ne = Vx_Test.Class_test_ne()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_ne = Vx_Test.Class_test_ne()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test-ne", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_ne
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_ne
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let expected : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      let actual : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(2)
        )
      )
      output = Vx_Test.f_test_ne(context, expected, actual)
      return output
    }

    public func vx_test_ne(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_ne(context, expected, actual)
      return output
    }

  }

  public static let e_test_ne : any Vx_Test.Func_test_ne = Vx_Test.Class_test_ne()
  public static let t_test_ne : any Vx_Test.Func_test_ne = Vx_Test.Class_test_ne()

  public static func f_test_ne(
    _ context : any Vx_Core.Type_context,
    _ expected : any Vx_Core.Type_any,
    _ actual : any Vx_Core.Type_any
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":ne"),
            Vx_Core.vx_new_string(":passfail"),
            Vx_Core.f_ne(expected, actual),
            Vx_Core.vx_new_string(":expected"),
            expected,
            Vx_Core.vx_new_string(":actual"),
            actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test-ne",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_ne_1 : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_test_ne_1(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_ne_1 : Vx_Core.Class_base, Func_test_ne_1 {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_ne_1 = Vx_Test.Class_test_ne_1()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_ne_1 = Vx_Test.Class_test_ne_1()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test-ne", // name
        1, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_ne_1
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_ne_1
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let expected : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      let fn_actual : any Vx_Core.Func_any_from_func_async = Vx_Core.f_any_from_any(
        Vx_Core.t_any_from_func_async,
        arglist.vx_any(
          Vx_Core.vx_new_int(2)
        )
      )
      output = Vx_Test.f_test_ne_1(context, expected, fn_actual)
      return output
    }

    public func vx_test_ne_1(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_ne_1(context, expected, fn_actual)
      return output
    }

  }

  public static let e_test_ne_1 : any Vx_Test.Func_test_ne_1 = Vx_Test.Class_test_ne_1()
  public static let t_test_ne_1 : any Vx_Test.Func_test_ne_1 = Vx_Test.Class_test_ne_1()

  public static func f_test_ne_1(
    _ context : any Vx_Core.Type_context,
    _ expected : any Vx_Core.Type_any,
    _ fn_actual : any Vx_Core.Func_any_from_func_async
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":ne"),
            Vx_Core.vx_new_string(":expected"),
            expected,
            Vx_Core.vx_new_string(":fn-actual"),
            fn_actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test-ne",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_string : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_test_string(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_string : Vx_Core.Class_base, Func_test_string {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_string = Vx_Test.Class_test_string()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_string = Vx_Test.Class_test_string()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test-string", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_string
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_string
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let expected : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      let actual : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(2)
        )
      )
      output = Vx_Test.f_test_string(context, expected, actual)
      return output
    }

    public func vx_test_string(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_string(context, expected, actual)
      return output
    }

  }

  public static let e_test_string : any Vx_Test.Func_test_string = Vx_Test.Class_test_string()
  public static let t_test_string : any Vx_Test.Func_test_string = Vx_Test.Class_test_string()

  public static func f_test_string(
    _ context : any Vx_Core.Type_context,
    _ expected : any Vx_Core.Type_any,
    _ actual : any Vx_Core.Type_any
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":passfail"),
            Vx_Core.f_eq(
              Vx_Core.f_string_from_any(expected),
              Vx_Core.f_string_from_any(actual)
            ),
            Vx_Core.vx_new_string(":expected"),
            expected,
            Vx_Core.vx_new_string(":actual"),
            actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test-string",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_string_1 : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_test_string_1(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_string_1 : Vx_Core.Class_base, Func_test_string_1 {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_string_1 = Vx_Test.Class_test_string_1()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_string_1 = Vx_Test.Class_test_string_1()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test-string", // name
        1, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_string_1
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_string_1
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let expected : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      let fn_actual : any Vx_Core.Func_any_from_func_async = Vx_Core.f_any_from_any(
        Vx_Core.t_any_from_func_async,
        arglist.vx_any(
          Vx_Core.vx_new_int(2)
        )
      )
      output = Vx_Test.f_test_string_1(context, expected, fn_actual)
      return output
    }

    public func vx_test_string_1(
      _ context : any Vx_Core.Type_context,
      _ expected : any Vx_Core.Type_any,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_string_1(context, expected, fn_actual)
      return output
    }

  }

  public static let e_test_string_1 : any Vx_Test.Func_test_string_1 = Vx_Test.Class_test_string_1()
  public static let t_test_string_1 : any Vx_Test.Func_test_string_1 = Vx_Test.Class_test_string_1()

  public static func f_test_string_1(
    _ context : any Vx_Core.Type_context,
    _ expected : any Vx_Core.Type_any,
    _ fn_actual : any Vx_Core.Func_any_from_func_async
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":string"),
            Vx_Core.vx_new_string(":expected"),
            expected,
            Vx_Core.vx_new_string(":fn-actual"),
            fn_actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test-string",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_true : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_test_true(
      _ context : any Vx_Core.Type_context,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_true : Vx_Core.Class_base, Func_test_true {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_true = Vx_Test.Class_test_true()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_true = Vx_Test.Class_test_true()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test-true", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_true
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_true
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
      let inputval : any Vx_Core.Type_any = value as! any Vx_Core.Type_any
      let outputval : any Vx_Core.Type_any = Vx_Test.f_test_true(context, inputval)
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
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let actual : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Test.f_test_true(context, actual)
      return output
    }

    public func vx_test_true(
      _ context : any Vx_Core.Type_context,
      _ actual : any Vx_Core.Type_any
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_true(context, actual)
      return output
    }

  }

  public static let e_test_true : any Vx_Test.Func_test_true = Vx_Test.Class_test_true()
  public static let t_test_true : any Vx_Test.Func_test_true = Vx_Test.Class_test_true()

  public static func f_test_true(
    _ context : any Vx_Core.Type_context,
    _ actual : any Vx_Core.Type_any
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":true"),
            Vx_Core.vx_new_string(":passfail"),
            Vx_Core.f_eq(
              Vx_Core.vx_new_boolean(true),
              actual
            ),
            Vx_Core.vx_new_string(":expected"),
            Vx_Core.vx_new_boolean(true),
            Vx_Core.vx_new_string(":actual"),
            actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test-true",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_test_true_1 : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_test_true_1(
      _ context : any Vx_Core.Type_context,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult
  }

  public class Class_test_true_1 : Vx_Core.Class_base, Func_test_true_1 {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_true_1 = Vx_Test.Class_test_true_1()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_test_true_1 = Vx_Test.Class_test_true_1()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "test-true", // name
        1, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/test",
          "testresult",
          ":struct",
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
      let output : any Vx_Core.Type_any = Vx_Test.e_test_true_1
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_test_true_1
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
      let inputval : any Vx_Core.Func_any_from_func_async = value as! any Vx_Core.Func_any_from_func_async
      let outputval : any Vx_Core.Type_any = Vx_Test.f_test_true_1(context, inputval)
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
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(
        Vx_Core.t_context,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let fn_actual : any Vx_Core.Func_any_from_func_async = Vx_Core.f_any_from_any(
        Vx_Core.t_any_from_func_async,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Test.f_test_true_1(context, fn_actual)
      return output
    }

    public func vx_test_true_1(
      _ context : any Vx_Core.Type_context,
      _ fn_actual : any Vx_Core.Func_any_from_func_async
    ) -> any Vx_Test.Type_testresult {
      let output : any Vx_Test.Type_testresult = Vx_Test.f_test_true_1(context, fn_actual)
      return output
    }

  }

  public static let e_test_true_1 : any Vx_Test.Func_test_true_1 = Vx_Test.Class_test_true_1()
  public static let t_test_true_1 : any Vx_Test.Func_test_true_1 = Vx_Test.Class_test_true_1()

  public static func f_test_true_1(
    _ context : any Vx_Core.Type_context,
    _ fn_actual : any Vx_Core.Func_any_from_func_async
  ) -> any Vx_Test.Type_testresult {
    var output : any Vx_Test.Type_testresult = Vx_Test.e_testresult
    do {
      output = Vx_Core.f_new(
        Vx_Test.t_testresult,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(":code"),
            Vx_Core.vx_new_string(":true"),
            Vx_Core.vx_new_string(":expected"),
            Vx_Core.vx_new_boolean(true),
            Vx_Core.vx_new_string(":fn-actual"),
            fn_actual
          ]
        )
      )
    } catch {
      var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_exception(
        "vx/test/test-true",
        error
      )
      output = Vx_Core.vx_copy(
        Vx_Test.t_testresult,
        output,
        [
          msg
        ]
      )
    }
    return output
  }


  public protocol Func_tr_from_testdescribe_casename : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_tr_from_testdescribe_casename(
      _ testdescribe : any Vx_Test.Type_testdescribe,
      _ casename : any Vx_Core.Type_string
    ) -> any Vx_Web_Html.Type_tr
  }

  public class Class_tr_from_testdescribe_casename : Vx_Core.Class_base, Func_tr_from_testdescribe_casename {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_tr_from_testdescribe_casename = Vx_Test.Class_tr_from_testdescribe_casename()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_tr_from_testdescribe_casename = Vx_Test.Class_tr_from_testdescribe_casename()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "tr<-testdescribe-casename", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "tr",
          ":struct",
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_node
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
      let output : any Vx_Core.Type_any = Vx_Test.e_tr_from_testdescribe_casename
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_tr_from_testdescribe_casename
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let testdescribe : any Vx_Test.Type_testdescribe = Vx_Core.f_any_from_any(
        Vx_Test.t_testdescribe,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let casename : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Test.f_tr_from_testdescribe_casename(testdescribe, casename)
      return output
    }

    public func vx_tr_from_testdescribe_casename(
      _ testdescribe : any Vx_Test.Type_testdescribe,
      _ casename : any Vx_Core.Type_string
    ) -> any Vx_Web_Html.Type_tr {
      let output : any Vx_Web_Html.Type_tr = Vx_Test.f_tr_from_testdescribe_casename(testdescribe, casename)
      return output
    }

  }

  public static let e_tr_from_testdescribe_casename : any Vx_Test.Func_tr_from_testdescribe_casename = Vx_Test.Class_tr_from_testdescribe_casename()
  public static let t_tr_from_testdescribe_casename : any Vx_Test.Func_tr_from_testdescribe_casename = Vx_Test.Class_tr_from_testdescribe_casename()

  public static func f_tr_from_testdescribe_casename(
    _ testdescribe : any Vx_Test.Type_testdescribe,
    _ casename : any Vx_Core.Type_string
  ) -> any Vx_Web_Html.Type_tr {
    var output : any Vx_Web_Html.Type_tr = Vx_Web_Html.e_tr
    output = Vx_Core.f_let(
      Vx_Web_Html.t_tr,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let describename : any Vx_Core.Type_string = testdescribe.describename()
          let result : any Vx_Test.Type_testresult = testdescribe.testresult()
          let passfail : any Vx_Core.Type_boolean = result.passfail()
          let expected : any Vx_Core.Type_string = Vx_Core.f_string_from_any(result.expected())
          let actual : any Vx_Core.Type_string = Vx_Core.f_string_from_any(result.actual())
          let prestyle : any Vx_Web_Html.Type_style = Vx_Web_Html.f_style_from_stylesheet_name(
            Vx_Test.c_stylesheet_test,
            Vx_Core.vx_new_string(".preformatted")
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Web_Html.t_tr,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.f_new(
                  Vx_Web_Html.t_td,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Test.f_p_from_passfail(passfail)
                    ]
                  )
                ),
                Vx_Core.f_new(
                  Vx_Web_Html.t_td,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            prestyle,
                            Vx_Core.vx_new_string(":text"),
                            casename
                          ]
                        )
                      )
                    ]
                  )
                ),
                Vx_Core.f_new(
                  Vx_Web_Html.t_td,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            prestyle,
                            Vx_Core.vx_new_string(":text"),
                            describename
                          ]
                        )
                      )
                    ]
                  )
                ),
                Vx_Core.f_new(
                  Vx_Web_Html.t_td,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            prestyle,
                            Vx_Core.vx_new_string(":text"),
                            expected
                          ]
                        )
                      )
                    ]
                  )
                ),
                Vx_Core.f_new(
                  Vx_Web_Html.t_td,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      Vx_Core.f_new(
                        Vx_Web_Html.t_p,
                        Vx_Core.vx_new(
                          Vx_Core.t_anylist,
                          [
                            Vx_Core.vx_new_string(":style"),
                            prestyle,
                            Vx_Core.vx_new_string(":text"),
                            actual
                          ]
                        )
                      )
                    ]
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


  public protocol Func_trlist_from_testcase : Vx_Core.Func_any_from_any, AnyObject {
    func vx_trlist_from_testcase(
      _ testcase : any Vx_Test.Type_testcase
    ) -> any Vx_Web_Html.Type_trlist
  }

  public class Class_trlist_from_testcase : Vx_Core.Class_base, Func_trlist_from_testcase {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_trlist_from_testcase = Vx_Test.Class_trlist_from_testcase()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_trlist_from_testcase = Vx_Test.Class_trlist_from_testcase()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "trlist<-testcase", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "trlist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_tr
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
      let output : any Vx_Core.Type_any = Vx_Test.e_trlist_from_testcase
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_trlist_from_testcase
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
      let inputval : any Vx_Test.Type_testcase = value as! any Vx_Test.Type_testcase
      let outputval : any Vx_Core.Type_any = Vx_Test.f_trlist_from_testcase(inputval)
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
      let testcase : any Vx_Test.Type_testcase = Vx_Core.f_any_from_any(
        Vx_Test.t_testcase,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Test.f_trlist_from_testcase(testcase)
      return output
    }

    public func vx_trlist_from_testcase(
      _ testcase : any Vx_Test.Type_testcase
    ) -> any Vx_Web_Html.Type_trlist {
      let output : any Vx_Web_Html.Type_trlist = Vx_Test.f_trlist_from_testcase(testcase)
      return output
    }

  }

  public static let e_trlist_from_testcase : any Vx_Test.Func_trlist_from_testcase = Vx_Test.Class_trlist_from_testcase()
  public static let t_trlist_from_testcase : any Vx_Test.Func_trlist_from_testcase = Vx_Test.Class_trlist_from_testcase()

  public static func f_trlist_from_testcase(
    _ testcase : any Vx_Test.Type_testcase
  ) -> any Vx_Web_Html.Type_trlist {
    var output : any Vx_Web_Html.Type_trlist = Vx_Web_Html.e_trlist
    output = Vx_Core.f_let(
      Vx_Web_Html.t_trlist,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let describelist : any Vx_Test.Type_testdescribelist = testcase.describelist()
          let casename : any Vx_Core.Type_string = testcase.casename()
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_list_from_list_1(
            Vx_Web_Html.t_trlist,
            describelist,
            Vx_Core.t_any_from_any.vx_fn_new(
              {(testdescribe_any) in
                let testdescribe : any Vx_Test.Type_testdescribe = Vx_Core.f_any_from_any(
                  Vx_Test.t_testdescribe,
                  testdescribe_any
                )
                var output_2 : any Vx_Core.Type_any = Vx_Test.f_tr_from_testdescribe_casename(
                  testdescribe,
                  casename
                )
                return output_2
              }
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_trlist_from_testcaselist : Vx_Core.Func_any_from_any, AnyObject {
    func vx_trlist_from_testcaselist(
      _ testcaselist : any Vx_Test.Type_testcaselist
    ) -> any Vx_Web_Html.Type_trlist
  }

  public class Class_trlist_from_testcaselist : Vx_Core.Class_base, Func_trlist_from_testcaselist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_trlist_from_testcaselist = Vx_Test.Class_trlist_from_testcaselist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Test.Class_trlist_from_testcaselist = Vx_Test.Class_trlist_from_testcaselist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/test", // pkgname
        "trlist<-testcaselist", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "trlist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_tr
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
      let output : any Vx_Core.Type_any = Vx_Test.e_trlist_from_testcaselist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Test.t_trlist_from_testcaselist
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
      let inputval : any Vx_Test.Type_testcaselist = value as! any Vx_Test.Type_testcaselist
      let outputval : any Vx_Core.Type_any = Vx_Test.f_trlist_from_testcaselist(inputval)
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
      let testcaselist : any Vx_Test.Type_testcaselist = Vx_Core.f_any_from_any(
        Vx_Test.t_testcaselist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Test.f_trlist_from_testcaselist(testcaselist)
      return output
    }

    public func vx_trlist_from_testcaselist(
      _ testcaselist : any Vx_Test.Type_testcaselist
    ) -> any Vx_Web_Html.Type_trlist {
      let output : any Vx_Web_Html.Type_trlist = Vx_Test.f_trlist_from_testcaselist(testcaselist)
      return output
    }

  }

  public static let e_trlist_from_testcaselist : any Vx_Test.Func_trlist_from_testcaselist = Vx_Test.Class_trlist_from_testcaselist()
  public static let t_trlist_from_testcaselist : any Vx_Test.Func_trlist_from_testcaselist = Vx_Test.Class_trlist_from_testcaselist()

  public static func f_trlist_from_testcaselist(
    _ testcaselist : any Vx_Test.Type_testcaselist
  ) -> any Vx_Web_Html.Type_trlist {
    var output : any Vx_Web_Html.Type_trlist = Vx_Web_Html.e_trlist
    output = Vx_Collection.f_list_from_list_join_1(
      Vx_Web_Html.t_trlist,
      testcaselist,
      Vx_Test.t_trlist_from_testcase
    )
    return output
  }

  private static var initialized : Bool = false

  public static func vx_initialize() {
    guard !initialized else { return }
    initialized = true
    Const_stylesheet_test.const_new(c_stylesheet_test)
    var maptype : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapconst : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapfunc : Vx_Core.MapMutable<any Vx_Core.Type_func> = Vx_Core.MapMutable<any Vx_Core.Type_func>()
    maptype.put("testcase", Vx_Test.t_testcase)
    maptype.put("testcaselist", Vx_Test.t_testcaselist)
    maptype.put("testcoveragedetail", Vx_Test.t_testcoveragedetail)
    maptype.put("testcoveragenums", Vx_Test.t_testcoveragenums)
    maptype.put("testcoveragesummary", Vx_Test.t_testcoveragesummary)
    maptype.put("testdescribe", Vx_Test.t_testdescribe)
    maptype.put("testdescribelist", Vx_Test.t_testdescribelist)
    maptype.put("testpackage", Vx_Test.t_testpackage)
    maptype.put("testpackagelist", Vx_Test.t_testpackagelist)
    maptype.put("testresult", Vx_Test.t_testresult)
    maptype.put("testresultlist", Vx_Test.t_testresultlist)
    mapconst.put("stylesheet-test", Vx_Test.c_stylesheet_test)
    mapfunc.put("context-test", Vx_Test.t_context_test)
    mapfunc.put("div<-testcaselist", Vx_Test.t_div_from_testcaselist)
    mapfunc.put("div<-testpackage", Vx_Test.t_div_from_testpackage)
    mapfunc.put("div<-testpackagelist", Vx_Test.t_div_from_testpackagelist)
    mapfunc.put("divchildlist<-testpackagelist", Vx_Test.t_divchildlist_from_testpackagelist)
    mapfunc.put("file-test", Vx_Test.t_file_test)
    mapfunc.put("file-testhtml", Vx_Test.t_file_testhtml)
    mapfunc.put("file-testnode", Vx_Test.t_file_testnode)
    mapfunc.put("html<-divtest", Vx_Test.t_html_from_divtest)
    mapfunc.put("p<-passfail", Vx_Test.t_p_from_passfail)
    mapfunc.put("p<-testcoveragenums", Vx_Test.t_p_from_testcoveragenums)
    mapfunc.put("resolve-testcase", Vx_Test.t_resolve_testcase)
    mapfunc.put("resolve-testcaselist", Vx_Test.t_resolve_testcaselist)
    mapfunc.put("resolve-testdescribe", Vx_Test.t_resolve_testdescribe)
    mapfunc.put("resolve-testdescribelist", Vx_Test.t_resolve_testdescribelist)
    mapfunc.put("resolve-testpackage", Vx_Test.t_resolve_testpackage)
    mapfunc.put("resolve-testpackagelist", Vx_Test.t_resolve_testpackagelist)
    mapfunc.put("resolve-testresult", Vx_Test.t_resolve_testresult)
    mapfunc.put("security-test", Vx_Test.t_security_test)
    mapfunc.put("test", Vx_Test.t_test)
    mapfunc.put("test_1", Vx_Test.t_test_1)
    mapfunc.put("test-false", Vx_Test.t_test_false)
    mapfunc.put("test-false_1", Vx_Test.t_test_false_1)
    mapfunc.put("test-gt", Vx_Test.t_test_gt)
    mapfunc.put("test-gt_1", Vx_Test.t_test_gt_1)
    mapfunc.put("test-ne", Vx_Test.t_test_ne)
    mapfunc.put("test-ne_1", Vx_Test.t_test_ne_1)
    mapfunc.put("test-string", Vx_Test.t_test_string)
    mapfunc.put("test-string_1", Vx_Test.t_test_string_1)
    mapfunc.put("test-true", Vx_Test.t_test_true)
    mapfunc.put("test-true_1", Vx_Test.t_test_true_1)
    mapfunc.put("tr<-testdescribe-casename", Vx_Test.t_tr_from_testdescribe_casename)
    mapfunc.put("trlist<-testcase", Vx_Test.t_trlist_from_testcase)
    mapfunc.put("trlist<-testcaselist", Vx_Test.t_trlist_from_testcaselist)
    Vx_Core.vx_global_package_set(
      "vx/test",
      Vx_Core.vx_mapimmutable(maptype),
      Vx_Core.vx_mapimmutable(mapconst),
      Vx_Core.vx_mapimmutable(mapfunc)
    )
  }

}
