package com.vxlisp.vx.data;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import com.vxlisp.vx.*;

public final class Xml {


  /**
   * type: xml
   * (type xml)
   */
  public interface Type_xml extends Core.Type_struct {
    public Core.Type_string tag();
    public Core.Type_string text();
    public Core.Type_string prop();
    public Core.Type_stringmap propmap();
    public Xml.Type_xmllist children();
    public Xml.Type_xml parent();
  }

  public static class Class_xml extends Core.Class_base implements Type_xml {

    public Core.Type_string vx_p_tag = null;

    @Override
    public Core.Type_string tag() {
      Core.Type_string output = Core.e_string;
      Core.Type_string testnull = vx_p_tag;
      if (testnull != null) {
        output = testnull;
      }
      return output;
    }

    public Core.Type_string vx_p_text = null;

    @Override
    public Core.Type_string text() {
      Core.Type_string output = Core.e_string;
      Core.Type_string testnull = vx_p_text;
      if (testnull != null) {
        output = testnull;
      }
      return output;
    }

    public Core.Type_string vx_p_prop = null;

    @Override
    public Core.Type_string prop() {
      Core.Type_string output = Core.e_string;
      Core.Type_string testnull = vx_p_prop;
      if (testnull != null) {
        output = testnull;
      }
      return output;
    }

    public Core.Type_stringmap vx_p_propmap = null;

    @Override
    public Core.Type_stringmap propmap() {
      Core.Type_stringmap output = Core.e_stringmap;
      Core.Type_stringmap testnull = vx_p_propmap;
      if (testnull != null) {
        output = testnull;
      }
      return output;
    }

    public Xml.Type_xmllist vx_p_children = null;

    @Override
    public Xml.Type_xmllist children() {
      Xml.Type_xmllist output = Xml.e_xmllist;
      Xml.Type_xmllist testnull = vx_p_children;
      if (testnull != null) {
        output = testnull;
      }
      return output;
    }

    public Xml.Type_xml vx_p_parent = null;

    @Override
    public Xml.Type_xml parent() {
      Xml.Type_xml output = Xml.e_xml;
      Xml.Type_xml testnull = vx_p_parent;
      if (testnull != null) {
        output = testnull;
      }
      return output;
    }

    @Override
    public Core.Type_any vx_any(final Core.Type_string key) {
      Core.Type_any output = Core.e_any;
      String skey = key.vx_string();
      if (false) {
      } else if ((skey.equals(":tag"))) {
        output = this.tag();
      } else if ((skey.equals(":text"))) {
        output = this.text();
      } else if ((skey.equals(":prop"))) {
        output = this.prop();
      } else if ((skey.equals(":propmap"))) {
        output = this.propmap();
      } else if ((skey.equals(":children"))) {
        output = this.children();
      } else if ((skey.equals(":parent"))) {
        output = this.parent();
      }
      return output;
    }

