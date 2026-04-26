
import Foundation

public enum Vx_Web_Html {

  public static func vx_htmlstring_from_string(
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var str : String = text.vx_string()
    str = Vx_Core.vx_string_from_string_find_replace(str, "&", "&amp;")
    str = Vx_Core.vx_string_from_string_find_replace(str, "'", "\\'")
    str = Vx_Core.vx_string_from_string_find_replace(str, ">", "&gt;")
    str = Vx_Core.vx_string_from_string_find_replace(str, "<", "&lt;")
    return Vx_Core.vx_new_string(str)
  }


  public protocol Type_body : Vx_Core.Type_struct, AnyObject {
    func nodes() -> any Vx_Web_Html.Type_divchildlist
  }

  public class Class_body : Vx_Core.Class_base, Type_body {

    public var vx_p_nodes : (any Vx_Web_Html.Type_divchildlist)? = nil

    public func nodes() -> any Vx_Web_Html.Type_divchildlist {
      var output : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
      if let testnull = vx_p_nodes {
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
      } else if skey == ":nodes" {
        output = self.nodes()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":nodes", self.nodes())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_body = Vx_Core.vx_copy(
        Vx_Web_Html.t_body,
        Vx_Web_Html.e_body,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_body = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_body = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_nodes : any Vx_Web_Html.Type_divchildlist = value.nodes()
      var validkeys : [String] = []
      validkeys.append(":nodes")
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
          } else if valsub is any Vx_Web_Html.Type_divchildlist {
            ischanged = true
            vx_p_nodes = valsub as! any Vx_Web_Html.Type_divchildlist
          } else if valsub is any Vx_Web_Html.Type_divchild {
            var valdefault : any Vx_Web_Html.Type_divchild = valsub as! any Vx_Web_Html.Type_divchild
            var vallist : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
            vallist = vx_p_nodes
            if vallist == nil {
              vallist = Vx_Core.vx_new(
                Vx_Web_Html.t_divchildlist,
                [
                  valdefault
                ]
              )
            } else {
              vallist = Vx_Core.vx_copy(
            Vx_Web_Html.t_divchildlist,
            vallist,
            [
              valdefault
            ]
          )
            }
            ischanged = true
            vx_p_nodes = vallist
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
              "vx/web/html/body",
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
                "vx/web/html/body",
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
          } else if key == ":nodes" {
            if Vx_Core.vx_issame(valsub, vx_p_nodes) {
            } else if let valnodes = valsub as? any Vx_Web_Html.Type_divchildlist {
              ischanged = true
              vx_p_nodes = valnodes
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("nodes"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/body",
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
              "vx/web/html/body",
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
        var work : Vx_Web_Html.Class_body = Vx_Web_Html.Class_body()
        work.vx_p_nodes = vx_p_nodes
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_body
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_body
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "body",
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

  public static let e_body : any Vx_Web_Html.Type_body = Vx_Web_Html.Class_body()
  public static let t_body : any Vx_Web_Html.Type_body = Vx_Web_Html.Class_body()


  public protocol Type_details : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_divchild, AnyObject {
    func summary() -> any Vx_Web_Html.Type_divchildlist
    func nodes() -> any Vx_Web_Html.Type_divchildlist
  }

  public class Class_details : Vx_Core.Class_base, Type_details {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
        output = testnull
      }
      return output
    }

    public var vx_p_summary : (any Vx_Web_Html.Type_divchildlist)? = nil

    public func summary() -> any Vx_Web_Html.Type_divchildlist {
      var output : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
      if let testnull = vx_p_summary {
        output = testnull
      }
      return output
    }

    public var vx_p_nodes : (any Vx_Web_Html.Type_divchildlist)? = nil

    public func nodes() -> any Vx_Web_Html.Type_divchildlist {
      var output : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
      if let testnull = vx_p_nodes {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":summary" {
        output = self.summary()
      } else if skey == ":nodes" {
        output = self.nodes()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":summary", self.summary())
      map.put(":nodes", self.nodes())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_details = Vx_Core.vx_copy(
        Vx_Web_Html.t_details,
        Vx_Web_Html.e_details,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_details = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_details = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_summary : any Vx_Web_Html.Type_divchildlist = value.summary()
      var vx_p_nodes : any Vx_Web_Html.Type_divchildlist = value.nodes()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":summary")
      validkeys.append(":nodes")
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
              "vx/web/html/details",
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
                "vx/web/html/details",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/details",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/details",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/details",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/details",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/details",
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
          } else if key == ":summary" {
            if Vx_Core.vx_issame(valsub, vx_p_summary) {
            } else if let valsummary = valsub as? any Vx_Web_Html.Type_divchildlist {
              ischanged = true
              vx_p_summary = valsummary
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("summary"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/details",
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
          } else if key == ":nodes" {
            if Vx_Core.vx_issame(valsub, vx_p_nodes) {
            } else if let valnodes = valsub as? any Vx_Web_Html.Type_divchildlist {
              ischanged = true
              vx_p_nodes = valnodes
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("nodes"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/details",
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
              "vx/web/html/details",
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
        var work : Vx_Web_Html.Class_details = Vx_Web_Html.Class_details()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_summary = vx_p_summary
        work.vx_p_nodes = vx_p_nodes
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_details
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_details
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "details",
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
      )
      return output
    }

  }

  public static let e_details : any Vx_Web_Html.Type_details = Vx_Web_Html.Class_details()
  public static let t_details : any Vx_Web_Html.Type_details = Vx_Web_Html.Class_details()


  public protocol Type_div : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_divchild, AnyObject {
    func nodes() -> any Vx_Web_Html.Type_divchildlist
  }

  public class Class_div : Vx_Core.Class_base, Type_div {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
        output = testnull
      }
      return output
    }

    public var vx_p_nodes : (any Vx_Web_Html.Type_divchildlist)? = nil

    public func nodes() -> any Vx_Web_Html.Type_divchildlist {
      var output : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
      if let testnull = vx_p_nodes {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":nodes" {
        output = self.nodes()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":nodes", self.nodes())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_div = Vx_Core.vx_copy(
        Vx_Web_Html.t_div,
        Vx_Web_Html.e_div,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_div = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_div = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_nodes : any Vx_Web_Html.Type_divchildlist = value.nodes()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":nodes")
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
          } else if valsub is any Vx_Web_Html.Type_divchildlist {
            ischanged = true
            vx_p_nodes = valsub as! any Vx_Web_Html.Type_divchildlist
          } else if valsub is any Vx_Web_Html.Type_divchild {
            var valdefault : any Vx_Web_Html.Type_divchild = valsub as! any Vx_Web_Html.Type_divchild
            var vallist : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
            vallist = vx_p_nodes
            if vallist == nil {
              vallist = Vx_Core.vx_new(
                Vx_Web_Html.t_divchildlist,
                [
                  valdefault
                ]
              )
            } else {
              vallist = Vx_Core.vx_copy(
            Vx_Web_Html.t_divchildlist,
            vallist,
            [
              valdefault
            ]
          )
            }
            ischanged = true
            vx_p_nodes = vallist
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
              "vx/web/html/div",
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
                "vx/web/html/div",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/div",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/div",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/div",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/div",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/div",
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
          } else if key == ":nodes" {
            if Vx_Core.vx_issame(valsub, vx_p_nodes) {
            } else if let valnodes = valsub as? any Vx_Web_Html.Type_divchildlist {
              ischanged = true
              vx_p_nodes = valnodes
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("nodes"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/div",
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
              "vx/web/html/div",
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
        var work : Vx_Web_Html.Class_div = Vx_Web_Html.Class_div()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_nodes = vx_p_nodes
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_div
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_div
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
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
      )
      return output
    }

  }

  public static let e_div : any Vx_Web_Html.Type_div = Vx_Web_Html.Class_div()
  public static let t_div : any Vx_Web_Html.Type_div = Vx_Web_Html.Class_div()


  public protocol Type_divchild : Vx_Core.Type_struct, AnyObject {
  }

  public class Class_divchild : Vx_Core.Class_base, Type_divchild {

    public func vx_any(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_divchild = Vx_Core.vx_copy(
        Vx_Web_Html.t_divchild,
        Vx_Web_Html.e_divchild,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_divchild = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_divchild = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Web_Html.Class_divchild = Vx_Web_Html.Class_divchild()
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_divchild
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_divchild
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "divchild",
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

  public static let e_divchild : any Vx_Web_Html.Type_divchild = Vx_Web_Html.Class_divchild()
  public static let t_divchild : any Vx_Web_Html.Type_divchild = Vx_Web_Html.Class_divchild()


  public protocol Type_divchildlist : Vx_Core.Type_list, AnyObject {
    func vx_listdivchild() -> [any Vx_Web_Html.Type_divchild]
    func vx_divchild(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_divchild
  }

  public class Class_divchildlist : Vx_Core.Class_base, Type_divchildlist {

    public var vx_p_list : [any Vx_Web_Html.Type_divchild] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_divchild(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_divchild {
      var output : any Vx_Web_Html.Type_divchild = Vx_Web_Html.e_divchild
      var list : Vx_Web_Html.Class_divchildlist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Web_Html.Type_divchild] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listdivchild() -> [any Vx_Web_Html.Type_divchild] {
      var output : [any Vx_Web_Html.Type_divchild] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_divchild = self.vx_divchild(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_divchildlist = Vx_Core.vx_copy(
        Vx_Web_Html.t_divchildlist,
        Vx_Web_Html.e_divchildlist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_divchildlist = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_divchildlist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Web_Html.Type_divchild] = Array(value.vx_listdivchild())
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
        } else if let multi = valsub as? any Vx_Web_Html.Type_divchildlist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listdivchild())
        } else if let allowsub = valsub as? any Vx_Web_Html.Type_divchild {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Web_Html.Type_divchild {
          var subitem : any Vx_Web_Html.Type_divchild = valsub as! any Vx_Web_Html.Type_divchild
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Web_Html.Type_divchild {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/web/html/divchildlist",
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
            "vx/web/html/divchildlist",
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
        var work : Vx_Web_Html.Class_divchildlist = Vx_Web_Html.Class_divchildlist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_divchildlist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_divchildlist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
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
      )
      return output
    }

  }

  public static let e_divchildlist : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.Class_divchildlist()
  public static let t_divchildlist : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.Class_divchildlist()


  public protocol Type_divlist : Vx_Core.Type_list, AnyObject {
    func vx_listdiv() -> [any Vx_Web_Html.Type_div]
    func vx_div(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_div
  }

  public class Class_divlist : Vx_Core.Class_base, Type_divlist {

    public var vx_p_list : [any Vx_Web_Html.Type_div] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_div(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_div {
      var output : any Vx_Web_Html.Type_div = Vx_Web_Html.e_div
      var list : Vx_Web_Html.Class_divlist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Web_Html.Type_div] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listdiv() -> [any Vx_Web_Html.Type_div] {
      var output : [any Vx_Web_Html.Type_div] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_div = self.vx_div(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_divlist = Vx_Core.vx_copy(
        Vx_Web_Html.t_divlist,
        Vx_Web_Html.e_divlist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_divlist = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_divlist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Web_Html.Type_div] = Array(value.vx_listdiv())
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
        } else if let multi = valsub as? any Vx_Web_Html.Type_divlist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listdiv())
        } else if let allowsub = valsub as? any Vx_Web_Html.Type_div {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Web_Html.Type_div {
          var subitem : any Vx_Web_Html.Type_div = valsub as! any Vx_Web_Html.Type_div
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Web_Html.Type_div {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/web/html/divlist",
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
            "vx/web/html/divlist",
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
        var work : Vx_Web_Html.Class_divlist = Vx_Web_Html.Class_divlist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_divlist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_divlist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "divlist",
        ":list",
        Vx_Core.e_typelist,
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Web_Html.t_div
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

  public static let e_divlist : any Vx_Web_Html.Type_divlist = Vx_Web_Html.Class_divlist()
  public static let t_divlist : any Vx_Web_Html.Type_divlist = Vx_Web_Html.Class_divlist()


  public protocol Type_footer : Vx_Core.Type_struct, AnyObject {
    func nodes() -> any Vx_Web_Html.Type_divchildlist
  }

  public class Class_footer : Vx_Core.Class_base, Type_footer {

    public var vx_p_nodes : (any Vx_Web_Html.Type_divchildlist)? = nil

    public func nodes() -> any Vx_Web_Html.Type_divchildlist {
      var output : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
      if let testnull = vx_p_nodes {
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
      } else if skey == ":nodes" {
        output = self.nodes()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":nodes", self.nodes())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_footer = Vx_Core.vx_copy(
        Vx_Web_Html.t_footer,
        Vx_Web_Html.e_footer,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_footer = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_footer = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_nodes : any Vx_Web_Html.Type_divchildlist = value.nodes()
      var validkeys : [String] = []
      validkeys.append(":nodes")
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
          } else if valsub is any Vx_Web_Html.Type_divchildlist {
            ischanged = true
            vx_p_nodes = valsub as! any Vx_Web_Html.Type_divchildlist
          } else if valsub is any Vx_Web_Html.Type_divchild {
            var valdefault : any Vx_Web_Html.Type_divchild = valsub as! any Vx_Web_Html.Type_divchild
            var vallist : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
            vallist = vx_p_nodes
            if vallist == nil {
              vallist = Vx_Core.vx_new(
                Vx_Web_Html.t_divchildlist,
                [
                  valdefault
                ]
              )
            } else {
              vallist = Vx_Core.vx_copy(
            Vx_Web_Html.t_divchildlist,
            vallist,
            [
              valdefault
            ]
          )
            }
            ischanged = true
            vx_p_nodes = vallist
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
              "vx/web/html/footer",
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
                "vx/web/html/footer",
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
          } else if key == ":nodes" {
            if Vx_Core.vx_issame(valsub, vx_p_nodes) {
            } else if let valnodes = valsub as? any Vx_Web_Html.Type_divchildlist {
              ischanged = true
              vx_p_nodes = valnodes
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("nodes"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/footer",
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
              "vx/web/html/footer",
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
        var work : Vx_Web_Html.Class_footer = Vx_Web_Html.Class_footer()
        work.vx_p_nodes = vx_p_nodes
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_footer
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_footer
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "footer",
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

  public static let e_footer : any Vx_Web_Html.Type_footer = Vx_Web_Html.Class_footer()
  public static let t_footer : any Vx_Web_Html.Type_footer = Vx_Web_Html.Class_footer()


  public protocol Type_h1 : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_divchild, AnyObject {
    func text() -> any Vx_Core.Type_string
  }

  public class Class_h1 : Vx_Core.Class_base, Type_h1 {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":text" {
        output = self.text()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":text", self.text())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_h1 = Vx_Core.vx_copy(
        Vx_Web_Html.t_h1,
        Vx_Web_Html.e_h1,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_h1 = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_h1 = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_text : any Vx_Core.Type_string = value.text()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":text")
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
          } else if valsub is any Vx_Core.Type_string {
            ischanged = true
            vx_p_text = valsub as! any Vx_Core.Type_string
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
              "vx/web/html/h1",
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
            } else if let valstr = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_text = valstr
            } else if valsub is String {
              ischanged = true
              vx_p_text = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              msgval = Vx_Core.vx_new_string(testkey)
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h1",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h1",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h1",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h1",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h1",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h1",
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
          } else if key == ":text" {
            if Vx_Core.vx_issame(valsub, vx_p_text) {
            } else if let valtext = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_text = valtext
            } else if valsub is String {
              ischanged = true
              vx_p_text = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("text"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h1",
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
              "vx/web/html/h1",
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
        var work : Vx_Web_Html.Class_h1 = Vx_Web_Html.Class_h1()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_text = vx_p_text
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_h1
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_h1
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "h1",
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
      )
      return output
    }

  }

  public static let e_h1 : any Vx_Web_Html.Type_h1 = Vx_Web_Html.Class_h1()
  public static let t_h1 : any Vx_Web_Html.Type_h1 = Vx_Web_Html.Class_h1()


  public protocol Type_h2 : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_divchild, AnyObject {
    func text() -> any Vx_Core.Type_string
  }

  public class Class_h2 : Vx_Core.Class_base, Type_h2 {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":text" {
        output = self.text()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":text", self.text())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_h2 = Vx_Core.vx_copy(
        Vx_Web_Html.t_h2,
        Vx_Web_Html.e_h2,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_h2 = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_h2 = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_text : any Vx_Core.Type_string = value.text()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":text")
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
          } else if valsub is any Vx_Core.Type_string {
            ischanged = true
            vx_p_text = valsub as! any Vx_Core.Type_string
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
              "vx/web/html/h2",
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
            } else if let valstr = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_text = valstr
            } else if valsub is String {
              ischanged = true
              vx_p_text = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              msgval = Vx_Core.vx_new_string(testkey)
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h2",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h2",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h2",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h2",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h2",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h2",
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
          } else if key == ":text" {
            if Vx_Core.vx_issame(valsub, vx_p_text) {
            } else if let valtext = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_text = valtext
            } else if valsub is String {
              ischanged = true
              vx_p_text = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("text"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h2",
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
              "vx/web/html/h2",
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
        var work : Vx_Web_Html.Class_h2 = Vx_Web_Html.Class_h2()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_text = vx_p_text
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_h2
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_h2
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "h2",
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
      )
      return output
    }

  }

  public static let e_h2 : any Vx_Web_Html.Type_h2 = Vx_Web_Html.Class_h2()
  public static let t_h2 : any Vx_Web_Html.Type_h2 = Vx_Web_Html.Class_h2()


  public protocol Type_h3 : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_divchild, AnyObject {
    func text() -> any Vx_Core.Type_string
  }

  public class Class_h3 : Vx_Core.Class_base, Type_h3 {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":text" {
        output = self.text()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":text", self.text())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_h3 = Vx_Core.vx_copy(
        Vx_Web_Html.t_h3,
        Vx_Web_Html.e_h3,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_h3 = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_h3 = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_text : any Vx_Core.Type_string = value.text()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":text")
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
          } else if valsub is any Vx_Core.Type_string {
            ischanged = true
            vx_p_text = valsub as! any Vx_Core.Type_string
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
              "vx/web/html/h3",
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
            } else if let valstr = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_text = valstr
            } else if valsub is String {
              ischanged = true
              vx_p_text = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              msgval = Vx_Core.vx_new_string(testkey)
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h3",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h3",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h3",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h3",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h3",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h3",
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
          } else if key == ":text" {
            if Vx_Core.vx_issame(valsub, vx_p_text) {
            } else if let valtext = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_text = valtext
            } else if valsub is String {
              ischanged = true
              vx_p_text = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("text"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/h3",
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
              "vx/web/html/h3",
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
        var work : Vx_Web_Html.Class_h3 = Vx_Web_Html.Class_h3()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_text = vx_p_text
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_h3
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_h3
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "h3",
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
      )
      return output
    }

  }

  public static let e_h3 : any Vx_Web_Html.Type_h3 = Vx_Web_Html.Class_h3()
  public static let t_h3 : any Vx_Web_Html.Type_h3 = Vx_Web_Html.Class_h3()


  public protocol Type_head : Vx_Core.Type_struct, AnyObject {
    func nodes() -> any Vx_Web_Html.Type_headchildlist
  }

  public class Class_head : Vx_Core.Class_base, Type_head {

    public var vx_p_nodes : (any Vx_Web_Html.Type_headchildlist)? = nil

    public func nodes() -> any Vx_Web_Html.Type_headchildlist {
      var output : any Vx_Web_Html.Type_headchildlist = Vx_Web_Html.e_headchildlist
      if let testnull = vx_p_nodes {
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
      } else if skey == ":nodes" {
        output = self.nodes()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":nodes", self.nodes())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_head = Vx_Core.vx_copy(
        Vx_Web_Html.t_head,
        Vx_Web_Html.e_head,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_head = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_head = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_nodes : any Vx_Web_Html.Type_headchildlist = value.nodes()
      var validkeys : [String] = []
      validkeys.append(":nodes")
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
          } else if valsub is any Vx_Web_Html.Type_headchildlist {
            ischanged = true
            vx_p_nodes = valsub as! any Vx_Web_Html.Type_headchildlist
          } else if valsub is any Vx_Web_Html.Type_headchild {
            var valdefault : any Vx_Web_Html.Type_headchild = valsub as! any Vx_Web_Html.Type_headchild
            var vallist : any Vx_Web_Html.Type_headchildlist = Vx_Web_Html.e_headchildlist
            vallist = vx_p_nodes
            if vallist == nil {
              vallist = Vx_Core.vx_new(
                Vx_Web_Html.t_headchildlist,
                [
                  valdefault
                ]
              )
            } else {
              vallist = Vx_Core.vx_copy(
            Vx_Web_Html.t_headchildlist,
            vallist,
            [
              valdefault
            ]
          )
            }
            ischanged = true
            vx_p_nodes = vallist
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
              "vx/web/html/head",
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
                "vx/web/html/head",
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
          } else if key == ":nodes" {
            if Vx_Core.vx_issame(valsub, vx_p_nodes) {
            } else if let valnodes = valsub as? any Vx_Web_Html.Type_headchildlist {
              ischanged = true
              vx_p_nodes = valnodes
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("nodes"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/head",
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
              "vx/web/html/head",
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
        var work : Vx_Web_Html.Class_head = Vx_Web_Html.Class_head()
        work.vx_p_nodes = vx_p_nodes
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_head
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_head
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "head",
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

  public static let e_head : any Vx_Web_Html.Type_head = Vx_Web_Html.Class_head()
  public static let t_head : any Vx_Web_Html.Type_head = Vx_Web_Html.Class_head()


  public protocol Type_headchild : Vx_Core.Type_struct, AnyObject {
  }

  public class Class_headchild : Vx_Core.Class_base, Type_headchild {

    public func vx_any(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_headchild = Vx_Core.vx_copy(
        Vx_Web_Html.t_headchild,
        Vx_Web_Html.e_headchild,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_headchild = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_headchild = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Web_Html.Class_headchild = Vx_Web_Html.Class_headchild()
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_headchild
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_headchild
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "headchild",
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

  public static let e_headchild : any Vx_Web_Html.Type_headchild = Vx_Web_Html.Class_headchild()
  public static let t_headchild : any Vx_Web_Html.Type_headchild = Vx_Web_Html.Class_headchild()


  public protocol Type_headchildlist : Vx_Core.Type_list, AnyObject {
    func vx_listheadchild() -> [any Vx_Web_Html.Type_headchild]
    func vx_headchild(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_headchild
  }

  public class Class_headchildlist : Vx_Core.Class_base, Type_headchildlist {

    public var vx_p_list : [any Vx_Web_Html.Type_headchild] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_headchild(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_headchild {
      var output : any Vx_Web_Html.Type_headchild = Vx_Web_Html.e_headchild
      var list : Vx_Web_Html.Class_headchildlist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Web_Html.Type_headchild] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listheadchild() -> [any Vx_Web_Html.Type_headchild] {
      var output : [any Vx_Web_Html.Type_headchild] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_headchild = self.vx_headchild(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_headchildlist = Vx_Core.vx_copy(
        Vx_Web_Html.t_headchildlist,
        Vx_Web_Html.e_headchildlist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_headchildlist = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_headchildlist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Web_Html.Type_headchild] = Array(value.vx_listheadchild())
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
        } else if let multi = valsub as? any Vx_Web_Html.Type_headchildlist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listheadchild())
        } else if let allowsub = valsub as? any Vx_Web_Html.Type_headchild {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Web_Html.Type_headchild {
          var subitem : any Vx_Web_Html.Type_headchild = valsub as! any Vx_Web_Html.Type_headchild
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Web_Html.Type_headchild {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/web/html/headchildlist",
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
            "vx/web/html/headchildlist",
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
        var work : Vx_Web_Html.Class_headchildlist = Vx_Web_Html.Class_headchildlist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_headchildlist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_headchildlist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "headchildlist",
        ":list",
        Vx_Core.e_typelist,
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Web_Html.t_headchild
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

  public static let e_headchildlist : any Vx_Web_Html.Type_headchildlist = Vx_Web_Html.Class_headchildlist()
  public static let t_headchildlist : any Vx_Web_Html.Type_headchildlist = Vx_Web_Html.Class_headchildlist()


  public protocol Type_html : Vx_Core.Type_struct, AnyObject {
    func lang() -> any Vx_Core.Type_string
    func head() -> any Vx_Web_Html.Type_head
    func body() -> any Vx_Web_Html.Type_body
    func footer() -> any Vx_Web_Html.Type_footer
  }

  public class Class_html : Vx_Core.Class_base, Type_html {

    public var vx_p_lang : (any Vx_Core.Type_string)? = nil

    public func lang() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_lang {
        output = testnull
      }
      return output
    }

    public var vx_p_head : (any Vx_Web_Html.Type_head)? = nil

    public func head() -> any Vx_Web_Html.Type_head {
      var output : any Vx_Web_Html.Type_head = Vx_Web_Html.e_head
      if let testnull = vx_p_head {
        output = testnull
      }
      return output
    }

    public var vx_p_body : (any Vx_Web_Html.Type_body)? = nil

    public func body() -> any Vx_Web_Html.Type_body {
      var output : any Vx_Web_Html.Type_body = Vx_Web_Html.e_body
      if let testnull = vx_p_body {
        output = testnull
      }
      return output
    }

    public var vx_p_footer : (any Vx_Web_Html.Type_footer)? = nil

    public func footer() -> any Vx_Web_Html.Type_footer {
      var output : any Vx_Web_Html.Type_footer = Vx_Web_Html.e_footer
      if let testnull = vx_p_footer {
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
      } else if skey == ":lang" {
        output = self.lang()
      } else if skey == ":head" {
        output = self.head()
      } else if skey == ":body" {
        output = self.body()
      } else if skey == ":footer" {
        output = self.footer()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":lang", self.lang())
      map.put(":head", self.head())
      map.put(":body", self.body())
      map.put(":footer", self.footer())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_html = Vx_Core.vx_copy(
        Vx_Web_Html.t_html,
        Vx_Web_Html.e_html,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_html = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_html = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_lang : any Vx_Core.Type_string = value.lang()
      var vx_p_head : any Vx_Web_Html.Type_head = value.head()
      var vx_p_body : any Vx_Web_Html.Type_body = value.body()
      var vx_p_footer : any Vx_Web_Html.Type_footer = value.footer()
      var validkeys : [String] = []
      validkeys.append(":lang")
      validkeys.append(":head")
      validkeys.append(":body")
      validkeys.append(":footer")
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
              "vx/web/html/html",
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
                "vx/web/html/html",
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
          } else if key == ":lang" {
            if Vx_Core.vx_issame(valsub, vx_p_lang) {
            } else if let vallang = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_lang = vallang
            } else if valsub is String {
              ischanged = true
              vx_p_lang = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("lang"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/html",
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
          } else if key == ":head" {
            if Vx_Core.vx_issame(valsub, vx_p_head) {
            } else if let valhead = valsub as? any Vx_Web_Html.Type_head {
              ischanged = true
              vx_p_head = valhead
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("head"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/html",
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
          } else if key == ":body" {
            if Vx_Core.vx_issame(valsub, vx_p_body) {
            } else if let valbody = valsub as? any Vx_Web_Html.Type_body {
              ischanged = true
              vx_p_body = valbody
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("body"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/html",
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
          } else if key == ":footer" {
            if Vx_Core.vx_issame(valsub, vx_p_footer) {
            } else if let valfooter = valsub as? any Vx_Web_Html.Type_footer {
              ischanged = true
              vx_p_footer = valfooter
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("footer"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/html",
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
              "vx/web/html/html",
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
        var work : Vx_Web_Html.Class_html = Vx_Web_Html.Class_html()
        work.vx_p_lang = vx_p_lang
        work.vx_p_head = vx_p_head
        work.vx_p_body = vx_p_body
        work.vx_p_footer = vx_p_footer
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_html
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_html
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
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
      )
      return output
    }

  }

  public static let e_html : any Vx_Web_Html.Type_html = Vx_Web_Html.Class_html()
  public static let t_html : any Vx_Web_Html.Type_html = Vx_Web_Html.Class_html()


  public protocol Type_img : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_divchild, AnyObject {
    func src() -> any Vx_Core.Type_string
  }

  public class Class_img : Vx_Core.Class_base, Type_img {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
        output = testnull
      }
      return output
    }

    public var vx_p_src : (any Vx_Core.Type_string)? = nil

    public func src() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_src {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":src" {
        output = self.src()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":src", self.src())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_img = Vx_Core.vx_copy(
        Vx_Web_Html.t_img,
        Vx_Web_Html.e_img,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_img = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_img = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_src : any Vx_Core.Type_string = value.src()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":src")
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
          } else if valsub is any Vx_Core.Type_string {
            ischanged = true
            vx_p_src = valsub as! any Vx_Core.Type_string
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
              "vx/web/html/img",
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
            } else if let valstr = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_src = valstr
            } else if valsub is String {
              ischanged = true
              vx_p_src = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              msgval = Vx_Core.vx_new_string(testkey)
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/img",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/img",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/img",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/img",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/img",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/img",
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
          } else if key == ":src" {
            if Vx_Core.vx_issame(valsub, vx_p_src) {
            } else if let valsrc = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_src = valsrc
            } else if valsub is String {
              ischanged = true
              vx_p_src = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("src"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/img",
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
              "vx/web/html/img",
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
        var work : Vx_Web_Html.Class_img = Vx_Web_Html.Class_img()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_src = vx_p_src
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_img
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_img
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "img",
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
      )
      return output
    }

  }

  public static let e_img : any Vx_Web_Html.Type_img = Vx_Web_Html.Class_img()
  public static let t_img : any Vx_Web_Html.Type_img = Vx_Web_Html.Class_img()


  public protocol Type_meta : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_headchild, AnyObject {
    func charset() -> any Vx_Core.Type_string
    func name() -> any Vx_Core.Type_string
    func content() -> any Vx_Core.Type_string
  }

  public class Class_meta : Vx_Core.Class_base, Type_meta {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
        output = testnull
      }
      return output
    }

    public var vx_p_charset : (any Vx_Core.Type_string)? = nil

    public func charset() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_charset {
        output = testnull
      }
      return output
    }

    public var vx_p_name : (any Vx_Core.Type_string)? = nil

    public func name() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_name {
        output = testnull
      }
      return output
    }

    public var vx_p_content : (any Vx_Core.Type_string)? = nil

    public func content() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_content {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":charset" {
        output = self.charset()
      } else if skey == ":name" {
        output = self.name()
      } else if skey == ":content" {
        output = self.content()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":charset", self.charset())
      map.put(":name", self.name())
      map.put(":content", self.content())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_meta = Vx_Core.vx_copy(
        Vx_Web_Html.t_meta,
        Vx_Web_Html.e_meta,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_meta = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_meta = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_charset : any Vx_Core.Type_string = value.charset()
      var vx_p_name : any Vx_Core.Type_string = value.name()
      var vx_p_content : any Vx_Core.Type_string = value.content()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":charset")
      validkeys.append(":name")
      validkeys.append(":content")
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
              "vx/web/html/meta",
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
                "vx/web/html/meta",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/meta",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/meta",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/meta",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/meta",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/meta",
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
          } else if key == ":charset" {
            if Vx_Core.vx_issame(valsub, vx_p_charset) {
            } else if let valcharset = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_charset = valcharset
            } else if valsub is String {
              ischanged = true
              vx_p_charset = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("charset"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/meta",
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
          } else if key == ":name" {
            if Vx_Core.vx_issame(valsub, vx_p_name) {
            } else if let valname = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_name = valname
            } else if valsub is String {
              ischanged = true
              vx_p_name = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("name"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/meta",
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
          } else if key == ":content" {
            if Vx_Core.vx_issame(valsub, vx_p_content) {
            } else if let valcontent = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_content = valcontent
            } else if valsub is String {
              ischanged = true
              vx_p_content = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("content"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/meta",
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
              "vx/web/html/meta",
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
        var work : Vx_Web_Html.Class_meta = Vx_Web_Html.Class_meta()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_charset = vx_p_charset
        work.vx_p_name = vx_p_name
        work.vx_p_content = vx_p_content
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_meta
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_meta
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "meta",
        ":struct",
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Web_Html.t_node,
            Vx_Web_Html.t_headchild
          ]
        ),
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

  public static let e_meta : any Vx_Web_Html.Type_meta = Vx_Web_Html.Class_meta()
  public static let t_meta : any Vx_Web_Html.Type_meta = Vx_Web_Html.Class_meta()


  public protocol Type_node : Vx_Core.Type_struct, AnyObject {
    func id() -> any Vx_Core.Type_string
    func eventmap() -> any Vx_Event.Type_eventmap
    func style() -> any Vx_Web_Html.Type_style
    func style_unique() -> any Vx_Web_Html.Type_style
    func stylelist() -> any Vx_Web_Html.Type_stylelist
  }

  public class Class_node : Vx_Core.Class_base, Type_node {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_node = Vx_Core.vx_copy(
        Vx_Web_Html.t_node,
        Vx_Web_Html.e_node,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_node = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_node = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
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
              "vx/web/html/node",
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
                "vx/web/html/node",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/node",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/node",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/node",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/node",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/node",
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
              "vx/web/html/node",
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
        var work : Vx_Web_Html.Class_node = Vx_Web_Html.Class_node()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_node
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_node
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "node",
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

  public static let e_node : any Vx_Web_Html.Type_node = Vx_Web_Html.Class_node()
  public static let t_node : any Vx_Web_Html.Type_node = Vx_Web_Html.Class_node()


  public protocol Type_nodelist : Vx_Core.Type_list, AnyObject {
    func vx_listnode() -> [any Vx_Web_Html.Type_node]
    func vx_node(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_node
  }

  public class Class_nodelist : Vx_Core.Class_base, Type_nodelist {

    public var vx_p_list : [any Vx_Web_Html.Type_node] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_node(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_node {
      var output : any Vx_Web_Html.Type_node = Vx_Web_Html.e_node
      var list : Vx_Web_Html.Class_nodelist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Web_Html.Type_node] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listnode() -> [any Vx_Web_Html.Type_node] {
      var output : [any Vx_Web_Html.Type_node] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_node = self.vx_node(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_nodelist = Vx_Core.vx_copy(
        Vx_Web_Html.t_nodelist,
        Vx_Web_Html.e_nodelist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_nodelist = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_nodelist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Web_Html.Type_node] = Array(value.vx_listnode())
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
        } else if let multi = valsub as? any Vx_Web_Html.Type_nodelist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listnode())
        } else if let allowsub = valsub as? any Vx_Web_Html.Type_node {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Web_Html.Type_node {
          var subitem : any Vx_Web_Html.Type_node = valsub as! any Vx_Web_Html.Type_node
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Web_Html.Type_node {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/web/html/nodelist",
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
            "vx/web/html/nodelist",
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
        var work : Vx_Web_Html.Class_nodelist = Vx_Web_Html.Class_nodelist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_nodelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_nodelist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "nodelist",
        ":list",
        Vx_Core.e_typelist,
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Web_Html.t_node
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

  public static let e_nodelist : any Vx_Web_Html.Type_nodelist = Vx_Web_Html.Class_nodelist()
  public static let t_nodelist : any Vx_Web_Html.Type_nodelist = Vx_Web_Html.Class_nodelist()


  public protocol Type_p : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_divchild, AnyObject {
    func text() -> any Vx_Core.Type_string
  }

  public class Class_p : Vx_Core.Class_base, Type_p {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":text" {
        output = self.text()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":text", self.text())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_p = Vx_Core.vx_copy(
        Vx_Web_Html.t_p,
        Vx_Web_Html.e_p,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_p = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_p = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_text : any Vx_Core.Type_string = value.text()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":text")
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
          } else if valsub is any Vx_Core.Type_string {
            ischanged = true
            vx_p_text = valsub as! any Vx_Core.Type_string
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
              "vx/web/html/p",
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
            } else if let valstr = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_text = valstr
            } else if valsub is String {
              ischanged = true
              vx_p_text = Vx_Core.vx_new(
                Vx_Core.t_string,
                [
                  valsub
                ]
              )
            } else {
              msgval = Vx_Core.vx_new_string(testkey)
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/p",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/p",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/p",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/p",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/p",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/p",
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
          } else if key == ":text" {
            if Vx_Core.vx_issame(valsub, vx_p_text) {
            } else if let valtext = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_text = valtext
            } else if valsub is String {
              ischanged = true
              vx_p_text = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("text"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/p",
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
              "vx/web/html/p",
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
        var work : Vx_Web_Html.Class_p = Vx_Web_Html.Class_p()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_text = vx_p_text
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_p
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_p
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
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
      )
      return output
    }

  }

  public static let e_p : any Vx_Web_Html.Type_p = Vx_Web_Html.Class_p()
  public static let t_p : any Vx_Web_Html.Type_p = Vx_Web_Html.Class_p()


  public protocol Type_propmap : Vx_Core.Type_map, AnyObject {
    func vx_mapstring() -> Vx_Core.Map<any Vx_Core.Type_string>
    func vx_string(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_propmap : Vx_Core.Class_base, Type_propmap {

    public var vx_p_map : Vx_Core.Map<any Vx_Core.Type_string> = Vx_Core.Map<any Vx_Core.Type_string>.()

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      let map : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_map_from_map(Vx_Core.t_any, self.vx_p_map)
      let output : Vx_Core.Map<any Vx_Core.Type_any> = map
      return output
    }

    public func vx_set(
      _ name : any Vx_Core.Type_string,
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean {
      var output : any Vx_Core.Type_boolean = Vx_Core.c_false
      if false {
      } else if let castval = value as? any Vx_Core.Type_string {
        var key : String = name.vx_string()
        if key.hasPrefix(":") {
          key = String(key.dropFirst())
        }
        var map : Vx_Core.MapMutable<any Vx_Core.Type_string> = Vx_Core.vx_mapmutable(self.vx_p_map)
        if Vx_Core.vx_issame(castval, Vx_Core.e_string) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        self.vx_p_map = Vx_Core.vx_mapimmutable(map)
        output = Vx_Core.c_true
      }
      return output
    }

    public func vx_string(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      var map : Vx_Web_Html.Class_propmap = self
      var skey : String = key.vx_string()
      if skey.hasPrefix(":") {
        skey = String(skey.dropFirst())
      }
      let mapval : Vx_Core.Map<any Vx_Core.Type_string> = map.vx_p_map
      output = mapval.getOrElse(skey, Vx_Core.e_string)
      return output
    }

    public func vx_mapstring() -> Vx_Core.Map<any Vx_Core.Type_string> {
      let output : Vx_Core.Map<any Vx_Core.Type_string> = self.vx_p_map
      return output
    }

    public func vx_any(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = self.vx_string(key)
      return output
    }


    public func vx_new_from_map(
      _ mapval : Vx_Core.Map<any Vx_Core.Type_any>
    ) -> any Vx_Core.Type_map {
      var output : Vx_Web_Html.Class_propmap = Vx_Web_Html.Class_propmap()
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.e_msgblock
      var map : Vx_Core.MapMutable<any Vx_Core.Type_string> = Vx_Core.MapMutable<any Vx_Core.Type_string>()
      let keys : [String] = mapval.keys()
      for key in keys {
        var value : any Vx_Core.Type_any = mapval.get(key)
        if false {
        } else if let castval = value as? any Vx_Core.Type_string {
          map.put(key, castval)
        } else {
          var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_error(
            "vx/web/html/propmap",
            ":invalidvalue",
            value
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
      output.vx_p_map = Vx_Core.vx_mapimmutable(map)
      if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_propmap = Vx_Core.vx_copy(
        Vx_Web_Html.t_propmap,
        Vx_Web_Html.e_propmap,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_propmap = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_propmap = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var mapval : Vx_Core.MapMutable<any Vx_Core.Type_string> = Vx_Core.vx_mapmutable(value.vx_mapstring())
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
          if false {
          } else if let valstring = valsub as? any Vx_Core.Type_string {
            key = valstring.vx_string()
          } else if let sval = valsub as? String {
            key = sval
          } else {
            if false {
            } else if let valinvalid = valsub as? any Vx_Core.Type_any {
              msgval = valinvalid
            } else {
              msgval = Vx_Core.vx_new_string(
                Vx_Core.vx_string_from_object(valsub)
              )
            }
            msg = Vx_Core.vx_msg_from_error(
              "vx/web/html/propmap",
              ":keyexpected",
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
        } else {
          var valany : any Vx_Core.Type_string = Vx_Core.e_string
          if false {
          } else if let valallowed = valsub as? any Vx_Core.Type_string {
            valany = valallowed
          } else if valsub is String {
            valany = Vx_Core.vx_new(
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
              msgval = Vx_Core.vx_new_string(
                  Vx_Core.vx_string_from_object(valsub)
                )
            }
            var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
            mapany.put("key", Vx_Core.vx_new_string(key))
            mapany.put("value", msgval)
            let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
              Vx_Core.vx_mapimmutable(mapany)
            )
            msg = Vx_Core.vx_msg_from_error(
              "vx/web/html/propmap",
              ":invalidkeyvalue",
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
          if !Vx_Core.vx_issame(valany, Vx_Core.e_any) {
            ischanged = true
            if key.hasPrefix(":") {
              key = String(key.dropFirst())
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Web_Html.Class_propmap = Vx_Web_Html.Class_propmap()
        work.vx_p_map = Vx_Core.vx_mapimmutable(mapval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_propmap
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_propmap
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "propmap",
        ":map",
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
      )
      return output
    }

  }

  public static let e_propmap : any Vx_Web_Html.Type_propmap = Vx_Web_Html.Class_propmap()
  public static let t_propmap : any Vx_Web_Html.Type_propmap = Vx_Web_Html.Class_propmap()


  public protocol Type_style : Vx_Core.Type_struct, AnyObject {
    func name() -> any Vx_Core.Type_string
    func props() -> any Vx_Web_Html.Type_propmap
    func stylelist() -> any Vx_Web_Html.Type_stylelist
  }

  public class Class_style : Vx_Core.Class_base, Type_style {

    public var vx_p_name : (any Vx_Core.Type_string)? = nil

    public func name() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_name {
        output = testnull
      }
      return output
    }

    public var vx_p_props : (any Vx_Web_Html.Type_propmap)? = nil

    public func props() -> any Vx_Web_Html.Type_propmap {
      var output : any Vx_Web_Html.Type_propmap = Vx_Web_Html.e_propmap
      if let testnull = vx_p_props {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
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
      } else if skey == ":props" {
        output = self.props()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":name", self.name())
      map.put(":props", self.props())
      map.put(":stylelist", self.stylelist())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_style = Vx_Core.vx_copy(
        Vx_Web_Html.t_style,
        Vx_Web_Html.e_style,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_style = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_style = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_name : any Vx_Core.Type_string = value.name()
      var vx_p_props : any Vx_Web_Html.Type_propmap = value.props()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var validkeys : [String] = []
      validkeys.append(":name")
      validkeys.append(":props")
      validkeys.append(":stylelist")
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
              "vx/web/html/style",
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
                "vx/web/html/style",
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
          } else if key == ":name" {
            if Vx_Core.vx_issame(valsub, vx_p_name) {
            } else if let valname = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_name = valname
            } else if valsub is String {
              ischanged = true
              vx_p_name = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("name"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/style",
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
          } else if key == ":props" {
            if Vx_Core.vx_issame(valsub, vx_p_props) {
            } else if let valprops = valsub as? any Vx_Web_Html.Type_propmap {
              ischanged = true
              vx_p_props = valprops
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("props"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/style",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/style",
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
              "vx/web/html/style",
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
        var work : Vx_Web_Html.Class_style = Vx_Web_Html.Class_style()
        work.vx_p_name = vx_p_name
        work.vx_p_props = vx_p_props
        work.vx_p_stylelist = vx_p_stylelist
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_style
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_style
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "style",
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

  public static let e_style : any Vx_Web_Html.Type_style = Vx_Web_Html.Class_style()
  public static let t_style : any Vx_Web_Html.Type_style = Vx_Web_Html.Class_style()


  public protocol Type_stylelist : Vx_Core.Type_list, AnyObject {
    func vx_liststyle() -> [any Vx_Web_Html.Type_style]
    func vx_style(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_style
  }

  public class Class_stylelist : Vx_Core.Class_base, Type_stylelist {

    public var vx_p_list : [any Vx_Web_Html.Type_style] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_style(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      var list : Vx_Web_Html.Class_stylelist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Web_Html.Type_style] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_liststyle() -> [any Vx_Web_Html.Type_style] {
      var output : [any Vx_Web_Html.Type_style] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_style = self.vx_style(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Core.vx_copy(
        Vx_Web_Html.t_stylelist,
        Vx_Web_Html.e_stylelist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_stylelist = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_stylelist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Web_Html.Type_style] = Array(value.vx_liststyle())
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
        } else if let multi = valsub as? any Vx_Web_Html.Type_stylelist {
          ischanged = true
          listval.append(contentsOf: multi.vx_liststyle())
        } else if let allowsub = valsub as? any Vx_Web_Html.Type_style {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Web_Html.Type_style {
          var subitem : any Vx_Web_Html.Type_style = valsub as! any Vx_Web_Html.Type_style
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Web_Html.Type_style {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/web/html/stylelist",
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
            "vx/web/html/stylelist",
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
        var work : Vx_Web_Html.Class_stylelist = Vx_Web_Html.Class_stylelist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_stylelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_stylelist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "stylelist",
        ":list",
        Vx_Core.e_typelist,
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Web_Html.t_style
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

  public static let e_stylelist : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.Class_stylelist()
  public static let t_stylelist : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.Class_stylelist()


  public protocol Type_stylemap : Vx_Core.Type_map, AnyObject {
    func vx_mapstyle() -> Vx_Core.Map<any Vx_Web_Html.Type_style>
    func vx_style(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Web_Html.Type_style
  }

  public class Class_stylemap : Vx_Core.Class_base, Type_stylemap {

    public var vx_p_map : Vx_Core.Map<any Vx_Web_Html.Type_style> = Vx_Core.Map<any Vx_Web_Html.Type_style>.()

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      let map : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_map_from_map(Vx_Core.t_any, self.vx_p_map)
      let output : Vx_Core.Map<any Vx_Core.Type_any> = map
      return output
    }

    public func vx_set(
      _ name : any Vx_Core.Type_string,
      _ value : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_boolean {
      var output : any Vx_Core.Type_boolean = Vx_Core.c_false
      if false {
      } else if let castval = value as? any Vx_Web_Html.Type_style {
        var key : String = name.vx_string()
        if key.hasPrefix(":") {
          key = String(key.dropFirst())
        }
        var map : Vx_Core.MapMutable<any Vx_Web_Html.Type_style> = Vx_Core.vx_mapmutable(self.vx_p_map)
        if Vx_Core.vx_issame(castval, Vx_Web_Html.e_style) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        self.vx_p_map = Vx_Core.vx_mapimmutable(map)
        output = Vx_Core.c_true
      }
      return output
    }

    public func vx_style(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      var map : Vx_Web_Html.Class_stylemap = self
      var skey : String = key.vx_string()
      if skey.hasPrefix(":") {
        skey = String(skey.dropFirst())
      }
      let mapval : Vx_Core.Map<any Vx_Web_Html.Type_style> = map.vx_p_map
      output = mapval.getOrElse(skey, Vx_Web_Html.e_style)
      return output
    }

    public func vx_mapstyle() -> Vx_Core.Map<any Vx_Web_Html.Type_style> {
      let output : Vx_Core.Map<any Vx_Web_Html.Type_style> = self.vx_p_map
      return output
    }

    public func vx_any(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = self.vx_style(key)
      return output
    }


    public func vx_new_from_map(
      _ mapval : Vx_Core.Map<any Vx_Core.Type_any>
    ) -> any Vx_Core.Type_map {
      var output : Vx_Web_Html.Class_stylemap = Vx_Web_Html.Class_stylemap()
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.e_msgblock
      var map : Vx_Core.MapMutable<any Vx_Web_Html.Type_style> = Vx_Core.MapMutable<any Vx_Web_Html.Type_style>()
      let keys : [String] = mapval.keys()
      for key in keys {
        var value : any Vx_Core.Type_any = mapval.get(key)
        if false {
        } else if let castval = value as? any Vx_Web_Html.Type_style {
          map.put(key, castval)
        } else {
          var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_error(
            "vx/web/html/stylemap",
            ":invalidvalue",
            value
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
      output.vx_p_map = Vx_Core.vx_mapimmutable(map)
      if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_stylemap = Vx_Core.vx_copy(
        Vx_Web_Html.t_stylemap,
        Vx_Web_Html.e_stylemap,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_stylemap = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_stylemap = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var mapval : Vx_Core.MapMutable<any Vx_Web_Html.Type_style> = Vx_Core.vx_mapmutable(value.vx_mapstyle())
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
          if false {
          } else if let valstring = valsub as? any Vx_Core.Type_string {
            key = valstring.vx_string()
          } else if let sval = valsub as? String {
            key = sval
          } else {
            if false {
            } else if let valinvalid = valsub as? any Vx_Core.Type_any {
              msgval = valinvalid
            } else {
              msgval = Vx_Core.vx_new_string(
                Vx_Core.vx_string_from_object(valsub)
              )
            }
            msg = Vx_Core.vx_msg_from_error(
              "vx/web/html/stylemap",
              ":keyexpected",
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
        } else {
          var valany : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
          if false {
          } else if let valallowed = valsub as? any Vx_Web_Html.Type_style {
            valany = valallowed
          } else if valsub is any Vx_Web_Html.Type_style {
            valany = valsub as! any Vx_Web_Html.Type_style
          } else {
            if false {
            } else if let valinvalid = valsub as? any Vx_Core.Type_any {
              msgval = valinvalid
            } else {
              msgval = Vx_Core.vx_new_string(
                  Vx_Core.vx_string_from_object(valsub)
                )
            }
            var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
            mapany.put("key", Vx_Core.vx_new_string(key))
            mapany.put("value", msgval)
            let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
              Vx_Core.vx_mapimmutable(mapany)
            )
            msg = Vx_Core.vx_msg_from_error(
              "vx/web/html/stylemap",
              ":invalidkeyvalue",
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
          if !Vx_Core.vx_issame(valany, Vx_Core.e_any) {
            ischanged = true
            if key.hasPrefix(":") {
              key = String(key.dropFirst())
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Web_Html.Class_stylemap = Vx_Web_Html.Class_stylemap()
        work.vx_p_map = Vx_Core.vx_mapimmutable(mapval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_stylemap
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_stylemap
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "stylemap",
        ":map",
        Vx_Core.e_typelist,
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Web_Html.t_style
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

  public static let e_stylemap : any Vx_Web_Html.Type_stylemap = Vx_Web_Html.Class_stylemap()
  public static let t_stylemap : any Vx_Web_Html.Type_stylemap = Vx_Web_Html.Class_stylemap()


  public protocol Type_stylesheet : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_headchild, AnyObject {
    func name() -> any Vx_Core.Type_string
    func styles() -> any Vx_Web_Html.Type_stylelist
    func stylemap() -> any Vx_Web_Html.Type_stylemap
  }

  public class Class_stylesheet : Vx_Core.Class_base, Type_stylesheet {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
        output = testnull
      }
      return output
    }

    public var vx_p_name : (any Vx_Core.Type_string)? = nil

    public func name() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_name {
        output = testnull
      }
      return output
    }

    public var vx_p_styles : (any Vx_Web_Html.Type_stylelist)? = nil

    public func styles() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_styles {
        output = testnull
      }
      return output
    }

    public var vx_p_stylemap : (any Vx_Web_Html.Type_stylemap)? = nil

    public func stylemap() -> any Vx_Web_Html.Type_stylemap {
      var output : any Vx_Web_Html.Type_stylemap = Vx_Web_Html.e_stylemap
      if let testnull = vx_p_stylemap {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":name" {
        output = self.name()
      } else if skey == ":styles" {
        output = self.styles()
      } else if skey == ":stylemap" {
        output = self.stylemap()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":name", self.name())
      map.put(":styles", self.styles())
      map.put(":stylemap", self.stylemap())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_stylesheet = Vx_Core.vx_copy(
        Vx_Web_Html.t_stylesheet,
        Vx_Web_Html.e_stylesheet,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_stylesheet = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_stylesheet = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_name : any Vx_Core.Type_string = value.name()
      var vx_p_styles : any Vx_Web_Html.Type_stylelist = value.styles()
      var vx_p_stylemap : any Vx_Web_Html.Type_stylemap = value.stylemap()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":name")
      validkeys.append(":styles")
      validkeys.append(":stylemap")
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
              "vx/web/html/stylesheet",
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
                "vx/web/html/stylesheet",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/stylesheet",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/stylesheet",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/stylesheet",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/stylesheet",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/stylesheet",
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
          } else if key == ":name" {
            if Vx_Core.vx_issame(valsub, vx_p_name) {
            } else if let valname = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_name = valname
            } else if valsub is String {
              ischanged = true
              vx_p_name = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("name"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/stylesheet",
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
          } else if key == ":styles" {
            if Vx_Core.vx_issame(valsub, vx_p_styles) {
            } else if let valstyles = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_styles = valstyles
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("styles"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/stylesheet",
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
          } else if key == ":stylemap" {
            if Vx_Core.vx_issame(valsub, vx_p_stylemap) {
            } else if let valstylemap = valsub as? any Vx_Web_Html.Type_stylemap {
              ischanged = true
              vx_p_stylemap = valstylemap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylemap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/stylesheet",
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
              "vx/web/html/stylesheet",
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
        var work : Vx_Web_Html.Class_stylesheet = Vx_Web_Html.Class_stylesheet()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_name = vx_p_name
        work.vx_p_styles = vx_p_styles
        work.vx_p_stylemap = vx_p_stylemap
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_stylesheet
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_stylesheet
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "stylesheet",
        ":struct",
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Web_Html.t_node,
            Vx_Web_Html.t_headchild
          ]
        ),
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

  public static let e_stylesheet : any Vx_Web_Html.Type_stylesheet = Vx_Web_Html.Class_stylesheet()
  public static let t_stylesheet : any Vx_Web_Html.Type_stylesheet = Vx_Web_Html.Class_stylesheet()


  public protocol Type_table : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_divchild, AnyObject {
    func tbody() -> any Vx_Web_Html.Type_tbody
    func thead() -> any Vx_Web_Html.Type_thead
  }

  public class Class_table : Vx_Core.Class_base, Type_table {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
        output = testnull
      }
      return output
    }

    public var vx_p_tbody : (any Vx_Web_Html.Type_tbody)? = nil

    public func tbody() -> any Vx_Web_Html.Type_tbody {
      var output : any Vx_Web_Html.Type_tbody = Vx_Web_Html.e_tbody
      if let testnull = vx_p_tbody {
        output = testnull
      }
      return output
    }

    public var vx_p_thead : (any Vx_Web_Html.Type_thead)? = nil

    public func thead() -> any Vx_Web_Html.Type_thead {
      var output : any Vx_Web_Html.Type_thead = Vx_Web_Html.e_thead
      if let testnull = vx_p_thead {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":tbody" {
        output = self.tbody()
      } else if skey == ":thead" {
        output = self.thead()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":tbody", self.tbody())
      map.put(":thead", self.thead())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_table = Vx_Core.vx_copy(
        Vx_Web_Html.t_table,
        Vx_Web_Html.e_table,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_table = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_table = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_tbody : any Vx_Web_Html.Type_tbody = value.tbody()
      var vx_p_thead : any Vx_Web_Html.Type_thead = value.thead()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":tbody")
      validkeys.append(":thead")
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
              "vx/web/html/table",
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
                "vx/web/html/table",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/table",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/table",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/table",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/table",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/table",
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
          } else if key == ":tbody" {
            if Vx_Core.vx_issame(valsub, vx_p_tbody) {
            } else if let valtbody = valsub as? any Vx_Web_Html.Type_tbody {
              ischanged = true
              vx_p_tbody = valtbody
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("tbody"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/table",
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
          } else if key == ":thead" {
            if Vx_Core.vx_issame(valsub, vx_p_thead) {
            } else if let valthead = valsub as? any Vx_Web_Html.Type_thead {
              ischanged = true
              vx_p_thead = valthead
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("thead"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/table",
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
              "vx/web/html/table",
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
        var work : Vx_Web_Html.Class_table = Vx_Web_Html.Class_table()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_tbody = vx_p_tbody
        work.vx_p_thead = vx_p_thead
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_table
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_table
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "table",
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
      )
      return output
    }

  }

  public static let e_table : any Vx_Web_Html.Type_table = Vx_Web_Html.Class_table()
  public static let t_table : any Vx_Web_Html.Type_table = Vx_Web_Html.Class_table()


  public protocol Type_tbody : Vx_Core.Type_struct, Vx_Web_Html.Type_node, AnyObject {
    func nodes() -> any Vx_Web_Html.Type_trlist
  }

  public class Class_tbody : Vx_Core.Class_base, Type_tbody {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
        output = testnull
      }
      return output
    }

    public var vx_p_nodes : (any Vx_Web_Html.Type_trlist)? = nil

    public func nodes() -> any Vx_Web_Html.Type_trlist {
      var output : any Vx_Web_Html.Type_trlist = Vx_Web_Html.e_trlist
      if let testnull = vx_p_nodes {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":nodes" {
        output = self.nodes()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":nodes", self.nodes())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_tbody = Vx_Core.vx_copy(
        Vx_Web_Html.t_tbody,
        Vx_Web_Html.e_tbody,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_tbody = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_tbody = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_nodes : any Vx_Web_Html.Type_trlist = value.nodes()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":nodes")
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
          } else if valsub is any Vx_Web_Html.Type_trlist {
            ischanged = true
            vx_p_nodes = valsub as! any Vx_Web_Html.Type_trlist
          } else if valsub is any Vx_Web_Html.Type_tr {
            var valdefault : any Vx_Web_Html.Type_tr = valsub as! any Vx_Web_Html.Type_tr
            var vallist : any Vx_Web_Html.Type_trlist = Vx_Web_Html.e_trlist
            vallist = vx_p_nodes
            if vallist == nil {
              vallist = Vx_Core.vx_new(
                Vx_Web_Html.t_trlist,
                [
                  valdefault
                ]
              )
            } else {
              vallist = Vx_Core.vx_copy(
            Vx_Web_Html.t_trlist,
            vallist,
            [
              valdefault
            ]
          )
            }
            ischanged = true
            vx_p_nodes = vallist
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
              "vx/web/html/tbody",
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
                "vx/web/html/tbody",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tbody",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tbody",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tbody",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tbody",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tbody",
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
          } else if key == ":nodes" {
            if Vx_Core.vx_issame(valsub, vx_p_nodes) {
            } else if let valnodes = valsub as? any Vx_Web_Html.Type_trlist {
              ischanged = true
              vx_p_nodes = valnodes
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("nodes"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tbody",
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
              "vx/web/html/tbody",
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
        var work : Vx_Web_Html.Class_tbody = Vx_Web_Html.Class_tbody()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_nodes = vx_p_nodes
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_tbody
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_tbody
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "tbody",
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
      )
      return output
    }

  }

  public static let e_tbody : any Vx_Web_Html.Type_tbody = Vx_Web_Html.Class_tbody()
  public static let t_tbody : any Vx_Web_Html.Type_tbody = Vx_Web_Html.Class_tbody()


  public protocol Type_td : Vx_Core.Type_struct, Vx_Web_Html.Type_node, AnyObject {
    func nodes() -> any Vx_Web_Html.Type_divchildlist
  }

  public class Class_td : Vx_Core.Class_base, Type_td {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
        output = testnull
      }
      return output
    }

    public var vx_p_nodes : (any Vx_Web_Html.Type_divchildlist)? = nil

    public func nodes() -> any Vx_Web_Html.Type_divchildlist {
      var output : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
      if let testnull = vx_p_nodes {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":nodes" {
        output = self.nodes()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":nodes", self.nodes())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_td = Vx_Core.vx_copy(
        Vx_Web_Html.t_td,
        Vx_Web_Html.e_td,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_td = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_td = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_nodes : any Vx_Web_Html.Type_divchildlist = value.nodes()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":nodes")
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
          } else if valsub is any Vx_Web_Html.Type_divchildlist {
            ischanged = true
            vx_p_nodes = valsub as! any Vx_Web_Html.Type_divchildlist
          } else if valsub is any Vx_Web_Html.Type_divchild {
            var valdefault : any Vx_Web_Html.Type_divchild = valsub as! any Vx_Web_Html.Type_divchild
            var vallist : any Vx_Web_Html.Type_divchildlist = Vx_Web_Html.e_divchildlist
            vallist = vx_p_nodes
            if vallist == nil {
              vallist = Vx_Core.vx_new(
                Vx_Web_Html.t_divchildlist,
                [
                  valdefault
                ]
              )
            } else {
              vallist = Vx_Core.vx_copy(
            Vx_Web_Html.t_divchildlist,
            vallist,
            [
              valdefault
            ]
          )
            }
            ischanged = true
            vx_p_nodes = vallist
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
              "vx/web/html/td",
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
                "vx/web/html/td",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/td",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/td",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/td",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/td",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/td",
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
          } else if key == ":nodes" {
            if Vx_Core.vx_issame(valsub, vx_p_nodes) {
            } else if let valnodes = valsub as? any Vx_Web_Html.Type_divchildlist {
              ischanged = true
              vx_p_nodes = valnodes
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("nodes"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/td",
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
              "vx/web/html/td",
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
        var work : Vx_Web_Html.Class_td = Vx_Web_Html.Class_td()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_nodes = vx_p_nodes
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_td
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_td
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "td",
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
      )
      return output
    }

  }

  public static let e_td : any Vx_Web_Html.Type_td = Vx_Web_Html.Class_td()
  public static let t_td : any Vx_Web_Html.Type_td = Vx_Web_Html.Class_td()


  public protocol Type_tdlist : Vx_Core.Type_list, AnyObject {
    func vx_listtd() -> [any Vx_Web_Html.Type_td]
    func vx_td(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_td
  }

  public class Class_tdlist : Vx_Core.Class_base, Type_tdlist {

    public var vx_p_list : [any Vx_Web_Html.Type_td] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_td(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_td {
      var output : any Vx_Web_Html.Type_td = Vx_Web_Html.e_td
      var list : Vx_Web_Html.Class_tdlist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Web_Html.Type_td] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listtd() -> [any Vx_Web_Html.Type_td] {
      var output : [any Vx_Web_Html.Type_td] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_td = self.vx_td(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_tdlist = Vx_Core.vx_copy(
        Vx_Web_Html.t_tdlist,
        Vx_Web_Html.e_tdlist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_tdlist = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_tdlist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Web_Html.Type_td] = Array(value.vx_listtd())
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
        } else if let multi = valsub as? any Vx_Web_Html.Type_tdlist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listtd())
        } else if let allowsub = valsub as? any Vx_Web_Html.Type_td {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Web_Html.Type_td {
          var subitem : any Vx_Web_Html.Type_td = valsub as! any Vx_Web_Html.Type_td
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Web_Html.Type_td {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/web/html/tdlist",
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
            "vx/web/html/tdlist",
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
        var work : Vx_Web_Html.Class_tdlist = Vx_Web_Html.Class_tdlist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_tdlist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_tdlist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "tdlist",
        ":list",
        Vx_Core.e_typelist,
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Web_Html.t_td
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

  public static let e_tdlist : any Vx_Web_Html.Type_tdlist = Vx_Web_Html.Class_tdlist()
  public static let t_tdlist : any Vx_Web_Html.Type_tdlist = Vx_Web_Html.Class_tdlist()


  public protocol Type_thead : Vx_Core.Type_struct, Vx_Web_Html.Type_node, AnyObject {
    func nodes() -> any Vx_Web_Html.Type_trlist
  }

  public class Class_thead : Vx_Core.Class_base, Type_thead {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
        output = testnull
      }
      return output
    }

    public var vx_p_nodes : (any Vx_Web_Html.Type_trlist)? = nil

    public func nodes() -> any Vx_Web_Html.Type_trlist {
      var output : any Vx_Web_Html.Type_trlist = Vx_Web_Html.e_trlist
      if let testnull = vx_p_nodes {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":nodes" {
        output = self.nodes()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":nodes", self.nodes())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_thead = Vx_Core.vx_copy(
        Vx_Web_Html.t_thead,
        Vx_Web_Html.e_thead,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_thead = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_thead = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_nodes : any Vx_Web_Html.Type_trlist = value.nodes()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":nodes")
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
          } else if valsub is any Vx_Web_Html.Type_trlist {
            ischanged = true
            vx_p_nodes = valsub as! any Vx_Web_Html.Type_trlist
          } else if valsub is any Vx_Web_Html.Type_tr {
            var valdefault : any Vx_Web_Html.Type_tr = valsub as! any Vx_Web_Html.Type_tr
            var vallist : any Vx_Web_Html.Type_trlist = Vx_Web_Html.e_trlist
            vallist = vx_p_nodes
            if vallist == nil {
              vallist = Vx_Core.vx_new(
                Vx_Web_Html.t_trlist,
                [
                  valdefault
                ]
              )
            } else {
              vallist = Vx_Core.vx_copy(
            Vx_Web_Html.t_trlist,
            vallist,
            [
              valdefault
            ]
          )
            }
            ischanged = true
            vx_p_nodes = vallist
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
              "vx/web/html/thead",
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
                "vx/web/html/thead",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/thead",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/thead",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/thead",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/thead",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/thead",
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
          } else if key == ":nodes" {
            if Vx_Core.vx_issame(valsub, vx_p_nodes) {
            } else if let valnodes = valsub as? any Vx_Web_Html.Type_trlist {
              ischanged = true
              vx_p_nodes = valnodes
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("nodes"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/thead",
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
              "vx/web/html/thead",
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
        var work : Vx_Web_Html.Class_thead = Vx_Web_Html.Class_thead()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_nodes = vx_p_nodes
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_thead
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_thead
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "thead",
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
      )
      return output
    }

  }

  public static let e_thead : any Vx_Web_Html.Type_thead = Vx_Web_Html.Class_thead()
  public static let t_thead : any Vx_Web_Html.Type_thead = Vx_Web_Html.Class_thead()


  public protocol Type_title : Vx_Core.Type_struct, Vx_Web_Html.Type_node, Vx_Web_Html.Type_headchild, AnyObject {
    func text() -> any Vx_Core.Type_string
  }

  public class Class_title : Vx_Core.Class_base, Type_title {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":text" {
        output = self.text()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":text", self.text())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_title = Vx_Core.vx_copy(
        Vx_Web_Html.t_title,
        Vx_Web_Html.e_title,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_title = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_title = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_text : any Vx_Core.Type_string = value.text()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":text")
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
              "vx/web/html/title",
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
                "vx/web/html/title",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/title",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/title",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/title",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/title",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/title",
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
          } else if key == ":text" {
            if Vx_Core.vx_issame(valsub, vx_p_text) {
            } else if let valtext = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_text = valtext
            } else if valsub is String {
              ischanged = true
              vx_p_text = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("text"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/title",
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
              "vx/web/html/title",
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
        var work : Vx_Web_Html.Class_title = Vx_Web_Html.Class_title()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_text = vx_p_text
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_title
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_title
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/web/html",
        "title",
        ":struct",
        Vx_Core.vx_new(
          Vx_Core.t_typelist,
          [
            Vx_Web_Html.t_node,
            Vx_Web_Html.t_headchild
          ]
        ),
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

  public static let e_title : any Vx_Web_Html.Type_title = Vx_Web_Html.Class_title()
  public static let t_title : any Vx_Web_Html.Type_title = Vx_Web_Html.Class_title()


  public protocol Type_tr : Vx_Core.Type_struct, Vx_Web_Html.Type_node, AnyObject {
    func nodes() -> any Vx_Web_Html.Type_tdlist
  }

  public class Class_tr : Vx_Core.Class_base, Type_tr {

    public var vx_p_id : (any Vx_Core.Type_string)? = nil

    public func id() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_id {
        output = testnull
      }
      return output
    }

    public var vx_p_eventmap : (any Vx_Event.Type_eventmap)? = nil

    public func eventmap() -> any Vx_Event.Type_eventmap {
      var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
      if let testnull = vx_p_eventmap {
        output = testnull
      }
      return output
    }

    public var vx_p_style : (any Vx_Web_Html.Type_style)? = nil

    public func style() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style {
        output = testnull
      }
      return output
    }

    public var vx_p_style_unique : (any Vx_Web_Html.Type_style)? = nil

    public func style_unique() -> any Vx_Web_Html.Type_style {
      var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
      if let testnull = vx_p_style_unique {
        output = testnull
      }
      return output
    }

    public var vx_p_stylelist : (any Vx_Web_Html.Type_stylelist)? = nil

    public func stylelist() -> any Vx_Web_Html.Type_stylelist {
      var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
      if let testnull = vx_p_stylelist {
        output = testnull
      }
      return output
    }

    public var vx_p_nodes : (any Vx_Web_Html.Type_tdlist)? = nil

    public func nodes() -> any Vx_Web_Html.Type_tdlist {
      var output : any Vx_Web_Html.Type_tdlist = Vx_Web_Html.e_tdlist
      if let testnull = vx_p_nodes {
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
      } else if skey == ":id" {
        output = self.id()
      } else if skey == ":eventmap" {
        output = self.eventmap()
      } else if skey == ":style" {
        output = self.style()
      } else if skey == ":style-unique" {
        output = self.style_unique()
      } else if skey == ":stylelist" {
        output = self.stylelist()
      } else if skey == ":nodes" {
        output = self.nodes()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":id", self.id())
      map.put(":eventmap", self.eventmap())
      map.put(":style", self.style())
      map.put(":style-unique", self.style_unique())
      map.put(":stylelist", self.stylelist())
      map.put(":nodes", self.nodes())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_tr = Vx_Core.vx_copy(
        Vx_Web_Html.t_tr,
        Vx_Web_Html.e_tr,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_tr = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_tr = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_id : any Vx_Core.Type_string = value.id()
      var vx_p_eventmap : any Vx_Event.Type_eventmap = value.eventmap()
      var vx_p_style : any Vx_Web_Html.Type_style = value.style()
      var vx_p_style_unique : any Vx_Web_Html.Type_style = value.style_unique()
      var vx_p_stylelist : any Vx_Web_Html.Type_stylelist = value.stylelist()
      var vx_p_nodes : any Vx_Web_Html.Type_tdlist = value.nodes()
      var validkeys : [String] = []
      validkeys.append(":id")
      validkeys.append(":eventmap")
      validkeys.append(":style")
      validkeys.append(":style-unique")
      validkeys.append(":stylelist")
      validkeys.append(":nodes")
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
          } else if valsub is any Vx_Web_Html.Type_tdlist {
            ischanged = true
            vx_p_nodes = valsub as! any Vx_Web_Html.Type_tdlist
          } else if valsub is any Vx_Web_Html.Type_td {
            var valdefault : any Vx_Web_Html.Type_td = valsub as! any Vx_Web_Html.Type_td
            var vallist : any Vx_Web_Html.Type_tdlist = Vx_Web_Html.e_tdlist
            vallist = vx_p_nodes
            if vallist == nil {
              vallist = Vx_Core.vx_new(
                Vx_Web_Html.t_tdlist,
                [
                  valdefault
                ]
              )
            } else {
              vallist = Vx_Core.vx_copy(
            Vx_Web_Html.t_tdlist,
            vallist,
            [
              valdefault
            ]
          )
            }
            ischanged = true
            vx_p_nodes = vallist
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
              "vx/web/html/tr",
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
                "vx/web/html/tr",
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
          } else if key == ":id" {
            if Vx_Core.vx_issame(valsub, vx_p_id) {
            } else if let valid = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_id = valid
            } else if valsub is String {
              ischanged = true
              vx_p_id = Vx_Core.vx_new(
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
              mapany.put("key", Vx_Core.vx_new_string("id"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tr",
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
          } else if key == ":eventmap" {
            if Vx_Core.vx_issame(valsub, vx_p_eventmap) {
            } else if let valeventmap = valsub as? any Vx_Event.Type_eventmap {
              ischanged = true
              vx_p_eventmap = valeventmap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("eventmap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tr",
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
          } else if key == ":style" {
            if Vx_Core.vx_issame(valsub, vx_p_style) {
            } else if let valstyle = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style = valstyle
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tr",
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
          } else if key == ":style-unique" {
            if Vx_Core.vx_issame(valsub, vx_p_style_unique) {
            } else if let valstyle_unique = valsub as? any Vx_Web_Html.Type_style {
              ischanged = true
              vx_p_style_unique = valstyle_unique
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("style-unique"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tr",
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
          } else if key == ":stylelist" {
            if Vx_Core.vx_issame(valsub, vx_p_stylelist) {
            } else if let valstylelist = valsub as? any Vx_Web_Html.Type_stylelist {
              ischanged = true
              vx_p_stylelist = valstylelist
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("stylelist"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tr",
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
          } else if key == ":nodes" {
            if Vx_Core.vx_issame(valsub, vx_p_nodes) {
            } else if let valnodes = valsub as? any Vx_Web_Html.Type_tdlist {
              ischanged = true
              vx_p_nodes = valnodes
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("nodes"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(
                Vx_Core.vx_mapimmutable(mapany)
              )
              msg = Vx_Core.vx_msg_from_error(
                "vx/web/html/tr",
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
              "vx/web/html/tr",
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
        var work : Vx_Web_Html.Class_tr = Vx_Web_Html.Class_tr()
        work.vx_p_id = vx_p_id
        work.vx_p_eventmap = vx_p_eventmap
        work.vx_p_style = vx_p_style
        work.vx_p_style_unique = vx_p_style_unique
        work.vx_p_stylelist = vx_p_stylelist
        work.vx_p_nodes = vx_p_nodes
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_tr
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_tr
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
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
      )
      return output
    }

  }

  public static let e_tr : any Vx_Web_Html.Type_tr = Vx_Web_Html.Class_tr()
  public static let t_tr : any Vx_Web_Html.Type_tr = Vx_Web_Html.Class_tr()


  public protocol Type_trlist : Vx_Core.Type_list, AnyObject {
    func vx_listtr() -> [any Vx_Web_Html.Type_tr]
    func vx_tr(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_tr
  }

  public class Class_trlist : Vx_Core.Class_base, Type_trlist {

    public var vx_p_list : [any Vx_Web_Html.Type_tr] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_tr(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Web_Html.Type_tr {
      var output : any Vx_Web_Html.Type_tr = Vx_Web_Html.e_tr
      var list : Vx_Web_Html.Class_trlist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Web_Html.Type_tr] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listtr() -> [any Vx_Web_Html.Type_tr] {
      var output : [any Vx_Web_Html.Type_tr] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_tr = self.vx_tr(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_trlist = Vx_Core.vx_copy(
        Vx_Web_Html.t_trlist,
        Vx_Web_Html.e_trlist,
        vals
      )
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Web_Html.Type_trlist = self
      var ischanged : Bool = false
      var value : Vx_Web_Html.Class_trlist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Web_Html.Type_tr] = Array(value.vx_listtr())
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
        } else if let multi = valsub as? any Vx_Web_Html.Type_trlist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listtr())
        } else if let allowsub = valsub as? any Vx_Web_Html.Type_tr {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Web_Html.Type_tr {
          var subitem : any Vx_Web_Html.Type_tr = valsub as! any Vx_Web_Html.Type_tr
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Web_Html.Type_tr {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error(
            "vx/web/html/trlist",
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
            "vx/web/html/trlist",
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
        var work : Vx_Web_Html.Class_trlist = Vx_Web_Html.Class_trlist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.e_trlist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Web_Html.t_trlist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
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
      )
      return output
    }

  }

  public static let e_trlist : any Vx_Web_Html.Type_trlist = Vx_Web_Html.Class_trlist()
  public static let t_trlist : any Vx_Web_Html.Type_trlist = Vx_Web_Html.Class_trlist()


  public protocol Func_htmlstring_from_string : Vx_Core.Func_any_from_any, AnyObject {
    func vx_htmlstring_from_string(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_htmlstring_from_string : Vx_Core.Class_base, Func_htmlstring_from_string {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_htmlstring_from_string = Vx_Web_Html.Class_htmlstring_from_string()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_htmlstring_from_string = Vx_Web_Html.Class_htmlstring_from_string()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "htmlstring<-string", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_htmlstring_from_string
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_htmlstring_from_string
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
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_htmlstring_from_string(inputval)
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
      output = Vx_Web_Html.f_htmlstring_from_string(text)
      return output
    }

    public func vx_htmlstring_from_string(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_htmlstring_from_string(text)
      return output
    }

  }

  public static let e_htmlstring_from_string : any Vx_Web_Html.Func_htmlstring_from_string = Vx_Web_Html.Class_htmlstring_from_string()
  public static let t_htmlstring_from_string : any Vx_Web_Html.Func_htmlstring_from_string = Vx_Web_Html.Class_htmlstring_from_string()

  public static func f_htmlstring_from_string(
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Web_Html.vx_htmlstring_from_string(text)
    return output
  }


  public protocol Func_string_indent : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_indent(
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_indent : Vx_Core.Class_base, Func_string_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_indent = Vx_Web_Html.Class_string_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_indent = Vx_Web_Html.Class_string_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_indent
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
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_string_indent(inputval)
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
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_string_indent(indent)
      return output
    }

    public func vx_string_indent(
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_indent(indent)
      return output
    }

  }

  public static let e_string_indent : any Vx_Web_Html.Func_string_indent = Vx_Web_Html.Class_string_indent()
  public static let t_string_indent : any Vx_Web_Html.Func_string_indent = Vx_Web_Html.Class_string_indent()

  public static func f_string_indent(
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_string_repeat(
      Vx_Core.vx_new_string("  "),
      indent
    )
    return output
  }


  public protocol Func_string_from_body_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_body_indent(
      _ body : any Vx_Web_Html.Type_body,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_body_indent : Vx_Core.Class_base, Func_string_from_body_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_body_indent = Vx_Web_Html.Class_string_from_body_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_body_indent = Vx_Web_Html.Class_string_from_body_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-body-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_body_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_body_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let body : any Vx_Web_Html.Type_body = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_body,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_body_indent(body, indent)
      return output
    }

    public func vx_string_from_body_indent(
      _ body : any Vx_Web_Html.Type_body,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_body_indent(body, indent)
      return output
    }

  }

  public static let e_string_from_body_indent : any Vx_Web_Html.Func_string_from_body_indent = Vx_Web_Html.Class_string_from_body_indent()
  public static let t_string_from_body_indent : any Vx_Web_Html.Func_string_from_body_indent = Vx_Web_Html.Class_string_from_body_indent()

  public static func f_string_from_body_indent(
    _ body : any Vx_Web_Html.Type_body,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let nodes : any Vx_Web_Html.Type_divchildlist = body.nodes()
          let output_1 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_nodelist_tag_prop_indent(
            nodes,
            Vx_Core.vx_new_string("body"),
            Vx_Core.vx_new_string(""),
            indent
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_details_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_details_indent(
      _ details : any Vx_Web_Html.Type_details,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_details_indent : Vx_Core.Class_base, Func_string_from_details_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_details_indent = Vx_Web_Html.Class_string_from_details_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_details_indent = Vx_Web_Html.Class_string_from_details_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-details-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_details_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_details_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let details : any Vx_Web_Html.Type_details = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_details,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_details_indent(details, indent)
      return output
    }

    public func vx_string_from_details_indent(
      _ details : any Vx_Web_Html.Type_details,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_details_indent(details, indent)
      return output
    }

  }

  public static let e_string_from_details_indent : any Vx_Web_Html.Func_string_from_details_indent = Vx_Web_Html.Class_string_from_details_indent()
  public static let t_string_from_details_indent : any Vx_Web_Html.Func_string_from_details_indent = Vx_Web_Html.Class_string_from_details_indent()

  public static func f_string_from_details_indent(
    _ details : any Vx_Web_Html.Type_details,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let summary : any Vx_Web_Html.Type_divchildlist = details.summary()
          let nodes : any Vx_Web_Html.Type_divchildlist = details.nodes()
          let ssummary : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_nodelist_indent(
            summary,
            Vx_Core.f_plus(
              indent,
              Vx_Core.vx_new_int(2)
            )
          )
          let snodes : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_nodelist_indent(
            nodes,
            Vx_Core.f_plus(
              indent,
              Vx_Core.vx_new_int(1)
            )
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<details>"),
                sindent,
                Vx_Core.vx_new_string("  <summary>"),
                ssummary,
                sindent,
                Vx_Core.vx_new_string("  </summary>"),
                snodes,
                sindent,
                Vx_Core.vx_new_string("</details>")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_div_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_div_indent(
      _ div : any Vx_Web_Html.Type_div,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_div_indent : Vx_Core.Class_base, Func_string_from_div_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_div_indent = Vx_Web_Html.Class_string_from_div_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_div_indent = Vx_Web_Html.Class_string_from_div_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-div-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_div_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_div_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let div : any Vx_Web_Html.Type_div = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_div,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_div_indent(div, indent)
      return output
    }

    public func vx_string_from_div_indent(
      _ div : any Vx_Web_Html.Type_div,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_div_indent(div, indent)
      return output
    }

  }

  public static let e_string_from_div_indent : any Vx_Web_Html.Func_string_from_div_indent = Vx_Web_Html.Class_string_from_div_indent()
  public static let t_string_from_div_indent : any Vx_Web_Html.Func_string_from_div_indent = Vx_Web_Html.Class_string_from_div_indent()

  public static func f_string_from_div_indent(
    _ div : any Vx_Web_Html.Type_div,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let nodes : any Vx_Web_Html.Type_divchildlist = div.nodes()
          let sid : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propname_val(
            Vx_Core.vx_new_string("id"),
            div.id()
          )
          let sclass : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propstyle_stylelist(
            div.style(),
            div.stylelist()
          )
          let sstyle : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propstyleunique(div.style_unique())
          let output_1 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_nodelist_tag_prop_indent(
            nodes,
            Vx_Core.vx_new_string("div"),
            Vx_Core.f_new(
              Vx_Core.t_string,
              Vx_Core.vx_new(
                Vx_Core.t_anylist,
                [
                  sid,
                  sclass,
                  sstyle
                ]
              )
            ),
            indent
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_footer_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_footer_indent(
      _ footer : any Vx_Web_Html.Type_footer,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_footer_indent : Vx_Core.Class_base, Func_string_from_footer_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_footer_indent = Vx_Web_Html.Class_string_from_footer_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_footer_indent = Vx_Web_Html.Class_string_from_footer_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-footer-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_footer_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_footer_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let footer : any Vx_Web_Html.Type_footer = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_footer,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_footer_indent(footer, indent)
      return output
    }

    public func vx_string_from_footer_indent(
      _ footer : any Vx_Web_Html.Type_footer,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_footer_indent(footer, indent)
      return output
    }

  }

  public static let e_string_from_footer_indent : any Vx_Web_Html.Func_string_from_footer_indent = Vx_Web_Html.Class_string_from_footer_indent()
  public static let t_string_from_footer_indent : any Vx_Web_Html.Func_string_from_footer_indent = Vx_Web_Html.Class_string_from_footer_indent()

  public static func f_string_from_footer_indent(
    _ footer : any Vx_Web_Html.Type_footer,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let nodes : any Vx_Web_Html.Type_divchildlist = footer.nodes()
          let output_1 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_nodelist_tag_prop_indent(
            nodes,
            Vx_Core.vx_new_string("footer"),
            Vx_Core.vx_new_string(""),
            indent
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_h1_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_h1_indent(
      _ h1 : any Vx_Web_Html.Type_h1,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_h1_indent : Vx_Core.Class_base, Func_string_from_h1_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_h1_indent = Vx_Web_Html.Class_string_from_h1_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_h1_indent = Vx_Web_Html.Class_string_from_h1_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-h1-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_h1_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_h1_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let h1 : any Vx_Web_Html.Type_h1 = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_h1,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_h1_indent(h1, indent)
      return output
    }

    public func vx_string_from_h1_indent(
      _ h1 : any Vx_Web_Html.Type_h1,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_h1_indent(h1, indent)
      return output
    }

  }

  public static let e_string_from_h1_indent : any Vx_Web_Html.Func_string_from_h1_indent = Vx_Web_Html.Class_string_from_h1_indent()
  public static let t_string_from_h1_indent : any Vx_Web_Html.Func_string_from_h1_indent = Vx_Web_Html.Class_string_from_h1_indent()

  public static func f_string_from_h1_indent(
    _ h1 : any Vx_Web_Html.Type_h1,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let text : any Vx_Core.Type_string = h1.text()
          let sid : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propname_val(
            Vx_Core.vx_new_string("id"),
            h1.id()
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<h1"),
                sid,
                Vx_Core.vx_new_string(">"),
                text,
                Vx_Core.vx_new_string("</h1>")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_h2_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_h2_indent(
      _ h2 : any Vx_Web_Html.Type_h2,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_h2_indent : Vx_Core.Class_base, Func_string_from_h2_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_h2_indent = Vx_Web_Html.Class_string_from_h2_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_h2_indent = Vx_Web_Html.Class_string_from_h2_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-h2-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_h2_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_h2_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let h2 : any Vx_Web_Html.Type_h2 = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_h2,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_h2_indent(h2, indent)
      return output
    }

    public func vx_string_from_h2_indent(
      _ h2 : any Vx_Web_Html.Type_h2,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_h2_indent(h2, indent)
      return output
    }

  }

  public static let e_string_from_h2_indent : any Vx_Web_Html.Func_string_from_h2_indent = Vx_Web_Html.Class_string_from_h2_indent()
  public static let t_string_from_h2_indent : any Vx_Web_Html.Func_string_from_h2_indent = Vx_Web_Html.Class_string_from_h2_indent()

  public static func f_string_from_h2_indent(
    _ h2 : any Vx_Web_Html.Type_h2,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let text : any Vx_Core.Type_string = h2.text()
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let sid : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propname_val(
            Vx_Core.vx_new_string("id"),
            h2.id()
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<h2"),
                sid,
                Vx_Core.vx_new_string(">"),
                text,
                Vx_Core.vx_new_string("</h2>")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_h3_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_h3_indent(
      _ h3 : any Vx_Web_Html.Type_h3,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_h3_indent : Vx_Core.Class_base, Func_string_from_h3_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_h3_indent = Vx_Web_Html.Class_string_from_h3_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_h3_indent = Vx_Web_Html.Class_string_from_h3_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-h3-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_h3_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_h3_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let h3 : any Vx_Web_Html.Type_h3 = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_h3,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_h3_indent(h3, indent)
      return output
    }

    public func vx_string_from_h3_indent(
      _ h3 : any Vx_Web_Html.Type_h3,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_h3_indent(h3, indent)
      return output
    }

  }

  public static let e_string_from_h3_indent : any Vx_Web_Html.Func_string_from_h3_indent = Vx_Web_Html.Class_string_from_h3_indent()
  public static let t_string_from_h3_indent : any Vx_Web_Html.Func_string_from_h3_indent = Vx_Web_Html.Class_string_from_h3_indent()

  public static func f_string_from_h3_indent(
    _ h3 : any Vx_Web_Html.Type_h3,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let text : any Vx_Core.Type_string = h3.text()
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let sid : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propname_val(
            Vx_Core.vx_new_string("id"),
            h3.id()
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<h3"),
                sid,
                Vx_Core.vx_new_string(">"),
                text,
                Vx_Core.vx_new_string("</h3>")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_head_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_head_indent(
      _ head : any Vx_Web_Html.Type_head,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_head_indent : Vx_Core.Class_base, Func_string_from_head_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_head_indent = Vx_Web_Html.Class_string_from_head_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_head_indent = Vx_Web_Html.Class_string_from_head_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-head-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_head_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_head_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let head : any Vx_Web_Html.Type_head = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_head,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_head_indent(head, indent)
      return output
    }

    public func vx_string_from_head_indent(
      _ head : any Vx_Web_Html.Type_head,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_head_indent(head, indent)
      return output
    }

  }

  public static let e_string_from_head_indent : any Vx_Web_Html.Func_string_from_head_indent = Vx_Web_Html.Class_string_from_head_indent()
  public static let t_string_from_head_indent : any Vx_Web_Html.Func_string_from_head_indent = Vx_Web_Html.Class_string_from_head_indent()

  public static func f_string_from_head_indent(
    _ head : any Vx_Web_Html.Type_head,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let nodes : any Vx_Web_Html.Type_headchildlist = head.nodes()
          let output_1 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_nodelist_tag_prop_indent(
            nodes,
            Vx_Core.vx_new_string("head"),
            Vx_Core.vx_new_string(""),
            indent
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_html : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_from_html(
      _ html : any Vx_Web_Html.Type_html
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_html : Vx_Core.Class_base, Func_string_from_html {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_html = Vx_Web_Html.Class_string_from_html()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_html = Vx_Web_Html.Class_string_from_html()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-html", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_html
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_html
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
      let inputval : any Vx_Web_Html.Type_html = value as! any Vx_Web_Html.Type_html
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_html(inputval)
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
      let html : any Vx_Web_Html.Type_html = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_html,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_string_from_html(html)
      return output
    }

    public func vx_string_from_html(
      _ html : any Vx_Web_Html.Type_html
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_html(html)
      return output
    }

  }

  public static let e_string_from_html : any Vx_Web_Html.Func_string_from_html = Vx_Web_Html.Class_string_from_html()
  public static let t_string_from_html : any Vx_Web_Html.Func_string_from_html = Vx_Web_Html.Class_string_from_html()

  public static func f_string_from_html(
    _ html : any Vx_Web_Html.Type_html
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let lang : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propname_val(
            Vx_Core.vx_new_string("lang"),
            html.lang()
          )
          let head : any Vx_Web_Html.Type_head = html.head()
          let body : any Vx_Web_Html.Type_body = html.body()
          let footer : any Vx_Web_Html.Type_footer = html.footer()
          let shead : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_head_indent(
            head,
            Vx_Core.vx_new_int(1)
          )
          let sbody : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_body_indent(
            body,
            Vx_Core.vx_new_int(1)
          )
          let sfooter : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_footer_indent(
            footer,
            Vx_Core.vx_new_int(1)
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                Vx_Core.vx_new_string("<!DOCTYPE html>"),
                Vx_Core.c_newline,
                Vx_Core.vx_new_string("<html"),
                lang,
                Vx_Core.vx_new_string(">"),
                shead,
                sbody,
                sfooter,
                Vx_Core.c_newline,
                Vx_Core.vx_new_string("</html>")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_img_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_img_indent(
      _ img : any Vx_Web_Html.Type_img,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_img_indent : Vx_Core.Class_base, Func_string_from_img_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_img_indent = Vx_Web_Html.Class_string_from_img_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_img_indent = Vx_Web_Html.Class_string_from_img_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-img-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_img_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_img_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let img : any Vx_Web_Html.Type_img = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_img,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_img_indent(img, indent)
      return output
    }

    public func vx_string_from_img_indent(
      _ img : any Vx_Web_Html.Type_img,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_img_indent(img, indent)
      return output
    }

  }

  public static let e_string_from_img_indent : any Vx_Web_Html.Func_string_from_img_indent = Vx_Web_Html.Class_string_from_img_indent()
  public static let t_string_from_img_indent : any Vx_Web_Html.Func_string_from_img_indent = Vx_Web_Html.Class_string_from_img_indent()

  public static func f_string_from_img_indent(
    _ img : any Vx_Web_Html.Type_img,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let ssrc : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propname_val(
            Vx_Core.vx_new_string("src"),
            img.src()
          )
          let sid : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propname_val(
            Vx_Core.vx_new_string("id"),
            img.id()
          )
          let sclass : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propstyle_stylelist(
            img.style(),
            img.stylelist()
          )
          let sstyle : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propstyleunique(img.style_unique())
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<img"),
                sid,
                sclass,
                sstyle,
                ssrc,
                Vx_Core.vx_new_string(" />")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_indent : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_from_indent(
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_indent : Vx_Core.Class_base, Func_string_from_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_indent = Vx_Web_Html.Class_string_from_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_indent = Vx_Web_Html.Class_string_from_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_indent
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
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_indent(inputval)
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
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_string_from_indent(indent)
      return output
    }

    public func vx_string_from_indent(
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
      return output
    }

  }

  public static let e_string_from_indent : any Vx_Web_Html.Func_string_from_indent = Vx_Web_Html.Class_string_from_indent()
  public static let t_string_from_indent : any Vx_Web_Html.Func_string_from_indent = Vx_Web_Html.Class_string_from_indent()

  public static func f_string_from_indent(
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_if_1(
      Vx_Core.t_string,
      Vx_Core.f_eq(
        indent,
        Vx_Core.vx_new_int(0)
      ),
      Vx_Core.vx_new_string(""),
      Vx_Core.f_new(
        Vx_Core.t_string,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.c_newline,
            Vx_Web_Html.f_string_indent(indent)
          ]
        )
      )
    )
    return output
  }


  public protocol Func_string_from_meta_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_meta_indent(
      _ meta : any Vx_Web_Html.Type_meta,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_meta_indent : Vx_Core.Class_base, Func_string_from_meta_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_meta_indent = Vx_Web_Html.Class_string_from_meta_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_meta_indent = Vx_Web_Html.Class_string_from_meta_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-meta-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_meta_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_meta_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let meta : any Vx_Web_Html.Type_meta = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_meta,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_meta_indent(meta, indent)
      return output
    }

    public func vx_string_from_meta_indent(
      _ meta : any Vx_Web_Html.Type_meta,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_meta_indent(meta, indent)
      return output
    }

  }

  public static let e_string_from_meta_indent : any Vx_Web_Html.Func_string_from_meta_indent = Vx_Web_Html.Class_string_from_meta_indent()
  public static let t_string_from_meta_indent : any Vx_Web_Html.Func_string_from_meta_indent = Vx_Web_Html.Class_string_from_meta_indent()

  public static func f_string_from_meta_indent(
    _ meta : any Vx_Web_Html.Type_meta,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let charset : any Vx_Core.Type_string = meta.charset()
          let name : any Vx_Core.Type_string = meta.name()
          let content : any Vx_Core.Type_string = meta.content()
          let scharset : any Vx_Core.Type_string = Vx_Core.f_if_2(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_thenelselist,
              [
                Vx_Core.f_then(
                  Vx_Core.t_boolean_from_func.vx_fn_new(
                    {() in
                      var output_2 : any Vx_Core.Type_any = Vx_Core.f_ne(
                          Vx_Core.vx_new_string(""),
                          charset
                        )
                        return output_2
                      }
                  ),
                  Vx_Core.t_any_from_func.vx_fn_new(
                    {() in
                      var output_3 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_propname_val(
                          Vx_Core.vx_new_string("charset"),
                          charset
                        )
                        return output_3
                      }
                  )
                )
              ]
            )
          )
          let sname : any Vx_Core.Type_string = Vx_Core.f_if_2(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_thenelselist,
              [
                Vx_Core.f_then(
                  Vx_Core.t_boolean_from_func.vx_fn_new(
                    {() in
                      var output_4 : any Vx_Core.Type_any = Vx_Core.f_ne(
                          Vx_Core.vx_new_string(""),
                          name
                        )
                        return output_4
                      }
                  ),
                  Vx_Core.t_any_from_func.vx_fn_new(
                    {() in
                      var output_5 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_propname_val(
                          Vx_Core.vx_new_string("name"),
                          name
                        )
                        return output_5
                      }
                  )
                )
              ]
            )
          )
          let scontext : any Vx_Core.Type_string = Vx_Core.f_if_2(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_thenelselist,
              [
                Vx_Core.f_then(
                  Vx_Core.t_boolean_from_func.vx_fn_new(
                    {() in
                      var output_6 : any Vx_Core.Type_any = Vx_Core.f_ne(
                          Vx_Core.vx_new_string(""),
                          content
                        )
                        return output_6
                      }
                  ),
                  Vx_Core.t_any_from_func.vx_fn_new(
                    {() in
                      var output_7 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_propname_val(
                          Vx_Core.vx_new_string("content"),
                          content
                        )
                        return output_7
                      }
                  )
                )
              ]
            )
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<meta"),
                scharset,
                sname,
                scontext,
                Vx_Core.vx_new_string(" />")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_node : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_from_node(
      _ node : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_node : Vx_Core.Class_base, Func_string_from_node {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_node = Vx_Web_Html.Class_string_from_node()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_node = Vx_Web_Html.Class_string_from_node()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-node", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_node
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_node
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
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_node(inputval)
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
      let node : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_string_from_node(node)
      return output
    }

    public func vx_string_from_node(
      _ node : any Vx_Core.Type_any
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_node(node)
      return output
    }

  }

  public static let e_string_from_node : any Vx_Web_Html.Func_string_from_node = Vx_Web_Html.Class_string_from_node()
  public static let t_string_from_node : any Vx_Web_Html.Func_string_from_node = Vx_Web_Html.Class_string_from_node()

  public static func f_string_from_node(
    _ node : any Vx_Core.Type_any
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Web_Html.f_string_from_node_indent(
      node,
      Vx_Core.vx_new_int(0)
    )
    return output
  }


  public protocol Func_string_from_node_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_node_indent(
      _ node : any Vx_Core.Type_any,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_node_indent : Vx_Core.Class_base, Func_string_from_node_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_node_indent = Vx_Web_Html.Class_string_from_node_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_node_indent = Vx_Web_Html.Class_string_from_node_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-node-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_node_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_node_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let node : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
        Vx_Core.t_any,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_node_indent(node, indent)
      return output
    }

    public func vx_string_from_node_indent(
      _ node : any Vx_Core.Type_any,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_node_indent(node, indent)
      return output
    }

  }

  public static let e_string_from_node_indent : any Vx_Web_Html.Func_string_from_node_indent = Vx_Web_Html.Class_string_from_node_indent()
  public static let t_string_from_node_indent : any Vx_Web_Html.Func_string_from_node_indent = Vx_Web_Html.Class_string_from_node_indent()

  public static func f_string_from_node_indent(
    _ node : any Vx_Core.Type_any,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_switch(
      Vx_Core.t_string,
      Vx_Core.f_type_from_any(node),
      Vx_Core.vx_new(
        Vx_Core.t_thenelselist,
        [
          Vx_Core.f_case_1(
            Vx_Web_Html.t_body,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_1 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_body_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_body,
                      node
                    ),
                    indent
                  )
                  return output_1
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_details,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_2 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_details_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_details,
                      node
                    ),
                    indent
                  )
                  return output_2
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_div,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_3 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_div_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_div,
                      node
                    ),
                    indent
                  )
                  return output_3
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_h1,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_4 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_h1_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_h1,
                      node
                    ),
                    indent
                  )
                  return output_4
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_h2,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_5 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_h2_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_h2,
                      node
                    ),
                    indent
                  )
                  return output_5
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_h3,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_6 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_h3_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_h3,
                      node
                    ),
                    indent
                  )
                  return output_6
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_head,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_7 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_head_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_head,
                      node
                    ),
                    indent
                  )
                  return output_7
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_footer,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_8 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_footer_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_footer,
                      node
                    ),
                    indent
                  )
                  return output_8
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_img,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_9 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_img_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_img,
                      node
                    ),
                    indent
                  )
                  return output_9
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_meta,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_10 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_meta_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_meta,
                      node
                    ),
                    indent
                  )
                  return output_10
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_p,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_11 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_p_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_p,
                      node
                    ),
                    indent
                  )
                  return output_11
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_stylesheet,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_12 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_stylesheet_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_stylesheet,
                      node
                    ),
                    indent
                  )
                  return output_12
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_table,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_13 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_table_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_table,
                      node
                    ),
                    indent
                  )
                  return output_13
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_title,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_14 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_title_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_title,
                      node
                    ),
                    indent
                  )
                  return output_14
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_tbody,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_15 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_tbody_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_tbody,
                      node
                    ),
                    indent
                  )
                  return output_15
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_thead,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_16 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_thead_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_thead,
                      node
                    ),
                    indent
                  )
                  return output_16
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_td,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_17 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_td_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_td,
                      node
                    ),
                    indent
                  )
                  return output_17
                }
            )
          ),
          Vx_Core.f_case_1(
            Vx_Web_Html.t_tr,
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_18 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_tr_indent(
                    Vx_Core.f_any_from_any(
                      Vx_Web_Html.t_tr,
                      node
                    ),
                    indent
                  )
                  return output_18
                }
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_string_from_nodelist_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_nodelist_indent(
      _ nodelist : any Vx_Core.Type_list,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_nodelist_indent : Vx_Core.Class_base, Func_string_from_nodelist_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_nodelist_indent = Vx_Web_Html.Class_string_from_nodelist_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_nodelist_indent = Vx_Web_Html.Class_string_from_nodelist_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-nodelist-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_nodelist_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_nodelist_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let nodelist : any Vx_Core.Type_list = Vx_Core.f_any_from_any(
        Vx_Core.t_list,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_nodelist_indent(nodelist, indent)
      return output
    }

    public func vx_string_from_nodelist_indent(
      _ nodelist : any Vx_Core.Type_list,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_nodelist_indent(nodelist, indent)
      return output
    }

  }

  public static let e_string_from_nodelist_indent : any Vx_Web_Html.Func_string_from_nodelist_indent = Vx_Web_Html.Class_string_from_nodelist_indent()
  public static let t_string_from_nodelist_indent : any Vx_Web_Html.Func_string_from_nodelist_indent = Vx_Web_Html.Class_string_from_nodelist_indent()

  public static func f_string_from_nodelist_indent(
    _ nodelist : any Vx_Core.Type_list,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let textlist : any Vx_Core.Type_stringlist = Vx_Core.f_list_from_list_1(
            Vx_Core.t_stringlist,
            nodelist,
            Vx_Core.t_any_from_any.vx_fn_new(
              {(node_any) in
                let node : any Vx_Web_Html.Type_node = Vx_Core.f_any_from_any(
                  Vx_Web_Html.t_node,
                  node_any
                )
                var output_2 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_node_indent(node, indent)
                return output_2
              }
            )
          )
          let output_1 : any Vx_Core.Type_any = Vx_Type.f_string_from_stringlist_join(
            textlist,
            Vx_Core.vx_new_string("")
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_nodelist_tag_prop_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_nodelist_tag_prop_indent(
      _ nodes : any Vx_Core.Type_list,
      _ tag : any Vx_Core.Type_string,
      _ prop : any Vx_Core.Type_string,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_nodelist_tag_prop_indent : Vx_Core.Class_base, Func_string_from_nodelist_tag_prop_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_nodelist_tag_prop_indent = Vx_Web_Html.Class_string_from_nodelist_tag_prop_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_nodelist_tag_prop_indent = Vx_Web_Html.Class_string_from_nodelist_tag_prop_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-nodelist-tag-prop-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_nodelist_tag_prop_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_nodelist_tag_prop_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let nodes : any Vx_Core.Type_list = Vx_Core.f_any_from_any(
        Vx_Core.t_list,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let tag : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      let prop : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(2)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(3)
        )
      )
      output = Vx_Web_Html.f_string_from_nodelist_tag_prop_indent(nodes, tag, prop, indent)
      return output
    }

    public func vx_string_from_nodelist_tag_prop_indent(
      _ nodes : any Vx_Core.Type_list,
      _ tag : any Vx_Core.Type_string,
      _ prop : any Vx_Core.Type_string,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_nodelist_tag_prop_indent(nodes, tag, prop, indent)
      return output
    }

  }

  public static let e_string_from_nodelist_tag_prop_indent : any Vx_Web_Html.Func_string_from_nodelist_tag_prop_indent = Vx_Web_Html.Class_string_from_nodelist_tag_prop_indent()
  public static let t_string_from_nodelist_tag_prop_indent : any Vx_Web_Html.Func_string_from_nodelist_tag_prop_indent = Vx_Web_Html.Class_string_from_nodelist_tag_prop_indent()

  public static func f_string_from_nodelist_tag_prop_indent(
    _ nodes : any Vx_Core.Type_list,
    _ tag : any Vx_Core.Type_string,
    _ prop : any Vx_Core.Type_string,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let text : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_nodelist_indent(
            nodes,
            Vx_Core.f_plus1(indent)
          )
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let eindent : any Vx_Core.Type_string = Vx_Core.f_if_2(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_thenelselist,
              [
                Vx_Core.f_then(
                  Vx_Core.t_boolean_from_func.vx_fn_new(
                    {() in
                      var output_2 : any Vx_Core.Type_any = Vx_Core.f_is_empty(text)
                        return output_2
                      }
                  ),
                  Vx_Core.t_any_from_func.vx_fn_new(
                    {() in
                      var output_3 : any Vx_Core.Type_any = Vx_Core.vx_new_string("")
                        return output_3
                      }
                  )
                ),
                Vx_Core.f_then(
                  Vx_Core.t_boolean_from_func.vx_fn_new(
                    {() in
                      var output_4 : any Vx_Core.Type_any = Vx_Core.f_is_empty(sindent)
                        return output_4
                      }
                  ),
                  Vx_Core.t_any_from_func.vx_fn_new(
                    {() in
                      var output_5 : any Vx_Core.Type_any = Vx_Core.c_newline
                        return output_5
                      }
                  )
                ),
                Vx_Core.f_else(
                  Vx_Core.t_any_from_func.vx_fn_new(
                    {() in
      let output_6 : any Vx_Core.Type_any = sindent
                        return output_6
                      }
                  )
                )
              ]
            )
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<"),
                tag,
                prop,
                Vx_Core.vx_new_string(">"),
                text,
                eindent,
                Vx_Core.vx_new_string("</"),
                tag,
                Vx_Core.vx_new_string(">")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_p_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_p_indent(
      _ p : any Vx_Web_Html.Type_p,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_p_indent : Vx_Core.Class_base, Func_string_from_p_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_p_indent = Vx_Web_Html.Class_string_from_p_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_p_indent = Vx_Web_Html.Class_string_from_p_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-p-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_p_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_p_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let p : any Vx_Web_Html.Type_p = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_p,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_p_indent(p, indent)
      return output
    }

    public func vx_string_from_p_indent(
      _ p : any Vx_Web_Html.Type_p,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_p_indent(p, indent)
      return output
    }

  }

  public static let e_string_from_p_indent : any Vx_Web_Html.Func_string_from_p_indent = Vx_Web_Html.Class_string_from_p_indent()
  public static let t_string_from_p_indent : any Vx_Web_Html.Func_string_from_p_indent = Vx_Web_Html.Class_string_from_p_indent()

  public static func f_string_from_p_indent(
    _ p : any Vx_Web_Html.Type_p,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let text : any Vx_Core.Type_string = Vx_Web_Html.f_htmlstring_from_string(p.text())
          let sid : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propname_val(
            Vx_Core.vx_new_string("id"),
            p.id()
          )
          let sclass : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propstyle_stylelist(
            p.style(),
            p.stylelist()
          )
          let sstyle : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propstyleunique(p.style_unique())
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<p"),
                sid,
                sclass,
                sstyle,
                Vx_Core.vx_new_string(">"),
                text,
                Vx_Core.vx_new_string("</p>")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_propname_val : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_propname_val(
      _ key : any Vx_Core.Type_string,
      _ value : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_propname_val : Vx_Core.Class_base, Func_string_from_propname_val {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_propname_val = Vx_Web_Html.Class_string_from_propname_val()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_propname_val = Vx_Web_Html.Class_string_from_propname_val()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-propname-val", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_propname_val
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_propname_val
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let key : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let value : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_propname_val(key, value)
      return output
    }

    public func vx_string_from_propname_val(
      _ key : any Vx_Core.Type_string,
      _ value : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propname_val(key, value)
      return output
    }

  }

  public static let e_string_from_propname_val : any Vx_Web_Html.Func_string_from_propname_val = Vx_Web_Html.Class_string_from_propname_val()
  public static let t_string_from_propname_val : any Vx_Web_Html.Func_string_from_propname_val = Vx_Web_Html.Class_string_from_propname_val()

  public static func f_string_from_propname_val(
    _ key : any Vx_Core.Type_string,
    _ value : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_if(
      Vx_Core.t_string,
      Vx_Core.f_notempty(value),
      Vx_Core.f_new(
        Vx_Core.t_string,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          [
            Vx_Core.vx_new_string(" "),
            key,
            Vx_Core.vx_new_string("="),
            Vx_Core.c_quote,
            value,
            Vx_Core.c_quote
          ]
        )
      )
    )
    return output
  }


  public protocol Func_string_from_propstyle : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_from_propstyle(
      _ style : any Vx_Web_Html.Type_style
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_propstyle : Vx_Core.Class_base, Func_string_from_propstyle {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_propstyle = Vx_Web_Html.Class_string_from_propstyle()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_propstyle = Vx_Web_Html.Class_string_from_propstyle()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-propstyle", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_propstyle
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_propstyle
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
      let inputval : any Vx_Web_Html.Type_style = value as! any Vx_Web_Html.Type_style
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_propstyle(inputval)
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
      let style : any Vx_Web_Html.Type_style = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_style,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_string_from_propstyle(style)
      return output
    }

    public func vx_string_from_propstyle(
      _ style : any Vx_Web_Html.Type_style
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propstyle(style)
      return output
    }

  }

  public static let e_string_from_propstyle : any Vx_Web_Html.Func_string_from_propstyle = Vx_Web_Html.Class_string_from_propstyle()
  public static let t_string_from_propstyle : any Vx_Web_Html.Func_string_from_propstyle = Vx_Web_Html.Class_string_from_propstyle()

  public static func f_string_from_propstyle(
    _ style : any Vx_Web_Html.Type_style
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_if_2(
      Vx_Core.t_string,
      Vx_Core.vx_new(
        Vx_Core.t_thenelselist,
        [
          Vx_Core.f_then(
            Vx_Core.t_boolean_from_func.vx_fn_new(
              {() in
                var output_1 : any Vx_Core.Type_any = Vx_Core.f_notempty_1(style)
                  return output_1
                }
            ),
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_2 : any Vx_Core.Type_any = Vx_Core.f_new(
                    Vx_Core.t_string,
                    Vx_Core.vx_new(
                      Vx_Core.t_anylist,
                      [
                        Vx_Core.vx_new_string(" class="),
                        Vx_Core.c_quote,
                        Vx_Type.f_string_from_string_start(
                          style.name(),
                          Vx_Core.vx_new_int(2)
                        ),
                        Vx_Core.c_quote
                      ]
                    )
                  )
                  return output_2
                }
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_string_from_propstyle_stylelist : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_propstyle_stylelist(
      _ style : any Vx_Web_Html.Type_style,
      _ stylelist : any Vx_Web_Html.Type_stylelist
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_propstyle_stylelist : Vx_Core.Class_base, Func_string_from_propstyle_stylelist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_propstyle_stylelist = Vx_Web_Html.Class_string_from_propstyle_stylelist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_propstyle_stylelist = Vx_Web_Html.Class_string_from_propstyle_stylelist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-propstyle-stylelist", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_propstyle_stylelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_propstyle_stylelist
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let style : any Vx_Web_Html.Type_style = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_style,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let stylelist : any Vx_Web_Html.Type_stylelist = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_stylelist,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_propstyle_stylelist(style, stylelist)
      return output
    }

    public func vx_string_from_propstyle_stylelist(
      _ style : any Vx_Web_Html.Type_style,
      _ stylelist : any Vx_Web_Html.Type_stylelist
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propstyle_stylelist(style, stylelist)
      return output
    }

  }

  public static let e_string_from_propstyle_stylelist : any Vx_Web_Html.Func_string_from_propstyle_stylelist = Vx_Web_Html.Class_string_from_propstyle_stylelist()
  public static let t_string_from_propstyle_stylelist : any Vx_Web_Html.Func_string_from_propstyle_stylelist = Vx_Web_Html.Class_string_from_propstyle_stylelist()

  public static func f_string_from_propstyle_stylelist(
    _ style : any Vx_Web_Html.Type_style,
    _ stylelist : any Vx_Web_Html.Type_stylelist
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_if_2(
      Vx_Core.t_string,
      Vx_Core.vx_new(
        Vx_Core.t_thenelselist,
        [
          Vx_Core.f_then(
            Vx_Core.t_boolean_from_func.vx_fn_new(
              {() in
                var output_1 : any Vx_Core.Type_any = Vx_Core.f_notempty_1(style)
                  return output_1
                }
            ),
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_2 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_propstyle(style)
                  return output_2
                }
            )
          ),
          Vx_Core.f_then(
            Vx_Core.t_boolean_from_func.vx_fn_new(
              {() in
                var output_3 : any Vx_Core.Type_any = Vx_Core.f_notempty_1(stylelist)
                  return output_3
                }
            ),
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_4 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_propstylelist(stylelist)
                  return output_4
                }
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_string_from_propstylelist : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_from_propstylelist(
      _ stylelist : any Vx_Web_Html.Type_stylelist
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_propstylelist : Vx_Core.Class_base, Func_string_from_propstylelist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_propstylelist = Vx_Web_Html.Class_string_from_propstylelist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_propstylelist = Vx_Web_Html.Class_string_from_propstylelist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-propstylelist", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_propstylelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_propstylelist
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
      let inputval : any Vx_Web_Html.Type_stylelist = value as! any Vx_Web_Html.Type_stylelist
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_propstylelist(inputval)
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
      let stylelist : any Vx_Web_Html.Type_stylelist = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_stylelist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_string_from_propstylelist(stylelist)
      return output
    }

    public func vx_string_from_propstylelist(
      _ stylelist : any Vx_Web_Html.Type_stylelist
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propstylelist(stylelist)
      return output
    }

  }

  public static let e_string_from_propstylelist : any Vx_Web_Html.Func_string_from_propstylelist = Vx_Web_Html.Class_string_from_propstylelist()
  public static let t_string_from_propstylelist : any Vx_Web_Html.Func_string_from_propstylelist = Vx_Web_Html.Class_string_from_propstylelist()

  public static func f_string_from_propstylelist(
    _ stylelist : any Vx_Web_Html.Type_stylelist
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_if_2(
      Vx_Core.t_string,
      Vx_Core.vx_new(
        Vx_Core.t_thenelselist,
        [
          Vx_Core.f_then(
            Vx_Core.t_boolean_from_func.vx_fn_new(
              {() in
                var output_1 : any Vx_Core.Type_any = Vx_Core.f_notempty_1(stylelist)
                  return output_1
                }
            ),
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_2 : any Vx_Core.Type_any = Vx_Core.f_let(
                    Vx_Core.t_string,
                    Vx_Core.t_any_from_func.vx_fn_new(
                      {() in
                        let joined : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_stylelist(stylelist)
                        let output_3 : any Vx_Core.Type_any = Vx_Core.f_if(
                          Vx_Core.t_string,
                          Vx_Core.f_ne(
                            Vx_Core.vx_new_string(""),
                            joined
                          ),
                          Vx_Core.f_new(
                            Vx_Core.t_string,
                            Vx_Core.vx_new(
                              Vx_Core.t_anylist,
                              [
                                Vx_Core.vx_new_string(" class="),
                                Vx_Core.c_quote,
                                joined,
                                Vx_Core.c_quote
                              ]
                            )
                          )
                        )
                        return output_3
                      }
                    )
                  )
                  return output_2
                }
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_string_from_propstyleunique : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_from_propstyleunique(
      _ style : any Vx_Web_Html.Type_style
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_propstyleunique : Vx_Core.Class_base, Func_string_from_propstyleunique {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_propstyleunique = Vx_Web_Html.Class_string_from_propstyleunique()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_propstyleunique = Vx_Web_Html.Class_string_from_propstyleunique()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-propstyleunique", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_propstyleunique
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_propstyleunique
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
      let inputval : any Vx_Web_Html.Type_style = value as! any Vx_Web_Html.Type_style
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_propstyleunique(inputval)
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
      let style : any Vx_Web_Html.Type_style = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_style,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_string_from_propstyleunique(style)
      return output
    }

    public func vx_string_from_propstyleunique(
      _ style : any Vx_Web_Html.Type_style
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propstyleunique(style)
      return output
    }

  }

  public static let e_string_from_propstyleunique : any Vx_Web_Html.Func_string_from_propstyleunique = Vx_Web_Html.Class_string_from_propstyleunique()
  public static let t_string_from_propstyleunique : any Vx_Web_Html.Func_string_from_propstyleunique = Vx_Web_Html.Class_string_from_propstyleunique()

  public static func f_string_from_propstyleunique(
    _ style : any Vx_Web_Html.Type_style
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_if_2(
      Vx_Core.t_string,
      Vx_Core.vx_new(
        Vx_Core.t_thenelselist,
        [
          Vx_Core.f_then(
            Vx_Core.t_boolean_from_func.vx_fn_new(
              {() in
                var output_1 : any Vx_Core.Type_any = Vx_Core.f_notempty_1(style)
                  return output_1
                }
            ),
            Vx_Core.t_any_from_func.vx_fn_new(
              {() in
                var output_2 : any Vx_Core.Type_any = Vx_Core.f_let(
                    Vx_Core.t_string,
                    Vx_Core.t_any_from_func.vx_fn_new(
                      {() in
                        let props : any Vx_Web_Html.Type_propmap = style.props()
                        let text : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_stylepropmap_indent(
                          props,
                          Vx_Core.vx_new_int(0)
                        )
                        let output_3 : any Vx_Core.Type_any = Vx_Core.f_if_2(
                          Vx_Core.t_string,
                          Vx_Core.vx_new(
                            Vx_Core.t_thenelselist,
                            [
                              Vx_Core.f_then(
                                Vx_Core.t_boolean_from_func.vx_fn_new(
                                  {() in
                                    var output_4 : any Vx_Core.Type_any = Vx_Core.f_notempty(text)
                                      return output_4
                                    }
                                ),
                                Vx_Core.t_any_from_func.vx_fn_new(
                                  {() in
                                    var output_5 : any Vx_Core.Type_any = Vx_Core.f_new(
                                        Vx_Core.t_string,
                                        Vx_Core.vx_new(
                                          Vx_Core.t_anylist,
                                          [
                                            Vx_Core.vx_new_string(" style="),
                                            Vx_Core.c_quote,
                                            text,
                                            Vx_Core.c_quote
                                          ]
                                        )
                                      )
                                      return output_5
                                    }
                                )
                              )
                            ]
                          )
                        )
                        return output_3
                      }
                    )
                  )
                  return output_2
                }
            )
          )
        ]
      )
    )
    return output
  }


  public protocol Func_string_from_style_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_style_indent(
      _ style : any Vx_Web_Html.Type_style,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_style_indent : Vx_Core.Class_base, Func_string_from_style_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_style_indent = Vx_Web_Html.Class_string_from_style_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_style_indent = Vx_Web_Html.Class_string_from_style_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-style-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_style_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_style_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let style : any Vx_Web_Html.Type_style = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_style,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_style_indent(style, indent)
      return output
    }

    public func vx_string_from_style_indent(
      _ style : any Vx_Web_Html.Type_style,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_style_indent(style, indent)
      return output
    }

  }

  public static let e_string_from_style_indent : any Vx_Web_Html.Func_string_from_style_indent = Vx_Web_Html.Class_string_from_style_indent()
  public static let t_string_from_style_indent : any Vx_Web_Html.Func_string_from_style_indent = Vx_Web_Html.Class_string_from_style_indent()

  public static func f_string_from_style_indent(
    _ style : any Vx_Web_Html.Type_style,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let name : any Vx_Core.Type_string = style.name()
          let propmap : any Vx_Web_Html.Type_propmap = style.props()
          let sublist : any Vx_Web_Html.Type_stylelist = style.stylelist()
          let stext : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_stylepropmap_indent(
            propmap,
            Vx_Core.f_plus1(indent)
          )
          let subtext : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_stylelist_indent(
            sublist,
            Vx_Core.f_plus1(indent)
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                name,
                Vx_Core.vx_new_string(" {"),
                stext,
                subtext,
                sindent,
                Vx_Core.vx_new_string("}")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_stylelist : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_from_stylelist(
      _ stylelist : any Vx_Web_Html.Type_stylelist
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_stylelist : Vx_Core.Class_base, Func_string_from_stylelist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_stylelist = Vx_Web_Html.Class_string_from_stylelist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_stylelist = Vx_Web_Html.Class_string_from_stylelist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-stylelist", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_stylelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_stylelist
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
      let inputval : any Vx_Web_Html.Type_stylelist = value as! any Vx_Web_Html.Type_stylelist
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_stylelist(inputval)
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
      let stylelist : any Vx_Web_Html.Type_stylelist = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_stylelist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_string_from_stylelist(stylelist)
      return output
    }

    public func vx_string_from_stylelist(
      _ stylelist : any Vx_Web_Html.Type_stylelist
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_stylelist(stylelist)
      return output
    }

  }

  public static let e_string_from_stylelist : any Vx_Web_Html.Func_string_from_stylelist = Vx_Web_Html.Class_string_from_stylelist()
  public static let t_string_from_stylelist : any Vx_Web_Html.Func_string_from_stylelist = Vx_Web_Html.Class_string_from_stylelist()

  public static func f_string_from_stylelist(
    _ stylelist : any Vx_Web_Html.Type_stylelist
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let namelist : any Vx_Core.Type_stringlist = Vx_Core.f_list_from_list_1(
            Vx_Core.t_stringlist,
            stylelist,
            Vx_Core.t_any_from_any.vx_fn_new(
              {(item_any) in
                let item : any Vx_Web_Html.Type_style = Vx_Core.f_any_from_any(
                  Vx_Web_Html.t_style,
                  item_any
                )
                var output_2 : any Vx_Core.Type_any = Vx_Type.f_string_from_string_start(
                  item.name(),
                  Vx_Core.vx_new_int(2)
                )
                return output_2
              }
            )
          )
          let output_1 : any Vx_Core.Type_any = Vx_Type.f_string_from_stringlist_join(
            namelist,
            Vx_Core.vx_new_string(" ")
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_stylelist_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_stylelist_indent(
      _ stylelist : any Vx_Web_Html.Type_stylelist,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_stylelist_indent : Vx_Core.Class_base, Func_string_from_stylelist_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_stylelist_indent = Vx_Web_Html.Class_string_from_stylelist_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_stylelist_indent = Vx_Web_Html.Class_string_from_stylelist_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-stylelist-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_stylelist_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_stylelist_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let stylelist : any Vx_Web_Html.Type_stylelist = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_stylelist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_stylelist_indent(stylelist, indent)
      return output
    }

    public func vx_string_from_stylelist_indent(
      _ stylelist : any Vx_Web_Html.Type_stylelist,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_stylelist_indent(stylelist, indent)
      return output
    }

  }

  public static let e_string_from_stylelist_indent : any Vx_Web_Html.Func_string_from_stylelist_indent = Vx_Web_Html.Class_string_from_stylelist_indent()
  public static let t_string_from_stylelist_indent : any Vx_Web_Html.Func_string_from_stylelist_indent = Vx_Web_Html.Class_string_from_stylelist_indent()

  public static func f_string_from_stylelist_indent(
    _ stylelist : any Vx_Web_Html.Type_stylelist,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let sstyles : any Vx_Core.Type_stringlist = Vx_Core.f_list_from_list_1(
            Vx_Core.t_stringlist,
            stylelist,
            Vx_Core.t_any_from_any.vx_fn_new(
              {(substyle_any) in
                let substyle : any Vx_Web_Html.Type_style = Vx_Core.f_any_from_any(
                  Vx_Web_Html.t_style,
                  substyle_any
                )
                var output_2 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_style_indent(substyle, indent)
                return output_2
              }
            )
          )
          let output_1 : any Vx_Core.Type_any = Vx_Type.f_string_from_stringlist_join(
            sstyles,
            Vx_Core.c_newline
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_stylepropmap_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_stylepropmap_indent(
      _ propmap : any Vx_Web_Html.Type_propmap,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_stylepropmap_indent : Vx_Core.Class_base, Func_string_from_stylepropmap_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_stylepropmap_indent = Vx_Web_Html.Class_string_from_stylepropmap_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_stylepropmap_indent = Vx_Web_Html.Class_string_from_stylepropmap_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-stylepropmap-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_stylepropmap_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_stylepropmap_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let propmap : any Vx_Web_Html.Type_propmap = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_propmap,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_stylepropmap_indent(propmap, indent)
      return output
    }

    public func vx_string_from_stylepropmap_indent(
      _ propmap : any Vx_Web_Html.Type_propmap,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_stylepropmap_indent(propmap, indent)
      return output
    }

  }

  public static let e_string_from_stylepropmap_indent : any Vx_Web_Html.Func_string_from_stylepropmap_indent = Vx_Web_Html.Class_string_from_stylepropmap_indent()
  public static let t_string_from_stylepropmap_indent : any Vx_Web_Html.Func_string_from_stylepropmap_indent = Vx_Web_Html.Class_string_from_stylepropmap_indent()

  public static func f_string_from_stylepropmap_indent(
    _ propmap : any Vx_Web_Html.Type_propmap,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let sprops : any Vx_Core.Type_stringlist = Vx_Core.f_list_from_map_1(
            Vx_Core.t_stringlist,
            propmap,
            Vx_Core.t_any_from_key_value.vx_fn_new(
              {(key_any, value_any) in
                let key : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
                  Vx_Core.t_string,
                  key_any
                )
                let value : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
                  Vx_Core.t_string,
                  value_any
                )
                var output_2 : any Vx_Core.Type_any = Vx_Core.f_new(
                  Vx_Core.t_string,
                  Vx_Core.vx_new(
                    Vx_Core.t_anylist,
                    [
                      sindent,
                      key,
                      Vx_Core.vx_new_string(": "),
                      Vx_Core.f_string_from_string_find_replace(
                        value,
                        Vx_Core.c_quote,
                        Vx_Core.vx_new_string("'")
                      ),
                      Vx_Core.vx_new_string(";")
                    ]
                  )
                )
                return output_2
              }
            )
          )
          let output_1 : any Vx_Core.Type_any = Vx_Type.f_string_from_stringlist_join(
            sprops,
            Vx_Core.vx_new_string("")
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_stylesheet_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_stylesheet_indent(
      _ stylesheet : any Vx_Web_Html.Type_stylesheet,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_stylesheet_indent : Vx_Core.Class_base, Func_string_from_stylesheet_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_stylesheet_indent = Vx_Web_Html.Class_string_from_stylesheet_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_stylesheet_indent = Vx_Web_Html.Class_string_from_stylesheet_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-stylesheet-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_stylesheet_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_stylesheet_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let stylesheet : any Vx_Web_Html.Type_stylesheet = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_stylesheet,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_stylesheet_indent(stylesheet, indent)
      return output
    }

    public func vx_string_from_stylesheet_indent(
      _ stylesheet : any Vx_Web_Html.Type_stylesheet,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_stylesheet_indent(stylesheet, indent)
      return output
    }

  }

  public static let e_string_from_stylesheet_indent : any Vx_Web_Html.Func_string_from_stylesheet_indent = Vx_Web_Html.Class_string_from_stylesheet_indent()
  public static let t_string_from_stylesheet_indent : any Vx_Web_Html.Func_string_from_stylesheet_indent = Vx_Web_Html.Class_string_from_stylesheet_indent()

  public static func f_string_from_stylesheet_indent(
    _ stylesheet : any Vx_Web_Html.Type_stylesheet,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let styles : any Vx_Web_Html.Type_stylelist = stylesheet.styles()
          let sstyles : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_stylelist_indent(
            styles,
            Vx_Core.f_plus1(indent)
          )
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let eindent : any Vx_Core.Type_string = Vx_Core.f_if(
            Vx_Core.t_string,
            Vx_Core.f_notempty(sstyles),
            sindent
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<style>"),
                sstyles,
                eindent,
                Vx_Core.vx_new_string("</style>")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_table_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_table_indent(
      _ table : any Vx_Web_Html.Type_table,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_table_indent : Vx_Core.Class_base, Func_string_from_table_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_table_indent = Vx_Web_Html.Class_string_from_table_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_table_indent = Vx_Web_Html.Class_string_from_table_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-table-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_table_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_table_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let table : any Vx_Web_Html.Type_table = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_table,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_table_indent(table, indent)
      return output
    }

    public func vx_string_from_table_indent(
      _ table : any Vx_Web_Html.Type_table,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_table_indent(table, indent)
      return output
    }

  }

  public static let e_string_from_table_indent : any Vx_Web_Html.Func_string_from_table_indent = Vx_Web_Html.Class_string_from_table_indent()
  public static let t_string_from_table_indent : any Vx_Web_Html.Func_string_from_table_indent = Vx_Web_Html.Class_string_from_table_indent()

  public static func f_string_from_table_indent(
    _ table : any Vx_Web_Html.Type_table,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let sid : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_propname_val(
            Vx_Core.vx_new_string("id"),
            table.id()
          )
          let thead : any Vx_Web_Html.Type_thead = table.thead()
          let tbody : any Vx_Web_Html.Type_tbody = table.tbody()
          let shead : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_thead_indent(
            thead,
            Vx_Core.f_plus1(indent)
          )
          let sbody : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_tbody_indent(
            tbody,
            Vx_Core.f_plus1(indent)
          )
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<table"),
                sid,
                Vx_Core.vx_new_string(">"),
                shead,
                sbody,
                sindent,
                Vx_Core.vx_new_string("</table>")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_tbody_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_tbody_indent(
      _ tbody : any Vx_Web_Html.Type_tbody,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_tbody_indent : Vx_Core.Class_base, Func_string_from_tbody_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_tbody_indent = Vx_Web_Html.Class_string_from_tbody_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_tbody_indent = Vx_Web_Html.Class_string_from_tbody_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-tbody-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_tbody_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_tbody_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let tbody : any Vx_Web_Html.Type_tbody = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_tbody,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_tbody_indent(tbody, indent)
      return output
    }

    public func vx_string_from_tbody_indent(
      _ tbody : any Vx_Web_Html.Type_tbody,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_tbody_indent(tbody, indent)
      return output
    }

  }

  public static let e_string_from_tbody_indent : any Vx_Web_Html.Func_string_from_tbody_indent = Vx_Web_Html.Class_string_from_tbody_indent()
  public static let t_string_from_tbody_indent : any Vx_Web_Html.Func_string_from_tbody_indent = Vx_Web_Html.Class_string_from_tbody_indent()

  public static func f_string_from_tbody_indent(
    _ tbody : any Vx_Web_Html.Type_tbody,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let nodes : any Vx_Web_Html.Type_trlist = tbody.nodes()
          let output_1 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_nodelist_tag_prop_indent(
            nodes,
            Vx_Core.vx_new_string("tbody"),
            Vx_Core.vx_new_string(""),
            indent
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_td_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_td_indent(
      _ td : any Vx_Web_Html.Type_td,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_td_indent : Vx_Core.Class_base, Func_string_from_td_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_td_indent = Vx_Web_Html.Class_string_from_td_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_td_indent = Vx_Web_Html.Class_string_from_td_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-td-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_td_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_td_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let td : any Vx_Web_Html.Type_td = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_td,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_td_indent(td, indent)
      return output
    }

    public func vx_string_from_td_indent(
      _ td : any Vx_Web_Html.Type_td,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_td_indent(td, indent)
      return output
    }

  }

  public static let e_string_from_td_indent : any Vx_Web_Html.Func_string_from_td_indent = Vx_Web_Html.Class_string_from_td_indent()
  public static let t_string_from_td_indent : any Vx_Web_Html.Func_string_from_td_indent = Vx_Web_Html.Class_string_from_td_indent()

  public static func f_string_from_td_indent(
    _ td : any Vx_Web_Html.Type_td,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let nodes : any Vx_Web_Html.Type_divchildlist = td.nodes()
          let output_1 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_nodelist_tag_prop_indent(
            nodes,
            Vx_Core.vx_new_string("td"),
            Vx_Core.vx_new_string(""),
            indent
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_thead_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_thead_indent(
      _ thead : any Vx_Web_Html.Type_thead,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_thead_indent : Vx_Core.Class_base, Func_string_from_thead_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_thead_indent = Vx_Web_Html.Class_string_from_thead_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_thead_indent = Vx_Web_Html.Class_string_from_thead_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-thead-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_thead_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_thead_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let thead : any Vx_Web_Html.Type_thead = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_thead,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_thead_indent(thead, indent)
      return output
    }

    public func vx_string_from_thead_indent(
      _ thead : any Vx_Web_Html.Type_thead,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_thead_indent(thead, indent)
      return output
    }

  }

  public static let e_string_from_thead_indent : any Vx_Web_Html.Func_string_from_thead_indent = Vx_Web_Html.Class_string_from_thead_indent()
  public static let t_string_from_thead_indent : any Vx_Web_Html.Func_string_from_thead_indent = Vx_Web_Html.Class_string_from_thead_indent()

  public static func f_string_from_thead_indent(
    _ thead : any Vx_Web_Html.Type_thead,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let nodes : any Vx_Web_Html.Type_trlist = thead.nodes()
          let output_1 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_nodelist_tag_prop_indent(
            nodes,
            Vx_Core.vx_new_string("thead"),
            Vx_Core.vx_new_string(""),
            indent
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_title_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_title_indent(
      _ title : any Vx_Web_Html.Type_title,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_title_indent : Vx_Core.Class_base, Func_string_from_title_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_title_indent = Vx_Web_Html.Class_string_from_title_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_title_indent = Vx_Web_Html.Class_string_from_title_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-title-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_title_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_title_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let title : any Vx_Web_Html.Type_title = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_title,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_title_indent(title, indent)
      return output
    }

    public func vx_string_from_title_indent(
      _ title : any Vx_Web_Html.Type_title,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_title_indent(title, indent)
      return output
    }

  }

  public static let e_string_from_title_indent : any Vx_Web_Html.Func_string_from_title_indent = Vx_Web_Html.Class_string_from_title_indent()
  public static let t_string_from_title_indent : any Vx_Web_Html.Func_string_from_title_indent = Vx_Web_Html.Class_string_from_title_indent()

  public static func f_string_from_title_indent(
    _ title : any Vx_Web_Html.Type_title,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let sindent : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_indent(indent)
          let text : any Vx_Core.Type_string = title.text()
          let output_1 : any Vx_Core.Type_any = Vx_Core.f_new(
            Vx_Core.t_string,
            Vx_Core.vx_new(
              Vx_Core.t_anylist,
              [
                sindent,
                Vx_Core.vx_new_string("<title>"),
                text,
                Vx_Core.vx_new_string("</title>")
              ]
            )
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_tr_indent : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_string_from_tr_indent(
      _ tr : any Vx_Web_Html.Type_tr,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_tr_indent : Vx_Core.Class_base, Func_string_from_tr_indent {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_tr_indent = Vx_Web_Html.Class_string_from_tr_indent()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_tr_indent = Vx_Web_Html.Class_string_from_tr_indent()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-tr-indent", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_tr_indent
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_tr_indent
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let tr : any Vx_Web_Html.Type_tr = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_tr,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let indent : any Vx_Core.Type_int = Vx_Core.f_any_from_any(
        Vx_Core.t_int,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_string_from_tr_indent(tr, indent)
      return output
    }

    public func vx_string_from_tr_indent(
      _ tr : any Vx_Web_Html.Type_tr,
      _ indent : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_tr_indent(tr, indent)
      return output
    }

  }

  public static let e_string_from_tr_indent : any Vx_Web_Html.Func_string_from_tr_indent = Vx_Web_Html.Class_string_from_tr_indent()
  public static let t_string_from_tr_indent : any Vx_Web_Html.Func_string_from_tr_indent = Vx_Web_Html.Class_string_from_tr_indent()

  public static func f_string_from_tr_indent(
    _ tr : any Vx_Web_Html.Type_tr,
    _ indent : any Vx_Core.Type_int
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    output = Vx_Core.f_let(
      Vx_Core.t_string,
      Vx_Core.t_any_from_func.vx_fn_new(
        {() in
          let nodes : any Vx_Web_Html.Type_tdlist = tr.nodes()
          let output_1 : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_nodelist_tag_prop_indent(
            nodes,
            Vx_Core.vx_new_string("tr"),
            Vx_Core.vx_new_string(""),
            indent
          )
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_string_from_uri : Vx_Core.Func_any_from_any, AnyObject {
    func vx_string_from_uri(
      _ uri : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_string_from_uri : Vx_Core.Class_base, Func_string_from_uri {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_uri = Vx_Web_Html.Class_string_from_uri()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_string_from_uri = Vx_Web_Html.Class_string_from_uri()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "string<-uri", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_string_from_uri
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_string_from_uri
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
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_string_from_uri(inputval)
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
      let uri : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_string_from_uri(uri)
      return output
    }

    public func vx_string_from_uri(
      _ uri : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_string_from_uri(uri)
      return output
    }

  }

  public static let e_string_from_uri : any Vx_Web_Html.Func_string_from_uri = Vx_Web_Html.Class_string_from_uri()
  public static let t_string_from_uri : any Vx_Web_Html.Func_string_from_uri = Vx_Web_Html.Class_string_from_uri()

  public static func f_string_from_uri(
    _ uri : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    return output
  }


  public protocol Func_style_from_stylesheet_name : Vx_Core.Type_func, Vx_Core.Type_replfunc, AnyObject {
    func vx_style_from_stylesheet_name(
      _ stylesheet : any Vx_Web_Html.Type_stylesheet,
      _ name : any Vx_Core.Type_string
    ) -> any Vx_Web_Html.Type_style
  }

  public class Class_style_from_stylesheet_name : Vx_Core.Class_base, Func_style_from_stylesheet_name {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_style_from_stylesheet_name = Vx_Web_Html.Class_style_from_stylesheet_name()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_style_from_stylesheet_name = Vx_Web_Html.Class_style_from_stylesheet_name()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "style<-stylesheet-name", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "style",
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_style_from_stylesheet_name
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_style_from_stylesheet_name
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let stylesheet : any Vx_Web_Html.Type_stylesheet = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_stylesheet,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      let name : any Vx_Core.Type_string = Vx_Core.f_any_from_any(
        Vx_Core.t_string,
        arglist.vx_any(
          Vx_Core.vx_new_int(1)
        )
      )
      output = Vx_Web_Html.f_style_from_stylesheet_name(stylesheet, name)
      return output
    }

    public func vx_style_from_stylesheet_name(
      _ stylesheet : any Vx_Web_Html.Type_stylesheet,
      _ name : any Vx_Core.Type_string
    ) -> any Vx_Web_Html.Type_style {
      let output : any Vx_Web_Html.Type_style = Vx_Web_Html.f_style_from_stylesheet_name(stylesheet, name)
      return output
    }

  }

  public static let e_style_from_stylesheet_name : any Vx_Web_Html.Func_style_from_stylesheet_name = Vx_Web_Html.Class_style_from_stylesheet_name()
  public static let t_style_from_stylesheet_name : any Vx_Web_Html.Func_style_from_stylesheet_name = Vx_Web_Html.Class_style_from_stylesheet_name()

  public static func f_style_from_stylesheet_name(
    _ stylesheet : any Vx_Web_Html.Type_stylesheet,
    _ name : any Vx_Core.Type_string
  ) -> any Vx_Web_Html.Type_style {
    var output : any Vx_Web_Html.Type_style = Vx_Web_Html.e_style
    output = Vx_Core.f_any_from_map(
      Vx_Web_Html.t_style,
      Vx_Web_Html.f_stylemap_from_stylesheet(stylesheet),
      name
    )
    return output
  }


  public protocol Func_stylemap_from_stylelist : Vx_Core.Func_any_from_any, AnyObject {
    func vx_stylemap_from_stylelist(
      _ stylelist : any Vx_Web_Html.Type_stylelist
    ) -> any Vx_Web_Html.Type_stylemap
  }

  public class Class_stylemap_from_stylelist : Vx_Core.Class_base, Func_stylemap_from_stylelist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_stylemap_from_stylelist = Vx_Web_Html.Class_stylemap_from_stylelist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_stylemap_from_stylelist = Vx_Web_Html.Class_stylemap_from_stylelist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "stylemap<-stylelist", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "stylemap",
          ":map",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_style
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_stylemap_from_stylelist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_stylemap_from_stylelist
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
      let inputval : any Vx_Web_Html.Type_stylelist = value as! any Vx_Web_Html.Type_stylelist
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_stylemap_from_stylelist(inputval)
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
      let stylelist : any Vx_Web_Html.Type_stylelist = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_stylelist,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_stylemap_from_stylelist(stylelist)
      return output
    }

    public func vx_stylemap_from_stylelist(
      _ stylelist : any Vx_Web_Html.Type_stylelist
    ) -> any Vx_Web_Html.Type_stylemap {
      let output : any Vx_Web_Html.Type_stylemap = Vx_Web_Html.f_stylemap_from_stylelist(stylelist)
      return output
    }

  }

  public static let e_stylemap_from_stylelist : any Vx_Web_Html.Func_stylemap_from_stylelist = Vx_Web_Html.Class_stylemap_from_stylelist()
  public static let t_stylemap_from_stylelist : any Vx_Web_Html.Func_stylemap_from_stylelist = Vx_Web_Html.Class_stylemap_from_stylelist()

  public static func f_stylemap_from_stylelist(
    _ stylelist : any Vx_Web_Html.Type_stylelist
  ) -> any Vx_Web_Html.Type_stylemap {
    var output : any Vx_Web_Html.Type_stylemap = Vx_Web_Html.e_stylemap
    output = Vx_Core.f_map_from_list(
      Vx_Web_Html.t_stylemap,
      stylelist,
      Vx_Core.t_any_from_any.vx_fn_new(
        {(style_any) in
          let style : any Vx_Web_Html.Type_style = Vx_Core.f_any_from_any(
            Vx_Web_Html.t_style,
            style_any
          )
          var output_1 : any Vx_Core.Type_any = style.name()
          return output_1
        }
      )
    )
    return output
  }


  public protocol Func_stylemap_from_stylesheet : Vx_Core.Func_any_from_any, AnyObject {
    func vx_stylemap_from_stylesheet(
      _ stylesheet : any Vx_Web_Html.Type_stylesheet
    ) -> any Vx_Web_Html.Type_stylemap
  }

  public class Class_stylemap_from_stylesheet : Vx_Core.Class_base, Func_stylemap_from_stylesheet {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_stylemap_from_stylesheet = Vx_Web_Html.Class_stylemap_from_stylesheet()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_stylemap_from_stylesheet = Vx_Web_Html.Class_stylemap_from_stylesheet()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "stylemap<-stylesheet", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "stylemap",
          ":map",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_style
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_stylemap_from_stylesheet
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_stylemap_from_stylesheet
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
      let inputval : any Vx_Web_Html.Type_stylesheet = value as! any Vx_Web_Html.Type_stylesheet
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_stylemap_from_stylesheet(inputval)
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
      let stylesheet : any Vx_Web_Html.Type_stylesheet = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_stylesheet,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_stylemap_from_stylesheet(stylesheet)
      return output
    }

    public func vx_stylemap_from_stylesheet(
      _ stylesheet : any Vx_Web_Html.Type_stylesheet
    ) -> any Vx_Web_Html.Type_stylemap {
      let output : any Vx_Web_Html.Type_stylemap = Vx_Web_Html.f_stylemap_from_stylesheet(stylesheet)
      return output
    }

  }

  public static let e_stylemap_from_stylesheet : any Vx_Web_Html.Func_stylemap_from_stylesheet = Vx_Web_Html.Class_stylemap_from_stylesheet()
  public static let t_stylemap_from_stylesheet : any Vx_Web_Html.Func_stylemap_from_stylesheet = Vx_Web_Html.Class_stylemap_from_stylesheet()

  public static func f_stylemap_from_stylesheet(
    _ stylesheet : any Vx_Web_Html.Type_stylesheet
  ) -> any Vx_Web_Html.Type_stylemap {
    var output : any Vx_Web_Html.Type_stylemap = Vx_Web_Html.e_stylemap
    output = stylesheet.stylemap()
    return output
  }


  public protocol Func_styles_from_stylesheet : Vx_Core.Func_any_from_any, AnyObject {
    func vx_styles_from_stylesheet(
      _ stylesheet : any Vx_Web_Html.Type_stylesheet
    ) -> any Vx_Web_Html.Type_stylelist
  }

  public class Class_styles_from_stylesheet : Vx_Core.Class_base, Func_styles_from_stylesheet {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_styles_from_stylesheet = Vx_Web_Html.Class_styles_from_stylesheet()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_styles_from_stylesheet = Vx_Web_Html.Class_styles_from_stylesheet()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "styles<-stylesheet", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "stylelist",
          ":list",
          Vx_Core.e_typelist,
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_style
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_styles_from_stylesheet
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_styles_from_stylesheet
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
      let inputval : any Vx_Web_Html.Type_stylesheet = value as! any Vx_Web_Html.Type_stylesheet
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_styles_from_stylesheet(inputval)
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
      let stylesheet : any Vx_Web_Html.Type_stylesheet = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_stylesheet,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_styles_from_stylesheet(stylesheet)
      return output
    }

    public func vx_styles_from_stylesheet(
      _ stylesheet : any Vx_Web_Html.Type_stylesheet
    ) -> any Vx_Web_Html.Type_stylelist {
      let output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.f_styles_from_stylesheet(stylesheet)
      return output
    }

  }

  public static let e_styles_from_stylesheet : any Vx_Web_Html.Func_styles_from_stylesheet = Vx_Web_Html.Class_styles_from_stylesheet()
  public static let t_styles_from_stylesheet : any Vx_Web_Html.Func_styles_from_stylesheet = Vx_Web_Html.Class_styles_from_stylesheet()

  public static func f_styles_from_stylesheet(
    _ stylesheet : any Vx_Web_Html.Type_stylesheet
  ) -> any Vx_Web_Html.Type_stylelist {
    var output : any Vx_Web_Html.Type_stylelist = Vx_Web_Html.e_stylelist
    output = stylesheet.styles()
    return output
  }


  public protocol Func_stylesheet_loadmap : Vx_Core.Func_any_from_any, AnyObject {
    func vx_stylesheet_loadmap(
      _ stylesheet : any Vx_Web_Html.Type_stylesheet
    ) -> any Vx_Web_Html.Type_stylesheet
  }

  public class Class_stylesheet_loadmap : Vx_Core.Class_base, Func_stylesheet_loadmap {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_stylesheet_loadmap = Vx_Web_Html.Class_stylesheet_loadmap()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_stylesheet_loadmap = Vx_Web_Html.Class_stylesheet_loadmap()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "stylesheet-loadmap", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/web/html",
          "stylesheet",
          ":struct",
          Vx_Core.vx_new(
            Vx_Core.t_typelist,
            [
              Vx_Web_Html.t_node,
              Vx_Web_Html.t_headchild
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_stylesheet_loadmap
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_stylesheet_loadmap
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
      let inputval : any Vx_Web_Html.Type_stylesheet = value as! any Vx_Web_Html.Type_stylesheet
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_stylesheet_loadmap(inputval)
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
      let stylesheet : any Vx_Web_Html.Type_stylesheet = Vx_Core.f_any_from_any(
        Vx_Web_Html.t_stylesheet,
        arglist.vx_any(
          Vx_Core.vx_new_int(0)
        )
      )
      output = Vx_Web_Html.f_stylesheet_loadmap(stylesheet)
      return output
    }

    public func vx_stylesheet_loadmap(
      _ stylesheet : any Vx_Web_Html.Type_stylesheet
    ) -> any Vx_Web_Html.Type_stylesheet {
      let output : any Vx_Web_Html.Type_stylesheet = Vx_Web_Html.f_stylesheet_loadmap(stylesheet)
      return output
    }

  }

  public static let e_stylesheet_loadmap : any Vx_Web_Html.Func_stylesheet_loadmap = Vx_Web_Html.Class_stylesheet_loadmap()
  public static let t_stylesheet_loadmap : any Vx_Web_Html.Func_stylesheet_loadmap = Vx_Web_Html.Class_stylesheet_loadmap()

  public static func f_stylesheet_loadmap(
    _ stylesheet : any Vx_Web_Html.Type_stylesheet
  ) -> any Vx_Web_Html.Type_stylesheet {
    var output : any Vx_Web_Html.Type_stylesheet = Vx_Web_Html.e_stylesheet
    output = Vx_Core.f_copy(
      Vx_Web_Html.t_stylesheet,
      stylesheet,
      Vx_Core.vx_new(
        Vx_Core.t_anylist,
        [
          Vx_Core.vx_new_string(":stylemap"),
          Vx_Web_Html.f_stylemap_from_stylelist(stylesheet.styles())
        ]
      )
    )
    return output
  }


  public protocol Func_uri_from_string : Vx_Core.Func_any_from_any, AnyObject {
    func vx_uri_from_string(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string
  }

  public class Class_uri_from_string : Vx_Core.Class_base, Func_uri_from_string {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_uri_from_string = Vx_Web_Html.Class_uri_from_string()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Web_Html.Class_uri_from_string = Vx_Web_Html.Class_uri_from_string()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/web/html", // pkgname
        "uri<-string", // name
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
      let output : any Vx_Core.Type_any = Vx_Web_Html.e_uri_from_string
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Web_Html.t_uri_from_string
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
      let outputval : any Vx_Core.Type_any = Vx_Web_Html.f_uri_from_string(inputval)
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
      output = Vx_Web_Html.f_uri_from_string(text)
      return output
    }

    public func vx_uri_from_string(
      _ text : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_string {
      let output : any Vx_Core.Type_string = Vx_Web_Html.f_uri_from_string(text)
      return output
    }

  }

  public static let e_uri_from_string : any Vx_Web_Html.Func_uri_from_string = Vx_Web_Html.Class_uri_from_string()
  public static let t_uri_from_string : any Vx_Web_Html.Func_uri_from_string = Vx_Web_Html.Class_uri_from_string()

  public static func f_uri_from_string(
    _ text : any Vx_Core.Type_string
  ) -> any Vx_Core.Type_string {
    var output : any Vx_Core.Type_string = Vx_Core.e_string
    return output
  }

  private static var initialized : Bool = false

  public static func vx_initialize() {
    guard !initialized else { return }
    initialized = true
    var maptype : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapconst : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapfunc : Vx_Core.MapMutable<any Vx_Core.Type_func> = Vx_Core.MapMutable<any Vx_Core.Type_func>()
    maptype.put("body", Vx_Web_Html.t_body)
    maptype.put("details", Vx_Web_Html.t_details)
    maptype.put("div", Vx_Web_Html.t_div)
    maptype.put("divchild", Vx_Web_Html.t_divchild)
    maptype.put("divchildlist", Vx_Web_Html.t_divchildlist)
    maptype.put("divlist", Vx_Web_Html.t_divlist)
    maptype.put("footer", Vx_Web_Html.t_footer)
    maptype.put("h1", Vx_Web_Html.t_h1)
    maptype.put("h2", Vx_Web_Html.t_h2)
    maptype.put("h3", Vx_Web_Html.t_h3)
    maptype.put("head", Vx_Web_Html.t_head)
    maptype.put("headchild", Vx_Web_Html.t_headchild)
    maptype.put("headchildlist", Vx_Web_Html.t_headchildlist)
    maptype.put("html", Vx_Web_Html.t_html)
    maptype.put("img", Vx_Web_Html.t_img)
    maptype.put("meta", Vx_Web_Html.t_meta)
    maptype.put("node", Vx_Web_Html.t_node)
    maptype.put("nodelist", Vx_Web_Html.t_nodelist)
    maptype.put("p", Vx_Web_Html.t_p)
    maptype.put("propmap", Vx_Web_Html.t_propmap)
    maptype.put("style", Vx_Web_Html.t_style)
    maptype.put("stylelist", Vx_Web_Html.t_stylelist)
    maptype.put("stylemap", Vx_Web_Html.t_stylemap)
    maptype.put("stylesheet", Vx_Web_Html.t_stylesheet)
    maptype.put("table", Vx_Web_Html.t_table)
    maptype.put("tbody", Vx_Web_Html.t_tbody)
    maptype.put("td", Vx_Web_Html.t_td)
    maptype.put("tdlist", Vx_Web_Html.t_tdlist)
    maptype.put("thead", Vx_Web_Html.t_thead)
    maptype.put("title", Vx_Web_Html.t_title)
    maptype.put("tr", Vx_Web_Html.t_tr)
    maptype.put("trlist", Vx_Web_Html.t_trlist)
    mapfunc.put("htmlstring<-string", Vx_Web_Html.t_htmlstring_from_string)
    mapfunc.put("string-indent", Vx_Web_Html.t_string_indent)
    mapfunc.put("string<-body-indent", Vx_Web_Html.t_string_from_body_indent)
    mapfunc.put("string<-details-indent", Vx_Web_Html.t_string_from_details_indent)
    mapfunc.put("string<-div-indent", Vx_Web_Html.t_string_from_div_indent)
    mapfunc.put("string<-footer-indent", Vx_Web_Html.t_string_from_footer_indent)
    mapfunc.put("string<-h1-indent", Vx_Web_Html.t_string_from_h1_indent)
    mapfunc.put("string<-h2-indent", Vx_Web_Html.t_string_from_h2_indent)
    mapfunc.put("string<-h3-indent", Vx_Web_Html.t_string_from_h3_indent)
    mapfunc.put("string<-head-indent", Vx_Web_Html.t_string_from_head_indent)
    mapfunc.put("string<-html", Vx_Web_Html.t_string_from_html)
    mapfunc.put("string<-img-indent", Vx_Web_Html.t_string_from_img_indent)
    mapfunc.put("string<-indent", Vx_Web_Html.t_string_from_indent)
    mapfunc.put("string<-meta-indent", Vx_Web_Html.t_string_from_meta_indent)
    mapfunc.put("string<-node", Vx_Web_Html.t_string_from_node)
    mapfunc.put("string<-node-indent", Vx_Web_Html.t_string_from_node_indent)
    mapfunc.put("string<-nodelist-indent", Vx_Web_Html.t_string_from_nodelist_indent)
    mapfunc.put("string<-nodelist-tag-prop-indent", Vx_Web_Html.t_string_from_nodelist_tag_prop_indent)
    mapfunc.put("string<-p-indent", Vx_Web_Html.t_string_from_p_indent)
    mapfunc.put("string<-propname-val", Vx_Web_Html.t_string_from_propname_val)
    mapfunc.put("string<-propstyle", Vx_Web_Html.t_string_from_propstyle)
    mapfunc.put("string<-propstyle-stylelist", Vx_Web_Html.t_string_from_propstyle_stylelist)
    mapfunc.put("string<-propstylelist", Vx_Web_Html.t_string_from_propstylelist)
    mapfunc.put("string<-propstyleunique", Vx_Web_Html.t_string_from_propstyleunique)
    mapfunc.put("string<-style-indent", Vx_Web_Html.t_string_from_style_indent)
    mapfunc.put("string<-stylelist", Vx_Web_Html.t_string_from_stylelist)
    mapfunc.put("string<-stylelist-indent", Vx_Web_Html.t_string_from_stylelist_indent)
    mapfunc.put("string<-stylepropmap-indent", Vx_Web_Html.t_string_from_stylepropmap_indent)
    mapfunc.put("string<-stylesheet-indent", Vx_Web_Html.t_string_from_stylesheet_indent)
    mapfunc.put("string<-table-indent", Vx_Web_Html.t_string_from_table_indent)
    mapfunc.put("string<-tbody-indent", Vx_Web_Html.t_string_from_tbody_indent)
    mapfunc.put("string<-td-indent", Vx_Web_Html.t_string_from_td_indent)
    mapfunc.put("string<-thead-indent", Vx_Web_Html.t_string_from_thead_indent)
    mapfunc.put("string<-title-indent", Vx_Web_Html.t_string_from_title_indent)
    mapfunc.put("string<-tr-indent", Vx_Web_Html.t_string_from_tr_indent)
    mapfunc.put("string<-uri", Vx_Web_Html.t_string_from_uri)
    mapfunc.put("style<-stylesheet-name", Vx_Web_Html.t_style_from_stylesheet_name)
    mapfunc.put("stylemap<-stylelist", Vx_Web_Html.t_stylemap_from_stylelist)
    mapfunc.put("stylemap<-stylesheet", Vx_Web_Html.t_stylemap_from_stylesheet)
    mapfunc.put("styles<-stylesheet", Vx_Web_Html.t_styles_from_stylesheet)
    mapfunc.put("stylesheet-loadmap", Vx_Web_Html.t_stylesheet_loadmap)
    mapfunc.put("uri<-string", Vx_Web_Html.t_uri_from_string)
    Vx_Core.vx_global_package_set(
      "vx/web/html",
      Vx_Core.vx_mapimmutable(maptype),
      Vx_Core.vx_mapimmutable(mapconst),
      Vx_Core.vx_mapimmutable(mapfunc)
    )
  }

}
