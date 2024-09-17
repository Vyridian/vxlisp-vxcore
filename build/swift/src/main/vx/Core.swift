
  /**
   * type: any
   * Any Value for Variant Type
   * (type any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_any = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_any = vx_core.Class_any()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: any-async<-func
   * A sync or async function that returns one value.
   * (type any-async<-func)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_any_async_from_func = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_any_async_from_func = vx_core.Class_any_async_from_func()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: any<-anylist
   * List of any<-any
   * (type any<-anylist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_any_from_any(index : vx_core.Type_int) -> vx_core.Func_any_from_any {
      
      var list : vx_core.Class_any_from_anylist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listany_from_any() -> List<vx_core.Func_any_from_any> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_any_from_anylist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listany_from_any())
          ischanged = true
          listval.add(allowsub)
          msg = vx_core.vx_msg_from_error("vx/core/any<-anylist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/any<-anylist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_any_from_anylist = vx_core.Class_any_from_anylist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: anylist
   * A list of any
   * (type anylist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      var list : vx_core.Class_anylist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_anylist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_list())
          ischanged = true
          listval.add(allowsub)
          msg = vx_core.vx_msg_from_error("vx/core/anylist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/anylist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_anylist = vx_core.Class_anylist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: anymap
   * A map of any
   * (type anymap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_any) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      var map : vx_core.Class_anymap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_any)
      return output
    }

    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_anymap = vx_core.Class_anymap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_anymap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/anymap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/anymap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_anymap = vx_core.Class_anymap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: anytype
   * Any Type that allows any Type as a Value
   * (type anytype)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_anytype = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_anytype = vx_core.Class_anytype()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: arg
   * A function argument
   * (type arg)
   */

    

    func name() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func argtype() -> vx_core.Type_any {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func fn_any() -> vx_core.Func_any_from_func {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func doc() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":name")) {
        output = this.name()
      } else if ((skey==":argtype")) {
        output = this.argtype()
      } else if ((skey==":fn-any")) {
        output = this.fn_any()
      } else if ((skey==":doc")) {
        output = this.doc()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":name", this.name())
      map.put(":argtype", this.argtype())
      map.put(":fn-any", this.fn_any())
      map.put(":doc", this.doc())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_arg = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      
      validkeys.add(":name")
      validkeys.add(":argtype")
      validkeys.add(":fn-any")
      validkeys.add(":doc")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/arg", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/arg", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":name")) {
            if (valsub == vx_p_name) {
              ischanged = true
              vx_p_name = valname
            } else if () {
              ischanged = true
              vx_p_name = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("name"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/arg", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":argtype")) {
            if (valsub == vx_p_argtype) {
              ischanged = true
              vx_p_argtype = valargtype
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("argtype"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/arg", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":fn-any")) {
            if (valsub == vx_p_fn_any) {
              ischanged = true
              vx_p_fn_any = valfn_any
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("fn-any"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/arg", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":doc")) {
            if (valsub == vx_p_doc) {
              ischanged = true
              vx_p_doc = valdoc
            } else if () {
              ischanged = true
              vx_p_doc = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("doc"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/arg", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/arg", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_arg = vx_core.Class_arg()
        work.vx_p_name = vx_p_name
        work.vx_p_argtype = vx_p_argtype
        work.vx_p_fn_any = vx_p_fn_any
        work.vx_p_doc = vx_p_doc
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: arglist
   * A list of arg
   * (type arglist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_arg(index : vx_core.Type_int) -> vx_core.Type_arg {
      
      var list : vx_core.Class_arglist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listarg() -> List<vx_core.Type_arg> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_arglist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listarg())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add()
          msg = vx_core.vx_msg_from_error("vx/core/arglist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/arglist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_arglist = vx_core.Class_arglist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: argmap
   * A map of arg
   * (type argmap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_arg) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_arg(key : vx_core.Type_string) -> vx_core.Type_arg {
      
      var map : vx_core.Class_argmap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_arg)
      return output
    }

    func vx_maparg() -> Map<String, vx_core.Type_arg> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_argmap = vx_core.Class_argmap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_argmap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/argmap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/argmap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_argmap = vx_core.Class_argmap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: boolean
   * Standard Boolean Type
   * (type boolean)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_boolean = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          booleanval = booleanval || valboolean.vx_boolean()
          booleanval = booleanval || issubval
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_boolean = vx_core.Class_boolean()
        work.vxboolean = booleanval
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      } else if (booleanval) {
        output = vx_core.c_true
      } else {
        output = vx_core.c_false
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  

  /**
   * type: booleanlist
   * (type booleanlist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_boolean(index : vx_core.Type_int) -> vx_core.Type_boolean {
      
      var list : vx_core.Class_booleanlist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listboolean() -> List<vx_core.Type_boolean> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_booleanlist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listboolean())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add(vx_core.vx_new(vx_core.t_boolean, valsub))
          msg = vx_core.vx_msg_from_error("vx/core/booleanlist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/booleanlist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_booleanlist = vx_core.Class_booleanlist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: collection
   * (type collection)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_collection = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_collection = vx_core.Class_collection()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: compilelanguages
   * (type compilelanguages)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_compilelanguages = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_compilelanguages = vx_core.Class_compilelanguages()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: connect
   * General connect trait
   * (type connect)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_connect = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_connect = vx_core.Class_connect()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: connectlist
   * List of connect
   * (type connectlist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_connect(index : vx_core.Type_int) -> vx_core.Type_connect {
      
      var list : vx_core.Class_connectlist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listconnect() -> List<vx_core.Type_connect> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_connectlist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listconnect())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add()
          msg = vx_core.vx_msg_from_error("vx/core/connectlist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/connectlist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_connectlist = vx_core.Class_connectlist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: connectmap
   * Map of connect
   * (type connectmap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_connect) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_connect(key : vx_core.Type_string) -> vx_core.Type_connect {
      
      var map : vx_core.Class_connectmap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_connect)
      return output
    }

    func vx_mapconnect() -> Map<String, vx_core.Type_connect> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_connectmap = vx_core.Class_connectmap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_connectmap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/connectmap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/connectmap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_connectmap = vx_core.Class_connectmap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: const
   * Original Constant Class.
   * (type const)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_const = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_const = vx_core.Class_const()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: constdef
   * Const Definition Class for inspecting properties.
   * (type constdef)
   */

    

    func pkgname() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func name() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func type() -> vx_core.Type_any {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":pkgname")) {
        output = this.pkgname()
      } else if ((skey==":name")) {
        output = this.name()
      } else if ((skey==":type")) {
        output = this.type()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":pkgname", this.pkgname())
      map.put(":name", this.name())
      map.put(":type", this.type())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_constdef = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      validkeys.add(":pkgname")
      validkeys.add(":name")
      validkeys.add(":type")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/constdef", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/constdef", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":pkgname")) {
            if (valsub == vx_p_pkgname) {
              ischanged = true
              vx_p_pkgname = valpkgname
            } else if () {
              ischanged = true
              vx_p_pkgname = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("pkgname"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/constdef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":name")) {
            if (valsub == vx_p_name) {
              ischanged = true
              vx_p_name = valname
            } else if () {
              ischanged = true
              vx_p_name = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("name"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/constdef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":type")) {
            if (valsub == vx_p_type) {
              ischanged = true
              vx_p_type = valtype
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("type"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/constdef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/constdef", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_constdef = vx_core.Class_constdef()
        work.vx_p_pkgname = vx_p_pkgname
        work.vx_p_name = vx_p_name
        work.vx_p_type = vx_p_type
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: constlist
   * List of Const.
   * (type constlist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      var list : vx_core.Class_constlist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_constlist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_list())
          ischanged = true
          listval.add(allowsub)
          msg = vx_core.vx_msg_from_error("vx/core/constlist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/constlist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_constlist = vx_core.Class_constlist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: constmap
   * Map of Const.
   * (type constmap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_any) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      var map : vx_core.Class_constmap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_any)
      return output
    }

    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_constmap = vx_core.Class_constmap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_constmap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/constmap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/constmap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_constmap = vx_core.Class_constmap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: context
   * Context
   * (type context)
   */

    

    func code() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func session() -> vx_core.Type_session {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func setting() -> vx_core.Type_setting {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func state() -> vx_core.Type_state {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":code")) {
        output = this.code()
      } else if ((skey==":session")) {
        output = this.session()
      } else if ((skey==":setting")) {
        output = this.setting()
      } else if ((skey==":state")) {
        output = this.state()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":code", this.code())
      map.put(":session", this.session())
      map.put(":setting", this.setting())
      map.put(":state", this.state())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_context = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      
      validkeys.add(":code")
      validkeys.add(":session")
      validkeys.add(":setting")
      validkeys.add(":state")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/context", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/context", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":code")) {
            if (valsub == vx_p_code) {
              ischanged = true
              vx_p_code = valcode
            } else if () {
              ischanged = true
              vx_p_code = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("code"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/context", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":session")) {
            if (valsub == vx_p_session) {
              ischanged = true
              vx_p_session = valsession
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("session"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/context", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":setting")) {
            if (valsub == vx_p_setting) {
              ischanged = true
              vx_p_setting = valsetting
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("setting"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/context", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":state")) {
            if (valsub == vx_p_state) {
              ischanged = true
              vx_p_state = valstate
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("state"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/context", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/context", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_context = vx_core.Class_context()
        work.vx_p_code = vx_p_code
        work.vx_p_session = vx_p_session
        work.vx_p_setting = vx_p_setting
        work.vx_p_state = vx_p_state
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: date
   * A simple UTC date.
   * (type date)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_date = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_date = vx_core.Class_date()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: decimal
   * A clean version of float like Java BigDecimal.
   * (type decimal)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_decimal = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          sval = valstring.vx_string()
          ischanged = true
          sval = svalsub
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_decimal = vx_core.Class_decimal()
        work.vxdecimal = sval
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: error
   * Error Type
   * (type error)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_error = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_error = vx_core.Class_error()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: float
   * Standard Floating Point Number
   * (type float)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_float = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          floatval += valdecimal.vx_float()
          ischanged = true
          floatval += valfloat.vx_float()
          ischanged = true
          floatval += valint.vx_int()
          ischanged = true
          floatval += 
          ischanged = true
          floatval += fval
          ischanged = true
          floatval += ival
          ischanged = true
          floatval += 
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_float = vx_core.Class_float()
        work.vxfloat = floatval
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: func
   * Original Function Class.
   * (type func)
   */

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_func = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_func = vx_core.Class_func()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: funcdef
   * Func Definition Class for inspecting properties.
   * (type funcdef)
   */

    

    func pkgname() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func name() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func idx() -> vx_core.Type_int {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func type() -> vx_core.Type_any {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func async() -> vx_core.Type_boolean {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":pkgname")) {
        output = this.pkgname()
      } else if ((skey==":name")) {
        output = this.name()
      } else if ((skey==":idx")) {
        output = this.idx()
      } else if ((skey==":type")) {
        output = this.type()
      } else if ((skey==":async")) {
        output = this.async()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":pkgname", this.pkgname())
      map.put(":name", this.name())
      map.put(":idx", this.idx())
      map.put(":type", this.type())
      map.put(":async", this.async())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_funcdef = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      
      
      validkeys.add(":pkgname")
      validkeys.add(":name")
      validkeys.add(":idx")
      validkeys.add(":type")
      validkeys.add(":async")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/funcdef", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/funcdef", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":pkgname")) {
            if (valsub == vx_p_pkgname) {
              ischanged = true
              vx_p_pkgname = valpkgname
            } else if () {
              ischanged = true
              vx_p_pkgname = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("pkgname"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/funcdef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":name")) {
            if (valsub == vx_p_name) {
              ischanged = true
              vx_p_name = valname
            } else if () {
              ischanged = true
              vx_p_name = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("name"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/funcdef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":idx")) {
            if (valsub == vx_p_idx) {
              ischanged = true
              vx_p_idx = validx
            } else if () {
              ischanged = true
              vx_p_idx = vx_core.vx_new(vx_core.t_int, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("idx"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/funcdef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":type")) {
            if (valsub == vx_p_type) {
              ischanged = true
              vx_p_type = valtype
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("type"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/funcdef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":async")) {
            if (valsub == vx_p_async) {
              ischanged = true
              vx_p_async = valasync
            } else if () {
              ischanged = true
              vx_p_async = vx_core.vx_new(vx_core.t_boolean, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("async"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/funcdef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/funcdef", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_funcdef = vx_core.Class_funcdef()
        work.vx_p_pkgname = vx_p_pkgname
        work.vx_p_name = vx_p_name
        work.vx_p_idx = vx_p_idx
        work.vx_p_type = vx_p_type
        work.vx_p_async = vx_p_async
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: funclist
   * List of Func.
   * (type funclist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_func(index : vx_core.Type_int) -> vx_core.Type_func {
      
      var list : vx_core.Class_funclist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listfunc() -> List<vx_core.Type_func> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_funclist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listfunc())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add()
          msg = vx_core.vx_msg_from_error("vx/core/funclist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/funclist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_funclist = vx_core.Class_funclist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: funcmap
   * Map of Func.
   * (type funcmap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_func) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_func(key : vx_core.Type_string) -> vx_core.Type_func {
      
      var map : vx_core.Class_funcmap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_func)
      return output
    }

    func vx_mapfunc() -> Map<String, vx_core.Type_func> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_funcmap = vx_core.Class_funcmap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_funcmap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/funcmap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/funcmap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_funcmap = vx_core.Class_funcmap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: int
   * A simple integer.
   * (type int)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_int = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          intval += valint.vx_int()
          ischanged = true
          intval += ival
          ischanged = true
          intval += 
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_int = vx_core.Class_int()
        work.vxint = intval
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: intlist
   * A list of int.
   * (type intlist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_int(index : vx_core.Type_int) -> vx_core.Type_int {
      
      var list : vx_core.Class_intlist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listint() -> List<vx_core.Type_int> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_intlist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listint())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add(vx_core.vx_new(vx_core.t_int, valsub))
          msg = vx_core.vx_msg_from_error("vx/core/intlist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/intlist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_intlist = vx_core.Class_intlist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: intmap
   * A map of int.
   * (type intmap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_int) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_int(key : vx_core.Type_string) -> vx_core.Type_int {
      
      var map : vx_core.Class_intmap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_int)
      return output
    }

    func vx_mapint() -> Map<String, vx_core.Type_int> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_intmap = vx_core.Class_intmap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_intmap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/intmap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = vx_core.vx_new(vx_core.t_int, valsub)
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/intmap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_intmap = vx_core.Class_intmap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: list
   * A simple untyped list.
   * (type list)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      var list : vx_core.Class_list = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_list = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_list())
          ischanged = true
          listval.add(allowsub)
          msg = vx_core.vx_msg_from_error("vx/core/list", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/list", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_list = vx_core.Class_list()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: listtype
   * A generic type that extends :list.
   * (type listtype)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_listtype = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_listtype = vx_core.Class_listtype()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: locale
   * Localization data.
   * (type locale)
   */

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_locale = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_locale = vx_core.Class_locale()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: map
   * A simple untyped map.
   * (type map)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_any) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      var map : vx_core.Class_map = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_any)
      return output
    }

    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_map = vx_core.Class_map()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_map = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/map", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/map", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_map = vx_core.Class_map()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: maptype
   * A generic type that extends :map.
   * (type maptype)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_maptype = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_maptype = vx_core.Class_maptype()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: mempool
   * Memory Pool
   * (type mempool)
   */

    

    func valuepool() -> vx_core.Type_value {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":valuepool")) {
        output = this.valuepool()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":valuepool", this.valuepool())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_mempool = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      validkeys.add(":valuepool")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/mempool", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/mempool", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":valuepool")) {
            if (valsub == vx_p_valuepool) {
              ischanged = true
              vx_p_valuepool = valvaluepool
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("valuepool"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/mempool", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/mempool", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_mempool = vx_core.Class_mempool()
        work.vx_p_valuepool = vx_p_valuepool
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: msg
   * Message Type for error handling
   * (type msg)
   */

    

    func code() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func detail() -> vx_core.Type_any {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func path() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func severity() -> vx_core.Type_int {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func text() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":code")) {
        output = this.code()
      } else if ((skey==":detail")) {
        output = this.detail()
      } else if ((skey==":path")) {
        output = this.path()
      } else if ((skey==":severity")) {
        output = this.severity()
      } else if ((skey==":text")) {
        output = this.text()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":code", this.code())
      map.put(":detail", this.detail())
      map.put(":path", this.path())
      map.put(":severity", this.severity())
      map.put(":text", this.text())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_msg = this
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      
      
        if (key == "") {
          if (false) {
            key = valstr.vx_string()
            key = sval
          }
        } else {
          if (false) {
          } else if ((key==":code")) {
            if (valsub == vx_p_code) {
              ischanged = true
              vx_p_code = valcode
            } else if () {
              ischanged = true
              vx_p_code = vx_core.vx_new(vx_core.t_string, valsub)
            }
          } else if ((key==":detail")) {
            if (valsub == vx_p_detail) {
              ischanged = true
              vx_p_detail = valdetail
            }
          } else if ((key==":path")) {
            if (valsub == vx_p_path) {
              ischanged = true
              vx_p_path = valpath
            } else if () {
              ischanged = true
              vx_p_path = vx_core.vx_new(vx_core.t_string, valsub)
            }
          } else if ((key==":severity")) {
            if (valsub == vx_p_severity) {
              ischanged = true
              vx_p_severity = valseverity
            } else if () {
              ischanged = true
              vx_p_severity = vx_core.vx_new(vx_core.t_int, valsub)
            }
          } else if ((key==":text")) {
            if (valsub == vx_p_text) {
              ischanged = true
              vx_p_text = valtext
            } else if () {
              ischanged = true
              vx_p_text = vx_core.vx_new(vx_core.t_string, valsub)
            }
          }
          key = ""
        }
      }
      if (ischanged) {
        var work : vx_core.Class_msg = vx_core.Class_msg()
        work.vx_p_code = vx_p_code
        work.vx_p_detail = vx_p_detail
        work.vx_p_path = vx_p_path
        work.vx_p_severity = vx_p_severity
        work.vx_p_text = vx_p_text
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: msgblock
   * Block of Messages
   * (type msgblock)
   */

    

    func msgs() -> vx_core.Type_msglist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func msgblocks() -> vx_core.Type_msgblocklist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":msgs")) {
        output = this.msgs()
      } else if ((skey==":msgblocks")) {
        output = this.msgblocks()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":msgs", this.msgs())
      map.put(":msgblocks", this.msgblocks())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_msgblock = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      
        if () {
          if (valsub != vx_core.e_msgblock) {
            vx_p_msgblocks = vx_core.vx_copy(vx_p_msgblocks, valsub)
            ischanged = true
          }
        } else if () {
          if (valsub != vx_core.e_msgblocklist) {
            vx_p_msgblocks = vx_core.vx_copy(vx_p_msgblocks, valsub)
            ischanged = true
          }
        } else if () {
          if (valsub != vx_core.e_msg) {
            vx_p_msgs = vx_core.vx_copy(vx_p_msgs, valsub)
            ischanged = true
          }
        } else if () {
          if (valsub != vx_core.e_msglist) {
            vx_p_msgs = vx_core.vx_copy(vx_p_msgs, valsub)
            ischanged = true
          }
        } else if (key == "") {
          if (false) {
            key = valstr.vx_string()
            key = sval
          }
        } else {
          if (false) {
          } else if ((key==":msgs")) {
            if (valsub == vx_p_msgs) {
              ischanged = true
              vx_p_msgs = valmsgs
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("msgs"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/msgblock", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":msgblocks")) {
            if (valsub == vx_p_msgblocks) {
              ischanged = true
              vx_p_msgblocks = valmsgblocks
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("msgblocks"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/msgblock", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
          key = ""
        }
      }
      if (ischanged) {
        if ((vx_p_msgs.vx_list().size() == 0) && (vx_p_msgblocks.vx_list().size() == 1)) {
          output = vx_p_msgblocks.vx_listmsgblock().get(0)
        } else {
          var work : vx_core.Class_msgblock = vx_core.Class_msgblock()
          work.vx_p_msgs = vx_p_msgs
          work.vx_p_msgblocks = vx_p_msgblocks
          output = work
        }
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: msgblocklist
   * List of Message Blocks
   * (type msgblocklist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_msgblock(index : vx_core.Type_int) -> vx_core.Type_msgblock {
      
      var list : vx_core.Class_msgblocklist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listmsgblock() -> List<vx_core.Type_msgblock> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_msgblocklist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listmsgblock())
        } else if () {
          ischanged = true
          listval.add()
          msg = vx_core.vx_msg_from_error("vx/core/msgblocklist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/msgblocklist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_msgblocklist = vx_core.Class_msgblocklist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: msglist
   * List of Messages
   * (type msglist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_msg(index : vx_core.Type_int) -> vx_core.Type_msg {
      
      var list : vx_core.Class_msglist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listmsg() -> List<vx_core.Type_msg> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_msglist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listmsg())
        } else if () {
          ischanged = true
          listval.add()
          msg = vx_core.vx_msg_from_error("vx/core/msglist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/msglist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_msglist = vx_core.Class_msglist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: none
   * No Type. No type is returned at all. e.g. Void
   * (type none)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_none = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_none = vx_core.Class_none()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: notype
   * No Type that allows no Types as a Value
   * (type notype)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_notype = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_notype = vx_core.Class_notype()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: number
   * A generic number that could be int, float, or decimal.
   * (type number)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_number = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_number = vx_core.Class_number()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: numberlist
   * A list of number.
   * (type numberlist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_number(index : vx_core.Type_int) -> vx_core.Type_number {
      
      var list : vx_core.Class_numberlist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listnumber() -> List<vx_core.Type_number> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_numberlist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listnumber())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add()
          msg = vx_core.vx_msg_from_error("vx/core/numberlist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/numberlist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_numberlist = vx_core.Class_numberlist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: numbermap
   * A map of number.
   * (type numbermap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_number) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_number(key : vx_core.Type_string) -> vx_core.Type_number {
      
      var map : vx_core.Class_numbermap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_number)
      return output
    }

    func vx_mapnumber() -> Map<String, vx_core.Type_number> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_numbermap = vx_core.Class_numbermap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_numbermap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/numbermap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/numbermap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_numbermap = vx_core.Class_numbermap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: package
   * A package that store types, consts and funcs.
   * (type package)
   */

    

    func pkgname() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func constmap() -> vx_core.Type_constmap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func funcmap() -> vx_core.Type_funcmap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func typemap() -> vx_core.Type_typemap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func emptymap() -> vx_core.Type_map {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":pkgname")) {
        output = this.pkgname()
      } else if ((skey==":constmap")) {
        output = this.constmap()
      } else if ((skey==":funcmap")) {
        output = this.funcmap()
      } else if ((skey==":typemap")) {
        output = this.typemap()
      } else if ((skey==":emptymap")) {
        output = this.emptymap()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":pkgname", this.pkgname())
      map.put(":constmap", this.constmap())
      map.put(":funcmap", this.funcmap())
      map.put(":typemap", this.typemap())
      map.put(":emptymap", this.emptymap())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_package = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      
      
      validkeys.add(":pkgname")
      validkeys.add(":constmap")
      validkeys.add(":funcmap")
      validkeys.add(":typemap")
      validkeys.add(":emptymap")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/package", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/package", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":pkgname")) {
            if (valsub == vx_p_pkgname) {
              ischanged = true
              vx_p_pkgname = valpkgname
            } else if () {
              ischanged = true
              vx_p_pkgname = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("pkgname"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/package", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":constmap")) {
            if (valsub == vx_p_constmap) {
              ischanged = true
              vx_p_constmap = valconstmap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("constmap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/package", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":funcmap")) {
            if (valsub == vx_p_funcmap) {
              ischanged = true
              vx_p_funcmap = valfuncmap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("funcmap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/package", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":typemap")) {
            if (valsub == vx_p_typemap) {
              ischanged = true
              vx_p_typemap = valtypemap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("typemap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/package", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":emptymap")) {
            if (valsub == vx_p_emptymap) {
              ischanged = true
              vx_p_emptymap = valemptymap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("emptymap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/package", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/package", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_package = vx_core.Class_package()
        work.vx_p_pkgname = vx_p_pkgname
        work.vx_p_constmap = vx_p_constmap
        work.vx_p_funcmap = vx_p_funcmap
        work.vx_p_typemap = vx_p_typemap
        work.vx_p_emptymap = vx_p_emptymap
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: packagemap
   * (type packagemap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_package) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_package(key : vx_core.Type_string) -> vx_core.Type_package {
      
      var map : vx_core.Class_packagemap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_package)
      return output
    }

    func vx_mappackage() -> Map<String, vx_core.Type_package> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_packagemap = vx_core.Class_packagemap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_packagemap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/packagemap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/packagemap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_packagemap = vx_core.Class_packagemap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: permission
   * Permission
   * (type permission)
   */

    

    func id() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":id")) {
        output = this.id()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":id", this.id())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_permission = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      validkeys.add(":id")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/permission", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/permission", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":id")) {
            if (valsub == vx_p_id) {
              ischanged = true
              vx_p_id = valid
            } else if () {
              ischanged = true
              vx_p_id = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("id"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/permission", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/permission", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_permission = vx_core.Class_permission()
        work.vx_p_id = vx_p_id
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: permissionlist
   * List of Permission
   * (type permissionlist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_permission(index : vx_core.Type_int) -> vx_core.Type_permission {
      
      var list : vx_core.Class_permissionlist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listpermission() -> List<vx_core.Type_permission> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_permissionlist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listpermission())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add()
          msg = vx_core.vx_msg_from_error("vx/core/permissionlist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/permissionlist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_permissionlist = vx_core.Class_permissionlist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: permissionmap
   * Map of Permission
   * (type permissionmap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_permission) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_permission(key : vx_core.Type_string) -> vx_core.Type_permission {
      
      var map : vx_core.Class_permissionmap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_permission)
      return output
    }

    func vx_mappermission() -> Map<String, vx_core.Type_permission> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_permissionmap = vx_core.Class_permissionmap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_permissionmap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/permissionmap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/permissionmap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_permissionmap = vx_core.Class_permissionmap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: project
   * A project.
   * (type project)
   */

    

    func packagemap() -> vx_core.Type_packagemap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":packagemap")) {
        output = this.packagemap()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":packagemap", this.packagemap())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_project = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      validkeys.add(":packagemap")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/project", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/project", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":packagemap")) {
            if (valsub == vx_p_packagemap) {
              ischanged = true
              vx_p_packagemap = valpackagemap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("packagemap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/project", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/project", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_project = vx_core.Class_project()
        work.vx_p_packagemap = vx_p_packagemap
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: security
   * Security rules
   * (type security)
   */

    

    func allowfuncs() -> vx_core.Type_funclist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func permissions() -> vx_core.Type_permissionlist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func permissionmap() -> vx_core.Type_permissionmap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":allowfuncs")) {
        output = this.allowfuncs()
      } else if ((skey==":permissions")) {
        output = this.permissions()
      } else if ((skey==":permissionmap")) {
        output = this.permissionmap()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":allowfuncs", this.allowfuncs())
      map.put(":permissions", this.permissions())
      map.put(":permissionmap", this.permissionmap())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_security = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      validkeys.add(":allowfuncs")
      validkeys.add(":permissions")
      validkeys.add(":permissionmap")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/security", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/security", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":allowfuncs")) {
            if (valsub == vx_p_allowfuncs) {
              ischanged = true
              vx_p_allowfuncs = valallowfuncs
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("allowfuncs"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/security", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":permissions")) {
            if (valsub == vx_p_permissions) {
              ischanged = true
              vx_p_permissions = valpermissions
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("permissions"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/security", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":permissionmap")) {
            if (valsub == vx_p_permissionmap) {
              ischanged = true
              vx_p_permissionmap = valpermissionmap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("permissionmap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/security", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/security", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_security = vx_core.Class_security()
        work.vx_p_allowfuncs = vx_p_allowfuncs
        work.vx_p_permissions = vx_p_permissions
        work.vx_p_permissionmap = vx_p_permissionmap
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: session
   * Session
   * (type session)
   */

    

    func user() -> vx_core.Type_user {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func connectlist() -> vx_core.Type_connectlist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func connectmap() -> vx_core.Type_connectmap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func locale() -> vx_core.Type_locale {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func translation() -> vx_core.Type_translation {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func translationmap() -> vx_core.Type_translationmap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":user")) {
        output = this.user()
      } else if ((skey==":connectlist")) {
        output = this.connectlist()
      } else if ((skey==":connectmap")) {
        output = this.connectmap()
      } else if ((skey==":locale")) {
        output = this.locale()
      } else if ((skey==":translation")) {
        output = this.translation()
      } else if ((skey==":translationmap")) {
        output = this.translationmap()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":user", this.user())
      map.put(":connectlist", this.connectlist())
      map.put(":connectmap", this.connectmap())
      map.put(":locale", this.locale())
      map.put(":translation", this.translation())
      map.put(":translationmap", this.translationmap())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_session = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      
      
      
      validkeys.add(":user")
      validkeys.add(":connectlist")
      validkeys.add(":connectmap")
      validkeys.add(":locale")
      validkeys.add(":translation")
      validkeys.add(":translationmap")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/session", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/session", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":user")) {
            if (valsub == vx_p_user) {
              ischanged = true
              vx_p_user = valuser
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("user"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/session", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":connectlist")) {
            if (valsub == vx_p_connectlist) {
              ischanged = true
              vx_p_connectlist = valconnectlist
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("connectlist"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/session", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":connectmap")) {
            if (valsub == vx_p_connectmap) {
              ischanged = true
              vx_p_connectmap = valconnectmap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("connectmap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/session", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":locale")) {
            if (valsub == vx_p_locale) {
              ischanged = true
              vx_p_locale = vallocale
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("locale"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/session", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":translation")) {
            if (valsub == vx_p_translation) {
              ischanged = true
              vx_p_translation = valtranslation
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("translation"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/session", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":translationmap")) {
            if (valsub == vx_p_translationmap) {
              ischanged = true
              vx_p_translationmap = valtranslationmap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("translationmap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/session", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/session", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_session = vx_core.Class_session()
        work.vx_p_user = vx_p_user
        work.vx_p_connectlist = vx_p_connectlist
        work.vx_p_connectmap = vx_p_connectmap
        work.vx_p_locale = vx_p_locale
        work.vx_p_translation = vx_p_translation
        work.vx_p_translationmap = vx_p_translationmap
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: setting
   * Settings
   * (type setting)
   */

    

    func pathmap() -> vx_core.Type_stringmap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":pathmap")) {
        output = this.pathmap()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":pathmap", this.pathmap())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_setting = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      validkeys.add(":pathmap")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/setting", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/setting", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":pathmap")) {
            if (valsub == vx_p_pathmap) {
              ischanged = true
              vx_p_pathmap = valpathmap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("pathmap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/setting", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/setting", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_setting = vx_core.Class_setting()
        work.vx_p_pathmap = vx_p_pathmap
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: state
   * State. Note that this type is has mutable values.
   * (type state)
   */

    

    func statelistenermap() -> vx_core.Type_statelistenermap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":statelistenermap")) {
        output = this.statelistenermap()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":statelistenermap", this.statelistenermap())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_state = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      validkeys.add(":statelistenermap")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/state", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/state", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":statelistenermap")) {
            if (valsub == vx_p_statelistenermap) {
              ischanged = true
              vx_p_statelistenermap = valstatelistenermap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("statelistenermap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/state", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/state", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_state = vx_core.Class_state()
        work.vx_p_statelistenermap = vx_p_statelistenermap
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: statelistener
   * A listener to trigger functions on state change.
   * (type statelistener)
   */

    

    func name() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func value() -> vx_core.Type_any {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func fn_boolean() -> vx_core.Func_boolean_from_none {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":name")) {
        output = this.name()
      } else if ((skey==":value")) {
        output = this.value()
      } else if ((skey==":fn-boolean")) {
        output = this.fn_boolean()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":name", this.name())
      map.put(":value", this.value())
      map.put(":fn-boolean", this.fn_boolean())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_statelistener = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      validkeys.add(":name")
      validkeys.add(":value")
      validkeys.add(":fn-boolean")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/statelistener", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/statelistener", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":name")) {
            if (valsub == vx_p_name) {
              ischanged = true
              vx_p_name = valname
            } else if () {
              ischanged = true
              vx_p_name = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("name"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/statelistener", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":value")) {
            if (valsub == vx_p_value) {
              ischanged = true
              vx_p_value = valvalue
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("value"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/statelistener", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":fn-boolean")) {
            if (valsub == vx_p_fn_boolean) {
              ischanged = true
              vx_p_fn_boolean = valfn_boolean
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("fn-boolean"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/statelistener", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/statelistener", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_statelistener = vx_core.Class_statelistener()
        work.vx_p_name = vx_p_name
        work.vx_p_value = vx_p_value
        work.vx_p_fn_boolean = vx_p_fn_boolean
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: statelistenermap
   * Mutable map of statelisteners
   * (type statelistenermap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_statelistener) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_statelistener(key : vx_core.Type_string) -> vx_core.Type_statelistener {
      
      var map : vx_core.Class_statelistenermap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_statelistener)
      return output
    }

    func vx_mapstatelistener() -> Map<String, vx_core.Type_statelistener> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_statelistenermap = vx_core.Class_statelistenermap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_statelistenermap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/statelistenermap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/statelistenermap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_statelistenermap = vx_core.Class_statelistenermap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: string
   * A simple string.
   * (type string)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_string = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          
          if (ssub == "") {
          } else {
            ischanged = true
            sb(ssub)
          }
          ischanged = true
          sb(valint.vx_int())
          ischanged = true
          sb(valfloat.vx_float())
          ischanged = true
          sb(valdecimal.vx_string())
          if (sval == "") {
          } else {
            ischanged = true
            sb(sval)
          }
          ischanged = true
          sb(ival)
          ischanged = true
          sb(fval)
          msg = vx_core.vx_msg_from_error("vx/core/string", ":invalidtype", anysub)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/string", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        
        var work : vx_core.Class_string = vx_core.Class_string()
        work.vxstring = vxstring
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: stringlist
   * A list of string.
   * (type stringlist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_string(index : vx_core.Type_int) -> vx_core.Type_string {
      
      var list : vx_core.Class_stringlist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_liststring() -> List<vx_core.Type_string> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_stringlist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_liststring())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add(vx_core.vx_new(vx_core.t_string, valsub))
          msg = vx_core.vx_msg_from_error("vx/core/stringlist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/stringlist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_stringlist = vx_core.Class_stringlist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: stringlistlist
   * A list of stringlist.
   * (type stringlistlist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_stringlist(index : vx_core.Type_int) -> vx_core.Type_stringlist {
      
      var list : vx_core.Class_stringlistlist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_liststringlist() -> List<vx_core.Type_stringlist> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_stringlistlist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_liststringlist())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add()
          msg = vx_core.vx_msg_from_error("vx/core/stringlistlist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/stringlistlist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_stringlistlist = vx_core.Class_stringlistlist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: stringmap
   * A map of string.
   * (type stringmap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_string) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_string(key : vx_core.Type_string) -> vx_core.Type_string {
      
      var map : vx_core.Class_stringmap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_string)
      return output
    }

    func vx_mapstring() -> Map<String, vx_core.Type_string> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_stringmap = vx_core.Class_stringmap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_stringmap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/stringmap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = vx_core.vx_new(vx_core.t_string, valsub)
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/stringmap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_stringmap = vx_core.Class_stringmap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: stringmutablemap
   * A mutable map of string. Note: Mutables are dangerous.
   * (type stringmutablemap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_string) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_string(key : vx_core.Type_string) -> vx_core.Type_string {
      
      var map : vx_core.Class_stringmutablemap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_string)
      return output
    }

    func vx_mapstring() -> Map<String, vx_core.Type_string> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_stringmutablemap = vx_core.Class_stringmutablemap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_stringmutablemap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/stringmutablemap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = vx_core.vx_new(vx_core.t_string, valsub)
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/stringmutablemap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_stringmutablemap = vx_core.Class_stringmutablemap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: struct
   * Struct is the type of all structures/objects with properties.
   * (type struct)
   */

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_struct = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_struct = vx_core.Class_struct()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: thenelse
   * An object used in if and switch functions.
   * (type thenelse)
   */

    

    func code() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func value() -> vx_core.Type_any {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func values() -> vx_core.Type_list {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func fn_cond() -> vx_core.Func_boolean_from_func {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func fn_any() -> vx_core.Func_any_from_func {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":code")) {
        output = this.code()
      } else if ((skey==":value")) {
        output = this.value()
      } else if ((skey==":values")) {
        output = this.values()
      } else if ((skey==":fn-cond")) {
        output = this.fn_cond()
      } else if ((skey==":fn-any")) {
        output = this.fn_any()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":code", this.code())
      map.put(":value", this.value())
      map.put(":values", this.values())
      map.put(":fn-cond", this.fn_cond())
      map.put(":fn-any", this.fn_any())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_thenelse = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      
      
      validkeys.add(":code")
      validkeys.add(":value")
      validkeys.add(":values")
      validkeys.add(":fn-cond")
      validkeys.add(":fn-any")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/thenelse", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/thenelse", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":code")) {
            if (valsub == vx_p_code) {
              ischanged = true
              vx_p_code = valcode
            } else if () {
              ischanged = true
              vx_p_code = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("code"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/thenelse", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":value")) {
            if (valsub == vx_p_value) {
              ischanged = true
              vx_p_value = valvalue
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("value"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/thenelse", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":values")) {
            if (valsub == vx_p_values) {
              ischanged = true
              vx_p_values = valvalues
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("values"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/thenelse", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":fn-cond")) {
            if (valsub == vx_p_fn_cond) {
              ischanged = true
              vx_p_fn_cond = valfn_cond
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("fn-cond"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/thenelse", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":fn-any")) {
            if (valsub == vx_p_fn_any) {
              ischanged = true
              vx_p_fn_any = valfn_any
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("fn-any"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/thenelse", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/thenelse", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_thenelse = vx_core.Class_thenelse()
        work.vx_p_code = vx_p_code
        work.vx_p_value = vx_p_value
        work.vx_p_values = vx_p_values
        work.vx_p_fn_cond = vx_p_fn_cond
        work.vx_p_fn_any = vx_p_fn_any
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: thenelselist
   * A list of thenelse.
   * (type thenelselist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_thenelse(index : vx_core.Type_int) -> vx_core.Type_thenelse {
      
      var list : vx_core.Class_thenelselist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listthenelse() -> List<vx_core.Type_thenelse> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_thenelselist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listthenelse())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add()
          msg = vx_core.vx_msg_from_error("vx/core/thenelselist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/thenelselist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_thenelselist = vx_core.Class_thenelselist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: translation
   * i18 language translation.
   * (type translation)
   */

    

    func name() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func wordmap() -> vx_core.Type_stringmap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":name")) {
        output = this.name()
      } else if ((skey==":wordmap")) {
        output = this.wordmap()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":name", this.name())
      map.put(":wordmap", this.wordmap())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_translation = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      validkeys.add(":name")
      validkeys.add(":wordmap")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/translation", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/translation", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":name")) {
            if (valsub == vx_p_name) {
              ischanged = true
              vx_p_name = valname
            } else if () {
              ischanged = true
              vx_p_name = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("name"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/translation", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":wordmap")) {
            if (valsub == vx_p_wordmap) {
              ischanged = true
              vx_p_wordmap = valwordmap
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("wordmap"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/translation", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/translation", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_translation = vx_core.Class_translation()
        work.vx_p_name = vx_p_name
        work.vx_p_wordmap = vx_p_wordmap
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: translationlist
   * i18 language translation list.
   * (type translationlist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_translation(index : vx_core.Type_int) -> vx_core.Type_translation {
      
      var list : vx_core.Class_translationlist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_listtranslation() -> List<vx_core.Type_translation> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_translationlist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_listtranslation())
          ischanged = true
          listval.add(allowsub)
        } else if () {
          ischanged = true
          listval.add()
          msg = vx_core.vx_msg_from_error("vx/core/translationlist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/translationlist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_translationlist = vx_core.Class_translationlist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: translationmap
   * i18 language translation map.
   * (type translationmap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_translation) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_translation(key : vx_core.Type_string) -> vx_core.Type_translation {
      
      var map : vx_core.Class_translationmap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_translation)
      return output
    }

    func vx_maptranslation() -> Map<String, vx_core.Type_translation> {
      
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      return output
    }


    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_translationmap = vx_core.Class_translationmap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_translationmap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/translationmap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/translationmap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_translationmap = vx_core.Class_translationmap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: type
   * Original Type Class
   * (type type)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_type = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_type = vx_core.Class_type()
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: typedef
   * Type Definition Class for inspecting Type properties.
   * (type typedef)
   */

    

    func pkgname() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func name() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func extend() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func allowfuncs() -> vx_core.Type_funclist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func allowtypes() -> vx_core.Type_typelist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func allowvalues() -> vx_core.Type_anylist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func disallowfuncs() -> vx_core.Type_funclist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func disallowtypes() -> vx_core.Type_typelist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func disallowvalues() -> vx_core.Type_anylist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func properties() -> vx_core.Type_argmap {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func proplast() -> vx_core.Type_arg {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func traits() -> vx_core.Type_typelist {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":pkgname")) {
        output = this.pkgname()
      } else if ((skey==":name")) {
        output = this.name()
      } else if ((skey==":extends")) {
        output = this.extend()
      } else if ((skey==":allowfuncs")) {
        output = this.allowfuncs()
      } else if ((skey==":allowtypes")) {
        output = this.allowtypes()
      } else if ((skey==":allowvalues")) {
        output = this.allowvalues()
      } else if ((skey==":disallowfuncs")) {
        output = this.disallowfuncs()
      } else if ((skey==":disallowtypes")) {
        output = this.disallowtypes()
      } else if ((skey==":disallowvalues")) {
        output = this.disallowvalues()
      } else if ((skey==":properties")) {
        output = this.properties()
      } else if ((skey==":proplast")) {
        output = this.proplast()
      } else if ((skey==":traits")) {
        output = this.traits()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":pkgname", this.pkgname())
      map.put(":name", this.name())
      map.put(":extends", this.extend())
      map.put(":allowfuncs", this.allowfuncs())
      map.put(":allowtypes", this.allowtypes())
      map.put(":allowvalues", this.allowvalues())
      map.put(":disallowfuncs", this.disallowfuncs())
      map.put(":disallowtypes", this.disallowtypes())
      map.put(":disallowvalues", this.disallowvalues())
      map.put(":properties", this.properties())
      map.put(":proplast", this.proplast())
      map.put(":traits", this.traits())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_typedef = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      
      
      
      
      
      
      
      
      
      validkeys.add(":pkgname")
      validkeys.add(":name")
      validkeys.add(":extends")
      validkeys.add(":allowfuncs")
      validkeys.add(":allowtypes")
      validkeys.add(":allowvalues")
      validkeys.add(":disallowfuncs")
      validkeys.add(":disallowtypes")
      validkeys.add(":disallowvalues")
      validkeys.add(":properties")
      validkeys.add(":proplast")
      validkeys.add(":traits")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":pkgname")) {
            if (valsub == vx_p_pkgname) {
              ischanged = true
              vx_p_pkgname = valpkgname
            } else if () {
              ischanged = true
              vx_p_pkgname = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("pkgname"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":name")) {
            if (valsub == vx_p_name) {
              ischanged = true
              vx_p_name = valname
            } else if () {
              ischanged = true
              vx_p_name = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("name"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":extends")) {
            if (valsub == vx_p_extend) {
              ischanged = true
              vx_p_extend = valextend
            } else if () {
              ischanged = true
              vx_p_extend = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("extends"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":allowfuncs")) {
            if (valsub == vx_p_allowfuncs) {
              ischanged = true
              vx_p_allowfuncs = valallowfuncs
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("allowfuncs"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":allowtypes")) {
            if (valsub == vx_p_allowtypes) {
              ischanged = true
              vx_p_allowtypes = valallowtypes
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("allowtypes"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":allowvalues")) {
            if (valsub == vx_p_allowvalues) {
              ischanged = true
              vx_p_allowvalues = valallowvalues
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("allowvalues"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":disallowfuncs")) {
            if (valsub == vx_p_disallowfuncs) {
              ischanged = true
              vx_p_disallowfuncs = valdisallowfuncs
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("disallowfuncs"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":disallowtypes")) {
            if (valsub == vx_p_disallowtypes) {
              ischanged = true
              vx_p_disallowtypes = valdisallowtypes
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("disallowtypes"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":disallowvalues")) {
            if (valsub == vx_p_disallowvalues) {
              ischanged = true
              vx_p_disallowvalues = valdisallowvalues
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("disallowvalues"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":properties")) {
            if (valsub == vx_p_properties) {
              ischanged = true
              vx_p_properties = valproperties
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("properties"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":proplast")) {
            if (valsub == vx_p_proplast) {
              ischanged = true
              vx_p_proplast = valproplast
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("proplast"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":traits")) {
            if (valsub == vx_p_traits) {
              ischanged = true
              vx_p_traits = valtraits
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("traits"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/typedef", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_typedef = vx_core.Class_typedef()
        work.vx_p_pkgname = vx_p_pkgname
        work.vx_p_name = vx_p_name
        work.vx_p_extend = vx_p_extend
        work.vx_p_allowfuncs = vx_p_allowfuncs
        work.vx_p_allowtypes = vx_p_allowtypes
        work.vx_p_allowvalues = vx_p_allowvalues
        work.vx_p_disallowfuncs = vx_p_disallowfuncs
        work.vx_p_disallowtypes = vx_p_disallowtypes
        work.vx_p_disallowvalues = vx_p_disallowvalues
        work.vx_p_properties = vx_p_properties
        work.vx_p_proplast = vx_p_proplast
        work.vx_p_traits = vx_p_traits
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: typelist
   * List of Types
   * (type typelist)
   */

    

    func vx_list() -> List<vx_core.Type_any> {
      
      return output
    }

    func vx_any(index : vx_core.Type_int) -> vx_core.Type_any {
      
      var list : vx_core.Class_typelist = this
      
      
      if (iindex < listval.size()) {
        output = listval.get(iindex)
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_typelist = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
          ischanged = true
          listval.addAll(multi.vx_list())
          ischanged = true
          listval.add(allowsub)
          msg = vx_core.vx_msg_from_error("vx/core/typelist", ":invalidtype", anyinvalid)
          msgblock = vx_core.vx_copy(msgblock, msg)
        } else {
          msg = vx_core.vx_msg_from_error("vx/core/typelist", ":invalidtype", vx_core.vx_new_string())
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_typelist = vx_core.Class_typelist()
        work.vx_p_list = vx_core.immutablelist(listval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: typemap
   * Map of Any Type Class
   * (type typemap)
   */

    

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      return vx_core.immutablemap(map)
    }

    func vx_set(name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      if (false) {
        
        if () {
          key = 
        }
        
        if (castval == vx_core.e_any) {
          map.remove(key)
        } else {
          map.put(key, castval)
        }
        this.vx_p_map = vx_core.immutablemap(map)
        output = vx_core.c_true
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      var map : vx_core.Class_typemap = this
      
      
      output = mapval.getOrDefault(skey, vx_core.e_any)
      return output
    }

    func vx_new_from_map(mapval : Map<String, vx_core.Type_any>) -> vx_core.Type_map {
      var output : vx_core.Class_typemap = vx_core.Class_typemap()
      
      
        
        if (false) {
          map.put(key, castval)
        } else {
          
          msgblock = vx_core.vx_copy(msgblock, msg)
        }
      }
      output.vx_p_map = vx_core.immutablemap(map)
      if (msgblock != vx_core.e_msgblock) {
        output.vxmsgblock = msgblock
      }
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_typemap = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          if (false) {
            key = valstring.vx_string()
            key = sval
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/typemap", ":keyexpected", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
        } else {
          
          if (false) {
            valany = valallowed
          } else if () {
            valany = 
          } else {
            if (false) {
              msgval = valinvalid
            } else {
              msgval = vx_core.vx_new_string()
            }
            
            mapany.put("key", vx_core.vx_new_string(key))
            mapany.put("value", msgval)
            
            msg = vx_core.vx_msg_from_error("vx/core/typemap", ":invalidkeyvalue", msgmap)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (valany != vx_core.e_any) {
            ischanged = true
            if () {
              key = 
            }
            mapval.put(key, valany)
            key = ""
          }
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_typemap = vx_core.Class_typemap()
        work.vx_p_map = vx_core.immutablemap(mapval)
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: user
   * User Type
   * (type user)
   */

    

    func security() -> vx_core.Type_security {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func username() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func token() -> vx_core.Type_string {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":security")) {
        output = this.security()
      } else if ((skey==":username")) {
        output = this.username()
      } else if ((skey==":token")) {
        output = this.token()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":security", this.security())
      map.put(":username", this.username())
      map.put(":token", this.token())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_user = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      
      validkeys.add(":security")
      validkeys.add(":username")
      validkeys.add(":token")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/user", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/user", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":security")) {
            if (valsub == vx_p_security) {
              ischanged = true
              vx_p_security = valsecurity
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("security"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/user", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":username")) {
            if (valsub == vx_p_username) {
              ischanged = true
              vx_p_username = valusername
            } else if () {
              ischanged = true
              vx_p_username = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("username"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/user", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":token")) {
            if (valsub == vx_p_token) {
              ischanged = true
              vx_p_token = valtoken
            } else if () {
              ischanged = true
              vx_p_token = vx_core.vx_new(vx_core.t_string, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("token"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/user", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/user", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_user = vx_core.Class_user()
        work.vx_p_security = vx_p_security
        work.vx_p_username = vx_p_username
        work.vx_p_token = vx_p_token
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * type: value
   * (type value)
   */

    

    func next() -> vx_core.Type_any {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    

    func refs() -> vx_core.Type_int {
      
      
      if (testnull != null) {
        output = testnull
      }
      return output
    }

    func vx_any(key : vx_core.Type_string) -> vx_core.Type_any {
      
      
      if (false) {
      } else if ((skey==":next")) {
        output = this.next()
      } else if ((skey==":refs")) {
        output = this.refs()
      }
      return output
    }

    func vx_map() -> Map<String, vx_core.Type_any> {
      
      map.put(":next", this.next())
      map.put(":refs", this.refs())
      
      return output
    }

    func vx_new(vals... : Object) -> vx_core.Type_any {
      
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      
      
      var value : vx_core.Class_value = this
      
      if (this.vx_constdef() != vx_core.e_constdef) {
        ischanged = true
      }
      
      
      
      validkeys.add(":next")
      validkeys.add(":refs")
      
      
      
        if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if () {
          msgblock = vx_core.vx_copy(msgblock, valsub)
        } else if (key == "") {
          
          
          if (false) {
            testkey = valstr.vx_string()
            istestkey = true
            testkey = sval
            istestkey = true
          } else {
            if (false) {
              msgval = valmsg
            } else {
              msgval = vx_core.vx_new_string()
            }
            msg = vx_core.vx_msg_from_error("vx/core/value", ":invalidkeytype", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          if (istestkey) {
            if (!) {
              testkey = ":" + testkey
            }
            
            if (isvalidkey) {
              key = testkey
            } else {
              msgval = vx_core.vx_new_string(testkey)
              msg = vx_core.vx_msg_from_error("vx/core/value", ":invalidkey", msgval)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          }
        } else {
          if (false) {
          } else if ((key==":next")) {
            if (valsub == vx_p_next) {
              ischanged = true
              vx_p_next = valnext
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("next"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/value", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else if ((key==":refs")) {
            if (valsub == vx_p_refs) {
              ischanged = true
              vx_p_refs = valrefs
            } else if () {
              ischanged = true
              vx_p_refs = vx_core.vx_new(vx_core.t_int, valsub)
            } else {
              if (false) {
                msgval = valinvalid
              } else {
                msgval = vx_core.vx_new_string()
              }
              
              mapany.put("key", vx_core.vx_new_string("refs"))
              mapany.put("value", msgval)
              
              msg = vx_core.vx_msg_from_error("vx/core/value", ":invalidvalue", msgmap)
              msgblock = vx_core.vx_copy(msgblock, msg)
            }
          } else {
            msgval = vx_core.vx_new_string(key)
            msg = vx_core.vx_msg_from_error("vx/core/value", ":invalidkey", msgval)
            msgblock = vx_core.vx_copy(msgblock, msg)
          }
          key = ""
        }
      }
      if (ischanged || (msgblock != vx_core.e_msgblock)) {
        var work : vx_core.Class_value = vx_core.Class_value()
        work.vx_p_next = vx_p_next
        work.vx_p_refs = vx_p_refs
        if (msgblock != vx_core.e_msgblock) {
          work.vxmsgblock = msgblock
        }
        output = work
      }
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  /**
   * Constant: false
   * {boolean}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_boolean) -> void {
      var outval : vx_core.Class_boolean = 
      outval.vx_p_constdef = constdef()
      outval.vxboolean = false
    }

  }

  

  

  /**
   * Constant: global
   * Global variable for project data.
   * {project}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_project) -> void {
      var outval : vx_core.Class_project = 
      outval.vx_p_constdef = constdef()
    }

  }

  


  /**
   * Constant: infinity
   * Infinity. Returned during unusual calculations.
   * {int}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_int) -> void {
      var outval : vx_core.Class_int = 
      outval.vx_p_constdef = constdef()
      outval.vxint = 0
    }

  }

  


  /**
   * Constant: mempool-active
   * Active Value Memory Pool
   * {mempool}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_mempool) -> void {
      var outval : vx_core.Class_mempool = 
      outval.vx_p_constdef = constdef()
    }

  }

  


  /**
   * Constant: msg-error
   * Message is an Error
   * {int}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_int) -> void {
      var outval : vx_core.Class_int = 
      outval.vx_p_constdef = constdef()
      outval.vxint = 2
    }

  }

  


  /**
   * Constant: msg-info
   * Message is just information
   * {int}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_int) -> void {
      var outval : vx_core.Class_int = 
      outval.vx_p_constdef = constdef()
      outval.vxint = 0
    }

  }

  


  /**
   * Constant: msg-severe
   * Message is a Severe Error
   * {int}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_int) -> void {
      var outval : vx_core.Class_int = 
      outval.vx_p_constdef = constdef()
      outval.vxint = 3
    }

  }

  


  /**
   * Constant: msg-warning
   * Message is a Warning
   * {int}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_int) -> void {
      var outval : vx_core.Class_int = 
      outval.vx_p_constdef = constdef()
      outval.vxint = 1
    }

  }

  


  /**
   * Constant: neginfinity
   * Negative Infinity. Returned during unusual calculations.
   * {int}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_int) -> void {
      var outval : vx_core.Class_int = 
      outval.vx_p_constdef = constdef()
      outval.vxint = 0
    }

  }

  


  /**
   * Constant: newline
   * New line constant
   * {string}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_string) -> void {
      var outval : vx_core.Class_string = 
      outval.vx_p_constdef = constdef()
      outval.vxstring = "\n"
    }

  }

  


  /**
   * Constant: notanumber
   * Not a number. Returned during invalid calculations.
   * {int}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_int) -> void {
      var outval : vx_core.Class_int = 
      outval.vx_p_constdef = constdef()
      outval.vxint = 0
    }

  }

  


  /**
   * Constant: nothing
   * Nothing Value. Opposite of every other value. e.g. Nil, Null
   * {string}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_string) -> void {
      var outval : vx_core.Class_string = 
      outval.vx_p_constdef = constdef()
      outval.vxstring = "nothing"
    }

  }

  


  /**
   * Constant: path-test-resources
   * The test path from project file
   * {string}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_string) -> void {
      var outval : vx_core.Class_string = 
      outval.vx_p_constdef = constdef()
      outval.vxstring = "swift/src/test/resources"
    }

  }

  


  /**
   * Constant: quote
   * Quotation mark constant
   * {string}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_string) -> void {
      var outval : vx_core.Class_string = 
      outval.vx_p_constdef = constdef()
      outval.vxstring = "\""
    }

  }

  


  /**
   * Constant: true
   * {boolean}
   */
    func static constdef() -> vx_core.Type_constdef {
      
      return output
    }

    func static const_new(output : vx_core.Type_boolean) -> void {
      var outval : vx_core.Class_boolean = 
      outval.vx_p_constdef = constdef()
      outval.vxboolean = true
    }

  }

  

  /**
   * @function not
   * Boolean not
   * @param  {boolean} value Thing to not
   * @return {boolean}
   * (func !)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_not = vx_core.Class_not()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_not = vx_core.Class_not()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_not(value)
      return output
    }

    func vx_not(value : vx_core.Type_boolean) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_not(value : vx_core.Type_boolean) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function notempty
   * Returns true if text is not empty.
   * @param  {string} text
   * @return {boolean}
   * (func !-empty)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_notempty = vx_core.Class_notempty()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_notempty = vx_core.Class_notempty()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_notempty(text)
      return output
    }

    func vx_notempty(text : vx_core.Type_string) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_notempty(text : vx_core.Type_string) -> vx_core.Type_boolean {
    
    output = vx_core.f_not(
      vx_core.f_is_empty(
        text
      )
    )
    return output
  }

  /**
   * @function notempty 1
   * Returns true if value is not empty.
   * @param  {any} value
   * @return {boolean}
   * (func !-empty)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_notempty_1 = vx_core.Class_notempty_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_notempty_1 = vx_core.Class_notempty_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_notempty_1(value)
      return output
    }

    func vx_notempty_1(value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_notempty_1(value : vx_core.Type_any) -> vx_core.Type_boolean {
    
    output = vx_core.f_not(
      vx_core.f_is_empty_1(
        value
      )
    )
    return output
  }

  /**
   * @function ne
   * Returns true if the first arg is not equal to any of the other arg.
   * @param  {any} val1
   * @param  {any} val2
   * @return {boolean}
   * (func !=)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_ne = vx_core.Class_ne()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_ne = vx_core.Class_ne()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_ne(val1, val2)
      return output
    }

    func vx_ne(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_ne(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
    
    output = vx_core.f_not(
      vx_core.f_eq(
        val1,
        val2
      )
    )
    return output
  }

  /**
   * @function neqeq
   * Returns true if the first arg is not strictly equal to any of the other arg.
   * @param  {any} val1
   * @param  {any} val2
   * @return {boolean}
   * (func !==)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_neqeq = vx_core.Class_neqeq()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_neqeq = vx_core.Class_neqeq()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_neqeq(val1, val2)
      return output
    }

    func vx_neqeq(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_neqeq(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
    
    output = vx_core.f_not(
      vx_core.f_eqeq(
        val1,
        val2
      )
    )
    return output
  }

  /**
   * @function multiply
   * Math int multiply
   * @param  {int} num1
   * @param  {int} num2
   * @return {int}
   * (func *)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_multiply = vx_core.Class_multiply()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_multiply = vx_core.Class_multiply()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_multiply(num1, num2)
      return output
    }

    func vx_multiply(num1 : vx_core.Type_int, num2 : vx_core.Type_int) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_multiply(num1 : vx_core.Type_int, num2 : vx_core.Type_int) -> vx_core.Type_int {
    
    return output
  }

  /**
   * @function multiply 1
   * Math multipy
   * @param  {number} num1
   * @param  {number} num2
   * @return {number}
   * (func *)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_multiply_1 = vx_core.Class_multiply_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_multiply_1 = vx_core.Class_multiply_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_multiply_1(num1, num2)
      return output
    }

    func vx_multiply_1(num1 : vx_core.Type_number, num2 : vx_core.Type_number) -> vx_core.Type_number {
      
      return output
    }

  }

  
  

  func static f_multiply_1(num1 : vx_core.Type_number, num2 : vx_core.Type_number) -> vx_core.Type_number {
    
    return output
  }

  /**
   * @function multiply 2
   * Math multiply
   * @param  {intlist} nums
   * @return {int}
   * (func *)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_multiply_2 = vx_core.Class_multiply_2()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_multiply_2 = vx_core.Class_multiply_2()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_multiply_2(nums)
      return output
    }

    func vx_multiply_2(nums : vx_core.Type_intlist) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_multiply_2(nums : vx_core.Type_intlist) -> vx_core.Type_int {
    
    output = vx_core.f_any_from_list_start_reduce(
      vx_core.t_int,
      nums,
      vx_core.vx_new_int(1),
      vx_core.t_any_from_reduce.vx_fn_new(
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function multiply 3
   * Math multiply
   * @param  {numberlist} nums
   * @return {number}
   * (func *)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_multiply_3 = vx_core.Class_multiply_3()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_multiply_3 = vx_core.Class_multiply_3()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_multiply_3(nums)
      return output
    }

    func vx_multiply_3(nums : vx_core.Type_numberlist) -> vx_core.Type_number {
      
      return output
    }

  }

  
  

  func static f_multiply_3(nums : vx_core.Type_numberlist) -> vx_core.Type_number {
    
    output = vx_core.f_any_from_list_start_reduce(
      vx_core.t_number,
      nums,
      vx_core.vx_new_int(1),
      vx_core.t_any_from_reduce.vx_fn_new(
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function plus
   * Math int plus
   * @param  {int} num1
   * @param  {int} num2
   * @return {int}
   * (func +)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_plus = vx_core.Class_plus()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_plus = vx_core.Class_plus()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_plus(num1, num2)
      return output
    }

    func vx_plus(num1 : vx_core.Type_int, num2 : vx_core.Type_int) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_plus(num1 : vx_core.Type_int, num2 : vx_core.Type_int) -> vx_core.Type_int {
    
    return output
  }

  /**
   * @function plus 1
   * Math number plus
   * @param  {number} num1
   * @param  {number} num2
   * @return {number}
   * (func +)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_plus_1 = vx_core.Class_plus_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_plus_1 = vx_core.Class_plus_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_plus_1(num1, num2)
      return output
    }

    func vx_plus_1(num1 : vx_core.Type_number, num2 : vx_core.Type_number) -> vx_core.Type_number {
      
      return output
    }

  }

  
  

  func static f_plus_1(num1 : vx_core.Type_number, num2 : vx_core.Type_number) -> vx_core.Type_number {
    
    return output
  }

  /**
   * @function plus 2
   * Math int plus
   * @param  {intlist} nums
   * @return {int}
   * (func +)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_plus_2 = vx_core.Class_plus_2()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_plus_2 = vx_core.Class_plus_2()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_plus_2(nums)
      return output
    }

    func vx_plus_2(nums : vx_core.Type_intlist) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_plus_2(nums : vx_core.Type_intlist) -> vx_core.Type_int {
    
    output = vx_core.f_any_from_list_start_reduce(
      vx_core.t_int,
      nums,
      vx_core.vx_new_int(0),
      vx_core.t_any_from_reduce.vx_fn_new(
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function plus 3
   * Math number plus
   * @param  {numberlist} nums
   * @return {number}
   * (func +)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_plus_3 = vx_core.Class_plus_3()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_plus_3 = vx_core.Class_plus_3()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_plus_3(nums)
      return output
    }

    func vx_plus_3(nums : vx_core.Type_numberlist) -> vx_core.Type_number {
      
      return output
    }

  }

  
  

  func static f_plus_3(nums : vx_core.Type_numberlist) -> vx_core.Type_number {
    
    output = vx_core.f_any_from_list_start_reduce(
      vx_core.t_number,
      nums,
      vx_core.vx_new_int(0),
      vx_core.t_any_from_reduce.vx_fn_new(
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function plus1
   * Math int plus 1
   * @param  {int} num
   * @return {int}
   * (func +1)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_plus1 = vx_core.Class_plus1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_plus1 = vx_core.Class_plus1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_plus1(num)
      return output
    }

    func vx_plus1(num : vx_core.Type_int) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_plus1(num : vx_core.Type_int) -> vx_core.Type_int {
    
    output = vx_core.f_plus(
      num,
      vx_core.vx_new_int(1)
    )
    return output
  }

  /**
   * @function minus
   * Math int minus
   * @param  {int} num1
   * @param  {int} num2
   * @return {int}
   * (func -)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_minus = vx_core.Class_minus()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_minus = vx_core.Class_minus()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_minus(num1, num2)
      return output
    }

    func vx_minus(num1 : vx_core.Type_int, num2 : vx_core.Type_int) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_minus(num1 : vx_core.Type_int, num2 : vx_core.Type_int) -> vx_core.Type_int {
    
    return output
  }

  /**
   * @function minus 1
   * Math number minus
   * @param  {number} num1
   * @param  {number} num2
   * @return {number}
   * (func -)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_minus_1 = vx_core.Class_minus_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_minus_1 = vx_core.Class_minus_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_minus_1(num1, num2)
      return output
    }

    func vx_minus_1(num1 : vx_core.Type_number, num2 : vx_core.Type_number) -> vx_core.Type_number {
      
      return output
    }

  }

  
  

  func static f_minus_1(num1 : vx_core.Type_number, num2 : vx_core.Type_number) -> vx_core.Type_number {
    
    return output
  }

  /**
   * @function minus 2
   * Math integer minus
   * @param  {intlist} nums
   * @return {int}
   * (func -)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_minus_2 = vx_core.Class_minus_2()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_minus_2 = vx_core.Class_minus_2()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_minus_2(nums)
      return output
    }

    func vx_minus_2(nums : vx_core.Type_intlist) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_minus_2(nums : vx_core.Type_intlist) -> vx_core.Type_int {
    
    output = vx_core.f_any_from_list_start_reduce(
      vx_core.t_int,
      nums,
      vx_core.vx_new_int(0),
      vx_core.t_any_from_reduce.vx_fn_new(
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function minus 3
   * Math number minus
   * @param  {numberlist} nums
   * @return {number}
   * (func -)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_minus_3 = vx_core.Class_minus_3()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_minus_3 = vx_core.Class_minus_3()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_minus_3(nums)
      return output
    }

    func vx_minus_3(nums : vx_core.Type_numberlist) -> vx_core.Type_number {
      
      return output
    }

  }

  
  

  func static f_minus_3(nums : vx_core.Type_numberlist) -> vx_core.Type_number {
    
    output = vx_core.f_any_from_list_start_reduce(
      vx_core.t_number,
      nums,
      vx_core.vx_new_int(0),
      vx_core.t_any_from_reduce.vx_fn_new(
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function minus1
   * Math int minus 1
   * @param  {int} num
   * @return {int}
   * (func -1)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_minus1 = vx_core.Class_minus1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_minus1 = vx_core.Class_minus1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_minus1(num)
      return output
    }

    func vx_minus1(num : vx_core.Type_int) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_minus1(num : vx_core.Type_int) -> vx_core.Type_int {
    
    output = vx_core.f_minus(
      num,
      vx_core.vx_new_int(1)
    )
    return output
  }

  /**
   * @function dotmethod
   * Not Recommened: Support for Object Oriented dot notation. e.g. (this.foo 'a') = this.foo('a')
   * @param  {any} target
   * @param  {string} method
   * @param  {anylist} parameters
   * @return {any}
   * (func .)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_dotmethod = vx_core.Class_dotmethod()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_dotmethod = vx_core.Class_dotmethod()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_dotmethod(target, method, parameters)
      return output
    }

    func vx_dotmethod(target : vx_core.Type_any, method : vx_core.Type_string, parameters : vx_core.Type_anylist) -> vx_core.Type_any {
      
      return output
    }

  }

  
  

  func static f_dotmethod(target : vx_core.Type_any, method : vx_core.Type_string, parameters : vx_core.Type_anylist) -> vx_core.Type_any {
    
    return output
  }

  /**
   * @function divide
   * Math divide
   * @param  {number} num1
   * @param  {number} num2
   * @return {number}
   * (func /)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_divide = vx_core.Class_divide()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_divide = vx_core.Class_divide()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_divide(num1, num2)
      return output
    }

    func vx_divide(num1 : vx_core.Type_number, num2 : vx_core.Type_number) -> vx_core.Type_number {
      
      return output
    }

  }

  
  

  func static f_divide(num1 : vx_core.Type_number, num2 : vx_core.Type_number) -> vx_core.Type_number {
    
    return output
  }

  /**
   * @function lt
   * Returns true if the first arg is less than all of the other args
   * @param  {any} val1
   * @param  {any} val2
   * @return {boolean}
   * (func <)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_lt = vx_core.Class_lt()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_lt = vx_core.Class_lt()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_lt(val1, val2)
      return output
    }

    func vx_lt(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_lt(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
    
    output = vx_core.f_switch(
      vx_core.t_boolean,
      vx_core.f_compare(
        val1,
        val2
      ),
      vx_core.vx_new(
        vx_core.t_thenelselist,
        vx_core.f_case_1(
          vx_core.vx_new_int(-1),
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_1
          })
        ),
        vx_core.f_else(
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_2
          })
        )
      )
    )
    return output
  }

  /**
   * @function lt 1
   * Returns true if the first arg is less than all of the other args
   * @param  {anylist} values
   * @return {boolean}
   * (func <)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_lt_1 = vx_core.Class_lt_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_lt_1 = vx_core.Class_lt_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_lt_1(values)
      return output
    }

    func vx_lt_1(values : vx_core.Type_anylist) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_lt_1(values : vx_core.Type_anylist) -> vx_core.Type_boolean {
    
    output = vx_core.f_any_from_list_start_reduce_next(
      vx_core.t_boolean,
      values,
      vx_core.vx_new_boolean(true),
      vx_core.t_any_from_reduce_next.vx_fn_new(
        
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function chainfirst
   * This is a special function that applies a value as the first argument for the first function.
   * The result is then used as the first argument on the next function, etc. Sometimes this
   * improves readability.
   * @param  {any-1} value
   * @param  {any<-anylist} fnlist
   * @return {any-1}
   * (func <-)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_chainfirst = vx_core.Class_chainfirst()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_chainfirst = vx_core.Class_chainfirst()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_chainfirst(generic_any_1, value, fnlist)
      return output
    }

    func <T  vx_core.Type_any> vx_chainfirst(generic_any_1 : T, value : T, fnlist : vx_core.Type_any_from_anylist) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_chainfirst(generic_any_1 : T, value : T, fnlist : vx_core.Type_any_from_anylist) -> T {
    
    return output
  }

  /**
   * @function chainlast
   * This is a special function that applies a value as the last argument for the first function.
   * The result is then used as the last argument on the next function, etc. Sometimes this
   * improves readability.
   * @param  {any-1} value
   * @param  {any<-anylist} fnlist
   * @return {any-1}
   * (func <<-)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_chainlast = vx_core.Class_chainlast()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_chainlast = vx_core.Class_chainlast()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_chainlast(generic_any_1, value, fnlist)
      return output
    }

    func <T  vx_core.Type_any> vx_chainlast(generic_any_1 : T, value : T, fnlist : vx_core.Type_any_from_anylist) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_chainlast(generic_any_1 : T, value : T, fnlist : vx_core.Type_any_from_anylist) -> T {
    
    return output
  }

  /**
   * @function le
   * Returns true if the first arg is less or equal than all of the other args
   * @param  {any} val1
   * @param  {any} val2
   * @return {boolean}
   * (func <=)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_le = vx_core.Class_le()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_le = vx_core.Class_le()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_le(val1, val2)
      return output
    }

    func vx_le(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_le(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
    
    output = vx_core.f_not(
      vx_core.f_gt(
        val1,
        val2
      )
    )
    return output
  }

  /**
   * @function le 1
   * Returns true if the first arg is less or equal than all of the other args
   * @param  {anylist} args
   * @return {boolean}
   * (func <=)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_le_1 = vx_core.Class_le_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_le_1 = vx_core.Class_le_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_le_1(args)
      return output
    }

    func vx_le_1(args : vx_core.Type_anylist) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_le_1(args : vx_core.Type_anylist) -> vx_core.Type_boolean {
    
    output = vx_core.f_not(
      vx_core.f_gt_1(
        args
      )
    )
    return output
  }

  /**
   * @function eq
   * Boolean equal/equivalent
   * @param  {any} val1
   * @param  {any} val2
   * @return {boolean}
   * (func =)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_eq = vx_core.Class_eq()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_eq = vx_core.Class_eq()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_eq(val1, val2)
      return output
    }

    func vx_eq(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_eq(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function eq 1
   * Boolean equal/equivalent
   * @param  {anylist} values
   * @return {boolean}
   * (func =)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_eq_1 = vx_core.Class_eq_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_eq_1 = vx_core.Class_eq_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_eq_1(values)
      return output
    }

    func vx_eq_1(values : vx_core.Type_anylist) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_eq_1(values : vx_core.Type_anylist) -> vx_core.Type_boolean {
    
    output = vx_core.f_any_from_list_start_reduce_next(
      vx_core.t_boolean,
      values,
      vx_core.vx_new_boolean(false),
      vx_core.t_any_from_reduce_next.vx_fn_new(
        
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function eqeq
   * Strict equality check. Note that all non-empty, non-constants will not be equal.
   * @param  {any} val1
   * @param  {any} val2
   * @return {boolean}
   * (func ==)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_eqeq = vx_core.Class_eqeq()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_eqeq = vx_core.Class_eqeq()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_eqeq(val1, val2)
      return output
    }

    func vx_eqeq(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_eqeq(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function gt
   * Returns true if the first arg is greater than all of the other args
   * @param  {any} val1
   * @param  {any} val2
   * @return {boolean}
   * (func >)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_gt = vx_core.Class_gt()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_gt = vx_core.Class_gt()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_gt(val1, val2)
      return output
    }

    func vx_gt(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_gt(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
    
    output = vx_core.f_switch(
      vx_core.t_boolean,
      vx_core.f_compare(
        val1,
        val2
      ),
      vx_core.vx_new(
        vx_core.t_thenelselist,
        vx_core.f_case_1(
          vx_core.vx_new_int(1),
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_1
          })
        ),
        vx_core.f_else(
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_2
          })
        )
      )
    )
    return output
  }

  /**
   * @function gt 1
   * Returns true if the first arg is greater than all of the other args
   * @param  {anylist} values
   * @return {boolean}
   * (func >)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_gt_1 = vx_core.Class_gt_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_gt_1 = vx_core.Class_gt_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_gt_1(values)
      return output
    }

    func vx_gt_1(values : vx_core.Type_anylist) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_gt_1(values : vx_core.Type_anylist) -> vx_core.Type_boolean {
    
    output = vx_core.f_any_from_list_start_reduce_next(
      vx_core.t_boolean,
      values,
      vx_core.vx_new_boolean(true),
      vx_core.t_any_from_reduce_next.vx_fn_new(
        
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function ge
   * Returns true if val1 is greater or equal to val2
   * @param  {any} val1
   * @param  {any} val2
   * @return {boolean}
   * (func >=)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_ge = vx_core.Class_ge()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_ge = vx_core.Class_ge()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_ge(val1, val2)
      return output
    }

    func vx_ge(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_ge(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_boolean {
    
    output = vx_core.f_not(
      vx_core.f_lt(
        val1,
        val2
      )
    )
    return output
  }

  /**
   * @function ge 1
   * Returns true if the first arg is greater or equal than all of the other args
   * @param  {anylist} args
   * @return {boolean}
   * (func >=)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_ge_1 = vx_core.Class_ge_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_ge_1 = vx_core.Class_ge_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_ge_1(args)
      return output
    }

    func vx_ge_1(args : vx_core.Type_anylist) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_ge_1(args : vx_core.Type_anylist) -> vx_core.Type_boolean {
    
    output = vx_core.f_not(
      vx_core.f_lt_1(
        args
      )
    )
    return output
  }

  /**
   * @function allowfuncs_from_security
   * Returns allowfuncs from a given security.
   * @param  {security} security
   * @return {funclist}
   * (func allowfuncs<-security)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_allowfuncs_from_security = vx_core.Class_allowfuncs_from_security()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_allowfuncs_from_security = vx_core.Class_allowfuncs_from_security()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_allowfuncs_from_security(security)
      return output
    }

    func vx_allowfuncs_from_security(security : vx_core.Type_security) -> vx_core.Type_funclist {
      
      return output
    }

  }

  
  

  func static f_allowfuncs_from_security(security : vx_core.Type_security) -> vx_core.Type_funclist {
    
    output = security.allowfuncs()
    return output
  }

  /**
   * @function allowtypenames_from_typedef
   * Return allow name list from type
   * @param  {typedef} vtypedef
   * @return {stringlist}
   * (func allowtypenames<-typedef)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_allowtypenames_from_typedef = vx_core.Class_allowtypenames_from_typedef()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_allowtypenames_from_typedef = vx_core.Class_allowtypenames_from_typedef()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_allowtypenames_from_typedef(vtypedef)
      return output
    }

    func vx_allowtypenames_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_stringlist {
      
      return output
    }

  }

  
  

  func static f_allowtypenames_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_stringlist {
    
    output = vx_core.f_typenames_from_typelist(
      vx_core.f_allowtypes_from_typedef(
        vtypedef
      )
    )
    return output
  }

  /**
   * @function allowtypes_from_typedef
   * Return allow type list from type
   * @param  {typedef} vtypedef
   * @return {typelist}
   * (func allowtypes<-typedef)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_allowtypes_from_typedef = vx_core.Class_allowtypes_from_typedef()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_allowtypes_from_typedef = vx_core.Class_allowtypes_from_typedef()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_allowtypes_from_typedef(vtypedef)
      return output
    }

    func vx_allowtypes_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_typelist {
      
      return output
    }

  }

  
  

  func static f_allowtypes_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_typelist {
    
    return output
  }

  /**
   * @function and
   * Returns true if all values are true
   * @param  {boolean} val1
   * @param  {boolean} val2
   * @return {boolean}
   * (func and)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_and = vx_core.Class_and()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_and = vx_core.Class_and()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_and(val1, val2)
      return output
    }

    func vx_and(val1 : vx_core.Type_boolean, val2 : vx_core.Type_boolean) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_and(val1 : vx_core.Type_boolean, val2 : vx_core.Type_boolean) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function and 1
   * Returns true if all values are true
   * @param  {booleanlist} values
   * @return {boolean}
   * (func and)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_and_1 = vx_core.Class_and_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_and_1 = vx_core.Class_and_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_and_1(values)
      return output
    }

    func vx_and_1(values : vx_core.Type_booleanlist) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_and_1(values : vx_core.Type_booleanlist) -> vx_core.Type_boolean {
    
    output = vx_core.f_switch(
      vx_core.t_boolean,
      vx_core.f_length_1(
        values
      ),
      vx_core.vx_new(
        vx_core.t_thenelselist,
        vx_core.f_case_1(
          vx_core.vx_new_int(0),
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_1
          })
        ),
        vx_core.f_case_1(
          vx_core.vx_new_int(1),
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_2
          })
        ),
        vx_core.f_else(
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_3
          })
        )
      )
    )
    return output
  }

  /**
   * @function any_from_any
   * Function Type taking any value any-2 and returning generic any-1
   * @param  {any-2} value
   * @return {any-1}
   * (func any<-any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_any = vx_core.Class_any_from_any()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_any = vx_core.Class_any_from_any()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_any.IFn fn = null

    public vx_core.Func_any_from_any vx_fn_new(Class_any_from_any.IFn fn) {
      val output : vx_core.Class_any_from_any = vx_core.Class_any_from_any()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, value)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_any(generic_any_1 : T, value : U) -> T {
    
    return output
  }

  /**
   * 
   * @async
   * @function any_from_any_async
   * Function Type taking any value any-2 and returning generic any-1
   * @param  {any-2} value
   * @return {any-1}
   * (func any<-any-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_any_async = vx_core.Class_any_from_any_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_any_async = vx_core.Class_any_from_any_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_any_async.IFn fn = null

    public vx_core.Func_any_from_any_async vx_fn_new(Class_any_from_any_async.IFn fn) {
      val output : vx_core.Class_any_from_any_async = vx_core.Class_any_from_any_async()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any_async(generic_any_1 : T, value : U) -> <T> {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_any_async(generic_any_1 : T, value : U) -> <T> {
    
    return output
  }

  /**
   * @function any_from_any_context
   * Function Type taking any value any-2 and returning generic any-1 using context
   * @param  {any-2} value
   * @return {any-1}
   * (func any<-any-context)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_any_context = vx_core.Class_any_from_any_context()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_any_context = vx_core.Class_any_from_any_context()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_any_context.IFn fn = null

    public vx_core.Func_any_from_any_context vx_fn_new(Class_any_from_any_context.IFn fn) {
      val output : vx_core.Class_any_from_any_context = vx_core.Class_any_from_any_context()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_any_from_any_context(generic_any_1, context, value)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any_context(generic_any_1 : T, context : vx_core.Type_context, value : U) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_any_context(generic_any_1 : T, context : vx_core.Type_context, value : U) -> T {
    
    return output
  }

  /**
   * 
   * @async
   * @function any_from_any_context_async
   * Generic Function taking any value any-2 and returning generic any-1
   * @param  {any-2} value
   * @return {any-1}
   * (func any<-any-context-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_any_context_async = vx_core.Class_any_from_any_context_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_any_context_async = vx_core.Class_any_from_any_context_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_any_context_async.IFn fn = null

    public vx_core.Func_any_from_any_context_async vx_fn_new(Class_any_from_any_context_async.IFn fn) {
      val output : vx_core.Class_any_from_any_context_async = vx_core.Class_any_from_any_context_async()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any_context_async(generic_any_1 : T, context : vx_core.Type_context, value : U) -> <T> {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_any_context_async(generic_any_1 : T, context : vx_core.Type_context, value : U) -> <T> {
    
    return output
  }

  /**
   * @function any_from_any_key_value
   * Generic Function returning Generic any-1 from a any-1, a key, and a value.
   * @param  {any-1} current
   * @param  {string} key
   * @param  {any-2} value
   * @return {any-1}
   * (func any<-any-key-value)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_any_key_value = vx_core.Class_any_from_any_key_value()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_any_key_value = vx_core.Class_any_from_any_key_value()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_any_key_value.IFn fn = null

    public vx_core.Func_any_from_any_key_value vx_fn_new(Class_any_from_any_key_value.IFn fn) {
      val output : vx_core.Class_any_from_any_key_value = vx_core.Class_any_from_any_key_value()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      
      output = vx_core.f_any_from_any_key_value(generic_any_1, current, key, value)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any_key_value(generic_any_1 : T, current : T, key : vx_core.Type_string, value : U) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_any_key_value(generic_any_1 : T, current : T, key : vx_core.Type_string, value : U) -> T {
    
    return output
  }

  /**
   * @function any_from_func
   * Generic Function returning Generic any-1 with any parameters
   * @return {any-1}
   * (func any<-func)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_func = vx_core.Class_any_from_func()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_func = vx_core.Class_any_from_func()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_func.IFn fn = null

    public vx_core.Func_any_from_func vx_fn_new(Class_any_from_func.IFn fn) {
      val output : vx_core.Class_any_from_func = vx_core.Class_any_from_func()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_any_from_func(generic_any_1)
      return output
    }

    func <T  vx_core.Type_any> vx_any_from_func(generic_any_1 : T) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_any_from_func(generic_any_1 : T) -> T {
    
    return output
  }

  /**
   * 
   * @async
   * @function any_from_func_async
   * Generic Function returning Generic any-1 with any parameters
   * @return {any-1}
   * (func any<-func-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_func_async = vx_core.Class_any_from_func_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_func_async = vx_core.Class_any_from_func_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_func_async.IFn fn = null

    public vx_core.Func_any_from_func_async vx_fn_new(Class_any_from_func_async.IFn fn) {
      val output : vx_core.Class_any_from_func_async = vx_core.Class_any_from_func_async()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <T  vx_core.Type_any> vx_any_from_func_async(generic_any_1 : T) -> <T> {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_any_from_func_async(generic_any_1 : T) -> <T> {
    
    return output
  }

  /**
   * @function any_from_int
   * Generic Function returning Generic any-1 from an int
   * @param  {int} value
   * @return {any-1}
   * (func any<-int)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_int = vx_core.Class_any_from_int()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_int = vx_core.Class_any_from_int()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_int.IFn fn = null

    public vx_core.Func_any_from_int vx_fn_new(Class_any_from_int.IFn fn) {
      val output : vx_core.Class_any_from_int = vx_core.Class_any_from_int()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_any_from_int(generic_any_1, value)
      return output
    }

    func <T  vx_core.Type_any> vx_any_from_int(generic_any_1 : T, value : vx_core.Type_int) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_any_from_int(generic_any_1 : T, value : vx_core.Type_int) -> T {
    
    return output
  }

  /**
   * @function any_from_int_any
   * Generic Function returning Generic any-1 from an int and a value
   * @param  {int} num
   * @param  {any-2} value
   * @return {any-1}
   * (func any<-int-any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_int_any = vx_core.Class_any_from_int_any()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_int_any = vx_core.Class_any_from_int_any()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_int_any.IFn fn = null

    public vx_core.Func_any_from_int_any vx_fn_new(Class_any_from_int_any.IFn fn) {
      val output : vx_core.Class_any_from_int_any = vx_core.Class_any_from_int_any()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_any_from_int_any(generic_any_1, num, value)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_int_any(generic_any_1 : T, num : vx_core.Type_int, value : U) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_int_any(generic_any_1 : T, num : vx_core.Type_int, value : U) -> T {
    
    return output
  }

  /**
   * @function any_from_key_value
   * Generic Function returning Generic any-1 from a key and a value
   * @param  {string} key
   * @param  {any-2} value
   * @return {any-1}
   * (func any<-key-value)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_key_value = vx_core.Class_any_from_key_value()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_key_value = vx_core.Class_any_from_key_value()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_key_value.IFn fn = null

    public vx_core.Func_any_from_key_value vx_fn_new(Class_any_from_key_value.IFn fn) {
      val output : vx_core.Class_any_from_key_value = vx_core.Class_any_from_key_value()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_any_from_key_value(generic_any_1, key, value)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_key_value(generic_any_1 : T, key : vx_core.Type_string, value : U) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_key_value(generic_any_1 : T, key : vx_core.Type_string, value : U) -> T {
    
    return output
  }

  /**
   * 
   * @async
   * @function any_from_key_value_async
   * Generic Function returning Asynchronous Generic any-1 from a key and a value
   * @param  {string} key
   * @param  {any-2} value
   * @return {any-1}
   * (func any<-key-value-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_key_value_async = vx_core.Class_any_from_key_value_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_key_value_async = vx_core.Class_any_from_key_value_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_key_value_async.IFn fn = null

    public vx_core.Func_any_from_key_value_async vx_fn_new(Class_any_from_key_value_async.IFn fn) {
      val output : vx_core.Class_any_from_key_value_async = vx_core.Class_any_from_key_value_async()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_key_value_async(generic_any_1 : T, key : vx_core.Type_string, value : U) -> <T> {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_key_value_async(generic_any_1 : T, key : vx_core.Type_string, value : U) -> <T> {
    
    return output
  }

  /**
   * @function any_from_list
   * Returns nth value from a list or none if out of bounds
   * @param  {list-1} values
   * @param  {int} index
   * @return {any-1}
   * (func any<-list)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_list = vx_core.Class_any_from_list()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_list = vx_core.Class_any_from_list()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_any_from_list(generic_any_1, values, index)
      return output
    }

    func <T  vx_core.Type_any, X  vx_core.Type_list> vx_any_from_list(generic_any_1 : T, values : X, index : vx_core.Type_int) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, X  vx_core.Type_list> f_any_from_list(generic_any_1 : T, values : X, index : vx_core.Type_int) -> T {
    
    return output
  }

  /**
   * @function any_from_list_start_reduce
   * Returns a val from a list reduce operation
   * @param  {list-2} list
   * @param  {any-1} valstart
   * @param  {any<-reduce} fn-reduce
   * @return {any-1}
   * (func any<-list-start-reduce)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_list_start_reduce = vx_core.Class_any_from_list_start_reduce()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_list_start_reduce = vx_core.Class_any_from_list_start_reduce()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      
      output = vx_core.f_any_from_list_start_reduce(generic_any_1, list, valstart, fn_reduce)
      return output
    }

    func <T  vx_core.Type_any, Y  vx_core.Type_list> vx_any_from_list_start_reduce(generic_any_1 : T, list : Y, valstart : T, fn_reduce : vx_core.Func_any_from_reduce) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, Y  vx_core.Type_list> f_any_from_list_start_reduce(generic_any_1 : T, list : Y, valstart : T, fn_reduce : vx_core.Func_any_from_reduce) -> T {
    
    return output
  }

  /**
   * @function any_from_list_start_reduce_next
   * Returns a val from a list reduce operation
   * @param  {list-2} list
   * @param  {any-1} valstart
   * @param  {any<-reduce-next} fn-reduce-next
   * @return {any-1}
   * (func any<-list-start-reduce-next)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_list_start_reduce_next = vx_core.Class_any_from_list_start_reduce_next()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_list_start_reduce_next = vx_core.Class_any_from_list_start_reduce_next()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      
      output = vx_core.f_any_from_list_start_reduce_next(generic_any_1, list, valstart, fn_reduce_next)
      return output
    }

    func <T  vx_core.Type_any, Y  vx_core.Type_list> vx_any_from_list_start_reduce_next(generic_any_1 : T, list : Y, valstart : T, fn_reduce_next : vx_core.Func_any_from_reduce_next) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, Y  vx_core.Type_list> f_any_from_list_start_reduce_next(generic_any_1 : T, list : Y, valstart : T, fn_reduce_next : vx_core.Func_any_from_reduce_next) -> T {
    
    return output
  }

  /**
   * @function any_from_map
   * Returns value from a map or empty if not found
   * @param  {map-1} valuemap
   * @param  {string} key
   * @return {any-1}
   * (func any<-map)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_map = vx_core.Class_any_from_map()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_map = vx_core.Class_any_from_map()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_any_from_map(generic_any_1, valuemap, key)
      return output
    }

    func <N  vx_core.Type_map, T  vx_core.Type_any> vx_any_from_map(generic_any_1 : T, valuemap : N, key : vx_core.Type_string) -> T {
      
      return output
    }

  }

  
  

  func static <N  vx_core.Type_map, T  vx_core.Type_any> f_any_from_map(generic_any_1 : T, valuemap : N, key : vx_core.Type_string) -> T {
    
    return output
  }

  /**
   * @function any_from_map_start_reduce
   * Returns a value by reducing each element of a map.
   * @param  {map-1} map
   * @param  {any-1} start
   * @param  {any<-any-key-value} fn-reduce
   * @return {any-1}
   * (func any<-map-start-reduce)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_map_start_reduce = vx_core.Class_any_from_map_start_reduce()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_map_start_reduce = vx_core.Class_any_from_map_start_reduce()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      
      output = vx_core.f_any_from_map_start_reduce(generic_any_1, map, start, fn_reduce)
      return output
    }

    func <N  vx_core.Type_map, T  vx_core.Type_any> vx_any_from_map_start_reduce(generic_any_1 : T, map : N, start : T, fn_reduce : vx_core.Func_any_from_any_key_value) -> T {
      
      return output
    }

  }

  
  

  func static <N  vx_core.Type_map, T  vx_core.Type_any> f_any_from_map_start_reduce(generic_any_1 : T, map : N, start : T, fn_reduce : vx_core.Func_any_from_any_key_value) -> T {
    
    return output
  }

  /**
   * @function any_from_none
   * Function Type returning Generic any-1 with no parameters
   * @return {any-1}
   * (func any<-none)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_none = vx_core.Class_any_from_none()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_none = vx_core.Class_any_from_none()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_none.IFn fn = null

    public vx_core.Func_any_from_none vx_fn_new(Class_any_from_none.IFn fn) {
      val output : vx_core.Class_any_from_none = vx_core.Class_any_from_none()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_any_from_none(generic_any_1)
      return output
    }

    func <T  vx_core.Type_any> vx_any_from_none(generic_any_1 : T) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_any_from_none(generic_any_1 : T) -> T {
    
    return output
  }

  /**
   * 
   * @async
   * @function any_from_none_async
   * Function Type returning Generic any-1 with no parameters
   * @return {any-1}
   * (func any<-none-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_none_async = vx_core.Class_any_from_none_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_none_async = vx_core.Class_any_from_none_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_none_async.IFn fn = null

    public vx_core.Func_any_from_none_async vx_fn_new(Class_any_from_none_async.IFn fn) {
      val output : vx_core.Class_any_from_none_async = vx_core.Class_any_from_none_async()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <T  vx_core.Type_any> vx_any_from_none_async(generic_any_1 : T) -> <T> {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_any_from_none_async(generic_any_1 : T) -> <T> {
    
    return output
  }

  /**
   * @function any_from_reduce
   * @param  {any-1} result
   * @param  {any-2} item
   * @return {any-1}
   * (func any<-reduce)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_reduce = vx_core.Class_any_from_reduce()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_reduce = vx_core.Class_any_from_reduce()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_reduce.IFn fn = null

    public vx_core.Func_any_from_reduce vx_fn_new(Class_any_from_reduce.IFn fn) {
      val output : vx_core.Class_any_from_reduce = vx_core.Class_any_from_reduce()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_any_from_reduce(generic_any_1, result, item)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_reduce(generic_any_1 : T, result : T, item : U) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_reduce(generic_any_1 : T, result : T, item : U) -> T {
    
    return output
  }

  /**
   * 
   * @async
   * @function any_from_reduce_async
   * @param  {any-1} result
   * @param  {any-2} item
   * @return {any-1}
   * (func any<-reduce-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_reduce_async = vx_core.Class_any_from_reduce_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_reduce_async = vx_core.Class_any_from_reduce_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_reduce_async.IFn fn = null

    public vx_core.Func_any_from_reduce_async vx_fn_new(Class_any_from_reduce_async.IFn fn) {
      val output : vx_core.Class_any_from_reduce_async = vx_core.Class_any_from_reduce_async()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_reduce_async(generic_any_1 : T, result : T, item : U) -> <T> {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_reduce_async(generic_any_1 : T, result : T, item : U) -> <T> {
    
    return output
  }

  /**
   * @function any_from_reduce_next
   * @param  {any-1} result
   * @param  {any-2} current
   * @param  {any-2} next
   * @return {any-1}
   * (func any<-reduce-next)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_reduce_next = vx_core.Class_any_from_reduce_next()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_reduce_next = vx_core.Class_any_from_reduce_next()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_reduce_next.IFn fn = null

    public vx_core.Func_any_from_reduce_next vx_fn_new(Class_any_from_reduce_next.IFn fn) {
      val output : vx_core.Class_any_from_reduce_next = vx_core.Class_any_from_reduce_next()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      
      output = vx_core.f_any_from_reduce_next(generic_any_1, result, current, next)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_reduce_next(generic_any_1 : T, result : T, current : U, next : U) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_reduce_next(generic_any_1 : T, result : T, current : U, next : U) -> T {
    
    return output
  }

  /**
   * 
   * @async
   * @function any_from_reduce_next_async
   * @param  {any-1} result
   * @param  {any-2} current
   * @param  {any-2} next
   * @return {any-1}
   * (func any<-reduce-next-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_reduce_next_async = vx_core.Class_any_from_reduce_next_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_reduce_next_async = vx_core.Class_any_from_reduce_next_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_reduce_next_async.IFn fn = null

    public vx_core.Func_any_from_reduce_next_async vx_fn_new(Class_any_from_reduce_next_async.IFn fn) {
      val output : vx_core.Class_any_from_reduce_next_async = vx_core.Class_any_from_reduce_next_async()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_reduce_next_async(generic_any_1 : T, result : T, current : U, next : U) -> <T> {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_any_from_reduce_next_async(generic_any_1 : T, result : T, current : U, next : U) -> <T> {
    
    return output
  }

  /**
   * @function any_from_struct
   * Returns value from a struct
   * @param  {struct-2} vstruct
   * @param  {string} key
   * @return {any-1}
   * (func any<-struct)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_struct = vx_core.Class_any_from_struct()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_any_from_struct = vx_core.Class_any_from_struct()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_any_from_struct(generic_any_1, vstruct, key)
      return output
    }

    func <R  vx_core.Type_struct, T  vx_core.Type_any> vx_any_from_struct(generic_any_1 : T, vstruct : R, key : vx_core.Type_string) -> T {
      
      return output
    }

  }

  
  

  func static <R  vx_core.Type_struct, T  vx_core.Type_any> f_any_from_struct(generic_any_1 : T, vstruct : R, key : vx_core.Type_string) -> T {
    
    return output
  }

  /**
   * 
   * @async
   * @function async
   * Returns an asynchonous version value. This exists mostly for type-casting.
   * @param  {any-1} value
   * @return {any-1}
   * (func async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_async = vx_core.Class_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_async = vx_core.Class_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any_async vx_fn_new(vx_core.Class_any_from_any_async.IFn fn) {
      return vx_core.e_any_from_any_async
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any_async(generic_any_1 : T, value : U) -> <T> {
      
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <T  vx_core.Type_any> vx_async(generic_any_1 : T, value : T) -> <T> {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_async(generic_any_1 : T, value : T) -> <T> {
    
    return output
  }

  /**
   * @function boolean_permission_from_func
   * Returns true if the given func has permission.
   * @param  {func} func
   * @return {boolean}
   * (func boolean-permission<-func)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_boolean_permission_from_func = vx_core.Class_boolean_permission_from_func()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_boolean_permission_from_func = vx_core.Class_boolean_permission_from_func()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any_context vx_fn_new(vx_core.Class_any_from_any_context.IFn fn) {
      return vx_core.e_any_from_any_context
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any_context(generic_any_1 : T, context : vx_core.Type_context, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_boolean_permission_from_func(context, func)
      return output
    }

    func vx_boolean_permission_from_func(context : vx_core.Type_context, func : vx_core.Type_func) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_boolean_permission_from_func(context : vx_core.Type_context, func : vx_core.Type_func) -> vx_core.Type_boolean {
    
    output = vx_core.f_contains_1(
      vx_core.f_allowfuncs_from_security(
        vx_core.f_security_from_context(
          context
        )
      ),
      func
    )
    return output
  }

  /**
   * @function boolean_write_from_map_name_value
   * Returns true if it alters a mutable map false if it fails.
   * @param  {map-1} valuemap
   * @param  {string} name
   * @param  {any-1} value
   * @return {boolean}
   * (func boolean-write<-map-name-value)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_boolean_write_from_map_name_value = vx_core.Class_boolean_write_from_map_name_value()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_boolean_write_from_map_name_value = vx_core.Class_boolean_write_from_map_name_value()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_boolean_write_from_map_name_value(valuemap, name, value)
      return output
    }

    func vx_boolean_write_from_map_name_value(valuemap : vx_core.Type_map, name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_boolean_write_from_map_name_value(valuemap : vx_core.Type_map, name : vx_core.Type_string, value : vx_core.Type_any) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function boolean_from_any
   * Function Type taking generic any-1 and returning boolean
   * @param  {any-1} value
   * @return {boolean}
   * (func boolean<-any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_boolean_from_any = vx_core.Class_boolean_from_any()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_boolean_from_any = vx_core.Class_boolean_from_any()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_boolean_from_any.IFn fn = null

    public vx_core.Func_boolean_from_any vx_fn_new(Class_boolean_from_any.IFn fn) {
      val output : vx_core.Class_boolean_from_any = vx_core.Class_boolean_from_any()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_boolean_from_any(value)
      return output
    }

    func vx_boolean_from_any(value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_boolean_from_any(value : vx_core.Type_any) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function boolean_from_func
   * Function Type returning boolean with any parameters
   * @return {boolean}
   * (func boolean<-func)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_boolean_from_func = vx_core.Class_boolean_from_func()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_boolean_from_func = vx_core.Class_boolean_from_func()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_func.IFn fn = null

    public vx_core.Func_boolean_from_func vx_fn_new(Class_any_from_func.IFn fn) {
      val output : vx_core.Class_boolean_from_func = vx_core.Class_boolean_from_func()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      output = vx_core.f_boolean_from_func()
      return output
    }

    func vx_boolean_from_func() -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_boolean_from_func() -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function boolean_from_none
   * Function Type returning boolean with no parameters
   * @return {boolean}
   * (func boolean<-none)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_boolean_from_none = vx_core.Class_boolean_from_none()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_boolean_from_none = vx_core.Class_boolean_from_none()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_func.IFn fn = null

    public vx_core.Func_boolean_from_none vx_fn_new(Class_any_from_func.IFn fn) {
      val output : vx_core.Class_boolean_from_none = vx_core.Class_boolean_from_none()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      output = vx_core.f_boolean_from_none()
      return output
    }

    func vx_boolean_from_none() -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_boolean_from_none() -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function case
   * @param  {list-1} values
   * @param  {any<-func} fn-any
   * @return {thenelse}
   * (func case)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_case = vx_core.Class_case()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_case = vx_core.Class_case()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_case(values, fn_any)
      return output
    }

    func vx_case(values : vx_core.Type_list, fn_any : vx_core.Func_any_from_func) -> vx_core.Type_thenelse {
      
      return output
    }

  }

  
  

  func static f_case(values : vx_core.Type_list, fn_any : vx_core.Func_any_from_func) -> vx_core.Type_thenelse {
    
    output = vx_core.f_new(
      vx_core.t_thenelse,
      vx_core.vx_new(
        vx_core.t_anylist,
        vx_core.vx_new_string(":code"),
        vx_core.vx_new_string(":casemany"),
        vx_core.vx_new_string(":values"),
        values,
        vx_core.vx_new_string(":fn-any"),
        fn_any
      )
    )
    return output
  }

  /**
   * @function case 1
   * @param  {any-1} value
   * @param  {any<-func} fn-any
   * @return {thenelse}
   * (func case)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_case_1 = vx_core.Class_case_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_case_1 = vx_core.Class_case_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_case_1(value, fn_any)
      return output
    }

    func vx_case_1(value : vx_core.Type_any, fn_any : vx_core.Func_any_from_func) -> vx_core.Type_thenelse {
      
      return output
    }

  }

  
  

  func static f_case_1(value : vx_core.Type_any, fn_any : vx_core.Func_any_from_func) -> vx_core.Type_thenelse {
    
    output = vx_core.f_new(
      vx_core.t_thenelse,
      vx_core.vx_new(
        vx_core.t_anylist,
        vx_core.vx_new_string(":code"),
        vx_core.vx_new_string(":case"),
        vx_core.vx_new_string(":value"),
        value,
        vx_core.vx_new_string(":fn-any"),
        fn_any
      )
    )
    return output
  }

  /**
   * @function compare
   * Returns 0 if vals are equal, 1 if val1 > val2, -1 if val1 < val2
   * @param  {any} val1
   * @param  {any} val2
   * @return {int}
   * (func compare)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_compare = vx_core.Class_compare()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_compare = vx_core.Class_compare()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_compare(val1, val2)
      return output
    }

    func vx_compare(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_compare(val1 : vx_core.Type_any, val2 : vx_core.Type_any) -> vx_core.Type_int {
    
    return output
  }

  /**
   * @function contains
   * Returns true if the given list contains the given value.
   * @param  {string} text
   * @param  {string} find
   * @return {boolean}
   * (func contains)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_contains = vx_core.Class_contains()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_contains = vx_core.Class_contains()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_contains(text, find)
      return output
    }

    func vx_contains(text : vx_core.Type_string, find : vx_core.Type_string) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_contains(text : vx_core.Type_string, find : vx_core.Type_string) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function contains 1
   * Returns true if the given list contains the given value.
   * @param  {list-2} values Any list
   * @param  {any} find Any value
   * @return {boolean}
   * (func contains)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_contains_1 = vx_core.Class_contains_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_contains_1 = vx_core.Class_contains_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_contains_1(values, find)
      return output
    }

    func vx_contains_1(values : vx_core.Type_list, find : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_contains_1(values : vx_core.Type_list, find : vx_core.Type_any) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function context_main
   * Returns the default context for app main execution. Arguments come from the command line.
   * @param  {anylist} args
   * @return {context}
   * (func context-main)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_context_main = vx_core.Class_context_main()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_context_main = vx_core.Class_context_main()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_context_main(args)
      return output
    }

    func vx_context_main(args : vx_core.Type_anylist) -> vx_core.Type_context {
      
      return output
    }

  }

  
  

  func static f_context_main(args : vx_core.Type_anylist) -> vx_core.Type_context {
    
    output = vx_core.f_empty(
      vx_core.t_context
    )
    return output
  }

  /**
   * @function copy
   * Returns a copy of a given value with the given values added or updated.
   * @param  {any-1} value
   * @param  {anylist} values
   * @return {any-1}
   * (func copy)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_copy = vx_core.Class_copy()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_copy = vx_core.Class_copy()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_copy(value, values)
      return output
    }

    func <T  vx_core.Type_any> vx_copy(value : T, values : vx_core.Type_anylist) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_copy(value : T, values : vx_core.Type_anylist) -> T {
  /**
   * @function else
   * @param  {any<-func} fn-any
   * @return {thenelse}
   * (func else)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_else = vx_core.Class_else()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_else = vx_core.Class_else()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_else(fn_any)
      return output
    }

    func vx_else(fn_any : vx_core.Func_any_from_func) -> vx_core.Type_thenelse {
      
      return output
    }

  }

  
  

  func static f_else(fn_any : vx_core.Func_any_from_func) -> vx_core.Type_thenelse {
    
    output = vx_core.f_new(
      vx_core.t_thenelse,
      vx_core.vx_new(
        vx_core.t_anylist,
        vx_core.vx_new_string(":code"),
        vx_core.vx_new_string(":else"),
        vx_core.vx_new_string(":fn-any"),
        fn_any
      )
    )
    return output
  }

  /**
   * @function empty
   * Returns the empty value for a given type. Can be called using (empty type) or simply (type)
   * @param  {any-1} type
   * @return {any-1}
   * (func empty)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_empty = vx_core.Class_empty()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_empty = vx_core.Class_empty()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_empty(type)
      return output
    }

    func <T  vx_core.Type_any> vx_empty(type : T) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_empty(type : T) -> T {
  /**
   * @function extends_from_any
   * @param  {any-1} value
   * @return {string}
   * (func extends<-any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_extends_from_any = vx_core.Class_extends_from_any()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_extends_from_any = vx_core.Class_extends_from_any()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_extends_from_any(value)
      return output
    }

    func vx_extends_from_any(value : vx_core.Type_any) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_extends_from_any(value : vx_core.Type_any) -> vx_core.Type_string {
    
    output = vx_core.f_extends_from_typedef(
      vx_core.f_typedef_from_any(
        value
      )
    )
    return output
  }

  /**
   * @function extends_from_typedef
   * Get the basetype of a given type
   * @param  {typedef} vtypedef
   * @return {string}
   * (func extends<-typedef)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_extends_from_typedef = vx_core.Class_extends_from_typedef()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_extends_from_typedef = vx_core.Class_extends_from_typedef()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_extends_from_typedef(vtypedef)
      return output
    }

    func vx_extends_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_extends_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_string {
    
    output = vtypedef.extend()
    return output
  }

  /**
   * @function first_from_list
   * Returns first value
   * @param  {list-1} values
   * @return {any-1}
   * (func first<-list)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_first_from_list = vx_core.Class_first_from_list()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_first_from_list = vx_core.Class_first_from_list()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_first_from_list(generic_any_1, values)
      return output
    }

    func <T  vx_core.Type_any, X  vx_core.Type_list> vx_first_from_list(generic_any_1 : T, values : X) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, X  vx_core.Type_list> f_first_from_list(generic_any_1 : T, values : X) -> T {
    
    output = vx_core.f_any_from_list(
      generic_any_1,
      values,
      vx_core.vx_new_int(1)
    )
    return output
  }

  /**
   * @function first_from_list_any_from_any
   * Returns first value that is not nothing
   * @param  {list-1} values
   * @param  {any<-any} fn-any<-any
   * @return {any-1}
   * (func first<-list-any<-any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_first_from_list_any_from_any = vx_core.Class_first_from_list_any_from_any()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_first_from_list_any_from_any = vx_core.Class_first_from_list_any_from_any()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_first_from_list_any_from_any(generic_any_1, values, fn_any_from_any)
      return output
    }

    func <T  vx_core.Type_any, X  vx_core.Type_list> vx_first_from_list_any_from_any(generic_any_1 : T, values : X, fn_any_from_any : vx_core.Func_any_from_any) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, X  vx_core.Type_list> f_first_from_list_any_from_any(generic_any_1 : T, values : X, fn_any_from_any : vx_core.Func_any_from_any) -> T {
    
    return output
  }

  /**
   * @function float_from_string
   * Returns float from a given string.
   * @param  {string} text
   * @return {float}
   * (func float<-string)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_float_from_string = vx_core.Class_float_from_string()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_float_from_string = vx_core.Class_float_from_string()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_float_from_string(text)
      return output
    }

    func vx_float_from_string(text : vx_core.Type_string) -> vx_core.Type_float {
      
      return output
    }

  }

  
  

  func static f_float_from_string(text : vx_core.Type_string) -> vx_core.Type_float {
    
    return output
  }

  /**
   * @function fn
   * Shell for lambda function calls
   * @param  {arglist} parameters
   * @param  {any<-func} fn-any
   * @return {any-1}
   * (func fn)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_fn = vx_core.Class_fn()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_fn = vx_core.Class_fn()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_fn(generic_any_1, parameters, fn_any)
      return output
    }

    func <T  vx_core.Type_any> vx_fn(generic_any_1 : T, parameters : vx_core.Type_arglist, fn_any : vx_core.Func_any_from_func) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_fn(generic_any_1 : T, parameters : vx_core.Type_arglist, fn_any : vx_core.Func_any_from_func) -> T {
    
    return output
  }

  /**
   * @function funcdef_from_func
   * Returns the definition of a function
   * @param  {func} value
   * @return {funcdef}
   * (func funcdef<-func)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_funcdef_from_func = vx_core.Class_funcdef_from_func()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_funcdef_from_func = vx_core.Class_funcdef_from_func()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_funcdef_from_func(value)
      return output
    }

    func vx_funcdef_from_func(value : vx_core.Type_func) -> vx_core.Type_funcdef {
      
      return output
    }

  }

  
  

  func static f_funcdef_from_func(value : vx_core.Type_func) -> vx_core.Type_funcdef {
    
    return output
  }

  /**
   * @function funcname_from_funcdef
   * Get the name of a given funcdef
   * @param  {funcdef} funcdef
   * @return {string}
   * (func funcname<-funcdef)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_funcname_from_funcdef = vx_core.Class_funcname_from_funcdef()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_funcname_from_funcdef = vx_core.Class_funcname_from_funcdef()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_funcname_from_funcdef(funcdef)
      return output
    }

    func vx_funcname_from_funcdef(funcdef : vx_core.Type_funcdef) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_funcname_from_funcdef(funcdef : vx_core.Type_funcdef) -> vx_core.Type_string {
    
    output = vx_core.f_new(
      vx_core.t_string,
      vx_core.vx_new(
        vx_core.t_anylist,
        funcdef.pkgname(),
        vx_core.vx_new_string("/"),
        funcdef.name()
      )
    )
    return output
  }

  /**
   * @function if
   * Logical If function
   * @param  {boolean} clause
   * @param  {any-1} then
   * @return {any-1}
   * (func if)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_if = vx_core.Class_if()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_if = vx_core.Class_if()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_if(generic_any_1, clause, then)
      return output
    }

    func <T  vx_core.Type_any> vx_if(generic_any_1 : T, clause : vx_core.Type_boolean, then : T) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_if(generic_any_1 : T, clause : vx_core.Type_boolean, then : T) -> T {
    
    return output
  }

  /**
   * @function if 1
   * Logical If function
   * @param  {boolean} clause
   * @param  {any-1} thenval
   * @param  {any-1} elseval
   * @return {any-1}
   * (func if)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_if_1 = vx_core.Class_if_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_if_1 = vx_core.Class_if_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      
      output = vx_core.f_if_1(generic_any_1, clause, thenval, elseval)
      return output
    }

    func <T  vx_core.Type_any> vx_if_1(generic_any_1 : T, clause : vx_core.Type_boolean, thenval : T, elseval : T) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_if_1(generic_any_1 : T, clause : vx_core.Type_boolean, thenval : T, elseval : T) -> T {
    
    return output
  }

  /**
   * @function if 2
   * Logical If function
   * @param  {thenelselist} thenelselist
   * @return {any-1}
   * (func if)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_if_2 = vx_core.Class_if_2()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_if_2 = vx_core.Class_if_2()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_if_2(generic_any_1, thenelselist)
      return output
    }

    func <T  vx_core.Type_any> vx_if_2(generic_any_1 : T, thenelselist : vx_core.Type_thenelselist) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_if_2(generic_any_1 : T, thenelselist : vx_core.Type_thenelselist) -> T {
    
    return output
  }

  /**
   * @function int_from_func
   * Function Type returning int with any parameters
   * @return {int}
   * (func int<-func)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_int_from_func = vx_core.Class_int_from_func()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_int_from_func = vx_core.Class_int_from_func()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_func.IFn fn = null

    public vx_core.Func_int_from_func vx_fn_new(Class_any_from_func.IFn fn) {
      val output : vx_core.Class_int_from_func = vx_core.Class_int_from_func()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      output = vx_core.f_int_from_func()
      return output
    }

    func vx_int_from_func() -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_int_from_func() -> vx_core.Type_int {
    
    return output
  }

  /**
   * @function int_from_string
   * Function Type converting string to int
   * @param  {string} value
   * @return {int}
   * (func int<-string)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_int_from_string = vx_core.Class_int_from_string()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_int_from_string = vx_core.Class_int_from_string()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_int_from_string(value)
      return output
    }

    func vx_int_from_string(value : vx_core.Type_string) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_int_from_string(value : vx_core.Type_string) -> vx_core.Type_int {
    
    output = vx_core.f_switch(
      vx_core.t_int,
      value,
      vx_core.vx_new(
        vx_core.t_thenelselist,
        vx_core.f_case_1(
          vx_core.vx_new_string("notanumber"),
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_1
          })
        ),
        vx_core.f_case_1(
          vx_core.vx_new_string("infinity"),
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_2
          })
        ),
        vx_core.f_case_1(
          vx_core.vx_new_string("neginfinity"),
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_3
          })
        ),
        vx_core.f_else(
          vx_core.t_any_from_func.vx_fn_new(
            
          })
        )
      )
    )
    return output
  }

  /**
   * @function is_empty
   * Returns true if text is empty.
   * @param  {string} text
   * @return {boolean}
   * (func is-empty)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_empty = vx_core.Class_is_empty()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_empty = vx_core.Class_is_empty()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_is_empty(text)
      return output
    }

    func vx_is_empty(text : vx_core.Type_string) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_is_empty(text : vx_core.Type_string) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function is_empty 1
   * Returns true if an value is empty
   * @param  {any} value
   * @return {boolean}
   * (func is-empty)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_empty_1 = vx_core.Class_is_empty_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_empty_1 = vx_core.Class_is_empty_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_is_empty_1(value)
      return output
    }

    func vx_is_empty_1(value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_is_empty_1(value : vx_core.Type_any) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function is_endswith
   * Returns true if text ends with find.
   * @param  {string} text
   * @param  {string} find
   * @return {boolean}
   * (func is-endswith)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_endswith = vx_core.Class_is_endswith()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_endswith = vx_core.Class_is_endswith()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_is_endswith(text, find)
      return output
    }

    func vx_is_endswith(text : vx_core.Type_string, find : vx_core.Type_string) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_is_endswith(text : vx_core.Type_string, find : vx_core.Type_string) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function is_float
   * Returns true if the value is a float.
   * @param  {any} value
   * @return {boolean}
   * (func is-float)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_float = vx_core.Class_is_float()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_float = vx_core.Class_is_float()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_is_float(value)
      return output
    }

    func vx_is_float(value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_is_float(value : vx_core.Type_any) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function is_func
   * Returns true if value is a function.
   * @param  {any} value
   * @return {boolean}
   * (func is-func)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_func = vx_core.Class_is_func()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_func = vx_core.Class_is_func()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_is_func(value)
      return output
    }

    func vx_is_func(value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_is_func(value : vx_core.Type_any) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function is_int
   * Returns true if the value is an integer.
   * @param  {any} value
   * @return {boolean}
   * (func is-int)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_int = vx_core.Class_is_int()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_int = vx_core.Class_is_int()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_is_int(value)
      return output
    }

    func vx_is_int(value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_is_int(value : vx_core.Type_any) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function is_number
   * Return true if value is a number
   * @param  {any} value
   * @return {boolean}
   * (func is-number)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_number = vx_core.Class_is_number()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_number = vx_core.Class_is_number()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_is_number(value)
      return output
    }

    func vx_is_number(value : vx_core.Type_any) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_is_number(value : vx_core.Type_any) -> vx_core.Type_boolean {
    
    output = vx_core.f_switch(
      vx_core.t_boolean,
      vx_core.f_typename_from_any(
        value
      ),
      vx_core.vx_new(
        vx_core.t_thenelselist,
        vx_core.f_case(
          vx_core.f_new(
            vx_core.t_list,
            vx_core.vx_new(
              vx_core.t_anylist,
              vx_core.vx_new_string("vx/core/decimal"),
              vx_core.vx_new_string("vx/core/float"),
              vx_core.vx_new_string("vx/core/int"),
              vx_core.vx_new_string("vx/core/number")
            )
          ),
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_1
          })
        ),
        vx_core.f_else(
          vx_core.t_any_from_func.vx_fn_new(
            
            return output_2
          })
        )
      )
    )
    return output
  }

  /**
   * @function is_pass_from_permission
   * Returns true if permission passes.
   * @param  {permission} permission
   * @return {boolean}
   * (func is-pass<-permission)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_pass_from_permission = vx_core.Class_is_pass_from_permission()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_is_pass_from_permission = vx_core.Class_is_pass_from_permission()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any_context vx_fn_new(vx_core.Class_any_from_any_context.IFn fn) {
      return vx_core.e_any_from_any_context
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any_context(generic_any_1 : T, context : vx_core.Type_context, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_is_pass_from_permission(context, permission)
      return output
    }

    func vx_is_pass_from_permission(context : vx_core.Type_context, permission : vx_core.Type_permission) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_is_pass_from_permission(context : vx_core.Type_context, permission : vx_core.Type_permission) -> vx_core.Type_boolean {
    
    output = vx_core.f_let(
      vx_core.t_boolean,
      vx_core.t_any_from_func.vx_fn_new(
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function last_from_list
   * Returns last value
   * @param  {list-1} values
   * @return {any-1}
   * (func last<-list)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_last_from_list = vx_core.Class_last_from_list()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_last_from_list = vx_core.Class_last_from_list()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_last_from_list(generic_any_1, values)
      return output
    }

    func <T  vx_core.Type_any, X  vx_core.Type_list> vx_last_from_list(generic_any_1 : T, values : X) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, X  vx_core.Type_list> f_last_from_list(generic_any_1 : T, values : X) -> T {
    
    output = vx_core.f_let(
      generic_any_1,
      vx_core.t_any_from_func.vx_fn_new(
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function length
   * Returns length of a string.
   * @param  {string} text
   * @return {int}
   * (func length)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_length = vx_core.Class_length()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_length = vx_core.Class_length()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_length(text)
      return output
    }

    func vx_length(text : vx_core.Type_string) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_length(text : vx_core.Type_string) -> vx_core.Type_int {
    
    return output
  }

  /**
   * @function length 1
   * Returns the currently used size/length of a list
   * @param  {list-1} values
   * @return {int}
   * (func length)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_length_1 = vx_core.Class_length_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_length_1 = vx_core.Class_length_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_length_1(values)
      return output
    }

    func vx_length_1(values : vx_core.Type_list) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_length_1(values : vx_core.Type_list) -> vx_core.Type_int {
    
    return output
  }

  /**
   * @function length 2
   * Returns the length of the given map.
   * @param  {map-1} valuemap
   * @return {int}
   * (func length)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_length_2 = vx_core.Class_length_2()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_length_2 = vx_core.Class_length_2()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_length_2(valuemap)
      return output
    }

    func vx_length_2(valuemap : vx_core.Type_map) -> vx_core.Type_int {
      
      return output
    }

  }

  
  

  func static f_length_2(valuemap : vx_core.Type_map) -> vx_core.Type_int {
    
    output = vx_core.f_length_1(
      vx_core.f_stringlist_from_map(
        valuemap
      )
    )
    return output
  }

  /**
   * @function let
   * @param  {arglist} args
   * @param  {any<-func} fn-any
   * @return {any-1}
   * (func let)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_let = vx_core.Class_let()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_let = vx_core.Class_let()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_let(generic_any_1, fn_any)
      return output
    }

    func <T  vx_core.Type_any> vx_let(generic_any_1 : T, fn_any : vx_core.Func_any_from_func) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_let(generic_any_1 : T, fn_any : vx_core.Func_any_from_func) -> T {
    
    return output
  }

  /**
   * 
   * @async
   * @function let_async
   * Same as normal let but returns async values.
   * @param  {arglist} args
   * @param  {any<-func-async} fn-any-async
   * @return {any-1}
   * (func let-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_let_async = vx_core.Class_let_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_let_async = vx_core.Class_let_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <T  vx_core.Type_any> vx_let_async(generic_any_1 : T, fn_any_async : vx_core.Func_any_from_func_async) -> <T> {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_let_async(generic_any_1 : T, fn_any_async : vx_core.Func_any_from_func_async) -> <T> {
    
    return output
  }

  /**
   * @function list_join_from_list
   * Returns a list by joining the valid values in each value list
   * @param  {list-2} values
   * @return {list-1}
   * (func list-join<-list)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_join_from_list = vx_core.Class_list_join_from_list()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_join_from_list = vx_core.Class_list_join_from_list()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_list_join_from_list(generic_list_1, values)
      return output
    }

    func <X  vx_core.Type_list, Y  vx_core.Type_list> vx_list_join_from_list(generic_list_1 : X, values : Y) -> X {
      
      return output
    }

  }

  
  

  func static <X  vx_core.Type_list, Y  vx_core.Type_list> f_list_join_from_list(generic_list_1 : X, values : Y) -> X {
    
    output = vx_core.f_list_join_from_list_1(
      generic_list_1,
      values,
      vx_core.t_any_from_any.vx_fn_new(
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function list_join_from_list 1
   * Returns a flattened list of processed items from another list
   * @param  {list-2} values
   * @param  {any<-any} fn-any<-any
   * @return {list-1}
   * (func list-join<-list)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_join_from_list_1 = vx_core.Class_list_join_from_list_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_join_from_list_1 = vx_core.Class_list_join_from_list_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_list_join_from_list_1(generic_list_1, values, fn_any_from_any)
      return output
    }

    func <X  vx_core.Type_list, Y  vx_core.Type_list> vx_list_join_from_list_1(generic_list_1 : X, values : Y, fn_any_from_any : vx_core.Func_any_from_any) -> X {
      
      return output
    }

  }

  
  

  func static <X  vx_core.Type_list, Y  vx_core.Type_list> f_list_join_from_list_1(generic_list_1 : X, values : Y, fn_any_from_any : vx_core.Func_any_from_any) -> X {
    
    return output
  }

  /**
   * @function list_from_list
   * Return a list with allowed values from another list
   * @param  {list-2} values
   * @return {list-1}
   * (func list<-list)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_list = vx_core.Class_list_from_list()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_list = vx_core.Class_list_from_list()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_list_from_list(generic_list_1, values)
      return output
    }

    func <X  vx_core.Type_list, Y  vx_core.Type_list> vx_list_from_list(generic_list_1 : X, values : Y) -> X {
      
      return output
    }

  }

  
  

  func static <X  vx_core.Type_list, Y  vx_core.Type_list> f_list_from_list(generic_list_1 : X, values : Y) -> X {
    
    output = vx_core.f_list_from_list_1(
      generic_list_1,
      values,
      vx_core.t_any_from_any.vx_fn_new(
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function list_from_list 1
   * Returns a list of processed items from another list
   * @param  {list-2} values
   * @param  {any<-any} fn-any<-any
   * @return {list-1}
   * (func list<-list)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_list_1 = vx_core.Class_list_from_list_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_list_1 = vx_core.Class_list_from_list_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_list_from_list_1(generic_list_1, values, fn_any_from_any)
      return output
    }

    func <X  vx_core.Type_list, Y  vx_core.Type_list> vx_list_from_list_1(generic_list_1 : X, values : Y, fn_any_from_any : vx_core.Func_any_from_any) -> X {
      
      return output
    }

  }

  
  

  func static <X  vx_core.Type_list, Y  vx_core.Type_list> f_list_from_list_1(generic_list_1 : X, values : Y, fn_any_from_any : vx_core.Func_any_from_any) -> X {
    
    return output
  }

  /**
   * 
   * @async
   * @function list_from_list_async
   * Returns an asynchronous list of the processed asynchronous items from another list
   * @param  {list-2} values
   * @param  {any<-any-async} fn-any<-any-async
   * @return {list-1}
   * (func list<-list-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_list_async = vx_core.Class_list_from_list_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_list_async = vx_core.Class_list_from_list_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <X  vx_core.Type_list, Y  vx_core.Type_list> vx_list_from_list_async(generic_list_1 : X, values : Y, fn_any_from_any_async : vx_core.Func_any_from_any_async) -> <X> {
      
      return output
    }

  }

  
  

  func static <X  vx_core.Type_list, Y  vx_core.Type_list> f_list_from_list_async(generic_list_1 : X, values : Y, fn_any_from_any_async : vx_core.Func_any_from_any_async) -> <X> {
    
    return output
  }

  /**
   * @function list_from_list_intany
   * Returns a list of processed items from another list
   * @param  {list-2} values
   * @param  {any<-int-any} fn-any<-int-any
   * @return {list-1}
   * (func list<-list-intany)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_list_intany = vx_core.Class_list_from_list_intany()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_list_intany = vx_core.Class_list_from_list_intany()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_list_from_list_intany(generic_list_1, values, fn_any_from_int_any)
      return output
    }

    func <X  vx_core.Type_list, Y  vx_core.Type_list> vx_list_from_list_intany(generic_list_1 : X, values : Y, fn_any_from_int_any : vx_core.Func_any_from_int_any) -> X {
      
      return output
    }

  }

  
  

  func static <X  vx_core.Type_list, Y  vx_core.Type_list> f_list_from_list_intany(generic_list_1 : X, values : Y, fn_any_from_int_any : vx_core.Func_any_from_int_any) -> X {
    
    return output
  }

  /**
   * @function list_from_map
   * Returns a list of allowed values from a map.
   * @param  {map-2} valuemap
   * @return {list-1}
   * (func list<-map)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_map = vx_core.Class_list_from_map()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_map = vx_core.Class_list_from_map()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_list_from_map(generic_list_1, valuemap)
      return output
    }

    func <O  vx_core.Type_map, X  vx_core.Type_list> vx_list_from_map(generic_list_1 : X, valuemap : O) -> X {
      
      return output
    }

  }

  
  

  func static <O  vx_core.Type_map, X  vx_core.Type_list> f_list_from_map(generic_list_1 : X, valuemap : O) -> X {
    
    output = vx_core.f_list_from_map_1(
      generic_list_1,
      valuemap,
      vx_core.t_any_from_key_value.vx_fn_new(
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function list_from_map 1
   * Returns a list from a map by applying a function to each key value.
   * @param  {map-2} valuemap
   * @param  {any<-key-value} fn-any<-key-value
   * @return {list-1}
   * (func list<-map)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_map_1 = vx_core.Class_list_from_map_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_map_1 = vx_core.Class_list_from_map_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_list_from_map_1(generic_list_1, valuemap, fn_any_from_key_value)
      return output
    }

    func <O  vx_core.Type_map, X  vx_core.Type_list> vx_list_from_map_1(generic_list_1 : X, valuemap : O, fn_any_from_key_value : vx_core.Func_any_from_key_value) -> X {
      
      return output
    }

  }

  
  

  func static <O  vx_core.Type_map, X  vx_core.Type_list> f_list_from_map_1(generic_list_1 : X, valuemap : O, fn_any_from_key_value : vx_core.Func_any_from_key_value) -> X {
    
    return output
  }

  /**
   * 
   * @async
   * @function list_from_map_async
   * @param  {map-2} valuemap
   * @param  {any<-key-value-async} fn-any<-key-value-async
   * @return {list-1}
   * (func list<-map-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_map_async = vx_core.Class_list_from_map_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_map_async = vx_core.Class_list_from_map_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <O  vx_core.Type_map, X  vx_core.Type_list> vx_list_from_map_async(generic_list_1 : X, valuemap : O, fn_any_from_key_value_async : vx_core.Func_any_from_key_value_async) -> <X> {
      
      return output
    }

  }

  
  

  func static <O  vx_core.Type_map, X  vx_core.Type_list> f_list_from_map_async(generic_list_1 : X, valuemap : O, fn_any_from_key_value_async : vx_core.Func_any_from_key_value_async) -> <X> {
    
    return output
  }

  /**
   * @function list_from_type
   * Create an empty list from a type. Used internally for default lists
   * @param  {any} type
   * @return {any}
   * (func list<-type)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_type = vx_core.Class_list_from_type()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_list_from_type = vx_core.Class_list_from_type()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_list_from_type(type)
      return output
    }

    func vx_list_from_type(type : vx_core.Type_any) -> vx_core.Type_any {
      
      return output
    }

  }

  
  

  func static f_list_from_type(type : vx_core.Type_any) -> vx_core.Type_any {
    
    return output
  }

  /**
   * @function log
   * Writes a value to the console.
   * @param  {any} value
   * @return {any}
   * (func log)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_log = vx_core.Class_log()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_log = vx_core.Class_log()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_log(value)
      return output
    }

    func vx_log(value : vx_core.Type_any) -> vx_core.Type_any {
      
      return output
    }

  }

  
  

  func static f_log(value : vx_core.Type_any) -> vx_core.Type_any {
    
    return output
  }

  /**
   * @function log 1
   * Writes a string and a value to the console.
   * @param  {string} text
   * @param  {any-1} value
   * @return {any-1}
   * (func log)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_log_1 = vx_core.Class_log_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_log_1 = vx_core.Class_log_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_log_1(generic_any_1, text, value)
      return output
    }

    func <T  vx_core.Type_any> vx_log_1(generic_any_1 : T, text : vx_core.Type_string, value : T) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_log_1(generic_any_1 : T, text : vx_core.Type_string, value : T) -> T {
    
    return output
  }

  /**
   * @function main
   * The default function for app main execution. Arguments come from the command line.
   * @param  {anylist} args
   * @return {string}
   * (func main)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_main = vx_core.Class_main()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_main = vx_core.Class_main()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_main(args)
      return output
    }

    func vx_main(args : vx_core.Type_anylist) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_main(args : vx_core.Type_anylist) -> vx_core.Type_string {
    
    output = vx_core.f_new(
      vx_core.t_string,
      args
    )
    return output
  }

  /**
   * @function map_from_list
   * Returns a map from a list by applying a function to generate a key for each value.
   * @param  {list-2} vallist
   * @param  {any<-any} fn-any<-any
   * @return {map-1}
   * (func map<-list)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_map_from_list = vx_core.Class_map_from_list()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_map_from_list = vx_core.Class_map_from_list()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_map_from_list(generic_map_1, vallist, fn_any_from_any)
      return output
    }

    func <N  vx_core.Type_map, Y  vx_core.Type_list> vx_map_from_list(generic_map_1 : N, vallist : Y, fn_any_from_any : vx_core.Func_any_from_any) -> N {
      
      return output
    }

  }

  
  

  func static <N  vx_core.Type_map, Y  vx_core.Type_list> f_map_from_list(generic_map_1 : N, vallist : Y, fn_any_from_any : vx_core.Func_any_from_any) -> N {
    
    return output
  }

  /**
   * @function map_from_map
   * Return a map with allowed values from another map
   * @param  {map-2} valuemap
   * @return {map-1}
   * (func map<-map)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_map_from_map = vx_core.Class_map_from_map()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_map_from_map = vx_core.Class_map_from_map()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_map_from_map(generic_map_1, valuemap)
      return output
    }

    func <N  vx_core.Type_map, O  vx_core.Type_map> vx_map_from_map(generic_map_1 : N, valuemap : O) -> N {
      
      return output
    }

  }

  
  

  func static <N  vx_core.Type_map, O  vx_core.Type_map> f_map_from_map(generic_map_1 : N, valuemap : O) -> N {
    
    output = vx_core.f_map_from_map_1(
      generic_map_1,
      valuemap,
      vx_core.t_any_from_key_value.vx_fn_new(
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function map_from_map 1
   * Returns a map from a map by applying a function to each key value.
   * @param  {map-2} valuemap
   * @param  {any<-key-value} fn-any<-key-value
   * @return {map-1}
   * (func map<-map)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_map_from_map_1 = vx_core.Class_map_from_map_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_map_from_map_1 = vx_core.Class_map_from_map_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_map_from_map_1(generic_map_1, valuemap, fn_any_from_key_value)
      return output
    }

    func <N  vx_core.Type_map, O  vx_core.Type_map> vx_map_from_map_1(generic_map_1 : N, valuemap : O, fn_any_from_key_value : vx_core.Func_any_from_key_value) -> N {
      
      return output
    }

  }

  
  

  func static <N  vx_core.Type_map, O  vx_core.Type_map> f_map_from_map_1(generic_map_1 : N, valuemap : O, fn_any_from_key_value : vx_core.Func_any_from_key_value) -> N {
    
    return output
  }

  /**
   * @function msg_from_error
   * Returns a msg from error string
   * @param  {string} error
   * @return {msg}
   * (func msg<-error)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msg_from_error = vx_core.Class_msg_from_error()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msg_from_error = vx_core.Class_msg_from_error()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_msg_from_error(error)
      return output
    }

    func vx_msg_from_error(error : vx_core.Type_string) -> vx_core.Type_msg {
      
      return output
    }

  }

  
  

  func static f_msg_from_error(error : vx_core.Type_string) -> vx_core.Type_msg {
    
    output = vx_core.f_new(
      vx_core.t_msg,
      vx_core.vx_new(
        vx_core.t_anylist,
        vx_core.vx_new_string(":severity"),
        vx_core.c_msg_error,
        vx_core.vx_new_string(":text"),
        error
      )
    )
    return output
  }

  /**
   * @function msg_from_error 1
   * Returns a msg from error code and detail
   * @param  {string} code
   * @param  {any} detail
   * @return {msg}
   * (func msg<-error)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msg_from_error_1 = vx_core.Class_msg_from_error_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msg_from_error_1 = vx_core.Class_msg_from_error_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_msg_from_error_1(code, detail)
      return output
    }

    func vx_msg_from_error_1(code : vx_core.Type_string, detail : vx_core.Type_any) -> vx_core.Type_msg {
      
      return output
    }

  }

  
  

  func static f_msg_from_error_1(code : vx_core.Type_string, detail : vx_core.Type_any) -> vx_core.Type_msg {
    
    output = vx_core.f_new(
      vx_core.t_msg,
      vx_core.vx_new(
        vx_core.t_anylist,
        vx_core.vx_new_string(":code"),
        code,
        vx_core.vx_new_string(":detail"),
        detail,
        vx_core.vx_new_string(":severity"),
        vx_core.c_msg_error
      )
    )
    return output
  }

  /**
   * @function msg_from_error 2
   * Returns a msg from error path code and detail
   * @param  {string} path
   * @param  {string} code
   * @param  {any} detail
   * @return {msg}
   * (func msg<-error)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msg_from_error_2 = vx_core.Class_msg_from_error_2()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msg_from_error_2 = vx_core.Class_msg_from_error_2()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_msg_from_error_2(path, code, detail)
      return output
    }

    func vx_msg_from_error_2(path : vx_core.Type_string, code : vx_core.Type_string, detail : vx_core.Type_any) -> vx_core.Type_msg {
      
      return output
    }

  }

  
  

  func static f_msg_from_error_2(path : vx_core.Type_string, code : vx_core.Type_string, detail : vx_core.Type_any) -> vx_core.Type_msg {
    
    output = vx_core.f_new(
      vx_core.t_msg,
      vx_core.vx_new(
        vx_core.t_anylist,
        vx_core.vx_new_string(":code"),
        code,
        vx_core.vx_new_string(":path"),
        path,
        vx_core.vx_new_string(":severity"),
        vx_core.c_msg_error,
        vx_core.vx_new_string(":detail"),
        detail
      )
    )
    return output
  }

  /**
   * @function msg_from_warning
   * Returns a msg from a warning string
   * @param  {string} warning
   * @return {msg}
   * (func msg<-warning)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msg_from_warning = vx_core.Class_msg_from_warning()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msg_from_warning = vx_core.Class_msg_from_warning()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_msg_from_warning(warning)
      return output
    }

    func vx_msg_from_warning(warning : vx_core.Type_string) -> vx_core.Type_msg {
      
      return output
    }

  }

  
  

  func static f_msg_from_warning(warning : vx_core.Type_string) -> vx_core.Type_msg {
    
    output = vx_core.f_new(
      vx_core.t_msg,
      vx_core.vx_new(
        vx_core.t_anylist,
        vx_core.vx_new_string(":severity"),
        vx_core.c_msg_warning,
        vx_core.vx_new_string(":text"),
        warning
      )
    )
    return output
  }

  /**
   * @function msgblock_from_msgblock_msg
   * Return a new Msgblock with the added msg
   * @param  {msgblock} origblock
   * @param  {msg} addmsg
   * @return {msgblock}
   * (func msgblock<-msgblock-msg)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msgblock_from_msgblock_msg = vx_core.Class_msgblock_from_msgblock_msg()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msgblock_from_msgblock_msg = vx_core.Class_msgblock_from_msgblock_msg()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_msgblock_from_msgblock_msg(origblock, addmsg)
      return output
    }

    func vx_msgblock_from_msgblock_msg(origblock : vx_core.Type_msgblock, addmsg : vx_core.Type_msg) -> vx_core.Type_msgblock {
      
      return output
    }

  }

  
  

  func static f_msgblock_from_msgblock_msg(origblock : vx_core.Type_msgblock, addmsg : vx_core.Type_msg) -> vx_core.Type_msgblock {
    
    output = vx_core.f_copy(
      origblock,
      vx_core.vx_new(
        vx_core.t_anylist,
        addmsg
      )
    )
    return output
  }

  /**
   * @function msgblock_from_msgblock_msgblock
   * Return a new Msgblock with the added block
   * @param  {msgblock} origblock
   * @param  {msgblock} addblock
   * @return {msgblock}
   * (func msgblock<-msgblock-msgblock)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msgblock_from_msgblock_msgblock = vx_core.Class_msgblock_from_msgblock_msgblock()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_msgblock_from_msgblock_msgblock = vx_core.Class_msgblock_from_msgblock_msgblock()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_msgblock_from_msgblock_msgblock(origblock, addblock)
      return output
    }

    func vx_msgblock_from_msgblock_msgblock(origblock : vx_core.Type_msgblock, addblock : vx_core.Type_msgblock) -> vx_core.Type_msgblock {
      
      return output
    }

  }

  
  

  func static f_msgblock_from_msgblock_msgblock(origblock : vx_core.Type_msgblock, addblock : vx_core.Type_msgblock) -> vx_core.Type_msgblock {
    
    output = vx_core.f_new(
      vx_core.t_msgblock,
      vx_core.vx_new(
        vx_core.t_anylist,
        origblock,
        addblock
      )
    )
    return output
  }

  /**
   * @function name_from_typedef
   * Returns the name from a typedef.
   * @param  {typedef} vtypedef
   * @return {string}
   * (func name<-typedef)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_name_from_typedef = vx_core.Class_name_from_typedef()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_name_from_typedef = vx_core.Class_name_from_typedef()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_name_from_typedef(vtypedef)
      return output
    }

    func vx_name_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_name_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_string {
    
    output = vtypedef.name()
    return output
  }

  /**
   * @function native
   * Native Function Call
   * @param  {anylist} clauses
   * @return {any-1}
   * (func native)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_native = vx_core.Class_native()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_native = vx_core.Class_native()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_native(generic_any_1, clauses)
      return output
    }

    func <T  vx_core.Type_any> vx_native(generic_any_1 : T, clauses : vx_core.Type_anylist) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_native(generic_any_1 : T, clauses : vx_core.Type_anylist) -> T {
    
    return output
  }

  /**
   * @function native_from_any
   * Returns native value of value object
   * @param  {any-1} value
   * @return {any}
   * (func native<-any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_native_from_any = vx_core.Class_native_from_any()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_native_from_any = vx_core.Class_native_from_any()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_native_from_any(value)
      return output
    }

    func vx_native_from_any(value : vx_core.Type_any) -> vx_core.Type_any {
      
      return output
    }

  }

  
  

  func static f_native_from_any(value : vx_core.Type_any) -> vx_core.Type_any {
    
    return output
  }

  /**
   * @function new
   * Create a new Value of Type A
   * @param  {any-1} type
   * @param  {anylist} values
   * @return {any-1}
   * (func new)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_new = vx_core.Class_new()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_new = vx_core.Class_new()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_new(type, values)
      return output
    }

    func <T  vx_core.Type_any> vx_new(type : T, values : vx_core.Type_anylist) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_new(type : T, values : vx_core.Type_anylist) -> T {
  /**
   * @function number_from_func
   * Function Type returning number with any parameters
   * @return {number}
   * (func number<-func)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_number_from_func = vx_core.Class_number_from_func()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_number_from_func = vx_core.Class_number_from_func()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      output = vx_core.f_number_from_func()
      return output
    }

    func vx_number_from_func() -> vx_core.Type_number {
      
      return output
    }

  }

  
  

  func static f_number_from_func() -> vx_core.Type_number {
    
    return output
  }

  /**
   * @function or
   * Returns true if any value is true
   * @param  {boolean} val1
   * @param  {boolean} val2
   * @return {boolean}
   * (func or)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_or = vx_core.Class_or()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_or = vx_core.Class_or()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_or(val1, val2)
      return output
    }

    func vx_or(val1 : vx_core.Type_boolean, val2 : vx_core.Type_boolean) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_or(val1 : vx_core.Type_boolean, val2 : vx_core.Type_boolean) -> vx_core.Type_boolean {
    
    return output
  }

  /**
   * @function or 1
   * Returns true if any value is true
   * @param  {booleanlist} values
   * @return {boolean}
   * (func or)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_or_1 = vx_core.Class_or_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_or_1 = vx_core.Class_or_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_or_1(values)
      return output
    }

    func vx_or_1(values : vx_core.Type_booleanlist) -> vx_core.Type_boolean {
      
      return output
    }

  }

  
  

  func static f_or_1(values : vx_core.Type_booleanlist) -> vx_core.Type_boolean {
    
    output = vx_core.f_any_from_list_start_reduce_next(
      vx_core.t_boolean,
      values,
      vx_core.vx_new_boolean(false),
      vx_core.t_any_from_reduce_next.vx_fn_new(
        
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function package_global_from_name
   * Returns a package from global with the given name.
   * @param  {string} name
   * @return {package}
   * (func package-global<-name)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_package_global_from_name = vx_core.Class_package_global_from_name()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_package_global_from_name = vx_core.Class_package_global_from_name()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_package_global_from_name(name)
      return output
    }

    func vx_package_global_from_name(name : vx_core.Type_string) -> vx_core.Type_package {
      
      return output
    }

  }

  
  

  func static f_package_global_from_name(name : vx_core.Type_string) -> vx_core.Type_package {
    
    output = vx_core.f_any_from_map(
      vx_core.t_package,
      vx_core.c_global.packagemap(),
      name
    )
    return output
  }

  /**
   * @function packagename_from_typedef
   * Returns the package name from a typedef.
   * @param  {typedef} vtypedef
   * @return {string}
   * (func packagename<-typedef)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_packagename_from_typedef = vx_core.Class_packagename_from_typedef()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_packagename_from_typedef = vx_core.Class_packagename_from_typedef()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_packagename_from_typedef(vtypedef)
      return output
    }

    func vx_packagename_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_packagename_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_string {
    
    output = vtypedef.pkgname()
    return output
  }

  /**
   * @function path_from_context_path
   * Returns a path from a context
   * @param  {string} path
   * @return {string}
   * (func path<-context-path)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_path_from_context_path = vx_core.Class_path_from_context_path()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_path_from_context_path = vx_core.Class_path_from_context_path()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any_context vx_fn_new(vx_core.Class_any_from_any_context.IFn fn) {
      return vx_core.e_any_from_any_context
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any_context(generic_any_1 : T, context : vx_core.Type_context, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_path_from_context_path(context, path)
      return output
    }

    func vx_path_from_context_path(context : vx_core.Type_context, path : vx_core.Type_string) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_path_from_context_path(context : vx_core.Type_context, path : vx_core.Type_string) -> vx_core.Type_string {
    
    output = vx_core.f_path_from_setting_path(
      vx_core.f_setting_from_context(
        context
      ),
      path
    )
    return output
  }

  /**
   * @function path_from_setting_path
   * Returns a path from a setting
   * @param  {setting} session
   * @param  {string} path
   * @return {string}
   * (func path<-setting-path)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_path_from_setting_path = vx_core.Class_path_from_setting_path()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_path_from_setting_path = vx_core.Class_path_from_setting_path()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_path_from_setting_path(session, path)
      return output
    }

    func vx_path_from_setting_path(session : vx_core.Type_setting, path : vx_core.Type_string) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_path_from_setting_path(session : vx_core.Type_setting, path : vx_core.Type_string) -> vx_core.Type_string {
    
    return output
  }

  /**
   * @function permission_from_id_context
   * Return a permission from context by id
   * @param  {string} id
   * @return {permission}
   * (func permission<-id-context)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_permission_from_id_context = vx_core.Class_permission_from_id_context()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_permission_from_id_context = vx_core.Class_permission_from_id_context()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any_context vx_fn_new(vx_core.Class_any_from_any_context.IFn fn) {
      return vx_core.e_any_from_any_context
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any_context(generic_any_1 : T, context : vx_core.Type_context, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any_context(generic_any_1, context, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_permission_from_id_context(context, id)
      return output
    }

    func vx_permission_from_id_context(context : vx_core.Type_context, id : vx_core.Type_string) -> vx_core.Type_permission {
      
      return output
    }

  }

  
  

  func static f_permission_from_id_context(context : vx_core.Type_context, id : vx_core.Type_string) -> vx_core.Type_permission {
    
    output = vx_core.f_let(
      vx_core.t_permission,
      vx_core.t_any_from_func.vx_fn_new(
        
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function properties_from_typedef
   * Return property map from typedef
   * @param  {typedef} vtypedef
   * @return {argmap}
   * (func properties<-typedef)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_properties_from_typedef = vx_core.Class_properties_from_typedef()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_properties_from_typedef = vx_core.Class_properties_from_typedef()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_properties_from_typedef(vtypedef)
      return output
    }

    func vx_properties_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_argmap {
      
      return output
    }

  }

  
  

  func static f_properties_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_argmap {
    
    output = vtypedef.properties()
    return output
  }

  /**
   * @function proplast_from_typedef
   * Return last property from typedef
   * @param  {typedef} vtypedef
   * @return {arg}
   * (func proplast<-typedef)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_proplast_from_typedef = vx_core.Class_proplast_from_typedef()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_proplast_from_typedef = vx_core.Class_proplast_from_typedef()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_proplast_from_typedef(vtypedef)
      return output
    }

    func vx_proplast_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_arg {
      
      return output
    }

  }

  
  

  func static f_proplast_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_arg {
    
    output = vtypedef.proplast()
    return output
  }

  /**
   * @function resolve
   * @param  {any-1} value
   * @return {any-1}
   * (func resolve)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_resolve = vx_core.Class_resolve()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_resolve = vx_core.Class_resolve()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_resolve(generic_any_1, value)
      return output
    }

    func <T  vx_core.Type_any> vx_resolve(generic_any_1 : T, value : T) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_resolve(generic_any_1 : T, value : T) -> T {
    
    output = value
    return output
  }

  /**
   * @function resolve 1
   * @param  {any<-func} fn-any
   * @return {any-1}
   * (func resolve)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_resolve_1 = vx_core.Class_resolve_1()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_resolve_1 = vx_core.Class_resolve_1()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_resolve_1(generic_any_1, fn_any)
      return output
    }

    func <T  vx_core.Type_any> vx_resolve_1(generic_any_1 : T, fn_any : vx_core.Func_any_from_func) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_resolve_1(generic_any_1 : T, fn_any : vx_core.Func_any_from_func) -> T {
    
    return output
  }

  /**
   * 
   * @async
   * @function resolve_async
   * @param  {any<-func-async} fn-any
   * @return {any-1}
   * (func resolve-async)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_resolve_async = vx_core.Class_resolve_async()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_resolve_async = vx_core.Class_resolve_async()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any_async vx_fn_new(vx_core.Class_any_from_any_async.IFn fn) {
      return vx_core.e_any_from_any_async
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any_async(generic_any_1 : T, value : U) -> <T> {
      
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> <vx_core.Type_any> {
      
      
      
      
      output = vx_core.vx_async_from_async(vx_core.t_any, future)
      return output
    }

    func <T  vx_core.Type_any> vx_resolve_async(generic_any_1 : T, fn_any : vx_core.Func_any_from_func_async) -> <T> {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any> f_resolve_async(generic_any_1 : T, fn_any : vx_core.Func_any_from_func_async) -> <T> {
    
    return output
  }

  /**
   * @function resolve_first
   * Returns the first value that is not nothing
   * @param  {list-1} clauses
   * @return {any-1}
   * (func resolve-first)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_resolve_first = vx_core.Class_resolve_first()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_resolve_first = vx_core.Class_resolve_first()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_resolve_first(generic_any_1, clauses)
      return output
    }

    func <T  vx_core.Type_any, X  vx_core.Type_list> vx_resolve_first(generic_any_1 : T, clauses : X) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, X  vx_core.Type_list> f_resolve_first(generic_any_1 : T, clauses : X) -> T {
    
    output = vx_core.f_first_from_list_any_from_any(
      generic_any_1,
      clauses,
      vx_core.t_resolve
    )
    return output
  }

  /**
   * @function resolve_list
   * @param  {list-1} clauses
   * @return {list-1}
   * (func resolve-list)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_resolve_list = vx_core.Class_resolve_list()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_resolve_list = vx_core.Class_resolve_list()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_resolve_list(generic_list_1, clauses)
      return output
    }

    func <X  vx_core.Type_list> vx_resolve_list(generic_list_1 : X, clauses : X) -> X {
      
      return output
    }

  }

  
  

  func static <X  vx_core.Type_list> f_resolve_list(generic_list_1 : X, clauses : X) -> X {
    
    output = vx_core.f_list_from_list_1(
      generic_list_1,
      clauses,
      vx_core.t_resolve
    )
    return output
  }

  /**
   * @function security_from_context
   * Return security from the given context.
   * @return {security}
   * (func security<-context)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_security_from_context = vx_core.Class_security_from_context()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_security_from_context = vx_core.Class_security_from_context()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_security_from_context(context)
      return output
    }

    func vx_security_from_context(context : vx_core.Type_context) -> vx_core.Type_security {
      
      return output
    }

  }

  
  

  func static f_security_from_context(context : vx_core.Type_context) -> vx_core.Type_security {
    
    output = vx_core.f_security_from_user(
      vx_core.f_user_from_context(
        context
      )
    )
    return output
  }

  /**
   * @function security_from_user
   * Return security from the given user.
   * @param  {user} user
   * @return {security}
   * (func security<-user)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_security_from_user = vx_core.Class_security_from_user()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_security_from_user = vx_core.Class_security_from_user()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_security_from_user(user)
      return output
    }

    func vx_security_from_user(user : vx_core.Type_user) -> vx_core.Type_security {
      
      return output
    }

  }

  
  

  func static f_security_from_user(user : vx_core.Type_user) -> vx_core.Type_security {
    
    output = user.security()
    return output
  }

  /**
   * @function session_from_context
   * Returns session from a context
   * @return {session}
   * (func session<-context)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_session_from_context = vx_core.Class_session_from_context()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_session_from_context = vx_core.Class_session_from_context()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_session_from_context(context)
      return output
    }

    func vx_session_from_context(context : vx_core.Type_context) -> vx_core.Type_session {
      
      return output
    }

  }

  
  

  func static f_session_from_context(context : vx_core.Type_context) -> vx_core.Type_session {
    
    output = context.session()
    return output
  }

  /**
   * @function setting_from_context
   * Returns setting from a context
   * @return {setting}
   * (func setting<-context)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_setting_from_context = vx_core.Class_setting_from_context()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_setting_from_context = vx_core.Class_setting_from_context()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_setting_from_context(context)
      return output
    }

    func vx_setting_from_context(context : vx_core.Type_context) -> vx_core.Type_setting {
      
      return output
    }

  }

  
  

  func static f_setting_from_context(context : vx_core.Type_context) -> vx_core.Type_setting {
    
    output = context.setting()
    return output
  }

  /**
   * @function string_repeat
   * @param  {string} text
   * @param  {int} repeat
   * @return {string}
   * (func string-repeat)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_string_repeat = vx_core.Class_string_repeat()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_string_repeat = vx_core.Class_string_repeat()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_string_repeat(text, repeat)
      return output
    }

    func vx_string_repeat(text : vx_core.Type_string, repeat : vx_core.Type_int) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_string_repeat(text : vx_core.Type_string, repeat : vx_core.Type_int) -> vx_core.Type_string {
    
    return output
  }

  /**
   * @function string_from_any
   * Return a string representation of a value
   * @param  {any} value
   * @return {string}
   * (func string<-any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_string_from_any = vx_core.Class_string_from_any()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_string_from_any = vx_core.Class_string_from_any()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_string_from_any(value)
      return output
    }

    func vx_string_from_any(value : vx_core.Type_any) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_string_from_any(value : vx_core.Type_any) -> vx_core.Type_string {
    
    output = vx_core.f_string_from_any_indent(
      value,
      vx_core.vx_new_int(0),
      vx_core.vx_new_boolean(true)
    )
    return output
  }

  /**
   * @function string_from_any_indent
   * Return a string representation of a value
   * @param  {any} value
   * @param  {int} indent
   * @param  {boolean} linefeed
   * @return {string}
   * (func string<-any-indent)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_string_from_any_indent = vx_core.Class_string_from_any_indent()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_string_from_any_indent = vx_core.Class_string_from_any_indent()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_string_from_any_indent(value, indent, linefeed)
      return output
    }

    func vx_string_from_any_indent(value : vx_core.Type_any, indent : vx_core.Type_int, linefeed : vx_core.Type_boolean) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_string_from_any_indent(value : vx_core.Type_any, indent : vx_core.Type_int, linefeed : vx_core.Type_boolean) -> vx_core.Type_string {
    
    return output
  }

  /**
   * @function string_from_func
   * Function Type returning string with any parameters
   * @return {string}
   * (func string<-func)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_string_from_func = vx_core.Class_string_from_func()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_string_from_func = vx_core.Class_string_from_func()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public Class_any_from_func.IFn fn = null

    public vx_core.Func_string_from_func vx_fn_new(Class_any_from_func.IFn fn) {
      val output : vx_core.Class_string_from_func = vx_core.Class_string_from_func()
      output.fn = fn
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      output = vx_core.f_string_from_func()
      return output
    }

    func vx_string_from_func() -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_string_from_func() -> vx_core.Type_string {
    
    return output
  }

  /**
   * @function string_from_string_find_replace
   * Returns a string with all instances of find replaced by replace.
   * @param  {string} text
   * @param  {string} find
   * @param  {string} replace
   * @return {string}
   * (func string<-string-find-replace)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_string_from_string_find_replace = vx_core.Class_string_from_string_find_replace()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_string_from_string_find_replace = vx_core.Class_string_from_string_find_replace()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_string_from_string_find_replace(text, find, replace)
      return output
    }

    func vx_string_from_string_find_replace(text : vx_core.Type_string, find : vx_core.Type_string, replace : vx_core.Type_string) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_string_from_string_find_replace(text : vx_core.Type_string, find : vx_core.Type_string, replace : vx_core.Type_string) -> vx_core.Type_string {
    
    return output
  }

  /**
   * @function stringlist_from_map
   * Returns a stringlist of keys from any map in entry order.
   * @param  {map-1} map
   * @return {stringlist}
   * (func stringlist<-map)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_stringlist_from_map = vx_core.Class_stringlist_from_map()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_stringlist_from_map = vx_core.Class_stringlist_from_map()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_stringlist_from_map(map)
      return output
    }

    func vx_stringlist_from_map(map : vx_core.Type_map) -> vx_core.Type_stringlist {
      
      return output
    }

  }

  
  

  func static f_stringlist_from_map(map : vx_core.Type_map) -> vx_core.Type_stringlist {
    
    output = vx_core.f_list_from_map_1(
      vx_core.t_stringlist,
      map,
      vx_core.t_any_from_key_value.vx_fn_new(
        
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function switch
   * Returns a value based on a logical switch
   * @param  {any-2} value
   * @param  {thenelselist} thenelselist
   * @return {any-1}
   * (func switch)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_switch = vx_core.Class_switch()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_switch = vx_core.Class_switch()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      
      output = vx_core.f_switch(generic_any_1, value, thenelselist)
      return output
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_switch(generic_any_1 : T, value : U, thenelselist : vx_core.Type_thenelselist) -> T {
      
      return output
    }

  }

  
  

  func static <T  vx_core.Type_any, U  vx_core.Type_any> f_switch(generic_any_1 : T, value : U, thenelselist : vx_core.Type_thenelselist) -> T {
    
    return output
  }

  /**
   * @function then
   * Returns a thenelse struct from a given condition function and value function
   * @param  {boolean<-func} fn-cond
   * @param  {any<-func} fn-any
   * @return {thenelse}
   * (func then)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_then = vx_core.Class_then()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_then = vx_core.Class_then()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      
      output = vx_core.f_then(fn_cond, fn_any)
      return output
    }

    func vx_then(fn_cond : vx_core.Func_boolean_from_func, fn_any : vx_core.Func_any_from_func) -> vx_core.Type_thenelse {
      
      return output
    }

  }

  
  

  func static f_then(fn_cond : vx_core.Func_boolean_from_func, fn_any : vx_core.Func_any_from_func) -> vx_core.Type_thenelse {
    
    output = vx_core.f_new(
      vx_core.t_thenelse,
      vx_core.vx_new(
        vx_core.t_anylist,
        vx_core.vx_new_string(":code"),
        vx_core.vx_new_string(":then"),
        vx_core.vx_new_string(":fn-cond"),
        fn_cond,
        vx_core.vx_new_string(":fn-any"),
        fn_any
      )
    )
    return output
  }

  /**
   * @function traits_from_typedef
   * Return trait list from type
   * @param  {typedef} vtypedef
   * @return {typelist}
   * (func traits<-typedef)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_traits_from_typedef = vx_core.Class_traits_from_typedef()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_traits_from_typedef = vx_core.Class_traits_from_typedef()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_traits_from_typedef(vtypedef)
      return output
    }

    func vx_traits_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_typelist {
      
      return output
    }

  }

  
  

  func static f_traits_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_typelist {
    
    return output
  }

  /**
   * @function type_from_any
   * Gets the Type of a given Value
   * @param  {any-1} value
   * @return {any}
   * (func type<-any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_type_from_any = vx_core.Class_type_from_any()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_type_from_any = vx_core.Class_type_from_any()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_type_from_any(value)
      return output
    }

    func vx_type_from_any(value : vx_core.Type_any) -> vx_core.Type_any {
      
      return output
    }

  }

  
  

  func static f_type_from_any(value : vx_core.Type_any) -> vx_core.Type_any {
    
    return output
  }

  /**
   * @function typedef_from_any
   * Gets the typedef of a given value
   * @param  {any} value
   * @return {typedef}
   * (func typedef<-any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typedef_from_any = vx_core.Class_typedef_from_any()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typedef_from_any = vx_core.Class_typedef_from_any()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_typedef_from_any(value)
      return output
    }

    func vx_typedef_from_any(value : vx_core.Type_any) -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  func static f_typedef_from_any(value : vx_core.Type_any) -> vx_core.Type_typedef {
    
    output = vx_core.f_typedef_from_type(
      vx_core.f_type_from_any(
        value
      )
    )
    return output
  }

  /**
   * @function typedef_from_type
   * Gets the typedef of a given type
   * @param  {any} value
   * @return {typedef}
   * (func typedef<-type)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typedef_from_type = vx_core.Class_typedef_from_type()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typedef_from_type = vx_core.Class_typedef_from_type()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_typedef_from_type(value)
      return output
    }

    func vx_typedef_from_type(value : vx_core.Type_any) -> vx_core.Type_typedef {
      
      return output
    }

  }

  
  

  func static f_typedef_from_type(value : vx_core.Type_any) -> vx_core.Type_typedef {
    
    return output
  }

  /**
   * @function typename_from_any
   * Gets the typename of a given value
   * @param  {any-2} value
   * @return {string}
   * (func typename<-any)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typename_from_any = vx_core.Class_typename_from_any()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typename_from_any = vx_core.Class_typename_from_any()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_typename_from_any(value)
      return output
    }

    func vx_typename_from_any(value : vx_core.Type_any) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_typename_from_any(value : vx_core.Type_any) -> vx_core.Type_string {
    
    output = vx_core.f_typename_from_type(
      vx_core.f_type_from_any(
        value
      )
    )
    return output
  }

  /**
   * @function typename_from_type
   * Get the name of a given type
   * @param  {any} type
   * @return {string}
   * (func typename<-type)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typename_from_type = vx_core.Class_typename_from_type()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typename_from_type = vx_core.Class_typename_from_type()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_typename_from_type(type)
      return output
    }

    func vx_typename_from_type(type : vx_core.Type_any) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_typename_from_type(type : vx_core.Type_any) -> vx_core.Type_string {
    
    output = vx_core.f_typename_from_typedef(
      vx_core.f_typedef_from_type(
        type
      )
    )
    return output
  }

  /**
   * @function typename_from_typedef
   * Get the name of a given type
   * @param  {typedef} vtypedef
   * @return {string}
   * (func typename<-typedef)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typename_from_typedef = vx_core.Class_typename_from_typedef()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typename_from_typedef = vx_core.Class_typename_from_typedef()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_typename_from_typedef(vtypedef)
      return output
    }

    func vx_typename_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_string {
      
      return output
    }

  }

  
  

  func static f_typename_from_typedef(vtypedef : vx_core.Type_typedef) -> vx_core.Type_string {
    
    output = vx_core.f_new(
      vx_core.t_string,
      vx_core.vx_new(
        vx_core.t_anylist,
        vtypedef.pkgname(),
        vx_core.vx_new_string("/"),
        vtypedef.name()
      )
    )
    return output
  }

  /**
   * @function typenames_from_typelist
   * Get the names from a type list
   * @param  {typelist} typelist
   * @return {stringlist}
   * (func typenames<-typelist)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typenames_from_typelist = vx_core.Class_typenames_from_typelist()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_typenames_from_typelist = vx_core.Class_typenames_from_typelist()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    public vx_core.Func_any_from_any vx_fn_new(vx_core.Class_any_from_any.IFn fn) {
      return vx_core.e_any_from_any
    }

    func <T  vx_core.Type_any, U  vx_core.Type_any> vx_any_from_any(generic_any_1 : T, value : U) -> T {
      
      
      
      output = vx_core.f_any_from_any(generic_any_1, outputval)
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_typenames_from_typelist(typelist)
      return output
    }

    func vx_typenames_from_typelist(typelist : vx_core.Type_typelist) -> vx_core.Type_stringlist {
      
      return output
    }

  }

  
  

  func static f_typenames_from_typelist(typelist : vx_core.Type_typelist) -> vx_core.Type_stringlist {
    
    output = vx_core.f_list_from_list_1(
      vx_core.t_stringlist,
      typelist,
      vx_core.t_any_from_any.vx_fn_new(
        
        
        return output_1
      })
    )
    return output
  }

  /**
   * @function user_from_context
   * Returns the current user from context.
   * @return {user}
   * (func user<-context)
   */

    func vx_new(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_user_from_context = vx_core.Class_user_from_context()
      return output
    }

    func vx_copy(vals... : Object) -> vx_core.Type_any {
      val output : vx_core.Class_user_from_context = vx_core.Class_user_from_context()
      return output
    }

    func vx_typedef() -> vx_core.Type_typedef {
      
      return output
    }

    func vx_funcdef() -> vx_core.Type_funcdef {
      
      return output
    }

    func vx_empty() -> vx_core.Type_any {
      
      return output
    }

    func vx_type() -> vx_core.Type_any {
      
      return output
    }

    func vx_repl(arglist : vx_core.Type_anylist) -> vx_core.Type_any {
      
      
      output = vx_core.f_user_from_context(context)
      return output
    }

    func vx_user_from_context(context : vx_core.Type_context) -> vx_core.Type_user {
      
      return output
    }

  }

  
  

  func static f_user_from_context(context : vx_core.Type_context) -> vx_core.Type_user {
    
    output = vx_core.f_session_from_context(
      context
    ).user()
    return output
  }


    Const_false.const_new(c_false)
    Const_global.const_new(c_global)
    Const_infinity.const_new(c_infinity)
    Const_mempool_active.const_new(c_mempool_active)
    Const_msg_error.const_new(c_msg_error)
    Const_msg_info.const_new(c_msg_info)
    Const_msg_severe.const_new(c_msg_severe)
    Const_msg_warning.const_new(c_msg_warning)
    Const_neginfinity.const_new(c_neginfinity)
    Const_newline.const_new(c_newline)
    Const_notanumber.const_new(c_notanumber)
    Const_nothing.const_new(c_nothing)
    Const_path_test_resources.const_new(c_path_test_resources)
    Const_quote.const_new(c_quote)
    Const_true.const_new(c_true)
    
    
    
    maptype.put("any", vx_core.t_any)
    maptype.put("any-async<-func", vx_core.t_any_async_from_func)
    maptype.put("any<-anylist", vx_core.t_any_from_anylist)
    maptype.put("anylist", vx_core.t_anylist)
    maptype.put("anymap", vx_core.t_anymap)
    maptype.put("anytype", vx_core.t_anytype)
    maptype.put("arg", vx_core.t_arg)
    maptype.put("arglist", vx_core.t_arglist)
    maptype.put("argmap", vx_core.t_argmap)
    maptype.put("boolean", vx_core.t_boolean)
    maptype.put("booleanlist", vx_core.t_booleanlist)
    maptype.put("collection", vx_core.t_collection)
    maptype.put("compilelanguages", vx_core.t_compilelanguages)
    maptype.put("connect", vx_core.t_connect)
    maptype.put("connectlist", vx_core.t_connectlist)
    maptype.put("connectmap", vx_core.t_connectmap)
    maptype.put("const", vx_core.t_const)
    maptype.put("constdef", vx_core.t_constdef)
    maptype.put("constlist", vx_core.t_constlist)
    maptype.put("constmap", vx_core.t_constmap)
    maptype.put("context", vx_core.t_context)
    maptype.put("date", vx_core.t_date)
    maptype.put("decimal", vx_core.t_decimal)
    maptype.put("error", vx_core.t_error)
    maptype.put("float", vx_core.t_float)
    maptype.put("func", vx_core.t_func)
    maptype.put("funcdef", vx_core.t_funcdef)
    maptype.put("funclist", vx_core.t_funclist)
    maptype.put("funcmap", vx_core.t_funcmap)
    maptype.put("int", vx_core.t_int)
    maptype.put("intlist", vx_core.t_intlist)
    maptype.put("intmap", vx_core.t_intmap)
    maptype.put("list", vx_core.t_list)
    maptype.put("listtype", vx_core.t_listtype)
    maptype.put("locale", vx_core.t_locale)
    maptype.put("map", vx_core.t_map)
    maptype.put("maptype", vx_core.t_maptype)
    maptype.put("mempool", vx_core.t_mempool)
    maptype.put("msg", vx_core.t_msg)
    maptype.put("msgblock", vx_core.t_msgblock)
    maptype.put("msgblocklist", vx_core.t_msgblocklist)
    maptype.put("msglist", vx_core.t_msglist)
    maptype.put("none", vx_core.t_none)
    maptype.put("notype", vx_core.t_notype)
    maptype.put("number", vx_core.t_number)
    maptype.put("numberlist", vx_core.t_numberlist)
    maptype.put("numbermap", vx_core.t_numbermap)
    maptype.put("package", vx_core.t_package)
    maptype.put("packagemap", vx_core.t_packagemap)
    maptype.put("permission", vx_core.t_permission)
    maptype.put("permissionlist", vx_core.t_permissionlist)
    maptype.put("permissionmap", vx_core.t_permissionmap)
    maptype.put("project", vx_core.t_project)
    maptype.put("security", vx_core.t_security)
    maptype.put("session", vx_core.t_session)
    maptype.put("setting", vx_core.t_setting)
    maptype.put("state", vx_core.t_state)
    maptype.put("statelistener", vx_core.t_statelistener)
    maptype.put("statelistenermap", vx_core.t_statelistenermap)
    maptype.put("string", vx_core.t_string)
    maptype.put("stringlist", vx_core.t_stringlist)
    maptype.put("stringlistlist", vx_core.t_stringlistlist)
    maptype.put("stringmap", vx_core.t_stringmap)
    maptype.put("stringmutablemap", vx_core.t_stringmutablemap)
    maptype.put("struct", vx_core.t_struct)
    maptype.put("thenelse", vx_core.t_thenelse)
    maptype.put("thenelselist", vx_core.t_thenelselist)
    maptype.put("translation", vx_core.t_translation)
    maptype.put("translationlist", vx_core.t_translationlist)
    maptype.put("translationmap", vx_core.t_translationmap)
    maptype.put("type", vx_core.t_type)
    maptype.put("typedef", vx_core.t_typedef)
    maptype.put("typelist", vx_core.t_typelist)
    maptype.put("typemap", vx_core.t_typemap)
    maptype.put("user", vx_core.t_user)
    maptype.put("value", vx_core.t_value)
    mapconst.put("false", vx_core.c_false)
    mapconst.put("global", vx_core.c_global)
    mapconst.put("infinity", vx_core.c_infinity)
    mapconst.put("mempool-active", vx_core.c_mempool_active)
    mapconst.put("msg-error", vx_core.c_msg_error)
    mapconst.put("msg-info", vx_core.c_msg_info)
    mapconst.put("msg-severe", vx_core.c_msg_severe)
    mapconst.put("msg-warning", vx_core.c_msg_warning)
    mapconst.put("neginfinity", vx_core.c_neginfinity)
    mapconst.put("newline", vx_core.c_newline)
    mapconst.put("notanumber", vx_core.c_notanumber)
    mapconst.put("nothing", vx_core.c_nothing)
    mapconst.put("path-test-resources", vx_core.c_path_test_resources)
    mapconst.put("quote", vx_core.c_quote)
    mapconst.put("true", vx_core.c_true)
    mapfunc.put("!", vx_core.t_not)
    mapfunc.put("!-empty", vx_core.t_notempty)
    mapfunc.put("!-empty_1", vx_core.t_notempty_1)
    mapfunc.put("!=", vx_core.t_ne)
    mapfunc.put("!==", vx_core.t_neqeq)
    mapfunc.put("*", vx_core.t_multiply)
    mapfunc.put("*_1", vx_core.t_multiply_1)
    mapfunc.put("*_2", vx_core.t_multiply_2)
    mapfunc.put("*_3", vx_core.t_multiply_3)
    mapfunc.put("+", vx_core.t_plus)
    mapfunc.put("+_1", vx_core.t_plus_1)
    mapfunc.put("+_2", vx_core.t_plus_2)
    mapfunc.put("+_3", vx_core.t_plus_3)
    mapfunc.put("+1", vx_core.t_plus1)
    mapfunc.put("-", vx_core.t_minus)
    mapfunc.put("-_1", vx_core.t_minus_1)
    mapfunc.put("-_2", vx_core.t_minus_2)
    mapfunc.put("-_3", vx_core.t_minus_3)
    mapfunc.put("-1", vx_core.t_minus1)
    mapfunc.put(".", vx_core.t_dotmethod)
    mapfunc.put("/", vx_core.t_divide)
    mapfunc.put("<", vx_core.t_lt)
    mapfunc.put("<_1", vx_core.t_lt_1)
    mapfunc.put("<-", vx_core.t_chainfirst)
    mapfunc.put("<<-", vx_core.t_chainlast)
    mapfunc.put("<=", vx_core.t_le)
    mapfunc.put("<=_1", vx_core.t_le_1)
    mapfunc.put("=", vx_core.t_eq)
    mapfunc.put("=_1", vx_core.t_eq_1)
    mapfunc.put("==", vx_core.t_eqeq)
    mapfunc.put(">", vx_core.t_gt)
    mapfunc.put(">_1", vx_core.t_gt_1)
    mapfunc.put(">=", vx_core.t_ge)
    mapfunc.put(">=_1", vx_core.t_ge_1)
    mapfunc.put("allowfuncs<-security", vx_core.t_allowfuncs_from_security)
    mapfunc.put("allowtypenames<-typedef", vx_core.t_allowtypenames_from_typedef)
    mapfunc.put("allowtypes<-typedef", vx_core.t_allowtypes_from_typedef)
    mapfunc.put("and", vx_core.t_and)
    mapfunc.put("and_1", vx_core.t_and_1)
    mapfunc.put("any<-any", vx_core.t_any_from_any)
    mapfunc.put("any<-any-async", vx_core.t_any_from_any_async)
    mapfunc.put("any<-any-context", vx_core.t_any_from_any_context)
    mapfunc.put("any<-any-context-async", vx_core.t_any_from_any_context_async)
    mapfunc.put("any<-any-key-value", vx_core.t_any_from_any_key_value)
    mapfunc.put("any<-func", vx_core.t_any_from_func)
    mapfunc.put("any<-func-async", vx_core.t_any_from_func_async)
    mapfunc.put("any<-int", vx_core.t_any_from_int)
    mapfunc.put("any<-int-any", vx_core.t_any_from_int_any)
    mapfunc.put("any<-key-value", vx_core.t_any_from_key_value)
    mapfunc.put("any<-key-value-async", vx_core.t_any_from_key_value_async)
    mapfunc.put("any<-list", vx_core.t_any_from_list)
    mapfunc.put("any<-list-start-reduce", vx_core.t_any_from_list_start_reduce)
    mapfunc.put("any<-list-start-reduce-next", vx_core.t_any_from_list_start_reduce_next)
    mapfunc.put("any<-map", vx_core.t_any_from_map)
    mapfunc.put("any<-map-start-reduce", vx_core.t_any_from_map_start_reduce)
    mapfunc.put("any<-none", vx_core.t_any_from_none)
    mapfunc.put("any<-none-async", vx_core.t_any_from_none_async)
    mapfunc.put("any<-reduce", vx_core.t_any_from_reduce)
    mapfunc.put("any<-reduce-async", vx_core.t_any_from_reduce_async)
    mapfunc.put("any<-reduce-next", vx_core.t_any_from_reduce_next)
    mapfunc.put("any<-reduce-next-async", vx_core.t_any_from_reduce_next_async)
    mapfunc.put("any<-struct", vx_core.t_any_from_struct)
    mapfunc.put("async", vx_core.t_async)
    mapfunc.put("boolean-permission<-func", vx_core.t_boolean_permission_from_func)
    mapfunc.put("boolean-write<-map-name-value", vx_core.t_boolean_write_from_map_name_value)
    mapfunc.put("boolean<-any", vx_core.t_boolean_from_any)
    mapfunc.put("boolean<-func", vx_core.t_boolean_from_func)
    mapfunc.put("boolean<-none", vx_core.t_boolean_from_none)
    mapfunc.put("case", vx_core.t_case)
    mapfunc.put("case_1", vx_core.t_case_1)
    mapfunc.put("compare", vx_core.t_compare)
    mapfunc.put("contains", vx_core.t_contains)
    mapfunc.put("contains_1", vx_core.t_contains_1)
    mapfunc.put("context-main", vx_core.t_context_main)
    mapfunc.put("copy", vx_core.t_copy)
    mapfunc.put("else", vx_core.t_else)
    mapfunc.put("empty", vx_core.t_empty)
    mapfunc.put("extends<-any", vx_core.t_extends_from_any)
    mapfunc.put("extends<-typedef", vx_core.t_extends_from_typedef)
    mapfunc.put("first<-list", vx_core.t_first_from_list)
    mapfunc.put("first<-list-any<-any", vx_core.t_first_from_list_any_from_any)
    mapfunc.put("float<-string", vx_core.t_float_from_string)
    mapfunc.put("fn", vx_core.t_fn)
    mapfunc.put("funcdef<-func", vx_core.t_funcdef_from_func)
    mapfunc.put("funcname<-funcdef", vx_core.t_funcname_from_funcdef)
    mapfunc.put("if", vx_core.t_if)
    mapfunc.put("if_1", vx_core.t_if_1)
    mapfunc.put("if_2", vx_core.t_if_2)
    mapfunc.put("int<-func", vx_core.t_int_from_func)
    mapfunc.put("int<-string", vx_core.t_int_from_string)
    mapfunc.put("is-empty", vx_core.t_is_empty)
    mapfunc.put("is-empty_1", vx_core.t_is_empty_1)
    mapfunc.put("is-endswith", vx_core.t_is_endswith)
    mapfunc.put("is-float", vx_core.t_is_float)
    mapfunc.put("is-func", vx_core.t_is_func)
    mapfunc.put("is-int", vx_core.t_is_int)
    mapfunc.put("is-number", vx_core.t_is_number)
    mapfunc.put("is-pass<-permission", vx_core.t_is_pass_from_permission)
    mapfunc.put("last<-list", vx_core.t_last_from_list)
    mapfunc.put("length", vx_core.t_length)
    mapfunc.put("length_1", vx_core.t_length_1)
    mapfunc.put("length_2", vx_core.t_length_2)
    mapfunc.put("let", vx_core.t_let)
    mapfunc.put("let-async", vx_core.t_let_async)
    mapfunc.put("list-join<-list", vx_core.t_list_join_from_list)
    mapfunc.put("list-join<-list_1", vx_core.t_list_join_from_list_1)
    mapfunc.put("list<-list", vx_core.t_list_from_list)
    mapfunc.put("list<-list_1", vx_core.t_list_from_list_1)
    mapfunc.put("list<-list-async", vx_core.t_list_from_list_async)
    mapfunc.put("list<-list-intany", vx_core.t_list_from_list_intany)
    mapfunc.put("list<-map", vx_core.t_list_from_map)
    mapfunc.put("list<-map_1", vx_core.t_list_from_map_1)
    mapfunc.put("list<-map-async", vx_core.t_list_from_map_async)
    mapfunc.put("list<-type", vx_core.t_list_from_type)
    mapfunc.put("log", vx_core.t_log)
    mapfunc.put("log_1", vx_core.t_log_1)
    mapfunc.put("main", vx_core.t_main)
    mapfunc.put("map<-list", vx_core.t_map_from_list)
    mapfunc.put("map<-map", vx_core.t_map_from_map)
    mapfunc.put("map<-map_1", vx_core.t_map_from_map_1)
    mapfunc.put("msg<-error", vx_core.t_msg_from_error)
    mapfunc.put("msg<-error_1", vx_core.t_msg_from_error_1)
    mapfunc.put("msg<-error_2", vx_core.t_msg_from_error_2)
    mapfunc.put("msg<-warning", vx_core.t_msg_from_warning)
    mapfunc.put("msgblock<-msgblock-msg", vx_core.t_msgblock_from_msgblock_msg)
    mapfunc.put("msgblock<-msgblock-msgblock", vx_core.t_msgblock_from_msgblock_msgblock)
    mapfunc.put("name<-typedef", vx_core.t_name_from_typedef)
    mapfunc.put("native", vx_core.t_native)
    mapfunc.put("native<-any", vx_core.t_native_from_any)
    mapfunc.put("new", vx_core.t_new)
    mapfunc.put("number<-func", vx_core.t_number_from_func)
    mapfunc.put("or", vx_core.t_or)
    mapfunc.put("or_1", vx_core.t_or_1)
    mapfunc.put("package-global<-name", vx_core.t_package_global_from_name)
    mapfunc.put("packagename<-typedef", vx_core.t_packagename_from_typedef)
    mapfunc.put("path<-context-path", vx_core.t_path_from_context_path)
    mapfunc.put("path<-setting-path", vx_core.t_path_from_setting_path)
    mapfunc.put("permission<-id-context", vx_core.t_permission_from_id_context)
    mapfunc.put("properties<-typedef", vx_core.t_properties_from_typedef)
    mapfunc.put("proplast<-typedef", vx_core.t_proplast_from_typedef)
    mapfunc.put("resolve", vx_core.t_resolve)
    mapfunc.put("resolve_1", vx_core.t_resolve_1)
    mapfunc.put("resolve-async", vx_core.t_resolve_async)
    mapfunc.put("resolve-first", vx_core.t_resolve_first)
    mapfunc.put("resolve-list", vx_core.t_resolve_list)
    mapfunc.put("security<-context", vx_core.t_security_from_context)
    mapfunc.put("security<-user", vx_core.t_security_from_user)
    mapfunc.put("session<-context", vx_core.t_session_from_context)
    mapfunc.put("setting<-context", vx_core.t_setting_from_context)
    mapfunc.put("string-repeat", vx_core.t_string_repeat)
    mapfunc.put("string<-any", vx_core.t_string_from_any)
    mapfunc.put("string<-any-indent", vx_core.t_string_from_any_indent)
    mapfunc.put("string<-func", vx_core.t_string_from_func)
    mapfunc.put("string<-string-find-replace", vx_core.t_string_from_string_find_replace)
    mapfunc.put("stringlist<-map", vx_core.t_stringlist_from_map)
    mapfunc.put("switch", vx_core.t_switch)
    mapfunc.put("then", vx_core.t_then)
    mapfunc.put("traits<-typedef", vx_core.t_traits_from_typedef)
    mapfunc.put("type<-any", vx_core.t_type_from_any)
    mapfunc.put("typedef<-any", vx_core.t_typedef_from_any)
    mapfunc.put("typedef<-type", vx_core.t_typedef_from_type)
    mapfunc.put("typename<-any", vx_core.t_typename_from_any)
    mapfunc.put("typename<-type", vx_core.t_typename_from_type)
    mapfunc.put("typename<-typedef", vx_core.t_typename_from_typedef)
    mapfunc.put("typenames<-typelist", vx_core.t_typenames_from_typelist)
    mapfunc.put("user<-context", vx_core.t_user_from_context)
    vx_core.vx_global_package_set("vx/core", maptype, mapconst, mapfunc)