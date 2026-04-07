
import Foundation

public enum Vx_Event {


  public protocol Type_event : Vx_Core.Type_struct, AnyObject {
    func name() -> any Vx_Core.Type_string
    func from() -> any Vx_Core.Type_string
    func to() -> any Vx_Core.Type_string
    func datamap() -> any Vx_Core.Type_anymap
    func event_from_event() -> any Vx_Event.Func_event_from_event
    func event_from_event_async() -> any Vx_Event.Func_event_from_event_async
  }

  public class Class_event : Vx_Core.Class_base, Type_event {

    public var vx_p_name : (any Vx_Core.Type_string)? = nil

    public func name() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_name {
        output = testnull
      }
      return output
    }

    public var vx_p_from : (any Vx_Core.Type_string)? = nil

    public func from() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_from {
        output = testnull
      }
      return output
    }

    public var vx_p_to : (any Vx_Core.Type_string)? = nil

    public func to() -> any Vx_Core.Type_string {
      var output : any Vx_Core.Type_string = Vx_Core.e_string
      if let testnull = vx_p_to {
        output = testnull
      }
      return output
    }

    public var vx_p_datamap : (any Vx_Core.Type_anymap)? = nil

    public func datamap() -> any Vx_Core.Type_anymap {
      var output : any Vx_Core.Type_anymap = Vx_Core.e_anymap
      if let testnull = vx_p_datamap {
        output = testnull
      }
      return output
    }

    public var vx_p_event_from_event : (any Vx_Event.Func_event_from_event)? = nil

    public func event_from_event() -> any Vx_Event.Func_event_from_event {
      var output : any Vx_Event.Func_event_from_event = Vx_Event.e_event_from_event
      if let testnull = vx_p_event_from_event {
        output = testnull
      }
      return output
    }

    public var vx_p_event_from_event_async : (any Vx_Event.Func_event_from_event_async)? = nil

    public func event_from_event_async() -> any Vx_Event.Func_event_from_event_async {
      var output : any Vx_Event.Func_event_from_event_async = Vx_Event.e_event_from_event_async
      if let testnull = vx_p_event_from_event_async {
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
      } else if skey == ":from" {
        output = self.from()
      } else if skey == ":to" {
        output = self.to()
      } else if skey == ":datamap" {
        output = self.datamap()
      } else if skey == ":event<-event" {
        output = self.event_from_event()
      } else if skey == ":event<-event-async" {
        output = self.event_from_event_async()
      }
      return output
    }

    public func vx_map() -> Vx_Core.Map<any Vx_Core.Type_any> {
      var map : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
      map.put(":name", self.name())
      map.put(":from", self.from())
      map.put(":to", self.to())
      map.put(":datamap", self.datamap())
      map.put(":event<-event", self.event_from_event())
      map.put(":event<-event-async", self.event_from_event_async())
      let output : Vx_Core.Map<any Vx_Core.Type_any> = Vx_Core.vx_mapimmutable(map)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Event.Type_event = Vx_Core.vx_copy(Vx_Event.e_event, vals)
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Event.Type_event = self
      var ischanged : Bool = false
      var value : Vx_Event.Class_event = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var vx_p_name : any Vx_Core.Type_string = value.name()
      var vx_p_from : any Vx_Core.Type_string = value.from()
      var vx_p_to : any Vx_Core.Type_string = value.to()
      var vx_p_datamap : any Vx_Core.Type_anymap = value.datamap()
      var vx_p_event_from_event : any Vx_Event.Func_event_from_event = value.event_from_event()
      var vx_p_event_from_event_async : any Vx_Event.Func_event_from_event_async = value.event_from_event_async()
      var validkeys : [String] = []
      validkeys.append(":name")
      validkeys.append(":from")
      validkeys.append(":to")
      validkeys.append(":datamap")
      validkeys.append(":event<-event")
      validkeys.append(":event<-event-async")
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
            msg = Vx_Core.vx_msg_from_error("vx/event/event", ":invalidkeytype", msgval)
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
              msg = Vx_Core.vx_msg_from_error("vx/event/event", ":invalidkey", msgval)
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
              msg = Vx_Core.vx_msg_from_error("vx/event/event", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else if key == ":from" {
            if Vx_Core.vx_issame(valsub, vx_p_from) {
            } else if let valfrom = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_from = valfrom
            } else if valsub is String {
              ischanged = true
              vx_p_from = Vx_Core.vx_new(Vx_Core.t_string, valsub)
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("from"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
              msg = Vx_Core.vx_msg_from_error("vx/event/event", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else if key == ":to" {
            if Vx_Core.vx_issame(valsub, vx_p_to) {
            } else if let valto = valsub as? any Vx_Core.Type_string {
              ischanged = true
              vx_p_to = valto
            } else if valsub is String {
              ischanged = true
              vx_p_to = Vx_Core.vx_new(Vx_Core.t_string, valsub)
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("to"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
              msg = Vx_Core.vx_msg_from_error("vx/event/event", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else if key == ":datamap" {
            if Vx_Core.vx_issame(valsub, vx_p_datamap) {
            } else if let valdatamap = valsub as? any Vx_Core.Type_anymap {
              ischanged = true
              vx_p_datamap = valdatamap
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("datamap"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
              msg = Vx_Core.vx_msg_from_error("vx/event/event", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else if key == ":event<-event" {
            if Vx_Core.vx_issame(valsub, vx_p_event_from_event) {
            } else if let valevent_from_event = valsub as? any Vx_Event.Func_event_from_event {
              ischanged = true
              vx_p_event_from_event = valevent_from_event
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("event<-event"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
              msg = Vx_Core.vx_msg_from_error("vx/event/event", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else if key == ":event<-event-async" {
            if Vx_Core.vx_issame(valsub, vx_p_event_from_event_async) {
            } else if let valevent_from_event_async = valsub as? any Vx_Event.Func_event_from_event_async {
              ischanged = true
              vx_p_event_from_event_async = valevent_from_event_async
            } else {
              if false {
              } else if let valinvalid = valsub as? any Vx_Core.Type_any {
                msgval = valinvalid
              } else {
                msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
              }
              var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
              mapany.put("key", Vx_Core.vx_new_string("event<-event-async"))
              mapany.put("value", msgval)
              let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
              msg = Vx_Core.vx_msg_from_error("vx/event/event", ":invalidvalue", msgmap)
              msgblock = Vx_Core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = Vx_Core.vx_new_string(key)
            msg = Vx_Core.vx_msg_from_error("vx/event/event", ":invalidkey", msgval)
            msgblock = Vx_Core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Event.Class_event = Vx_Event.Class_event()
        work.vx_p_name = vx_p_name
        work.vx_p_from = vx_p_from
        work.vx_p_to = vx_p_to
        work.vx_p_datamap = vx_p_datamap
        work.vx_p_event_from_event = vx_p_event_from_event
        work.vx_p_event_from_event_async = vx_p_event_from_event_async
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Event.e_event
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Event.t_event
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/event", // pkgname
        "event", // name
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

  public static let e_event : any Vx_Event.Type_event = Vx_Event.Class_event()
  public static let t_event : any Vx_Event.Type_event = Vx_Event.Class_event()


  public protocol Type_eventlist : Vx_Core.Type_list, AnyObject {
    func vx_listevent() -> [any Vx_Event.Type_event]
    func vx_event(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Event.Type_event
  }

  public class Class_eventlist : Vx_Core.Class_base, Type_eventlist {

    public var vx_p_list : [any Vx_Event.Type_event] = Vx_Core.vx_listimmutable(Array())

    public func vx_list() -> [any Vx_Core.Type_any] {
      var output : [any Vx_Core.Type_any] = Vx_Core.vx_listimmutable(
        Array(self.vx_p_list)
      )
      return output
    }

    public func vx_event(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Event.Type_event {
      var output : any Vx_Event.Type_event = Vx_Event.e_event
      var list : Vx_Event.Class_eventlist = self
      var iindex : Int = index.vx_int()
      var listval : [any Vx_Event.Type_event] = list.vx_p_list
      if iindex < listval.count {
        output = listval[iindex]
      }
      return output
    }

    public func vx_listevent() -> [any Vx_Event.Type_event] {
      var output : [any Vx_Event.Type_event] = self.vx_p_list
      return output
    }

    public func vx_any(
      _ index : any Vx_Core.Type_int
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Event.Type_event = self.vx_event(index)
      return output
    }

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Event.Type_eventlist = Vx_Core.vx_copy(Vx_Event.e_eventlist, vals)
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Event.Type_eventlist = self
      var ischanged : Bool = false
      var value : Vx_Event.Class_eventlist = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var listval : [any Vx_Event.Type_event] = Array(value.vx_listevent())
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(msgblock, valsub)
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(msgblock, valsub)
        } else if let multi = valsub as? any Vx_Event.Type_eventlist {
          ischanged = true
          listval.append(contentsOf: multi.vx_listevent())
        } else if let allowsub = valsub as? any Vx_Event.Type_event {
          ischanged = true
          listval.append(allowsub)
        } else if valsub is any Vx_Event.Type_event {
          var subitem : any Vx_Event.Type_event = valsub as! any Vx_Event.Type_event
          ischanged = true
          listval.append(subitem)
        } else if let listany = valsub as? [any Vx_Core.Type_any] {
          for item in listany {
            if false {
            } else if let valitem = item as? any Vx_Event.Type_event {
              ischanged = true
              listval.append(valitem)
            }
          }
        } else if let anyinvalid = valsub as? any Vx_Core.Type_any {
          msg = Vx_Core.vx_msg_from_error("vx/event/eventlist", ":invalidtype", anyinvalid)
          msgblock = Vx_Core.vx_copy(msgblock, msg)
        } else {
          msg = Vx_Core.vx_msg_from_error("vx/event/eventlist", ":invalidtype", Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub)))
          msgblock = Vx_Core.vx_copy(msgblock, msg)
        }
      }
      if ischanged || !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
        var work : Vx_Event.Class_eventlist = Vx_Event.Class_eventlist()
        work.vx_p_list = Vx_Core.vx_listimmutable(listval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Event.e_eventlist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Event.t_eventlist
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/event", // pkgname
        "eventlist", // name
        ":list", // extends
        Vx_Core.e_typelist, // traits
        Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Event.t_event), // allowtypes
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

  public static let e_eventlist : any Vx_Event.Type_eventlist = Vx_Event.Class_eventlist()
  public static let t_eventlist : any Vx_Event.Type_eventlist = Vx_Event.Class_eventlist()


  public protocol Type_eventmap : Vx_Core.Type_map, AnyObject {
    func vx_mapevent() -> Vx_Core.Map<any Vx_Event.Type_event>
    func vx_event(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Event.Type_event
  }

  public class Class_eventmap : Vx_Core.Class_base, Type_eventmap {

    public var vx_p_map : Vx_Core.Map<any Vx_Event.Type_event> = Vx_Core.Map<any Vx_Event.Type_event>()

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
      } else if let castval = value as? any Vx_Event.Type_event {
        var key : String = name.vx_string()
        if key.hasPrefix(":") {
          key = String(key.dropFirst())
        }
        var map : Vx_Core.MapMutable<any Vx_Event.Type_event> = Vx_Core.vx_mapmutable(self.vx_p_map)
        if Vx_Core.vx_issame(castval, Vx_Event.e_event) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        self.vx_p_map = Vx_Core.vx_mapimmutable(map)
        output = Vx_Core.c_true
      }
      return output
    }

    public func vx_event(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Event.Type_event {
      var output : any Vx_Event.Type_event = Vx_Event.e_event
      var map : Vx_Event.Class_eventmap = self
      var skey : String = key.vx_string()
      if skey.hasPrefix(":") {
        skey = String(skey.dropFirst())
      }
      let mapval : Vx_Core.Map<any Vx_Event.Type_event> = map.vx_p_map
      output = mapval.getOrElse(skey, Vx_Event.e_event)
      return output
    }

    public func vx_mapevent() -> Vx_Core.Map<any Vx_Event.Type_event> {
      let output : Vx_Core.Map<any Vx_Event.Type_event> = self.vx_p_map
      return output
    }

    public func vx_any(
      _ key : any Vx_Core.Type_string
    ) -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = self.vx_event(key)
      return output
    }


    public func vx_new_from_map(
      _ mapval : Vx_Core.Map<any Vx_Core.Type_any>
    ) -> any Vx_Core.Type_map {
      var output : Vx_Event.Class_eventmap = Vx_Event.Class_eventmap()
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.e_msgblock
      var map : Vx_Core.MapMutable<any Vx_Event.Type_event> = Vx_Core.MapMutable<any Vx_Event.Type_event>()
      let keys : [String] = mapval.keys()
      for key in keys {
        var value : any Vx_Core.Type_any = mapval.get(key)
        if false {
        } else if let castval = value as? any Vx_Event.Type_event {
          map.put(key, castval)
        } else {
          var msg : any Vx_Core.Type_msg = Vx_Core.vx_msg_from_error("vx/event/eventmap", ":invalidvalue", value)
          msgblock = Vx_Core.vx_copy(msgblock, msg)
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
      var output : any Vx_Event.Type_eventmap = Vx_Core.vx_copy(Vx_Event.e_eventmap, vals)
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Event.Type_eventmap = self
      var ischanged : Bool = false
      var value : Vx_Event.Class_eventmap = self
      var msgblock : any Vx_Core.Type_msgblock = Vx_Core.vx_msgblock_from_copy_arrayval(value, vals)
      if !Vx_Core.vx_issame(self.vx_constdef(), Vx_Core.e_constdef) {
        ischanged = true
      }
      var mapval : Vx_Core.MapMutable<any Vx_Event.Type_event> = Vx_Core.vx_mapmutable(value.vx_mapevent())
      var key : String = ""
      var msg : any Vx_Core.Type_msg = Vx_Core.e_msg
      var msgval : any Vx_Core.Type_any = Vx_Core.e_any
      for valsub in vals {
        if valsub is any Vx_Core.Type_msgblock {
          msgblock = Vx_Core.vx_copy(msgblock, valsub)
        } else if valsub is any Vx_Core.Type_msg {
          msgblock = Vx_Core.vx_copy(msgblock, valsub)
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
              msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
            }
            msg = Vx_Core.vx_msg_from_error("vx/event/eventmap", ":keyexpected", msgval)
            msgblock = Vx_Core.vx_copy(msgblock, msg)
          }
        } else {
          var valany : any Vx_Event.Type_event = Vx_Event.e_event
          if false {
          } else if let valallowed = valsub as? any Vx_Event.Type_event {
            valany = valallowed
          } else if valsub is any Vx_Event.Type_event {
            valany = valsub as! any Vx_Event.Type_event
          } else {
            if false {
            } else if let valinvalid = valsub as? any Vx_Core.Type_any {
              msgval = valinvalid
            } else {
              msgval = Vx_Core.vx_new_string(Vx_Core.vx_string_from_object(valsub))
            }
            var mapany : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
            mapany.put("key", Vx_Core.vx_new_string(key))
            mapany.put("value", msgval)
            let msgmap : any Vx_Core.Type_map = Vx_Core.t_anymap.vx_new_from_map(Vx_Core.vx_mapimmutable(mapany))
            msg = Vx_Core.vx_msg_from_error("vx/event/eventmap", ":invalidkeyvalue", msgmap)
            msgblock = Vx_Core.vx_copy(msgblock, msg)
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
        var work : Vx_Event.Class_eventmap = Vx_Event.Class_eventmap()
        work.vx_p_map = Vx_Core.vx_mapimmutable(mapval)
        if !Vx_Core.vx_issame(msgblock, Vx_Core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    override public func vx_empty() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Event.e_eventmap
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Event.t_eventmap
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      var output : any Vx_Core.Type_typedef = Vx_Core.typedef_new(
        "vx/event", // pkgname
        "eventmap", // name
        ":map", // extends
        Vx_Core.e_typelist, // traits
        Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Event.t_event), // allowtypes
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

  public static let e_eventmap : any Vx_Event.Type_eventmap = Vx_Event.Class_eventmap()
  public static let t_eventmap : any Vx_Event.Type_eventmap = Vx_Event.Class_eventmap()


  public class Const_event_change {
    public static func constdef() -> any Vx_Core.Type_constdef {
      let output : any Vx_Core.Type_constdef = Vx_Core.constdef_new(
        "vx/event", // pkgname
        "event-change", // name
        Vx_Event.t_event
      )
      return output
    }

    public static func const_new(
      _ output : any Vx_Event.Type_event
    ) -> () {
      var outval : Vx_Event.Class_event = output as! Vx_Event.Class_event
      outval.vx_p_constdef = constdef()
      var value : any Vx_Event.Type_event = Vx_Core.f_new(
        Vx_Event.t_event,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          Vx_Core.vx_new_string(":name"),
          Vx_Core.vx_new_string("change")
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_from = value.from()
      outval.vx_p_to = value.to()
      outval.vx_p_datamap = value.datamap()
      outval.vx_p_event_from_event = value.event_from_event()
      outval.vx_p_event_from_event_async = value.event_from_event_async()
    }

  }

  public static let c_event_change : any Vx_Event.Type_event = Vx_Event.Class_event()


  public class Const_event_click {
    public static func constdef() -> any Vx_Core.Type_constdef {
      let output : any Vx_Core.Type_constdef = Vx_Core.constdef_new(
        "vx/event", // pkgname
        "event-click", // name
        Vx_Event.t_event
      )
      return output
    }

    public static func const_new(
      _ output : any Vx_Event.Type_event
    ) -> () {
      var outval : Vx_Event.Class_event = output as! Vx_Event.Class_event
      outval.vx_p_constdef = constdef()
      var value : any Vx_Event.Type_event = Vx_Core.f_new(
        Vx_Event.t_event,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          Vx_Core.vx_new_string(":name"),
          Vx_Core.vx_new_string("click")
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_from = value.from()
      outval.vx_p_to = value.to()
      outval.vx_p_datamap = value.datamap()
      outval.vx_p_event_from_event = value.event_from_event()
      outval.vx_p_event_from_event_async = value.event_from_event_async()
    }

  }

  public static let c_event_click : any Vx_Event.Type_event = Vx_Event.Class_event()


  public class Const_event_move {
    public static func constdef() -> any Vx_Core.Type_constdef {
      let output : any Vx_Core.Type_constdef = Vx_Core.constdef_new(
        "vx/event", // pkgname
        "event-move", // name
        Vx_Event.t_event
      )
      return output
    }

    public static func const_new(
      _ output : any Vx_Event.Type_event
    ) -> () {
      var outval : Vx_Event.Class_event = output as! Vx_Event.Class_event
      outval.vx_p_constdef = constdef()
      var value : any Vx_Event.Type_event = Vx_Core.f_new(
        Vx_Event.t_event,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          Vx_Core.vx_new_string(":name"),
          Vx_Core.vx_new_string("move")
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_from = value.from()
      outval.vx_p_to = value.to()
      outval.vx_p_datamap = value.datamap()
      outval.vx_p_event_from_event = value.event_from_event()
      outval.vx_p_event_from_event_async = value.event_from_event_async()
    }

  }

  public static let c_event_move : any Vx_Event.Type_event = Vx_Event.Class_event()


  public class Const_event_select {
    public static func constdef() -> any Vx_Core.Type_constdef {
      let output : any Vx_Core.Type_constdef = Vx_Core.constdef_new(
        "vx/event", // pkgname
        "event-select", // name
        Vx_Event.t_event
      )
      return output
    }

    public static func const_new(
      _ output : any Vx_Event.Type_event
    ) -> () {
      var outval : Vx_Event.Class_event = output as! Vx_Event.Class_event
      outval.vx_p_constdef = constdef()
      var value : any Vx_Event.Type_event = Vx_Core.f_new(
        Vx_Event.t_event,
        Vx_Core.vx_new(
          Vx_Core.t_anylist,
          Vx_Core.vx_new_string(":name"),
          Vx_Core.vx_new_string("move")
        )
      )
      outval.vx_p_name = value.name()
      outval.vx_p_from = value.from()
      outval.vx_p_to = value.to()
      outval.vx_p_datamap = value.datamap()
      outval.vx_p_event_from_event = value.event_from_event()
      outval.vx_p_event_from_event_async = value.event_from_event_async()
    }

  }

  public static let c_event_select : any Vx_Event.Type_event = Vx_Event.Class_event()


  public protocol Func_any_from_from_event : Vx_Core.Func_any_from_any, AnyObject {
    func vx_any_from_from_event<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ evt : any Vx_Event.Type_event
    ) -> T
  }

  public class Class_any_from_from_event : Vx_Core.Class_base, Func_any_from_from_event {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Event.Class_any_from_from_event = Vx_Event.Class_any_from_from_event()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Event.Class_any_from_from_event = Vx_Event.Class_any_from_from_event()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/event", // pkgname
        "any-from<-event", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/core", // pkgname
          "any-1", // name
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
      let output : any Vx_Core.Type_any = Vx_Event.e_any_from_from_event
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Event.t_any_from_from_event
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
      let inputval : any Vx_Event.Type_event = value as! any Vx_Event.Type_event
      let outputval : any Vx_Core.Type_any = Vx_Event.f_any_from_from_event(Vx_Core.t_any, inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let generic_any_1 : any Vx_Core.Type_any = Vx_Core.f_any_from_any(Vx_Core.t_any, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let evt : any Vx_Event.Type_event = Vx_Core.f_any_from_any(Vx_Event.t_event, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Event.f_any_from_from_event(generic_any_1, evt)
      return output
    }

    public func vx_any_from_from_event<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ evt : any Vx_Event.Type_event
    ) -> T {
      let output : T = Vx_Event.f_any_from_from_event(generic_any_1, evt)
      return output
    }

  }

  public static let e_any_from_from_event : any Vx_Event.Func_any_from_from_event = Vx_Event.Class_any_from_from_event()
  public static let t_any_from_from_event : any Vx_Event.Func_any_from_from_event = Vx_Event.Class_any_from_from_event()

  public static func f_any_from_from_event<T : Vx_Core.Type_any>(
    _ generic_any_1 : T,
    _ evt : any Vx_Event.Type_event
  ) -> T {
    var output : T = Vx_Core.f_empty(generic_any_1)
    output = Vx_Core.f_let(
      generic_any_1,
      Vx_Core.t_any_from_func.vx_fn_new({() in
        let value : any Vx_Core.Type_any = evt.from()
        let output_1 : any Vx_Core.Type_any = Vx_Core.f_any_from_any(
          generic_any_1,
          value
        )
        return output_1
      })
    )
    return output
  }


  public protocol Func_event_from_event : Vx_Core.Func_any_from_any_context, AnyObject {
    func vx_event_from_event(
      _ context : any Vx_Core.Type_context,
      _ evt : any Vx_Event.Type_event
    ) -> any Vx_Event.Type_event
  }

  public class Class_event_from_event : Vx_Core.Class_base, Func_event_from_event {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Event.Class_event_from_event = Vx_Event.Class_event_from_event()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Event.Class_event_from_event = Vx_Event.Class_event_from_event()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/event", // pkgname
        "event<-event", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/event", // pkgname
          "event", // name
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
      let output : any Vx_Core.Type_any = Vx_Event.e_event_from_event
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Event.t_event_from_event
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
      let inputval : any Vx_Event.Type_event = value as! any Vx_Event.Type_event
      let outputval : any Vx_Core.Type_any = Vx_Event.f_event_from_event(context, inputval)
      output = Vx_Core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let evt : any Vx_Event.Type_event = Vx_Core.f_any_from_any(Vx_Event.t_event, arglist.vx_any(Vx_Core.vx_new_int(1)))
      output = Vx_Event.f_event_from_event(context, evt)
      return output
    }

    public func vx_event_from_event(
      _ context : any Vx_Core.Type_context,
      _ evt : any Vx_Event.Type_event
    ) -> any Vx_Event.Type_event {
      let output : any Vx_Event.Type_event = Vx_Event.f_event_from_event(context, evt)
      return output
    }

  }

  public static let e_event_from_event : any Vx_Event.Func_event_from_event = Vx_Event.Class_event_from_event()
  public static let t_event_from_event : any Vx_Event.Func_event_from_event = Vx_Event.Class_event_from_event()

  public static func f_event_from_event(
    _ context : any Vx_Core.Type_context,
    _ evt : any Vx_Event.Type_event
  ) -> any Vx_Event.Type_event {
    var output : any Vx_Event.Type_event = Vx_Event.e_event
    output = evt
    return output
  }


  public protocol Func_event_from_event_async : Vx_Core.Func_any_from_any_context_async, AnyObject {
    func vx_event_from_event_async(
      _ context : any Vx_Core.Type_context,
      _ evt : any Vx_Event.Type_event
    ) -> Vx_Core.Future
  }

  public class Class_event_from_event_async : Vx_Core.Class_base, Func_event_from_event_async {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Event.Class_event_from_event_async = Vx_Event.Class_event_from_event_async()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Event.Class_event_from_event_async = Vx_Event.Class_event_from_event_async()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/event", // pkgname
        "event<-event-async", // name
        0, // idx
        true, // async
        Vx_Core.typedef_new(
          "vx/event", // pkgname
          "event", // name
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
      let output : any Vx_Core.Type_any = Vx_Event.e_event_from_event_async
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Event.t_event_from_event_async
      return output
    }

    public func vx_fn_new(_ fn : @escaping Vx_Core.Class_any_from_any_context_async.IFn) -> Vx_Core.Func_any_from_any_context_async {
      return Vx_Core.e_any_from_any_context_async
    }

    public func vx_any_from_any_context_async<T : Vx_Core.Type_any>(
      _ generic_any_1 : T,
      _ context : any Vx_Core.Type_context,
      _ value : any Vx_Core.Type_any
    ) -> Vx_Core.Future {
      let inputval : any Vx_Event.Type_event = Vx_Core.f_any_from_any(Vx_Event.t_event, value)
      let future : Vx_Core.Future = Vx_Event.f_event_from_event_async(context, inputval)
      let output : Vx_Core.Future = Vx_Core.vx_async_from_async(generic_any_1, future)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Core.e_any)
      let context : any Vx_Core.Type_context = Vx_Core.f_any_from_any(Vx_Core.t_context, arglist.vx_any(Vx_Core.vx_new_int(0)))
      let evt : any Vx_Event.Type_event = Vx_Core.f_any_from_any(Vx_Event.t_event, arglist.vx_any(Vx_Core.vx_new_int(1)))
      var future : Vx_Core.Future = Vx_Event.f_event_from_event_async(context, evt)
      output = Vx_Core.vx_async_from_async(Vx_Core.t_any, future)
      return output
    }

    public func vx_event_from_event_async(
      _ context : any Vx_Core.Type_context,
      _ evt : any Vx_Event.Type_event
    ) -> Vx_Core.Future {
      var output : Vx_Core.Future = Vx_Event.f_event_from_event_async(context, evt)
      return output
    }

  }

  public static let e_event_from_event_async : any Vx_Event.Func_event_from_event_async = Vx_Event.Class_event_from_event_async()
  public static let t_event_from_event_async : any Vx_Event.Func_event_from_event_async = Vx_Event.Class_event_from_event_async()

  public static func f_event_from_event_async(
    _ context : any Vx_Core.Type_context,
    _ evt : any Vx_Event.Type_event
  ) -> Vx_Core.Future {
    var output : Vx_Core.Future = Vx_Core.vx_async_new_from_value(Vx_Event.e_event)
    return output
  }


  public protocol Func_eventmap_from_eventlist : Vx_Core.Func_any_from_any, AnyObject {
    func vx_eventmap_from_eventlist(
      _ eventlist : any Vx_Event.Type_eventlist
    ) -> any Vx_Event.Type_eventmap
  }

  public class Class_eventmap_from_eventlist : Vx_Core.Class_base, Func_eventmap_from_eventlist {

    override public func vx_new(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Event.Class_eventmap_from_eventlist = Vx_Event.Class_eventmap_from_eventlist()
      return output
    }

    override public func vx_copy(
      _ vals : [Any]
    ) -> any Vx_Core.Type_any {
      let output : Vx_Event.Class_eventmap_from_eventlist = Vx_Event.Class_eventmap_from_eventlist()
      return output
    }

    override public func vx_typedef() -> any Vx_Core.Type_typedef {
      let output : any Vx_Core.Type_typedef = Vx_Core.t_func.vx_typedef()
      return output
    }

    public func vx_funcdef() -> any Vx_Core.Type_funcdef {
      let output : any Vx_Core.Type_funcdef = Vx_Core.funcdef_new(
        "vx/event", // pkgname
        "eventmap<-eventlist", // name
        0, // idx
        false, // async
        Vx_Core.typedef_new(
          "vx/event", // pkgname
          "eventmap", // name
          ":map", // extends
          Vx_Core.e_typelist, // traits
          Vx_Core.vx_new(Vx_Core.t_typelist, Vx_Event.t_event), // allowtypes
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
      let output : any Vx_Core.Type_any = Vx_Event.e_eventmap_from_eventlist
      return output
    }

    override public func vx_type() -> any Vx_Core.Type_any {
      let output : any Vx_Core.Type_any = Vx_Event.t_eventmap_from_eventlist
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
      let inputval : any Vx_Event.Type_eventlist = value as! any Vx_Event.Type_eventlist
      let outputval : any Vx_Core.Type_any = Vx_Event.f_eventmap_from_eventlist(inputval)
      output = Vx_Core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    public func vx_repl(
      _ arglist : any Vx_Core.Type_anylist
    ) -> any Vx_Core.Type_any {
      var output : any Vx_Core.Type_any = Vx_Core.e_any
      let eventlist : any Vx_Event.Type_eventlist = Vx_Core.f_any_from_any(Vx_Event.t_eventlist, arglist.vx_any(Vx_Core.vx_new_int(0)))
      output = Vx_Event.f_eventmap_from_eventlist(eventlist)
      return output
    }

    public func vx_eventmap_from_eventlist(
      _ eventlist : any Vx_Event.Type_eventlist
    ) -> any Vx_Event.Type_eventmap {
      let output : any Vx_Event.Type_eventmap = Vx_Event.f_eventmap_from_eventlist(eventlist)
      return output
    }

  }

  public static let e_eventmap_from_eventlist : any Vx_Event.Func_eventmap_from_eventlist = Vx_Event.Class_eventmap_from_eventlist()
  public static let t_eventmap_from_eventlist : any Vx_Event.Func_eventmap_from_eventlist = Vx_Event.Class_eventmap_from_eventlist()

  public static func f_eventmap_from_eventlist(
    _ eventlist : any Vx_Event.Type_eventlist
  ) -> any Vx_Event.Type_eventmap {
    var output : any Vx_Event.Type_eventmap = Vx_Event.e_eventmap
    output = Vx_Core.f_map_from_list(
      Vx_Event.t_eventmap,
      eventlist,
      Vx_Core.t_any_from_any.vx_fn_new({(evt_any) in
        let evt : any Vx_Event.Type_event = Vx_Core.f_any_from_any(Vx_Event.t_event, evt_any)
        var output_1 : any Vx_Core.Type_any = evt.name()
        return output_1
      })
    )
    return output
  }

  private static var initialized : Bool = false

  public static func vx_initialize() {
    guard !initialized else { return }
    initialized = true
    Const_event_change.const_new(c_event_change)
    Const_event_click.const_new(c_event_click)
    Const_event_move.const_new(c_event_move)
    Const_event_select.const_new(c_event_select)
    var maptype : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapconst : Vx_Core.MapMutable<any Vx_Core.Type_any> = Vx_Core.MapMutable<any Vx_Core.Type_any>()
    var mapfunc : Vx_Core.MapMutable<any Vx_Core.Type_func> = Vx_Core.MapMutable<any Vx_Core.Type_func>()
    maptype.put("event", Vx_Event.t_event)
    maptype.put("eventlist", Vx_Event.t_eventlist)
    maptype.put("eventmap", Vx_Event.t_eventmap)
    mapconst.put("event-change", Vx_Event.c_event_change)
    mapconst.put("event-click", Vx_Event.c_event_click)
    mapconst.put("event-move", Vx_Event.c_event_move)
    mapconst.put("event-select", Vx_Event.c_event_select)
    mapfunc.put("any-from<-event", Vx_Event.t_any_from_from_event)
    mapfunc.put("event<-event", Vx_Event.t_event_from_event)
    mapfunc.put("event<-event-async", Vx_Event.t_event_from_event_async)
    mapfunc.put("eventmap<-eventlist", Vx_Event.t_eventmap_from_eventlist)
    Vx_Core.vx_global_package_set(
      "vx/event",
      Vx_Core.vx_mapimmutable(maptype),
      Vx_Core.vx_mapimmutable(mapconst),
      Vx_Core.vx_mapimmutable(mapfunc)
    )
  }

}