    @Override
    public Map<String, Core.Type_any> vx_map() {
      Map<String, Core.Type_any> map = new LinkedHashMap<String, Core.Type_any>();
      map.put(":tag", this.tag());
      map.put(":text", this.text());
      map.put(":prop", this.prop());
      map.put(":propmap", this.propmap());
      map.put(":children", this.children());
      map.put(":parent", this.parent());
      Map<String, Core.Type_any> output = Core.immutablemap(map);
      return output;
    }

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Type_xml output = Core.vx_copy(Xml.e_xml, vals);
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Type_xml output = this;
      boolean ischanged = false;
      Xml.Class_xml value = this;
      Core.Type_msgblock msgblock = Core.vx_msgblock_from_copy_arrayval(value, vals);
      if (this.vx_constdef() != Core.e_constdef) {
        ischanged = true;
      }
      Core.Type_string vx_p_tag = value.tag();
      Core.Type_string vx_p_text = value.text();
      Core.Type_string vx_p_prop = value.prop();
      Core.Type_stringmap vx_p_propmap = value.propmap();
      Xml.Type_xmllist vx_p_children = value.children();
      Xml.Type_xml vx_p_parent = value.parent();
      List<String> validkeys = new ArrayList<String>();
      validkeys.add(":tag");
      validkeys.add(":text");
      validkeys.add(":prop");
      validkeys.add(":propmap");
      validkeys.add(":children");
      validkeys.add(":parent");
      String key = "";
      Core.Type_msg msg = Core.e_msg;
      Core.Type_any msgval = Core.e_any;
      for (Object valsub : vals) {
        if (valsub instanceof Core.Type_msgblock) {
          msgblock = Core.vx_copy(msgblock, valsub);
        } else if (valsub instanceof Core.Type_msg) {
          msgblock = Core.vx_copy(msgblock, valsub);
        } else if (key.equals("")) {
          boolean istestkey = false;
          String testkey = "";
          if (false) {
          } else if (valsub instanceof Core.Type_string) {
            Core.Type_string valstr = (Core.Type_string)valsub;
            testkey = valstr.vx_string();
            istestkey = true;
          } else if (valsub instanceof String) {
            String sval = (String)valsub;
            testkey = sval;
            istestkey = true;
          } else {
            if (false) {
            } else if (valsub instanceof Core.Type_any) {
              Core.Type_any valmsg = (Core.Type_any)valsub;
              msgval = valmsg;
            } else {
              msgval = Core.vx_new_string(valsub.toString());
            }
            msg = Core.vx_msg_from_error("vx/data/xml/xml", ":invalidkeytype", msgval);
            msgblock = Core.vx_copy(msgblock, msg);
          }
          if (istestkey) {
            if (!testkey.startsWith(":")) {
              testkey = ":" + testkey;
            }
            boolean isvalidkey = validkeys.contains(testkey);
            if (isvalidkey) {
              key = testkey;
            } else {
              msgval = Core.vx_new_string(testkey);
              msg = Core.vx_msg_from_error("vx/data/xml/xml", ":invalidkey", msgval);
              msgblock = Core.vx_copy(msgblock, msg);
            }
          }
        } else {
          if (false) {
          } else if ((key.equals(":tag"))) {
            if (valsub == vx_p_tag) {
            } else if (valsub instanceof Core.Type_string) {
              Core.Type_string valtag = (Core.Type_string)valsub;
              ischanged = true;
              vx_p_tag = valtag;
            } else if (valsub instanceof String) {
              ischanged = true;
              vx_p_tag = Core.vx_new(Core.t_string, valsub);
            } else {
              if (false) {
              } else if (valsub instanceof Core.Type_any) {
                Core.Type_any valinvalid = (Core.Type_any)valsub;
                msgval = valinvalid;
              } else {
                msgval = Core.vx_new_string(valsub.toString());
              }
              Map<String, Core.Type_any> mapany = new LinkedHashMap<String, Core.Type_any>();
              mapany.put("key", Core.vx_new_string("tag"));
              mapany.put("value", msgval);
              Core.Type_map msgmap = Core.t_anymap.vx_new_from_map(mapany);
              msg = Core.vx_msg_from_error("vx/data/xml/xml", ":invalidvalue", msgmap);
              msgblock = Core.vx_copy(msgblock, msg);
            }
          } else if ((key.equals(":text"))) {
            if (valsub == vx_p_text) {
            } else if (valsub instanceof Core.Type_string) {
              Core.Type_string valtext = (Core.Type_string)valsub;
              ischanged = true;
              vx_p_text = valtext;
            } else if (valsub instanceof String) {
              ischanged = true;
              vx_p_text = Core.vx_new(Core.t_string, valsub);
            } else {
              if (false) {
              } else if (valsub instanceof Core.Type_any) {
                Core.Type_any valinvalid = (Core.Type_any)valsub;
                msgval = valinvalid;
              } else {
                msgval = Core.vx_new_string(valsub.toString());
              }
              Map<String, Core.Type_any> mapany = new LinkedHashMap<String, Core.Type_any>();
              mapany.put("key", Core.vx_new_string("text"));
              mapany.put("value", msgval);
              Core.Type_map msgmap = Core.t_anymap.vx_new_from_map(mapany);
              msg = Core.vx_msg_from_error("vx/data/xml/xml", ":invalidvalue", msgmap);
              msgblock = Core.vx_copy(msgblock, msg);
            }
          } else if ((key.equals(":prop"))) {
            if (valsub == vx_p_prop) {
            } else if (valsub instanceof Core.Type_string) {
              Core.Type_string valprop = (Core.Type_string)valsub;
              ischanged = true;
              vx_p_prop = valprop;
            } else if (valsub instanceof String) {
              ischanged = true;
              vx_p_prop = Core.vx_new(Core.t_string, valsub);
            } else {
              if (false) {
              } else if (valsub instanceof Core.Type_any) {
                Core.Type_any valinvalid = (Core.Type_any)valsub;
                msgval = valinvalid;
              } else {
                msgval = Core.vx_new_string(valsub.toString());
              }
              Map<String, Core.Type_any> mapany = new LinkedHashMap<String, Core.Type_any>();
              mapany.put("key", Core.vx_new_string("prop"));
              mapany.put("value", msgval);
              Core.Type_map msgmap = Core.t_anymap.vx_new_from_map(mapany);
              msg = Core.vx_msg_from_error("vx/data/xml/xml", ":invalidvalue", msgmap);
              msgblock = Core.vx_copy(msgblock, msg);
            }
          } else if ((key.equals(":propmap"))) {
            if (valsub == vx_p_propmap) {
            } else if (valsub instanceof Core.Type_stringmap) {
              Core.Type_stringmap valpropmap = (Core.Type_stringmap)valsub;
              ischanged = true;
              vx_p_propmap = valpropmap;
            } else {
              if (false) {
              } else if (valsub instanceof Core.Type_any) {
                Core.Type_any valinvalid = (Core.Type_any)valsub;
                msgval = valinvalid;
              } else {
                msgval = Core.vx_new_string(valsub.toString());
              }
              Map<String, Core.Type_any> mapany = new LinkedHashMap<String, Core.Type_any>();
              mapany.put("key", Core.vx_new_string("propmap"));
              mapany.put("value", msgval);
              Core.Type_map msgmap = Core.t_anymap.vx_new_from_map(mapany);
              msg = Core.vx_msg_from_error("vx/data/xml/xml", ":invalidvalue", msgmap);
              msgblock = Core.vx_copy(msgblock, msg);
            }
          } else if ((key.equals(":children"))) {
            if (valsub == vx_p_children) {
            } else if (valsub instanceof Xml.Type_xmllist) {
              Xml.Type_xmllist valchildren = (Xml.Type_xmllist)valsub;
              ischanged = true;
              vx_p_children = valchildren;
            } else {
              if (false) {
              } else if (valsub instanceof Core.Type_any) {
                Core.Type_any valinvalid = (Core.Type_any)valsub;
                msgval = valinvalid;
              } else {
                msgval = Core.vx_new_string(valsub.toString());
              }
              Map<String, Core.Type_any> mapany = new LinkedHashMap<String, Core.Type_any>();
              mapany.put("key", Core.vx_new_string("children"));
              mapany.put("value", msgval);
              Core.Type_map msgmap = Core.t_anymap.vx_new_from_map(mapany);
              msg = Core.vx_msg_from_error("vx/data/xml/xml", ":invalidvalue", msgmap);
              msgblock = Core.vx_copy(msgblock, msg);
            }
          } else if ((key.equals(":parent"))) {
            if (valsub == vx_p_parent) {
            } else if (valsub instanceof Xml.Type_xml) {
              Xml.Type_xml valparent = (Xml.Type_xml)valsub;
              ischanged = true;
              vx_p_parent = valparent;
            } else {
              if (false) {
              } else if (valsub instanceof Core.Type_any) {
                Core.Type_any valinvalid = (Core.Type_any)valsub;
                msgval = valinvalid;
              } else {
                msgval = Core.vx_new_string(valsub.toString());
              }
              Map<String, Core.Type_any> mapany = new LinkedHashMap<String, Core.Type_any>();
              mapany.put("key", Core.vx_new_string("parent"));
              mapany.put("value", msgval);
              Core.Type_map msgmap = Core.t_anymap.vx_new_from_map(mapany);
              msg = Core.vx_msg_from_error("vx/data/xml/xml", ":invalidvalue", msgmap);
              msgblock = Core.vx_copy(msgblock, msg);
            }
          } else {
            msgval = Core.vx_new_string(key);
            msg = Core.vx_msg_from_error("vx/data/xml/xml", ":invalidkey", msgval);
            msgblock = Core.vx_copy(msgblock, msg);
          }
          key = "";
        }
      }
      if (ischanged || (msgblock != Core.e_msgblock)) {
        Xml.Class_xml work = new Xml.Class_xml();
        work.vx_p_tag = vx_p_tag;
        work.vx_p_text = vx_p_text;
        work.vx_p_prop = vx_p_prop;
        work.vx_p_propmap = vx_p_propmap;
        work.vx_p_children = vx_p_children;
        work.vx_p_parent = vx_p_parent;
        if (msgblock != Core.e_msgblock) {
          work.vxmsgblock = msgblock;
        }
        output = work;
      }
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml;
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.typedef_new(
        "vx/data/xml", // pkgname
        "xml", // name
        ":struct", // extends
        Core.e_typelist, // traits
        Core.e_typelist, // allowtypes
        Core.e_typelist, // disallowtypes
        Core.e_funclist, // allowfuncs
        Core.e_funclist, // disallowfuncs
        Core.e_anylist, // allowvalues
        Core.e_anylist, // disallowvalues
        Core.e_argmap // properties
      );
      return output;
    }

  }

  public static final Xml.Type_xml e_xml = new Xml.Class_xml();
  public static final Xml.Type_xml t_xml = new Xml.Class_xml();

  /**
   * type: xmllist
   * (type xmllist)
   */
  public interface Type_xmllist extends Core.Type_list {
    public List<Xml.Type_xml> vx_listxml();
    public Xml.Type_xml vx_xml(final Core.Type_int index);
  }

  public static class Class_xmllist extends Core.Class_base implements Type_xmllist {

    public List<Xml.Type_xml> vx_p_list = Core.immutablelist(
      new ArrayList<Xml.Type_xml>()
    );

    @Override
    public List<Core.Type_any> vx_list() {
      List<Core.Type_any> output = Core.immutablelist(
        new ArrayList<Core.Type_any>(this.vx_p_list)
      );
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml(final Core.Type_int index) {
      Xml.Type_xml output = Xml.e_xml;
      Xml.Class_xmllist list = this;
      int iindex = index.vx_int();
      List<Xml.Type_xml> listval = list.vx_p_list;
      if (iindex < listval.size()) {
        output = listval.get(iindex);
      }
      return output;
    }

    @Override
    public List<Xml.Type_xml> vx_listxml() {
      List<Xml.Type_xml> output = this.vx_p_list;
      return output;
    }

    @Override
    public Core.Type_any vx_any(final Core.Type_int index) {
      Xml.Type_xml output = this.vx_xml(index);
      return output;
    }

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Type_xmllist output = Core.vx_copy(Xml.e_xmllist, vals);
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Type_xmllist output = this;
      boolean ischanged = false;
      Xml.Class_xmllist value = this;
      Core.Type_msgblock msgblock = Core.vx_msgblock_from_copy_arrayval(value, vals);
      if (this.vx_constdef() != Core.e_constdef) {
        ischanged = true;
      }
      List<Xml.Type_xml> listval = new ArrayList<Xml.Type_xml>(value.vx_listxml());
      Core.Type_msg msg;
      for (Object valsub : vals) {
        if (valsub instanceof Core.Type_msgblock) {
          msgblock = Core.vx_copy(msgblock, valsub);
        } else if (valsub instanceof Core.Type_msg) {
          msgblock = Core.vx_copy(msgblock, valsub);
        } else if (valsub instanceof Xml.Type_xmllist) {
          Xml.Type_xmllist multi = (Xml.Type_xmllist)valsub;
          ischanged = true;
          listval.addAll(multi.vx_listxml());
        } else if (valsub instanceof Xml.Type_xml) {
          Xml.Type_xml allowsub = (Xml.Type_xml)valsub;
          ischanged = true;
          listval.add(allowsub);
        } else if (valsub instanceof Xml.Type_xml) {
          ischanged = true;
          listval.add((Xml.Type_xml)valsub);
        } else if (valsub instanceof List<?>) {
          List<?> listunknown = (List<?>)valsub;
          for (Object item : listunknown) {
            if (false) {
            } else if (item instanceof Xml.Type_xml) {
              Xml.Type_xml valitem = (Xml.Type_xml)item;
              ischanged = true;
              listval.add(valitem);
            }
          }
        } else if (valsub instanceof Core.Type_any) {
          Core.Type_any anyinvalid = (Core.Type_any)valsub;
          msg = Core.vx_msg_from_error("vx/data/xml/xmllist", ":invalidtype", anyinvalid);
          msgblock = Core.vx_copy(msgblock, msg);
        } else {
          msg = Core.vx_msg_from_error("vx/data/xml/xmllist", ":invalidtype", Core.vx_new_string(valsub.toString()));
          msgblock = Core.vx_copy(msgblock, msg);
        }
      }
      if (ischanged || (msgblock != Core.e_msgblock)) {
        Xml.Class_xmllist work = new Xml.Class_xmllist();
        work.vx_p_list = Core.immutablelist(listval);
        if (msgblock != Core.e_msgblock) {
          work.vxmsgblock = msgblock;
        }
        output = work;
      }
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xmllist;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xmllist;
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.typedef_new(
        "vx/data/xml", // pkgname
        "xmllist", // name
        ":list", // extends
        Core.e_typelist, // traits
        Core.vx_new(Core.t_typelist, Xml.t_xml), // allowtypes
        Core.e_typelist, // disallowtypes
        Core.e_funclist, // allowfuncs
        Core.e_funclist, // disallowfuncs
        Core.e_anylist, // allowvalues
        Core.e_anylist, // disallowvalues
        Core.e_argmap // properties
      );
      return output;
    }

  }

  public static final Xml.Type_xmllist e_xmllist = new Xml.Class_xmllist();
  public static final Xml.Type_xmllist t_xmllist = new Xml.Class_xmllist();

  /**
   * type: xmlpropmap
   * (type xmlpropmap)
   */
  public interface Type_xmlpropmap extends Core.Type_map {
    public Map<String, Core.Type_string> vx_mapstring();
    public Core.Type_string vx_string(final Core.Type_string key);
  }

  public static class Class_xmlpropmap extends Core.Class_base implements Type_xmlpropmap {

    public Map<String, Core.Type_string> vx_p_map = Core.immutablemap(new LinkedHashMap<String, Core.Type_string>());

    @Override
    public Map<String, Core.Type_any> vx_map() {
      Map<String, Core.Type_any> map = new LinkedHashMap<String, Core.Type_any>(this.vx_p_map);
      return Core.immutablemap(map);
    }

    @Override
    public Core.Type_boolean vx_set(final Core.Type_string name, final Core.Type_any value) {
      Core.Type_boolean output = Core.c_false;
      if (false) {
      } else if (value instanceof Core.Type_string) {
        Core.Type_string castval = (Core.Type_string)value;
        String key = name.vx_string();
        if (key.startsWith(":")) {
          key = key.substring(1);
        }
        Map<String, Core.Type_string> map = new LinkedHashMap<String, Core.Type_string>(this.vx_p_map);
        if (castval == Core.e_string) {
          map.remove(key);
        } else {
          map.put(key, castval);
        }
        this.vx_p_map = Core.immutablemap(map);
        output = Core.c_true;
      }
      return output;
    }

    @Override
    public Core.Type_string vx_string(final Core.Type_string key) {
      Core.Type_string output = Core.e_string;
      Xml.Class_xmlpropmap map = this;
      String skey = key.vx_string();
      Map<String, Core.Type_string> mapval = map.vx_p_map;
      output = mapval.getOrDefault(skey, Core.e_string);
      return output;
    }

    @Override
    public Map<String, Core.Type_string> vx_mapstring() {
      Map<String, Core.Type_string> output = this.vx_p_map;
      return output;
    }

    @Override
    public Core.Type_any vx_any(final Core.Type_string key) {
      Core.Type_any output = this.vx_string(key);
      return output;
    }


    @Override
    public Core.Type_map vx_new_from_map(final Map<String, Core.Type_any> mapval) {
      Xml.Class_xmlpropmap output = new Xml.Class_xmlpropmap();
      Core.Type_msgblock msgblock = Core.e_msgblock;
      Map<String, Core.Type_string> map = new LinkedHashMap<String, Core.Type_string>();
      Set<String> keys = mapval.keySet();
      for (String key : keys) {
        Core.Type_any value = mapval.get(key);
        if (false) {
        } else if (value instanceof Core.Type_string) {
          Core.Type_string castval = (Core.Type_string)value;
          map.put(key, castval);
        } else {
          Core.Type_msg msg = Core.vx_msg_from_error("vx/data/xml/xmlpropmap", ":invalidvalue", value);
          msgblock = Core.vx_copy(msgblock, msg);
        }
      }
      output.vx_p_map = Core.immutablemap(map);
      if (msgblock != Core.e_msgblock) {
        output.vxmsgblock = msgblock;
      }
      return output;
    }

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Type_xmlpropmap output = Core.vx_copy(Xml.e_xmlpropmap, vals);
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Type_xmlpropmap output = this;
      boolean ischanged = false;
      Xml.Class_xmlpropmap value = this;
      Core.Type_msgblock msgblock = Core.vx_msgblock_from_copy_arrayval(value, vals);
      if (this.vx_constdef() != Core.e_constdef) {
        ischanged = true;
      }
      Map<String, Core.Type_string> mapval = new LinkedHashMap<String, Core.Type_string>(value.vx_mapstring());
      String key = "";
      Core.Type_msg msg = Core.e_msg;
      Core.Type_any msgval = Core.e_any;
      for (Object valsub : vals) {
        if (valsub instanceof Core.Type_msgblock) {
          msgblock = Core.vx_copy(msgblock, valsub);
        } else if (valsub instanceof Core.Type_msg) {
          msgblock = Core.vx_copy(msgblock, valsub);
        } else if (key.equals("")) {
          if (false) {
          } else if (valsub instanceof Core.Type_string) {
            Core.Type_string valstring = (Core.Type_string)valsub;
            key = valstring.vx_string();
          } else if (valsub instanceof String) {
            String sval = (String)valsub;
            key = sval;
          } else {
            if (false) {
            } else if (valsub instanceof Core.Type_any) {
              Core.Type_any valinvalid = (Core.Type_any)valsub;
              msgval = valinvalid;
            } else {
              msgval = Core.vx_new_string(valsub.toString());
            }
            msg = Core.vx_msg_from_error("vx/data/xml/xmlpropmap", ":keyexpected", msgval);
            msgblock = Core.vx_copy(msgblock, msg);
          }
        } else {
          Core.Type_string valany = Core.e_string;
          if (false) {
          } else if (valsub instanceof Core.Type_string) {
            Core.Type_string valallowed = (Core.Type_string)valsub;
            valany = valallowed;
          } else if (valsub instanceof String) {
            valany = Core.vx_new(Core.t_string, valsub);
          } else {
            if (false) {
            } else if (valsub instanceof Core.Type_any) {
              Core.Type_any valinvalid = (Core.Type_any)valsub;
              msgval = valinvalid;
            } else {
              msgval = Core.vx_new_string(valsub.toString());
            }
            Map<String, Core.Type_any> mapany = new LinkedHashMap<String, Core.Type_any>();
            mapany.put("key", Core.vx_new_string(key));
            mapany.put("value", msgval);
            Core.Type_map msgmap = Core.t_anymap.vx_new_from_map(mapany);
            msg = Core.vx_msg_from_error("vx/data/xml/xmlpropmap", ":invalidkeyvalue", msgmap);
            msgblock = Core.vx_copy(msgblock, msg);
          }
          if (valany != Core.e_any) {
            ischanged = true;
            if (key.startsWith(":")) {
              key = key.substring(1);
            }
            mapval.put(key, valany);
            key = "";
          }
        }
      }
      if (ischanged || (msgblock != Core.e_msgblock)) {
        Xml.Class_xmlpropmap work = new Xml.Class_xmlpropmap();
        work.vx_p_map = Core.immutablemap(mapval);
        if (msgblock != Core.e_msgblock) {
          work.vxmsgblock = msgblock;
        }
        output = work;
      }
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xmlpropmap;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xmlpropmap;
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.typedef_new(
        "vx/data/xml", // pkgname
        "xmlpropmap", // name
        ":map", // extends
        Core.e_typelist, // traits
        Core.vx_new(Core.t_typelist, Core.t_string), // allowtypes
        Core.e_typelist, // disallowtypes
        Core.e_funclist, // allowfuncs
        Core.e_funclist, // disallowfuncs
        Core.e_anylist, // allowvalues
        Core.e_anylist, // disallowvalues
        Core.e_argmap // properties
      );
      return output;
    }

  }

  public static final Xml.Type_xmlpropmap e_xmlpropmap = new Xml.Class_xmlpropmap();
  public static final Xml.Type_xmlpropmap t_xmlpropmap = new Xml.Class_xmlpropmap();

  /**
   * Constant: delimxml
   * {delim}
   */
  public static class Const_delimxml {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/data/xml", // pkgname
        "delimxml", // name
        Core.typedef_new(
          "vx/data/textblock", // pkgname
          "delim", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        )
      );
      return output;
    }

    public static void const_new(Textblock.Type_delim output) {
      Textblock.Class_delim outval = (Textblock.Class_delim)output;
      outval.vx_p_constdef = constdef();
      Textblock.Type_delim value = Core.f_new(
        Textblock.t_delim,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":delimlist"),
          Core.f_new(
            Textblock.t_delimlist,
            Core.vx_new(
              Core.t_anylist,
              Xml.c_delimxmlcomment,
              Xml.c_delimxmlcdata,
              Core.f_copy(
                Textblock.c_delimbracketangle,
                Core.vx_new(
                  Core.t_anylist,
                  Core.vx_new_string(":delimlist"),
                  Core.f_new(
                    Textblock.t_delimlist,
                    Core.vx_new(
                      Core.t_anylist,
                      Xml.c_delimxmlequal,
                      Textblock.c_delimwhitespace,
                      Textblock.c_delimquote
                    )
                  )
                )
              )
            )
          )
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_starttext = value.starttext();
      outval.vx_p_endtext = value.endtext();
      outval.vx_p_pos = value.pos();
      outval.vx_p_delimlist = value.delimlist();
    }

  }

  public static final Textblock.Type_delim c_delimxml = new Textblock.Class_delim();


  /**
   * Constant: delimxmlcdata
   * {delim}
   */
  public static class Const_delimxmlcdata {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/data/xml", // pkgname
        "delimxmlcdata", // name
        Core.typedef_new(
          "vx/data/textblock", // pkgname
          "delim", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        )
      );
      return output;
    }

    public static void const_new(Textblock.Type_delim output) {
      Textblock.Class_delim outval = (Textblock.Class_delim)output;
      outval.vx_p_constdef = constdef();
      Textblock.Type_delim value = Core.f_new(
        Textblock.t_delim,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":name"),
          Core.vx_new_string("delimxmlcomment"),
          Core.vx_new_string(":starttext"),
          Core.vx_new_string("<![CDATA["),
          Core.vx_new_string(":endtext"),
          Core.vx_new_string("]]>")
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_starttext = value.starttext();
      outval.vx_p_endtext = value.endtext();
      outval.vx_p_pos = value.pos();
      outval.vx_p_delimlist = value.delimlist();
    }

  }

  public static final Textblock.Type_delim c_delimxmlcdata = new Textblock.Class_delim();


  /**
   * Constant: delimxmlcomment
   * {delim}
   */
  public static class Const_delimxmlcomment {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/data/xml", // pkgname
        "delimxmlcomment", // name
        Core.typedef_new(
          "vx/data/textblock", // pkgname
          "delim", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        )
      );
      return output;
    }

    public static void const_new(Textblock.Type_delim output) {
      Textblock.Class_delim outval = (Textblock.Class_delim)output;
      outval.vx_p_constdef = constdef();
      Textblock.Type_delim value = Core.f_new(
        Textblock.t_delim,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":name"),
          Core.vx_new_string("delimxmlcomment"),
          Core.vx_new_string(":starttext"),
          Core.vx_new_string("<!--"),
          Core.vx_new_string(":endtext"),
          Core.vx_new_string("-->")
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_starttext = value.starttext();
      outval.vx_p_endtext = value.endtext();
      outval.vx_p_pos = value.pos();
      outval.vx_p_delimlist = value.delimlist();
    }

  }

  public static final Textblock.Type_delim c_delimxmlcomment = new Textblock.Class_delim();


  /**
   * Constant: delimxmlequal
   * {delim}
   */
  public static class Const_delimxmlequal {
    public static Core.Type_constdef constdef() {
      Core.Type_constdef output = Core.constdef_new(
        "vx/data/xml", // pkgname
        "delimxmlequal", // name
        Core.typedef_new(
          "vx/data/textblock", // pkgname
          "delim", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        )
      );
      return output;
    }

    public static void const_new(Textblock.Type_delim output) {
      Textblock.Class_delim outval = (Textblock.Class_delim)output;
      outval.vx_p_constdef = constdef();
      Textblock.Type_delim value = Core.f_new(
        Textblock.t_delim,
        Core.vx_new(
          Core.t_anylist,
          Core.vx_new_string(":name"),
          Core.vx_new_string("delimxmlequal"),
          Core.vx_new_string(":starttext"),
          Core.vx_new_string("=")
        )
      );
      outval.vx_p_name = value.name();
      outval.vx_p_starttext = value.starttext();
      outval.vx_p_endtext = value.endtext();
      outval.vx_p_pos = value.pos();
      outval.vx_p_delimlist = value.delimlist();
    }

  }

  public static final Textblock.Type_delim c_delimxmlequal = new Textblock.Class_delim();

  /**
   * @function string_decodexml_from_string
   * Returns string decoded from xml encoding
   * @param  {string} text
   * @return {string}
   * (func string-decodexml<-string)
   */
  public interface Func_string_decodexml_from_string extends Core.Func_any_from_any {
    public Core.Type_string vx_string_decodexml_from_string(final Core.Type_string text);
  }

  public static class Class_string_decodexml_from_string extends Core.Class_base implements Func_string_decodexml_from_string {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_string_decodexml_from_string output = new Xml.Class_string_decodexml_from_string();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_string_decodexml_from_string output = new Xml.Class_string_decodexml_from_string();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "string-decodexml<-string", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "string", // name
          ":string", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_string_decodexml_from_string;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_string_decodexml_from_string;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = Xml.f_string_decodexml_from_string(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string text = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = Xml.f_string_decodexml_from_string(text);
      return output;
    }

    @Override
    public Core.Type_string vx_string_decodexml_from_string(final Core.Type_string text) {
      Core.Type_string output = Xml.f_string_decodexml_from_string(text);
      return output;
    }

  }

  public static final Xml.Func_string_decodexml_from_string e_string_decodexml_from_string = new Xml.Class_string_decodexml_from_string();
  public static final Xml.Func_string_decodexml_from_string t_string_decodexml_from_string = new Xml.Class_string_decodexml_from_string();

  public static Core.Type_string f_string_decodexml_from_string(final Core.Type_string text) {
    Core.Type_string output = Core.e_string;
    output = Core.f_let(
      Core.t_string,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string lt = Core.f_string_from_string_find_replace(
          text,
          Core.vx_new_string("&lt;"),
          Core.vx_new_string("<")
        );
        Core.Type_string gt = Core.f_string_from_string_find_replace(
          text,
          Core.vx_new_string("&gt;"),
          Core.vx_new_string(">")
        );
        Core.Type_string amp = Core.f_string_from_string_find_replace(
          gt,
          Core.vx_new_string("&amp;"),
          Core.vx_new_string("&")
        );
        Core.Type_string result = Core.f_string_from_string_find_replace(
          text,
          Core.c_quote,
          Core.vx_new_string("\\\"")
        );
        Core.Type_any output_1 = result;
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function string_first_from_xml
   * Returns string from first child's text.
   * @param  {xml} xml
   * @return {string}
   * (func string-first<-xml)
   */
  public interface Func_string_first_from_xml extends Core.Func_any_from_any {
    public Core.Type_string vx_string_first_from_xml(final Xml.Type_xml xml);
  }

  public static class Class_string_first_from_xml extends Core.Class_base implements Func_string_first_from_xml {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_string_first_from_xml output = new Xml.Class_string_first_from_xml();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_string_first_from_xml output = new Xml.Class_string_first_from_xml();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "string-first<-xml", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/core", // pkgname
          "string", // name
          ":string", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_string_first_from_xml;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_string_first_from_xml;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Xml.Type_xml inputval = (Xml.Type_xml)value;
      Core.Type_any outputval = Xml.f_string_first_from_xml(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Xml.Type_xml xml = Core.f_any_from_any(Xml.t_xml, arglist.vx_any(Core.vx_new_int(0)));
      output = Xml.f_string_first_from_xml(xml);
      return output;
    }

    @Override
    public Core.Type_string vx_string_first_from_xml(final Xml.Type_xml xml) {
      Core.Type_string output = Xml.f_string_first_from_xml(xml);
      return output;
    }

  }

  public static final Xml.Func_string_first_from_xml e_string_first_from_xml = new Xml.Class_string_first_from_xml();
  public static final Xml.Func_string_first_from_xml t_string_first_from_xml = new Xml.Class_string_first_from_xml();

  public static Core.Type_string f_string_first_from_xml(final Xml.Type_xml xml) {
    Core.Type_string output = Core.e_string;
    output = Core.f_let(
      Core.t_string,
      Core.t_any_from_func.vx_fn_new(() -> {
        Xml.Type_xmllist children = xml.children();
        Xml.Type_xml first = Core.f_any_from_list(
          Xml.t_xml,
          children,
          Core.vx_new_int(1)
        );
        Core.Type_string text = first.text();
        Core.Type_string decode = Xml.f_string_decodexml_from_string(
          text
        );
        Core.Type_string outdent = Type.f_string_outdent(
          decode
        );
        Core.Type_string trim = Type.f_string_trim(
          outdent
        );
        Core.Type_any output_1 = trim;
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function textblock_xml_from_string
   * Returns a parsed textblock from a string.
   * @param  {string} text
   * @return {textblock}
   * (func textblock-xml<-string)
   */
  public interface Func_textblock_xml_from_string extends Core.Func_any_from_any {
    public Textblock.Type_textblock vx_textblock_xml_from_string(final Core.Type_string text);
  }

  public static class Class_textblock_xml_from_string extends Core.Class_base implements Func_textblock_xml_from_string {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_textblock_xml_from_string output = new Xml.Class_textblock_xml_from_string();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_textblock_xml_from_string output = new Xml.Class_textblock_xml_from_string();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "textblock-xml<-string", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/textblock", // pkgname
          "textblock", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_textblock_xml_from_string;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_textblock_xml_from_string;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = Xml.f_textblock_xml_from_string(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string text = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = Xml.f_textblock_xml_from_string(text);
      return output;
    }

    @Override
    public Textblock.Type_textblock vx_textblock_xml_from_string(final Core.Type_string text) {
      Textblock.Type_textblock output = Xml.f_textblock_xml_from_string(text);
      return output;
    }

  }

  public static final Xml.Func_textblock_xml_from_string e_textblock_xml_from_string = new Xml.Class_textblock_xml_from_string();
  public static final Xml.Func_textblock_xml_from_string t_textblock_xml_from_string = new Xml.Class_textblock_xml_from_string();

  public static Textblock.Type_textblock f_textblock_xml_from_string(final Core.Type_string text) {
    Textblock.Type_textblock output = Textblock.e_textblock;
    output = Textblock.f_textblock_parse_from_string_delim(
      text,
      Xml.c_delimxml
    );
    return output;
  }

  /**
   * @function xml_angle_from_xml_textblock
   * Returns a modified xml from a single textblock.
   * @param  {xml} xmlarg
   * @param  {textblock} tb
   * @return {xml}
   * (func xml-angle<-xml-textblock)
   */
  public interface Func_xml_angle_from_xml_textblock extends Core.Type_func, Core.Type_replfunc {
    public Xml.Type_xml vx_xml_angle_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb);
  }

  public static class Class_xml_angle_from_xml_textblock extends Core.Class_base implements Func_xml_angle_from_xml_textblock {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_angle_from_xml_textblock output = new Xml.Class_xml_angle_from_xml_textblock();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_angle_from_xml_textblock output = new Xml.Class_xml_angle_from_xml_textblock();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml-angle<-xml-textblock", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_angle_from_xml_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_angle_from_xml_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Xml.Type_xml xmlarg = Core.f_any_from_any(Xml.t_xml, arglist.vx_any(Core.vx_new_int(0)));
      Textblock.Type_textblock tb = Core.f_any_from_any(Textblock.t_textblock, arglist.vx_any(Core.vx_new_int(1)));
      output = Xml.f_xml_angle_from_xml_textblock(xmlarg, tb);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_angle_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb) {
      Xml.Type_xml output = Xml.f_xml_angle_from_xml_textblock(xmlarg, tb);
      return output;
    }

  }

  public static final Xml.Func_xml_angle_from_xml_textblock e_xml_angle_from_xml_textblock = new Xml.Class_xml_angle_from_xml_textblock();
  public static final Xml.Func_xml_angle_from_xml_textblock t_xml_angle_from_xml_textblock = new Xml.Class_xml_angle_from_xml_textblock();

  public static Xml.Type_xml f_xml_angle_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb) {
    Xml.Type_xml output = Xml.e_xml;
    output = Core.f_if_2(
      Xml.t_xml,
      Core.vx_new(
        Core.t_thenelselist,
        Core.f_then(
          Core.t_boolean_from_func.vx_fn_new(() -> {
            Core.Type_any output_1 = Core.f_eq(
              tb.text(),
              Core.f_new(
                Core.t_string,
                Core.vx_new(
                  Core.t_anylist,
                  Core.vx_new_string("</"),
                  xmlarg.tag(),
                  Core.vx_new_string(">")
                )
              )
            );
            return output_1;
          }),
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_any output_2 = Xml.f_xml_close_from_xml_textblock(
              xmlarg,
              tb
            );
            return output_2;
          })
        ),
        Core.f_else(
          Core.t_any_from_func.vx_fn_new(() -> {
            Core.Type_any output_3 = Core.f_let(
              Xml.t_xml,
              Core.t_any_from_func.vx_fn_new(() -> {
                Textblock.Type_textblocklist children = tb.children();
                Xml.Type_xml xmlchg = Core.f_new(
                  Xml.t_xml,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.vx_new_string(":tag"),
                    Core.vx_new_string(":notag"),
                    Core.vx_new_string(":parent"),
                    xmlarg
                  )
                );
                Core.Type_any output_4 = Xml.f_xml_properties_from_xml_textblocklist(
                  xmlchg,
                  children
                );
                return output_4;
              })
            );
            return output_3;
          })
        )
      )
    );
    return output;
  }

  /**
   * @function xml_close_from_xml_textblock
   * Returns a modified xml from a closing tag.
   * @param  {xml} xmlarg
   * @param  {textblock} tb
   * @return {xml}
   * (func xml-close<-xml-textblock)
   */
  public interface Func_xml_close_from_xml_textblock extends Core.Type_func, Core.Type_replfunc {
    public Xml.Type_xml vx_xml_close_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb);
  }

  public static class Class_xml_close_from_xml_textblock extends Core.Class_base implements Func_xml_close_from_xml_textblock {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_close_from_xml_textblock output = new Xml.Class_xml_close_from_xml_textblock();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_close_from_xml_textblock output = new Xml.Class_xml_close_from_xml_textblock();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml-close<-xml-textblock", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_close_from_xml_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_close_from_xml_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Xml.Type_xml xmlarg = Core.f_any_from_any(Xml.t_xml, arglist.vx_any(Core.vx_new_int(0)));
      Textblock.Type_textblock tb = Core.f_any_from_any(Textblock.t_textblock, arglist.vx_any(Core.vx_new_int(1)));
      output = Xml.f_xml_close_from_xml_textblock(xmlarg, tb);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_close_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb) {
      Xml.Type_xml output = Xml.f_xml_close_from_xml_textblock(xmlarg, tb);
      return output;
    }

  }

  public static final Xml.Func_xml_close_from_xml_textblock e_xml_close_from_xml_textblock = new Xml.Class_xml_close_from_xml_textblock();
  public static final Xml.Func_xml_close_from_xml_textblock t_xml_close_from_xml_textblock = new Xml.Class_xml_close_from_xml_textblock();

  public static Xml.Type_xml f_xml_close_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb) {
    Xml.Type_xml output = Xml.e_xml;
    output = Core.f_let(
      Xml.t_xml,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string tag = xmlarg.tag();
        Core.Type_string text = tb.text();
        Xml.Type_xml parent = xmlarg.parent();
        Core.Type_boolean isnoparent = Core.f_is_empty_1(
          parent
        );
        Core.Type_any output_1 = Core.f_if_2(
          Xml.t_xml,
          Core.vx_new(
            Core.t_thenelselist,
            Core.f_then(
              Core.t_boolean_from_func.vx_fn_new(() -> {
                Core.Type_any output_2 = Core.f_or(
                  Core.f_eq(
                    Core.vx_new_string("/"),
                    text
                  ),
                  Core.f_eq(
                    text,
                    Core.f_new(
                      Core.t_string,
                      Core.vx_new(
                        Core.t_anylist,
                        Core.vx_new_string("</"),
                        tag,
                        Core.vx_new_string(">")
                      )
                    )
                  )
                );
                return output_2;
              }),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_3 = Core.f_if_2(
                  Xml.t_xml,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_4 = isnoparent;
                        return output_4;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_5 = xmlarg;
                        return output_5;
                      })
                    ),
                    Core.f_else(
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_6 = Core.f_copy(
                          parent,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.vx_new_string(":children"),
                            Core.f_new(
                              Xml.t_xmllist,
                              Core.vx_new(
                                Core.t_anylist,
                                parent.children(),
                                Core.f_copy(
                                  xmlarg,
                                  Core.vx_new(
                                    Core.t_anylist,
                                    Core.vx_new_string(":parent"),
                                    Core.f_empty(
                                      Xml.t_xml
                                    )
                                  )
                                )
                              )
                            )
                          )
                        );
                        return output_6;
                      })
                    )
                  )
                );
                return output_3;
              })
            ),
            Core.f_else(
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_7 = Core.f_copy(
                  xmlarg,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.f_msg_from_error_1(
                      Core.vx_new_string(":invalidxmlclosetag"),
                      Core.f_new(
                        Core.t_anymap,
                        Core.vx_new(
                          Core.t_anylist,
                          Core.vx_new_string(":tag"),
                          text,
                          Core.vx_new_string(":startpos"),
                          tb.startpos(),
                          Core.vx_new_string(":endpos"),
                          tb.endpos(),
                          Core.vx_new_string(":line"),
                          tb.line(),
                          Core.vx_new_string(":column"),
                          tb.column()
                        )
                      )
                    )
                  )
                );
                return output_7;
              })
            )
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function xml_parse_from_xml_textblock
   * Returns a modified xml from a single textblock.
   * @param  {xml} xmlarg
   * @param  {textblock} tb
   * @return {xml}
   * (func xml-parse<-xml-textblock)
   */
  public interface Func_xml_parse_from_xml_textblock extends Core.Type_func, Core.Type_replfunc {
    public Xml.Type_xml vx_xml_parse_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb);
  }

  public static class Class_xml_parse_from_xml_textblock extends Core.Class_base implements Func_xml_parse_from_xml_textblock {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_parse_from_xml_textblock output = new Xml.Class_xml_parse_from_xml_textblock();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_parse_from_xml_textblock output = new Xml.Class_xml_parse_from_xml_textblock();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml-parse<-xml-textblock", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_parse_from_xml_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_parse_from_xml_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Xml.Type_xml xmlarg = Core.f_any_from_any(Xml.t_xml, arglist.vx_any(Core.vx_new_int(0)));
      Textblock.Type_textblock tb = Core.f_any_from_any(Textblock.t_textblock, arglist.vx_any(Core.vx_new_int(1)));
      output = Xml.f_xml_parse_from_xml_textblock(xmlarg, tb);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_parse_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb) {
      Xml.Type_xml output = Xml.f_xml_parse_from_xml_textblock(xmlarg, tb);
      return output;
    }

  }

  public static final Xml.Func_xml_parse_from_xml_textblock e_xml_parse_from_xml_textblock = new Xml.Class_xml_parse_from_xml_textblock();
  public static final Xml.Func_xml_parse_from_xml_textblock t_xml_parse_from_xml_textblock = new Xml.Class_xml_parse_from_xml_textblock();

  public static Xml.Type_xml f_xml_parse_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb) {
    Xml.Type_xml output = Xml.e_xml;
    output = Core.f_let(
      Xml.t_xml,
      Core.t_any_from_func.vx_fn_new(() -> {
        Textblock.Type_delim delim = tb.delim();
        Core.Type_string text = tb.text();
        Core.Type_string starttext = delim.starttext();
        Core.Type_any output_1 = Core.f_switch(
          Xml.t_xml,
          starttext,
          Core.vx_new(
            Core.t_thenelselist,
            Core.f_case_1(
              Core.vx_new_string(""),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_2 = Xml.f_xml_text_from_xml_textblock(
                  xmlarg,
                  tb
                );
                return output_2;
              })
            ),
            Core.f_case_1(
              Textblock.c_delimbracketangle.starttext(),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_3 = Xml.f_xml_angle_from_xml_textblock(
                  xmlarg,
                  tb
                );
                return output_3;
              })
            ),
            Core.f_case_1(
              Textblock.c_delimwhitespace.starttext(),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_4 = xmlarg;
                return output_4;
              })
            ),
            Core.f_case_1(
              Xml.c_delimxmlcomment.starttext(),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_5 = xmlarg;
                return output_5;
              })
            ),
            Core.f_case_1(
              Xml.c_delimxmlcdata.starttext(),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_6 = xmlarg;
                return output_6;
              })
            )
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function xml_parse_from_xml_textblocklist
   * Returns a modified xml from a textblocklist.
   * @param  {xml} xmlarg
   * @param  {textblocklist} textblocklist
   * @return {xml}
   * (func xml-parse<-xml-textblocklist)
   */
  public interface Func_xml_parse_from_xml_textblocklist extends Core.Type_func, Core.Type_replfunc {
    public Xml.Type_xml vx_xml_parse_from_xml_textblocklist(final Xml.Type_xml xmlarg, final Textblock.Type_textblocklist textblocklist);
  }

  public static class Class_xml_parse_from_xml_textblocklist extends Core.Class_base implements Func_xml_parse_from_xml_textblocklist {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_parse_from_xml_textblocklist output = new Xml.Class_xml_parse_from_xml_textblocklist();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_parse_from_xml_textblocklist output = new Xml.Class_xml_parse_from_xml_textblocklist();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml-parse<-xml-textblocklist", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_parse_from_xml_textblocklist;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_parse_from_xml_textblocklist;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Xml.Type_xml xmlarg = Core.f_any_from_any(Xml.t_xml, arglist.vx_any(Core.vx_new_int(0)));
      Textblock.Type_textblocklist textblocklist = Core.f_any_from_any(Textblock.t_textblocklist, arglist.vx_any(Core.vx_new_int(1)));
      output = Xml.f_xml_parse_from_xml_textblocklist(xmlarg, textblocklist);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_parse_from_xml_textblocklist(final Xml.Type_xml xmlarg, final Textblock.Type_textblocklist textblocklist) {
      Xml.Type_xml output = Xml.f_xml_parse_from_xml_textblocklist(xmlarg, textblocklist);
      return output;
    }

  }

  public static final Xml.Func_xml_parse_from_xml_textblocklist e_xml_parse_from_xml_textblocklist = new Xml.Class_xml_parse_from_xml_textblocklist();
  public static final Xml.Func_xml_parse_from_xml_textblocklist t_xml_parse_from_xml_textblocklist = new Xml.Class_xml_parse_from_xml_textblocklist();

  public static Xml.Type_xml f_xml_parse_from_xml_textblocklist(final Xml.Type_xml xmlarg, final Textblock.Type_textblocklist textblocklist) {
    Xml.Type_xml output = Xml.e_xml;
    output = Core.f_any_from_list_start_reduce(
      Xml.t_xml,
      textblocklist,
      xmlarg,
      Core.t_any_from_reduce.vx_fn_new((Core.Type_any xmlarg_lmb_any, Core.Type_any tb_lmb_any) -> {
        final Xml.Type_xml xmlarg_lmb = Core.f_any_from_any(Xml.t_xml, xmlarg_lmb_any);
        final Textblock.Type_textblock tb_lmb = Core.f_any_from_any(Textblock.t_textblock, tb_lmb_any);
        Core.Type_any output_1 = Xml.f_xml_parse_from_xml_textblock(xmlarg_lmb, tb_lmb);
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function xml_properties_from_xml_textblocklist
   * Returns a modified xml from a textblocklist.
   * @param  {xml} xmlarg
   * @param  {textblocklist} textblocklist
   * @return {xml}
   * (func xml-properties<-xml-textblocklist)
   */
  public interface Func_xml_properties_from_xml_textblocklist extends Core.Type_func, Core.Type_replfunc {
    public Xml.Type_xml vx_xml_properties_from_xml_textblocklist(final Xml.Type_xml xmlarg, final Textblock.Type_textblocklist textblocklist);
  }

  public static class Class_xml_properties_from_xml_textblocklist extends Core.Class_base implements Func_xml_properties_from_xml_textblocklist {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_properties_from_xml_textblocklist output = new Xml.Class_xml_properties_from_xml_textblocklist();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_properties_from_xml_textblocklist output = new Xml.Class_xml_properties_from_xml_textblocklist();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml-properties<-xml-textblocklist", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_properties_from_xml_textblocklist;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_properties_from_xml_textblocklist;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Xml.Type_xml xmlarg = Core.f_any_from_any(Xml.t_xml, arglist.vx_any(Core.vx_new_int(0)));
      Textblock.Type_textblocklist textblocklist = Core.f_any_from_any(Textblock.t_textblocklist, arglist.vx_any(Core.vx_new_int(1)));
      output = Xml.f_xml_properties_from_xml_textblocklist(xmlarg, textblocklist);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_properties_from_xml_textblocklist(final Xml.Type_xml xmlarg, final Textblock.Type_textblocklist textblocklist) {
      Xml.Type_xml output = Xml.f_xml_properties_from_xml_textblocklist(xmlarg, textblocklist);
      return output;
    }

  }

  public static final Xml.Func_xml_properties_from_xml_textblocklist e_xml_properties_from_xml_textblocklist = new Xml.Class_xml_properties_from_xml_textblocklist();
  public static final Xml.Func_xml_properties_from_xml_textblocklist t_xml_properties_from_xml_textblocklist = new Xml.Class_xml_properties_from_xml_textblocklist();

  public static Xml.Type_xml f_xml_properties_from_xml_textblocklist(final Xml.Type_xml xmlarg, final Textblock.Type_textblocklist textblocklist) {
    Xml.Type_xml output = Xml.e_xml;
    output = Core.f_let(
      Xml.t_xml,
      Core.t_any_from_func.vx_fn_new(() -> {
        Xml.Type_xml xmlchg = Core.f_any_from_list_start_reduce(
          Xml.t_xml,
          textblocklist,
          xmlarg,
          Core.t_any_from_reduce.vx_fn_new((reduce_any, current_any) -> {
            Xml.Type_xml reduce = Core.f_any_from_any(Xml.t_xml, reduce_any);
            Textblock.Type_textblock current = Core.f_any_from_any(Textblock.t_textblock, current_any);
            Core.Type_any output_2 = Xml.f_xml_property_from_xml_textblock(
              reduce,
              current
            );
            return output_2;
          })
        );
        Core.Type_any output_1 = xmlchg;
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function xml_property_from_xml_textblock
   * Returns a modified xml from a single property.
   * @param  {xml} xmlarg
   * @param  {textblock} tbarg
   * @return {xml}
   * (func xml-property<-xml-textblock)
   */
  public interface Func_xml_property_from_xml_textblock extends Core.Type_func, Core.Type_replfunc {
    public Xml.Type_xml vx_xml_property_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tbarg);
  }

  public static class Class_xml_property_from_xml_textblock extends Core.Class_base implements Func_xml_property_from_xml_textblock {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_property_from_xml_textblock output = new Xml.Class_xml_property_from_xml_textblock();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_property_from_xml_textblock output = new Xml.Class_xml_property_from_xml_textblock();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml-property<-xml-textblock", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_property_from_xml_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_property_from_xml_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Xml.Type_xml xmlarg = Core.f_any_from_any(Xml.t_xml, arglist.vx_any(Core.vx_new_int(0)));
      Textblock.Type_textblock tbarg = Core.f_any_from_any(Textblock.t_textblock, arglist.vx_any(Core.vx_new_int(1)));
      output = Xml.f_xml_property_from_xml_textblock(xmlarg, tbarg);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_property_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tbarg) {
      Xml.Type_xml output = Xml.f_xml_property_from_xml_textblock(xmlarg, tbarg);
      return output;
    }

  }

  public static final Xml.Func_xml_property_from_xml_textblock e_xml_property_from_xml_textblock = new Xml.Class_xml_property_from_xml_textblock();
  public static final Xml.Func_xml_property_from_xml_textblock t_xml_property_from_xml_textblock = new Xml.Class_xml_property_from_xml_textblock();

  public static Xml.Type_xml f_xml_property_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tbarg) {
    Xml.Type_xml output = Xml.e_xml;
    output = Core.f_let(
      Xml.t_xml,
      Core.t_any_from_func.vx_fn_new(() -> {
        Textblock.Type_delim delim = tbarg.delim();
        Core.Type_string text = tbarg.text();
        Core.Type_string delimname = delim.name();
        Core.Type_string tag = xmlarg.tag();
        Core.Type_string prop = xmlarg.prop();
        Core.Type_stringmap propmap = xmlarg.propmap();
        Core.Type_any output_1 = Core.f_switch(
          Xml.t_xml,
          delimname,
          Core.vx_new(
            Core.t_thenelselist,
            Core.f_case_1(
              Core.vx_new_string(""),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_2 = Core.f_if_2(
                  Xml.t_xml,
                  Core.vx_new(
                    Core.t_thenelselist,
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_3 = Type.f_boolean_from_string_starts(
                          text,
                          Core.vx_new_string("/")
                        );
                        return output_3;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_4 = Xml.f_xml_close_from_xml_textblock(
                          xmlarg,
                          tbarg
                        );
                        return output_4;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_5 = Core.f_eq(
                          Core.vx_new_string(":notag"),
                          tag
                        );
                        return output_5;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_6 = Core.f_copy(
                          xmlarg,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.vx_new_string(":tag"),
                            text
                          )
                        );
                        return output_6;
                      })
                    ),
                    Core.f_then(
                      Core.t_boolean_from_func.vx_fn_new(() -> {
                        Core.Type_any output_7 = Core.f_eq(
                          Core.vx_new_string(""),
                          prop
                        );
                        return output_7;
                      }),
                      Core.t_any_from_func.vx_fn_new(() -> {
                        Core.Type_any output_8 = Core.f_copy(
                          xmlarg,
                          Core.vx_new(
                            Core.t_anylist,
                            Core.vx_new_string(":prop"),
                            text
                          )
                        );
                        return output_8;
                      })
                    )
                  )
                );
                return output_2;
              })
            ),
            Core.f_case_1(
              Core.vx_new_string("delimquote"),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_9 = Core.f_if_1(
                  Xml.t_xml,
                  Core.f_eq(
                    Core.vx_new_string(""),
                    prop
                  ),
                  Core.f_copy(
                    xmlarg,
                    Core.vx_new(
                      Core.t_anylist,
                      Core.f_msg_from_error(
                        Core.vx_new_string("Found quoted text with no matching attribute.")
                      )
                    )
                  ),
                  Core.f_copy(
                    xmlarg,
                    Core.vx_new(
                      Core.t_anylist,
                      Core.vx_new_string(":prop"),
                      Core.vx_new_string(""),
                      Core.vx_new_string(":propmap"),
                      Core.f_copy(
                        propmap,
                        Core.vx_new(
                          Core.t_anylist,
                          prop,
                          Core.f_any_from_list(
                            Textblock.t_textblock,
                            tbarg.children(),
                            Core.vx_new_int(1)
                          ).text()
                        )
                      )
                    )
                  )
                );
                return output_9;
              })
            ),
            Core.f_else(
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_10 = xmlarg;
                return output_10;
              })
            )
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function xml_read_from_file
   * Returns a parsed xml from a file.
   * @param  {file} file
   * @return {xml}
   * (func xml-read<-file)
   */
  public interface Func_xml_read_from_file extends Core.Func_any_from_any_context {
    public Xml.Type_xml vx_xml_read_from_file(final Core.Type_context context, final File.Type_file file);
  }

  public static class Class_xml_read_from_file extends Core.Class_base implements Func_xml_read_from_file {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_read_from_file output = new Xml.Class_xml_read_from_file();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_read_from_file output = new Xml.Class_xml_read_from_file();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml-read<-file", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_read_from_file;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_read_from_file;
      return output;
    }

    @Override
    public Core.Func_any_from_any_context vx_fn_new(Core.Class_any_from_any_context.IFn fn) {
      return Core.e_any_from_any_context;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any_context(final T generic_any_1, final Core.Type_context context, final U value) {
      T output = Core.f_empty(generic_any_1);
      File.Type_file inputval = (File.Type_file)value;
      Core.Type_any outputval = Xml.f_xml_read_from_file(context, inputval);
      output = Core.f_any_from_any_context(generic_any_1, context, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_context context = Core.f_any_from_any(Core.t_context, arglist.vx_any(Core.vx_new_int(0)));
      File.Type_file file = Core.f_any_from_any(File.t_file, arglist.vx_any(Core.vx_new_int(0)));
      output = Xml.f_xml_read_from_file(context, file);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_read_from_file(final Core.Type_context context, final File.Type_file file) {
      Xml.Type_xml output = Xml.f_xml_read_from_file(context, file);
      return output;
    }

  }

  public static final Xml.Func_xml_read_from_file e_xml_read_from_file = new Xml.Class_xml_read_from_file();
  public static final Xml.Func_xml_read_from_file t_xml_read_from_file = new Xml.Class_xml_read_from_file();

  public static Xml.Type_xml f_xml_read_from_file(final Core.Type_context context, final File.Type_file file) {
    Xml.Type_xml output = Xml.e_xml;
    output = Core.f_let(
      Xml.t_xml,
      Core.t_any_from_func.vx_fn_new(() -> {
        File.Type_file loaded = File.f_file_read_from_file(
          context,
          file
        );
        Core.Type_any output_1 = Xml.f_xml_from_file(
          loaded
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function xml_text_from_xml_textblock
   * Returns a modified xml from text.
   * @param  {xml} xmlarg
   * @param  {textblock} tb
   * @return {xml}
   * (func xml-text<-xml-textblock)
   */
  public interface Func_xml_text_from_xml_textblock extends Core.Type_func, Core.Type_replfunc {
    public Xml.Type_xml vx_xml_text_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb);
  }

  public static class Class_xml_text_from_xml_textblock extends Core.Class_base implements Func_xml_text_from_xml_textblock {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_text_from_xml_textblock output = new Xml.Class_xml_text_from_xml_textblock();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_text_from_xml_textblock output = new Xml.Class_xml_text_from_xml_textblock();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml-text<-xml-textblock", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_text_from_xml_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_text_from_xml_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Xml.Type_xml xmlarg = Core.f_any_from_any(Xml.t_xml, arglist.vx_any(Core.vx_new_int(0)));
      Textblock.Type_textblock tb = Core.f_any_from_any(Textblock.t_textblock, arglist.vx_any(Core.vx_new_int(1)));
      output = Xml.f_xml_text_from_xml_textblock(xmlarg, tb);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_text_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb) {
      Xml.Type_xml output = Xml.f_xml_text_from_xml_textblock(xmlarg, tb);
      return output;
    }

  }

  public static final Xml.Func_xml_text_from_xml_textblock e_xml_text_from_xml_textblock = new Xml.Class_xml_text_from_xml_textblock();
  public static final Xml.Func_xml_text_from_xml_textblock t_xml_text_from_xml_textblock = new Xml.Class_xml_text_from_xml_textblock();

  public static Xml.Type_xml f_xml_text_from_xml_textblock(final Xml.Type_xml xmlarg, final Textblock.Type_textblock tb) {
    Xml.Type_xml output = Xml.e_xml;
    output = Core.f_let(
      Xml.t_xml,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string text = tb.text();
        Xml.Type_xml xmlchg = Core.f_new(
          Xml.t_xml,
          Core.vx_new(
            Core.t_anylist,
            Core.vx_new_string(":text"),
            text
          )
        );
        Core.Type_any output_1 = Core.f_if_2(
          Xml.t_xml,
          Core.vx_new(
            Core.t_thenelselist,
            Core.f_then(
              Core.t_boolean_from_func.vx_fn_new(() -> {
                Core.Type_any output_2 = Core.f_is_empty_1(
                  xmlarg
                );
                return output_2;
              }),
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_3 = xmlchg;
                return output_3;
              })
            ),
            Core.f_else(
              Core.t_any_from_func.vx_fn_new(() -> {
                Core.Type_any output_4 = Core.f_copy(
                  xmlarg,
                  Core.vx_new(
                    Core.t_anylist,
                    Core.vx_new_string(":children"),
                    Core.f_new(
                      Xml.t_xmllist,
                      Core.vx_new(
                        Core.t_anylist,
                        xmlarg.children(),
                        xmlchg
                      )
                    )
                  )
                );
                return output_4;
              })
            )
          )
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function xml_from_file
   * Returns a parsed xml from a file.
   * @param  {file} file
   * @return {xml}
   * (func xml<-file)
   */
  public interface Func_xml_from_file extends Core.Func_any_from_any {
    public Xml.Type_xml vx_xml_from_file(final File.Type_file file);
  }

  public static class Class_xml_from_file extends Core.Class_base implements Func_xml_from_file {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_from_file output = new Xml.Class_xml_from_file();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_from_file output = new Xml.Class_xml_from_file();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml<-file", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_from_file;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_from_file;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      File.Type_file inputval = (File.Type_file)value;
      Core.Type_any outputval = Xml.f_xml_from_file(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      File.Type_file file = Core.f_any_from_any(File.t_file, arglist.vx_any(Core.vx_new_int(0)));
      output = Xml.f_xml_from_file(file);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_from_file(final File.Type_file file) {
      Xml.Type_xml output = Xml.f_xml_from_file(file);
      return output;
    }

  }

  public static final Xml.Func_xml_from_file e_xml_from_file = new Xml.Class_xml_from_file();
  public static final Xml.Func_xml_from_file t_xml_from_file = new Xml.Class_xml_from_file();

  public static Xml.Type_xml f_xml_from_file(final File.Type_file file) {
    Xml.Type_xml output = Xml.e_xml;
    output = Core.f_let(
      Xml.t_xml,
      Core.t_any_from_func.vx_fn_new(() -> {
        Core.Type_string text = file.text();
        Core.Type_any output_1 = Xml.f_xml_from_string(
          text
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function xml_from_string
   * Returns a parsed xml from a string.
   * @param  {string} text
   * @return {xml}
   * (func xml<-string)
   */
  public interface Func_xml_from_string extends Core.Func_any_from_any {
    public Xml.Type_xml vx_xml_from_string(final Core.Type_string text);
  }

  public static class Class_xml_from_string extends Core.Class_base implements Func_xml_from_string {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_from_string output = new Xml.Class_xml_from_string();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_from_string output = new Xml.Class_xml_from_string();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml<-string", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_from_string;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_from_string;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Core.Type_string inputval = (Core.Type_string)value;
      Core.Type_any outputval = Xml.f_xml_from_string(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Core.Type_string text = Core.f_any_from_any(Core.t_string, arglist.vx_any(Core.vx_new_int(0)));
      output = Xml.f_xml_from_string(text);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_from_string(final Core.Type_string text) {
      Xml.Type_xml output = Xml.f_xml_from_string(text);
      return output;
    }

  }

  public static final Xml.Func_xml_from_string e_xml_from_string = new Xml.Class_xml_from_string();
  public static final Xml.Func_xml_from_string t_xml_from_string = new Xml.Class_xml_from_string();

  public static Xml.Type_xml f_xml_from_string(final Core.Type_string text) {
    Xml.Type_xml output = Xml.e_xml;
    output = Core.f_let(
      Xml.t_xml,
      Core.t_any_from_func.vx_fn_new(() -> {
        Textblock.Type_textblock tb = Xml.f_textblock_xml_from_string(
          text
        );
        Core.Type_any output_1 = Xml.f_xml_from_textblock(
          tb
        );
        return output_1;
      })
    );
    return output;
  }

  /**
   * @function xml_from_textblock
   * Returns a parsed xml from a textblock.
   * @param  {textblock} textblock
   * @return {xml}
   * (func xml<-textblock)
   */
  public interface Func_xml_from_textblock extends Core.Func_any_from_any {
    public Xml.Type_xml vx_xml_from_textblock(final Textblock.Type_textblock textblock);
  }

  public static class Class_xml_from_textblock extends Core.Class_base implements Func_xml_from_textblock {

    @Override
    public Core.Type_any vx_new(final Object... vals) {
      Xml.Class_xml_from_textblock output = new Xml.Class_xml_from_textblock();
      return output;
    }

    @Override
    public Core.Type_any vx_copy(final Object... vals) {
      Xml.Class_xml_from_textblock output = new Xml.Class_xml_from_textblock();
      return output;
    }

    @Override
    public Core.Type_typedef vx_typedef() {
      Core.Type_typedef output = Core.t_func.vx_typedef();
      return output;
    }

    @Override
    public Core.Type_funcdef vx_funcdef() {
      Core.Type_funcdef output = Core.funcdef_new(
        "vx/data/xml", // pkgname
        "xml<-textblock", // name
        0, // idx
        false, // async
        Core.typedef_new(
          "vx/data/xml", // pkgname
          "xml", // name
          ":struct", // extends
          Core.e_typelist, // traits
          Core.e_typelist, // allowtypes
          Core.e_typelist, // disallowtypes
          Core.e_funclist, // allowfuncs
          Core.e_funclist, // disallowfuncs
          Core.e_anylist, // allowvalues
          Core.e_anylist, // disallowvalues
          Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    @Override
    public Core.Type_any vx_empty() {
      Core.Type_any output = Xml.e_xml_from_textblock;
      return output;
    }

    @Override
    public Core.Type_any vx_type() {
      Core.Type_any output = Xml.t_xml_from_textblock;
      return output;
    }

    @Override
    public Core.Func_any_from_any vx_fn_new(Core.Class_any_from_any.IFn fn) {
      return Core.e_any_from_any;
    }

    @Override
    public <T extends Core.Type_any, U extends Core.Type_any> T vx_any_from_any(final T generic_any_1, final U value) {
      T output = Core.f_empty(generic_any_1);
      Textblock.Type_textblock inputval = (Textblock.Type_textblock)value;
      Core.Type_any outputval = Xml.f_xml_from_textblock(inputval);
      output = Core.f_any_from_any(generic_any_1, outputval);
      return output;
    }

    @Override
    public Core.Type_any vx_repl(Core.Type_anylist arglist) {
      Core.Type_any output = Core.e_any;
      Textblock.Type_textblock textblock = Core.f_any_from_any(Textblock.t_textblock, arglist.vx_any(Core.vx_new_int(0)));
      output = Xml.f_xml_from_textblock(textblock);
      return output;
    }

    @Override
    public Xml.Type_xml vx_xml_from_textblock(final Textblock.Type_textblock textblock) {
      Xml.Type_xml output = Xml.f_xml_from_textblock(textblock);
      return output;
    }

  }

  public static final Xml.Func_xml_from_textblock e_xml_from_textblock = new Xml.Class_xml_from_textblock();
  public static final Xml.Func_xml_from_textblock t_xml_from_textblock = new Xml.Class_xml_from_textblock();

  public static Xml.Type_xml f_xml_from_textblock(final Textblock.Type_textblock textblock) {
    Xml.Type_xml output = Xml.e_xml;
    output = Xml.f_xml_parse_from_xml_textblocklist(
      Core.f_empty(
        Xml.t_xml
      ),
      textblock.children()
    );
    return output;
  }


  static {
    Const_delimxml.const_new(c_delimxml);
    Const_delimxmlcdata.const_new(c_delimxmlcdata);
    Const_delimxmlcomment.const_new(c_delimxmlcomment);
    Const_delimxmlequal.const_new(c_delimxmlequal);
    Map<String, Core.Type_any> maptype = new LinkedHashMap<String, Core.Type_any>();
    Map<String, Core.Type_any> mapconst = new LinkedHashMap<String, Core.Type_any>();
    Map<String, Core.Type_func> mapfunc = new LinkedHashMap<String, Core.Type_func>();
    maptype.put("xml", Xml.t_xml);
    maptype.put("xmllist", Xml.t_xmllist);
    maptype.put("xmlpropmap", Xml.t_xmlpropmap);
    mapconst.put("delimxml", Xml.c_delimxml);
    mapconst.put("delimxmlcdata", Xml.c_delimxmlcdata);
    mapconst.put("delimxmlcomment", Xml.c_delimxmlcomment);
    mapconst.put("delimxmlequal", Xml.c_delimxmlequal);
    mapfunc.put("string-decodexml<-string", Xml.t_string_decodexml_from_string);
    mapfunc.put("string-first<-xml", Xml.t_string_first_from_xml);
    mapfunc.put("textblock-xml<-string", Xml.t_textblock_xml_from_string);
    mapfunc.put("xml-angle<-xml-textblock", Xml.t_xml_angle_from_xml_textblock);
    mapfunc.put("xml-close<-xml-textblock", Xml.t_xml_close_from_xml_textblock);
    mapfunc.put("xml-parse<-xml-textblock", Xml.t_xml_parse_from_xml_textblock);
    mapfunc.put("xml-parse<-xml-textblocklist", Xml.t_xml_parse_from_xml_textblocklist);
    mapfunc.put("xml-properties<-xml-textblocklist", Xml.t_xml_properties_from_xml_textblocklist);
    mapfunc.put("xml-property<-xml-textblock", Xml.t_xml_property_from_xml_textblock);
    mapfunc.put("xml-read<-file", Xml.t_xml_read_from_file);
    mapfunc.put("xml-text<-xml-textblock", Xml.t_xml_text_from_xml_textblock);
    mapfunc.put("xml<-file", Xml.t_xml_from_file);
    mapfunc.put("xml<-string", Xml.t_xml_from_string);
    mapfunc.put("xml<-textblock", Xml.t_xml_from_textblock);
    Core.vx_global_package_set("vx/data/xml", maptype, mapconst, mapfunc);
  }

}
