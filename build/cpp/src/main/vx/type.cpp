#include <string>
#include "../vx/core.hpp"
#include "type.hpp"

namespace vx_type {

// :body

  // vx_int_from_string_find(string, string)
  int vx_int_from_string_find(std::string text, std::string find) {
    size_t pos = text.find(find);
    int output = vx_core::vx_int_from_sizet(pos) + 1;
    return output;
  }

  // vx_int_from_string_find(string, string)
  vx_core::Type_int vx_int_from_string_find(vx_core::Type_string text, vx_core::Type_string find) {
    int ipos = vx_type::vx_int_from_string_find(text->vx_string(), find->vx_string());
    vx_core::Type_int output = vx_core::vx_new_int(ipos);
    return output;
  }

  // vx_int_from_string_findkeyword(string, string)
  int vx_int_from_string_findkeyword(std::string text, std::string find) {
    int output = -1;
    if (text == "") {
    } else if (find == ":nonwhitespace") {
      std::string wschars1 = " \n\r\t";
      int ilen = text.length();
      for (int i = 0; i < ilen; i++) {
        char cchar = text[i];
        int pos = vx_core::vx_int_from_sizet(wschars1.find(cchar));
        if (pos < 0) {
          output = i;
          break;
        }
      }
    } else if (find == ":whitespace") {
      std::string wschars2 = " \n\r\t";
      for (char cchar : wschars2) {
        int pos = vx_core::vx_int_from_sizet(text.find(cchar));
        if (pos < 0) {
        } else if (output < 0) {
         output = pos;
        } else if (pos < output) {
         output = pos;
        }
      }
    } else {
      output = text.find(find);
    }
    output += 1;
    return output;
  }

  // vx_int_from_string_findkeyword(string, string)
  vx_core::Type_int vx_int_from_string_findkeyword(vx_core::Type_string text, vx_core::Type_string find) {
    int ipos = vx_type::vx_int_from_string_findkeyword(text->vx_string(), find->vx_string());
    vx_core::Type_int output = vx_core::vx_new_int(ipos);
    return output;
  }

  // vx_int_from_string_findlast(string, string)
  int vx_int_from_string_findlast(std::string text, std::string find) {
    size_t pos = text.rfind(find);
    int output = vx_core::vx_int_from_sizet(pos) + 1;
    return output;
  }

  // vx_int_from_string_findlast(string, string)
  vx_core::Type_int vx_int_from_string_findlast(vx_core::Type_string text, vx_core::Type_string findlast) {
    int ipos = vx_type::vx_int_from_string_findlast(text->vx_string(), findlast->vx_string());
    vx_core::Type_int output = vx_core::vx_new_int(ipos);
    return output;
  }

  // vx_string_from_stringlist_join(stringlist, string)
  vx_core::Type_string vx_string_from_stringlist_join(vx_core::Type_stringlist vals, vx_core::Type_string delim) {
    bool isfirst = true;
    std::string str = "";
    std::string sdelim = delim->vx_string();
    for (vx_core::Type_string substr : vals->vx_p_list) {
      std::string ssub = substr->vx_string();
      if (isfirst) {
        str = ssub;
      } else {
        str += sdelim + ssub;
      }
      isfirst = false;
    }
    vx_core::Type_string output = vx_core::vx_new_string(str);
    return output;
  }

  // vx_string_lowercase(string)
  vx_core::Type_string vx_string_lowercase(vx_core::Type_string text) {
    std::string stext = text->vx_string();
    stext = stext.substr(0, sizeof stext);
    std::transform(stext.begin(), stext.end(), stext.begin(), ::tolower);
    vx_core::Type_string output = vx_core::vx_new_string(stext);
    return output;
  }

  // vx_string_trim(string)
  vx_core::Type_string vx_string_trim(vx_core::Type_string text) {
    std::string_view stext = text->vx_string();
    stext = stext.substr(0, sizeof stext);
    stext.remove_prefix(std::min(stext.find_first_not_of(" \t\r\v\n"), stext.size()));
    stext.remove_suffix(std::min(stext.size() - stext.find_last_not_of(" \t\r\v\n") - 1, stext.size()));
    vx_core::Type_string output = vx_core::vx_new_string(static_cast<std::string>(stext));
    return output;
  }

  // vx_string_uppercase(string)
  vx_core::Type_string vx_string_uppercase(vx_core::Type_string text) {
    std::string stext = text->vx_string();
    stext = stext.substr(0, sizeof stext);
    std::transform(stext.begin(), stext.end(), stext.begin(), ::toupper);
    vx_core::Type_string output = vx_core::vx_new_string(stext);
    return output;
  }

  // vx_stringlist_from_string_split(string, string)
  vx_core::Type_stringlist vx_stringlist_from_string_split(vx_core::Type_string text, vx_core::Type_string delim) {
    std::string stext = text->vx_string();
    std::string sdelim = delim->vx_string();
    vx_core::vx_Type_listany listany;
    size_t pos = 0;
    std::string stoken;
    while ((pos = stext.find(sdelim)) != std::string::npos) {
      stoken = stext.substr(0, pos);
      vx_core::Type_string token = vx_core::vx_new_string(stoken);
      listany.push_back(token);
      stext.erase(0, pos + sdelim.length());
    }
    vx_core::Type_string token = vx_core::vx_new_string(stext);
    listany.push_back(token);
    vx_core::Type_stringlist output = vx_core::vx_new(vx_core::t_stringlist, listany);
    vx_core::vx_release({text, delim});
    return output;
  }


  // (func allowtypenames<-type)
  vx_core::Type_stringlist f_allowtypenames_from_type(vx_core::Type_any type) {
    vx_core::Type_stringlist output = vx_core::e_stringlist;
    vx_core::vx_reserve(type);
    output = vx_core::f_typenames_from_typelist(
      vx_type::f_allowtypes_from_type(type)
    );
    vx_core::vx_release_one_except(type, output);
    return output;
  }
  /**
   * @function allowtypenames_from_type
   * Get the name of a given type
   * @param  {any} type
   * @return {stringlist}
   * (func allowtypenames<-type)
   */
  // (func allowtypenames<-type)
  // class Class_allowtypenames_from_type {
    Abstract_allowtypenames_from_type::~Abstract_allowtypenames_from_type() {}

    Class_allowtypenames_from_type::Class_allowtypenames_from_type() : Abstract_allowtypenames_from_type::Abstract_allowtypenames_from_type() {
      vx_core::refcount += 1;
    }

    Class_allowtypenames_from_type::~Class_allowtypenames_from_type() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_allowtypenames_from_type::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_allowtypenames_from_type output = vx_type::e_allowtypenames_from_type;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_allowtypenames_from_type::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_allowtypenames_from_type output = vx_type::e_allowtypenames_from_type;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_allowtypenames_from_type::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "allowtypenames<-type", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_allowtypenames_from_type::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_allowtypenames_from_type::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "allowtypenames<-type", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_allowtypenames_from_type::vx_empty() const {
      return vx_type::e_allowtypenames_from_type;
    }

    vx_core::Type_any Class_allowtypenames_from_type::vx_type() const {
      return vx_type::t_allowtypenames_from_type;
    }

    vx_core::Type_msgblock Class_allowtypenames_from_type::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_allowtypenames_from_type::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_allowtypenames_from_type::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_allowtypenames_from_type::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any inputval = vx_core::vx_any_from_any(vx_core::t_any, val);
      output = vx_type::f_allowtypenames_from_type(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_allowtypenames_from_type::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any type = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_allowtypenames_from_type(type);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func allowtypes<-type)
  vx_core::Type_typelist f_allowtypes_from_type(vx_core::Type_any type) {
    vx_core::Type_typelist output = vx_core::e_typelist;
    vx_core::vx_reserve(type);
    output = vx_core::f_any_from_struct(
      vx_core::t_typelist,
      vx_core::f_typedef_from_type(type),
      vx_core::vx_new_string(":allowtypes")
    );
    vx_core::vx_release_one_except(type, output);
    return output;
  }
  /**
   * @function allowtypes_from_type
   * Returns the allowed types from a given type
   * @param  {any} type
   * @return {typelist}
   * (func allowtypes<-type)
   */
  // (func allowtypes<-type)
  // class Class_allowtypes_from_type {
    Abstract_allowtypes_from_type::~Abstract_allowtypes_from_type() {}

    Class_allowtypes_from_type::Class_allowtypes_from_type() : Abstract_allowtypes_from_type::Abstract_allowtypes_from_type() {
      vx_core::refcount += 1;
    }

    Class_allowtypes_from_type::~Class_allowtypes_from_type() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_allowtypes_from_type::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_allowtypes_from_type output = vx_type::e_allowtypes_from_type;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_allowtypes_from_type::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_allowtypes_from_type output = vx_type::e_allowtypes_from_type;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_allowtypes_from_type::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "allowtypes<-type", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_allowtypes_from_type::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_allowtypes_from_type::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "allowtypes<-type", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_allowtypes_from_type::vx_empty() const {
      return vx_type::e_allowtypes_from_type;
    }

    vx_core::Type_any Class_allowtypes_from_type::vx_type() const {
      return vx_type::t_allowtypes_from_type;
    }

    vx_core::Type_msgblock Class_allowtypes_from_type::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_allowtypes_from_type::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_allowtypes_from_type::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_allowtypes_from_type::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any inputval = vx_core::vx_any_from_any(vx_core::t_any, val);
      output = vx_type::f_allowtypes_from_type(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_allowtypes_from_type::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any type = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_allowtypes_from_type(type);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}
  /**
   * @function any_from_int
   * Generic function returns any from an int.
   * @param  {int} value
   * @return {any-1}
   * (func any<-int)
   */
  // (func any<-int)
  // class Class_any_from_int {
    Abstract_any_from_int::~Abstract_any_from_int() {}

    Class_any_from_int::Class_any_from_int() : Abstract_any_from_int::Abstract_any_from_int() {
      vx_core::refcount += 1;
    }

    Class_any_from_int::~Class_any_from_int() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_any_from_int::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_any_from_int output = vx_type::e_any_from_int;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_any_from_int::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_any_from_int output = vx_type::e_any_from_int;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_any_from_int::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "any<-int", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_any_from_int::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_any_from_int::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "any<-int", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_any_from_int::vx_empty() const {
      return vx_type::e_any_from_int;
    }

    vx_core::Type_any Class_any_from_int::vx_type() const {
      return vx_type::t_any_from_int;
    }

    vx_core::Type_msgblock Class_any_from_int::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_any_from_int::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_any_from_int::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_any_from_int::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_int inputval = vx_core::vx_any_from_any(vx_core::t_int, val);
      output = vx_type::f_any_from_int(vx_core::t_any, inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_any_from_int::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any generic_any_1 = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_int value = vx_core::vx_any_from_any(vx_core::t_int, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_any_from_int(generic_any_1, value);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func boolean<-string-ends)
  vx_core::Type_boolean f_boolean_from_string_ends(vx_core::Type_string text, vx_core::Type_string ends) {
    vx_core::Type_boolean output = vx_core::e_boolean;
    vx_core::vx_reserve({text, ends});
    bool check = vx_core::vx_boolean_from_string_ends(text->vx_string(), ends->vx_string());
    output = vx_core::vx_new_boolean(check);
    vx_core::vx_release_one_except({text, ends}, output);
    return output;
  }
  /**
   * @function boolean_from_string_ends
   * Returns true if string starts with find.
   * @param  {string} text
   * @param  {string} ends
   * @return {boolean}
   * (func boolean<-string-ends)
   */
  // (func boolean<-string-ends)
  // class Class_boolean_from_string_ends {
    Abstract_boolean_from_string_ends::~Abstract_boolean_from_string_ends() {}

    Class_boolean_from_string_ends::Class_boolean_from_string_ends() : Abstract_boolean_from_string_ends::Abstract_boolean_from_string_ends() {
      vx_core::refcount += 1;
    }

    Class_boolean_from_string_ends::~Class_boolean_from_string_ends() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_boolean_from_string_ends::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_boolean_from_string_ends output = vx_type::e_boolean_from_string_ends;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_boolean_from_string_ends::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_boolean_from_string_ends output = vx_type::e_boolean_from_string_ends;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_boolean_from_string_ends::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "boolean<-string-ends", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_boolean_from_string_ends::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_boolean_from_string_ends::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "boolean<-string-ends", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_boolean_from_string_ends::vx_empty() const {
      return vx_type::e_boolean_from_string_ends;
    }

    vx_core::Type_any Class_boolean_from_string_ends::vx_type() const {
      return vx_type::t_boolean_from_string_ends;
    }

    vx_core::Type_msgblock Class_boolean_from_string_ends::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_boolean_from_string_ends::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_boolean_from_string_ends::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_string ends = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_boolean_from_string_ends(text, ends);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func boolean<-string-starts)
  vx_core::Type_boolean f_boolean_from_string_starts(vx_core::Type_string text, vx_core::Type_string starts) {
    vx_core::Type_boolean output = vx_core::e_boolean;
    vx_core::vx_reserve({text, starts});
    bool check = vx_core::vx_boolean_from_string_starts(text->vx_string(), starts->vx_string());
    output = vx_core::vx_new_boolean(check);
    vx_core::vx_release_one_except({text, starts}, output);
    return output;
  }
  /**
   * @function boolean_from_string_starts
   * Returns true if string starts with find.
   * @param  {string} text
   * @param  {string} starts
   * @return {boolean}
   * (func boolean<-string-starts)
   */
  // (func boolean<-string-starts)
  // class Class_boolean_from_string_starts {
    Abstract_boolean_from_string_starts::~Abstract_boolean_from_string_starts() {}

    Class_boolean_from_string_starts::Class_boolean_from_string_starts() : Abstract_boolean_from_string_starts::Abstract_boolean_from_string_starts() {
      vx_core::refcount += 1;
    }

    Class_boolean_from_string_starts::~Class_boolean_from_string_starts() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_boolean_from_string_starts::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_boolean_from_string_starts output = vx_type::e_boolean_from_string_starts;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_boolean_from_string_starts::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_boolean_from_string_starts output = vx_type::e_boolean_from_string_starts;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_boolean_from_string_starts::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "boolean<-string-starts", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_boolean_from_string_starts::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_boolean_from_string_starts::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "boolean<-string-starts", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_boolean_from_string_starts::vx_empty() const {
      return vx_type::e_boolean_from_string_starts;
    }

    vx_core::Type_any Class_boolean_from_string_starts::vx_type() const {
      return vx_type::t_boolean_from_string_starts;
    }

    vx_core::Type_msgblock Class_boolean_from_string_starts::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_boolean_from_string_starts::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_boolean_from_string_starts::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_string starts = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_boolean_from_string_starts(text, starts);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func int<-string-find)
  vx_core::Type_int f_int_from_string_find(vx_core::Type_string text, vx_core::Type_string find) {
    vx_core::Type_int output = vx_core::e_int;
    vx_core::vx_reserve({text, find});
    output = vx_type::vx_int_from_string_find(text, find);
    vx_core::vx_release_one_except({text, find}, output);
    return output;
  }
  /**
   * @function int_from_string_find
   * Returns integer position of find string in text string.
   * @param  {string} text
   * @param  {string} find
   * @return {int}
   * (func int<-string-find)
   */
  // (func int<-string-find)
  // class Class_int_from_string_find {
    Abstract_int_from_string_find::~Abstract_int_from_string_find() {}

    Class_int_from_string_find::Class_int_from_string_find() : Abstract_int_from_string_find::Abstract_int_from_string_find() {
      vx_core::refcount += 1;
    }

    Class_int_from_string_find::~Class_int_from_string_find() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_int_from_string_find::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_int_from_string_find output = vx_type::e_int_from_string_find;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_int_from_string_find::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_int_from_string_find output = vx_type::e_int_from_string_find;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_int_from_string_find::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "int<-string-find", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_int_from_string_find::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_int_from_string_find::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "int<-string-find", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_int_from_string_find::vx_empty() const {
      return vx_type::e_int_from_string_find;
    }

    vx_core::Type_any Class_int_from_string_find::vx_type() const {
      return vx_type::t_int_from_string_find;
    }

    vx_core::Type_msgblock Class_int_from_string_find::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_int_from_string_find::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_int_from_string_find::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_string find = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_int_from_string_find(text, find);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func int<-string-findkeyword)
  vx_core::Type_int f_int_from_string_findkeyword(vx_core::Type_string text, vx_core::Type_string find) {
    vx_core::Type_int output = vx_core::e_int;
    vx_core::vx_reserve({text, find});
    output = vx_type::vx_int_from_string_findkeyword(text, find);
    vx_core::vx_release_one_except({text, find}, output);
    return output;
  }
  /**
   * @function int_from_string_findkeyword
   * Returns integer position of find string in text string. Note: the find terms :whitespace and :nonwhitespace have special meaning.
   * @param  {string} text
   * @param  {string} find
   * @return {int}
   * (func int<-string-findkeyword)
   */
  // (func int<-string-findkeyword)
  // class Class_int_from_string_findkeyword {
    Abstract_int_from_string_findkeyword::~Abstract_int_from_string_findkeyword() {}

    Class_int_from_string_findkeyword::Class_int_from_string_findkeyword() : Abstract_int_from_string_findkeyword::Abstract_int_from_string_findkeyword() {
      vx_core::refcount += 1;
    }

    Class_int_from_string_findkeyword::~Class_int_from_string_findkeyword() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_int_from_string_findkeyword::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_int_from_string_findkeyword output = vx_type::e_int_from_string_findkeyword;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_int_from_string_findkeyword::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_int_from_string_findkeyword output = vx_type::e_int_from_string_findkeyword;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_int_from_string_findkeyword::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "int<-string-findkeyword", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_int_from_string_findkeyword::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_int_from_string_findkeyword::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "int<-string-findkeyword", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_int_from_string_findkeyword::vx_empty() const {
      return vx_type::e_int_from_string_findkeyword;
    }

    vx_core::Type_any Class_int_from_string_findkeyword::vx_type() const {
      return vx_type::t_int_from_string_findkeyword;
    }

    vx_core::Type_msgblock Class_int_from_string_findkeyword::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_int_from_string_findkeyword::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_int_from_string_findkeyword::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_string find = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_int_from_string_findkeyword(text, find);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func int<-string-findlast)
  vx_core::Type_int f_int_from_string_findlast(vx_core::Type_string text, vx_core::Type_string findlast) {
    vx_core::Type_int output = vx_core::e_int;
    vx_core::vx_reserve({text, findlast});
    output = vx_type::vx_int_from_string_findlast(text, findlast);
    vx_core::vx_release_one_except({text, findlast}, output);
    return output;
  }
  /**
   * @function int_from_string_findlast
   * Returns integer position of find string in text string.
   * @param  {string} text
   * @param  {string} findlast
   * @return {int}
   * (func int<-string-findlast)
   */
  // (func int<-string-findlast)
  // class Class_int_from_string_findlast {
    Abstract_int_from_string_findlast::~Abstract_int_from_string_findlast() {}

    Class_int_from_string_findlast::Class_int_from_string_findlast() : Abstract_int_from_string_findlast::Abstract_int_from_string_findlast() {
      vx_core::refcount += 1;
    }

    Class_int_from_string_findlast::~Class_int_from_string_findlast() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_int_from_string_findlast::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_int_from_string_findlast output = vx_type::e_int_from_string_findlast;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_int_from_string_findlast::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_int_from_string_findlast output = vx_type::e_int_from_string_findlast;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_int_from_string_findlast::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "int<-string-findlast", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_int_from_string_findlast::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_int_from_string_findlast::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "int<-string-findlast", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_int_from_string_findlast::vx_empty() const {
      return vx_type::e_int_from_string_findlast;
    }

    vx_core::Type_any Class_int_from_string_findlast::vx_type() const {
      return vx_type::t_int_from_string_findlast;
    }

    vx_core::Type_msgblock Class_int_from_string_findlast::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_int_from_string_findlast::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_int_from_string_findlast::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_string findlast = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_int_from_string_findlast(text, findlast);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func is-boolean)
  vx_core::Type_boolean f_is_boolean(vx_core::Type_any value) {
    vx_core::Type_boolean output = vx_core::e_boolean;
    vx_core::vx_reserve(value);
    output = vx_core::f_eq(
      vx_core::vx_new_string("boolean"),
      vx_core::f_typename_from_any(value)
    );
    vx_core::vx_release_one_except(value, output);
    return output;
  }
  /**
   * @function is_boolean
   * @param  {any} value
   * @return {boolean}
   * (func is-boolean)
   */
  // (func is-boolean)
  // class Class_is_boolean {
    Abstract_is_boolean::~Abstract_is_boolean() {}

    Class_is_boolean::Class_is_boolean() : Abstract_is_boolean::Abstract_is_boolean() {
      vx_core::refcount += 1;
    }

    Class_is_boolean::~Class_is_boolean() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_is_boolean::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_boolean output = vx_type::e_is_boolean;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_is_boolean::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_boolean output = vx_type::e_is_boolean;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_is_boolean::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "is-boolean", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_is_boolean::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_is_boolean::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "is-boolean", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_is_boolean::vx_empty() const {
      return vx_type::e_is_boolean;
    }

    vx_core::Type_any Class_is_boolean::vx_type() const {
      return vx_type::t_is_boolean;
    }

    vx_core::Type_msgblock Class_is_boolean::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_is_boolean::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_is_boolean::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_is_boolean::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any inputval = vx_core::vx_any_from_any(vx_core::t_any, val);
      output = vx_type::f_is_boolean(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_is_boolean::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any value = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_is_boolean(value);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func is-decimal)
  vx_core::Type_boolean f_is_decimal(vx_core::Type_any value) {
    vx_core::Type_boolean output = vx_core::e_boolean;
    vx_core::vx_reserve(value);
    output = vx_core::f_eq(
      vx_core::vx_new_string("decimal"),
      vx_core::f_typename_from_any(value)
    );
    vx_core::vx_release_one_except(value, output);
    return output;
  }
  /**
   * @function is_decimal
   * @param  {any} value
   * @return {boolean}
   * (func is-decimal)
   */
  // (func is-decimal)
  // class Class_is_decimal {
    Abstract_is_decimal::~Abstract_is_decimal() {}

    Class_is_decimal::Class_is_decimal() : Abstract_is_decimal::Abstract_is_decimal() {
      vx_core::refcount += 1;
    }

    Class_is_decimal::~Class_is_decimal() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_is_decimal::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_decimal output = vx_type::e_is_decimal;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_is_decimal::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_decimal output = vx_type::e_is_decimal;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_is_decimal::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "is-decimal", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_is_decimal::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_is_decimal::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "is-decimal", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_is_decimal::vx_empty() const {
      return vx_type::e_is_decimal;
    }

    vx_core::Type_any Class_is_decimal::vx_type() const {
      return vx_type::t_is_decimal;
    }

    vx_core::Type_msgblock Class_is_decimal::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_is_decimal::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_is_decimal::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_is_decimal::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any inputval = vx_core::vx_any_from_any(vx_core::t_any, val);
      output = vx_type::f_is_decimal(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_is_decimal::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any value = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_is_decimal(value);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func is-none)
  vx_core::Type_boolean f_is_none(vx_core::Type_any value) {
    vx_core::Type_boolean output = vx_core::e_boolean;
    vx_core::vx_reserve(value);
    output = vx_core::f_eq(
      value,
      vx_core::t_none
    );
    vx_core::vx_release_one_except(value, output);
    return output;
  }
  /**
   * @function is_none
   * @param  {any} value
   * @return {boolean}
   * (func is-none)
   */
  // (func is-none)
  // class Class_is_none {
    Abstract_is_none::~Abstract_is_none() {}

    Class_is_none::Class_is_none() : Abstract_is_none::Abstract_is_none() {
      vx_core::refcount += 1;
    }

    Class_is_none::~Class_is_none() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_is_none::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_none output = vx_type::e_is_none;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_is_none::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_none output = vx_type::e_is_none;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_is_none::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "is-none", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_is_none::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_is_none::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "is-none", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_is_none::vx_empty() const {
      return vx_type::e_is_none;
    }

    vx_core::Type_any Class_is_none::vx_type() const {
      return vx_type::t_is_none;
    }

    vx_core::Type_msgblock Class_is_none::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_is_none::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_is_none::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_is_none::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any inputval = vx_core::vx_any_from_any(vx_core::t_any, val);
      output = vx_type::f_is_none(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_is_none::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any value = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_is_none(value);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func is-string)
  vx_core::Type_boolean f_is_string(vx_core::Type_any value) {
    vx_core::Type_boolean output = vx_core::e_boolean;
    vx_core::vx_reserve(value);
    output = vx_core::f_eq(
      vx_core::vx_new_string("vx/core/string"),
      vx_core::f_typename_from_any(value)
    );
    vx_core::vx_release_one_except(value, output);
    return output;
  }
  /**
   * @function is_string
   * @param  {any} value
   * @return {boolean}
   * (func is-string)
   */
  // (func is-string)
  // class Class_is_string {
    Abstract_is_string::~Abstract_is_string() {}

    Class_is_string::Class_is_string() : Abstract_is_string::Abstract_is_string() {
      vx_core::refcount += 1;
    }

    Class_is_string::~Class_is_string() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_is_string::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_string output = vx_type::e_is_string;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_is_string::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_string output = vx_type::e_is_string;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_is_string::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "is-string", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_is_string::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_is_string::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "is-string", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_is_string::vx_empty() const {
      return vx_type::e_is_string;
    }

    vx_core::Type_any Class_is_string::vx_type() const {
      return vx_type::t_is_string;
    }

    vx_core::Type_msgblock Class_is_string::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_is_string::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_is_string::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_is_string::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any inputval = vx_core::vx_any_from_any(vx_core::t_any, val);
      output = vx_type::f_is_string(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_is_string::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any value = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_is_string(value);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func is-type)
  vx_core::Type_boolean f_is_type(vx_core::Type_any value, vx_core::Type_any type) {
    vx_core::Type_boolean output = vx_core::e_boolean;
    vx_core::vx_reserve({value, type});
    output = vx_core::f_or_1(
      vx_core::vx_new(vx_core::t_booleanlist, {
        vx_core::f_eq(
          vx_core::f_typename_from_type(type),
          vx_core::f_typename_from_any(value)
        ),
        vx_core::f_contains_1(
          vx_type::f_allowtypenames_from_type(type),
          vx_core::f_typename_from_any(value)
        ),
        vx_core::f_contains_1(
          vx_type::f_traitnames_from_any(value),
          vx_core::f_typename_from_type(type)
        )
      })
    );
    vx_core::vx_release_one_except({value, type}, output);
    return output;
  }
  /**
   * @function is_type
   * @param  {any} value
   * @param  {any} type
   * @return {boolean}
   * (func is-type)
   */
  // (func is-type)
  // class Class_is_type {
    Abstract_is_type::~Abstract_is_type() {}

    Class_is_type::Class_is_type() : Abstract_is_type::Abstract_is_type() {
      vx_core::refcount += 1;
    }

    Class_is_type::~Class_is_type() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_is_type::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_type output = vx_type::e_is_type;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_is_type::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_type output = vx_type::e_is_type;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_is_type::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "is-type", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_is_type::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_is_type::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "is-type", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_is_type::vx_empty() const {
      return vx_type::e_is_type;
    }

    vx_core::Type_any Class_is_type::vx_type() const {
      return vx_type::t_is_type;
    }

    vx_core::Type_msgblock Class_is_type::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_is_type::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_is_type::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any value = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_any type = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_is_type(value, type);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func is-type<-any-typelist)
  vx_core::Type_boolean f_is_type_from_any_typelist(vx_core::Type_any value, vx_core::Type_typelist typelist) {
    vx_core::Type_boolean output = vx_core::e_boolean;
    vx_core::vx_reserve({value, typelist});
    output = vx_core::f_any_from_list_start_reduce(
      vx_core::t_boolean,
      typelist,
      vx_core::vx_new_boolean(false),
      vx_core::t_any_from_reduce->vx_fn_new({value}, [value](vx_core::Type_any result_any, vx_core::Type_any type) {
        vx_core::Type_boolean result = vx_core::vx_any_from_any(vx_core::t_boolean, result_any);
        vx_core::Type_any output_1 = 
          vx_core::f_or(
            result,
            vx_type::f_is_type(value, type)
          );
        return output_1;
      })
    );
    vx_core::vx_release_one_except({value, typelist}, output);
    return output;
  }
  /**
   * @function is_type_from_any_typelist
   * Returns true if value is any type in typelist.
   * @param  {any} value
   * @param  {typelist} typelist
   * @return {boolean}
   * (func is-type<-any-typelist)
   */
  // (func is-type<-any-typelist)
  // class Class_is_type_from_any_typelist {
    Abstract_is_type_from_any_typelist::~Abstract_is_type_from_any_typelist() {}

    Class_is_type_from_any_typelist::Class_is_type_from_any_typelist() : Abstract_is_type_from_any_typelist::Abstract_is_type_from_any_typelist() {
      vx_core::refcount += 1;
    }

    Class_is_type_from_any_typelist::~Class_is_type_from_any_typelist() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_is_type_from_any_typelist::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_type_from_any_typelist output = vx_type::e_is_type_from_any_typelist;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_is_type_from_any_typelist::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_is_type_from_any_typelist output = vx_type::e_is_type_from_any_typelist;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_is_type_from_any_typelist::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "is-type<-any-typelist", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_is_type_from_any_typelist::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_is_type_from_any_typelist::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "is-type<-any-typelist", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_is_type_from_any_typelist::vx_empty() const {
      return vx_type::e_is_type_from_any_typelist;
    }

    vx_core::Type_any Class_is_type_from_any_typelist::vx_type() const {
      return vx_type::t_is_type_from_any_typelist;
    }

    vx_core::Type_msgblock Class_is_type_from_any_typelist::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_is_type_from_any_typelist::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_is_type_from_any_typelist::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any value = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_typelist typelist = vx_core::vx_any_from_any(vx_core::t_typelist, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_is_type_from_any_typelist(value, typelist);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func string-lowercase)
  vx_core::Type_string f_string_lowercase(vx_core::Type_string text) {
    vx_core::Type_string output = vx_core::e_string;
    vx_core::vx_reserve(text);
    output = vx_type::vx_string_lowercase(text);
    vx_core::vx_release_one_except(text, output);
    return output;
  }
  /**
   * @function string_lowercase
   * Returns lowercase version of string
   * @param  {string} text
   * @return {string}
   * (func string-lowercase)
   */
  // (func string-lowercase)
  // class Class_string_lowercase {
    Abstract_string_lowercase::~Abstract_string_lowercase() {}

    Class_string_lowercase::Class_string_lowercase() : Abstract_string_lowercase::Abstract_string_lowercase() {
      vx_core::refcount += 1;
    }

    Class_string_lowercase::~Class_string_lowercase() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_string_lowercase::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_lowercase output = vx_type::e_string_lowercase;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_string_lowercase::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_lowercase output = vx_type::e_string_lowercase;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_string_lowercase::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "string-lowercase", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_string_lowercase::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_string_lowercase::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "string-lowercase", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_string_lowercase::vx_empty() const {
      return vx_type::e_string_lowercase;
    }

    vx_core::Type_any Class_string_lowercase::vx_type() const {
      return vx_type::t_string_lowercase;
    }

    vx_core::Type_msgblock Class_string_lowercase::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_string_lowercase::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_string_lowercase::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_string_lowercase::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string inputval = vx_core::vx_any_from_any(vx_core::t_string, val);
      output = vx_type::f_string_lowercase(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_string_lowercase::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_string_lowercase(text);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func string-outdent)
  vx_core::Type_string f_string_outdent(vx_core::Type_string text) {
    vx_core::Type_string output = vx_core::e_string;
    vx_core::vx_reserve(text);
    output = vx_core::f_let(
      vx_core::t_string,
      vx_core::t_any_from_func->vx_fn_new({text}, [text]() {
        vx_core::Type_int pos = vx_type::f_int_from_string_findkeyword(text, vx_core::vx_new_string(":nonwhitespace"));
        vx_core::vx_ref_plus(pos);
        vx_core::Type_string output_1 = vx_core::f_if_2(
          vx_core::t_string,
          vx_core::vx_new(vx_core::t_thenelselist, {
            vx_core::f_then(
              vx_core::t_boolean_from_func->vx_fn_new({pos}, [pos]() {
                vx_core::Type_boolean output_1 = vx_core::f_eq(vx_core::vx_new_int(0), pos);
                return output_1;
              }),
              vx_core::t_any_from_func->vx_fn_new({text}, [text]() {
                vx_core::Type_any output_1 = text;
                return output_1;
              })
            ),
            vx_core::f_else(
              vx_core::t_any_from_func->vx_fn_new({text, pos}, [text, pos]() {
                vx_core::Type_string output_1 = vx_core::f_let(
                  vx_core::t_string,
                  vx_core::t_any_from_func->vx_fn_new({text, pos}, [text, pos]() {
                    vx_core::Type_string indent = vx_type::f_string_from_string_end(
                      text,
                      vx_core::f_minus1(pos)
                    );
                    vx_core::vx_ref_plus(indent);
                    vx_core::Type_string rest = vx_type::f_string_from_string_start(text, pos);
                    vx_core::vx_ref_plus(rest);
                    vx_core::Type_int linepos = vx_type::f_int_from_string_find(indent, vx_core::vx_new_string("\n"));
                    vx_core::vx_ref_plus(linepos);
                    vx_core::Type_string outdent = vx_core::f_if_1(
                      vx_core::t_string,
                      vx_core::f_eq(vx_core::vx_new_int(0), linepos),
                      vx_core::vx_new_string(""),
                      vx_core::vx_new_string("\n")
                    );
                    vx_core::vx_ref_plus(outdent);
                    vx_core::Type_string output_1 = vx_core::f_string_from_string_find_replace(rest, indent, outdent);
                    vx_core::vx_release_one_except({indent, rest, linepos, outdent}, output_1);
                    return output_1;
                  })
                );
                return output_1;
              })
            )
          })
        );
        vx_core::vx_release_one_except(pos, output_1);
        return output_1;
      })
    );
    vx_core::vx_release_one_except(text, output);
    return output;
  }
  /**
   * @function string_outdent
   * Returns a string replacing leading whitespace on all lines based on first line.
   * @param  {string} text
   * @return {string}
   * (func string-outdent)
   */
  // (func string-outdent)
  // class Class_string_outdent {
    Abstract_string_outdent::~Abstract_string_outdent() {}

    Class_string_outdent::Class_string_outdent() : Abstract_string_outdent::Abstract_string_outdent() {
      vx_core::refcount += 1;
    }

    Class_string_outdent::~Class_string_outdent() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_string_outdent::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_outdent output = vx_type::e_string_outdent;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_string_outdent::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_outdent output = vx_type::e_string_outdent;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_string_outdent::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "string-outdent", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_string_outdent::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_string_outdent::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "string-outdent", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_string_outdent::vx_empty() const {
      return vx_type::e_string_outdent;
    }

    vx_core::Type_any Class_string_outdent::vx_type() const {
      return vx_type::t_string_outdent;
    }

    vx_core::Type_msgblock Class_string_outdent::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_string_outdent::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_string_outdent::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_string_outdent::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string inputval = vx_core::vx_any_from_any(vx_core::t_string, val);
      output = vx_type::f_string_outdent(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_string_outdent::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_string_outdent(text);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func string-trim)
  vx_core::Type_string f_string_trim(vx_core::Type_string text) {
    vx_core::Type_string output = vx_core::e_string;
    vx_core::vx_reserve(text);
    output = vx_type::vx_string_trim(text);
    vx_core::vx_release_one_except(text, output);
    return output;
  }
  /**
   * @function string_trim
   * Trims whitespace from the front and back of text
   * @param  {string} text
   * @return {string}
   * (func string-trim)
   */
  // (func string-trim)
  // class Class_string_trim {
    Abstract_string_trim::~Abstract_string_trim() {}

    Class_string_trim::Class_string_trim() : Abstract_string_trim::Abstract_string_trim() {
      vx_core::refcount += 1;
    }

    Class_string_trim::~Class_string_trim() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_string_trim::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_trim output = vx_type::e_string_trim;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_string_trim::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_trim output = vx_type::e_string_trim;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_string_trim::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "string-trim", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_string_trim::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_string_trim::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "string-trim", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_string_trim::vx_empty() const {
      return vx_type::e_string_trim;
    }

    vx_core::Type_any Class_string_trim::vx_type() const {
      return vx_type::t_string_trim;
    }

    vx_core::Type_msgblock Class_string_trim::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_string_trim::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_string_trim::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_string_trim::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string inputval = vx_core::vx_any_from_any(vx_core::t_string, val);
      output = vx_type::f_string_trim(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_string_trim::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_string_trim(text);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func string-uppercase)
  vx_core::Type_string f_string_uppercase(vx_core::Type_string text) {
    vx_core::Type_string output = vx_core::e_string;
    vx_core::vx_reserve(text);
    output = vx_type::vx_string_uppercase(text);
    vx_core::vx_release_one_except(text, output);
    return output;
  }
  /**
   * @function string_uppercase
   * Returns uppercase version of string
   * @param  {string} text
   * @return {string}
   * (func string-uppercase)
   */
  // (func string-uppercase)
  // class Class_string_uppercase {
    Abstract_string_uppercase::~Abstract_string_uppercase() {}

    Class_string_uppercase::Class_string_uppercase() : Abstract_string_uppercase::Abstract_string_uppercase() {
      vx_core::refcount += 1;
    }

    Class_string_uppercase::~Class_string_uppercase() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_string_uppercase::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_uppercase output = vx_type::e_string_uppercase;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_string_uppercase::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_uppercase output = vx_type::e_string_uppercase;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_string_uppercase::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "string-uppercase", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_string_uppercase::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_string_uppercase::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "string-uppercase", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_string_uppercase::vx_empty() const {
      return vx_type::e_string_uppercase;
    }

    vx_core::Type_any Class_string_uppercase::vx_type() const {
      return vx_type::t_string_uppercase;
    }

    vx_core::Type_msgblock Class_string_uppercase::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_string_uppercase::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_string_uppercase::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_string_uppercase::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string inputval = vx_core::vx_any_from_any(vx_core::t_string, val);
      output = vx_type::f_string_uppercase(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_string_uppercase::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_string_uppercase(text);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func string<-int)
  vx_core::Type_string f_string_from_int(vx_core::Type_int value) {
    vx_core::Type_string output = vx_core::e_string;
    vx_core::vx_reserve(value);
    output = vx_core::f_switch(
      vx_core::t_string,
      value,
      vx_core::vx_new(vx_core::t_thenelselist, {
        vx_core::f_case_1(
          vx_core::c_infinity,
          vx_core::t_any_from_func->vx_fn_new({}, []() {
            vx_core::Type_string output_1 = vx_core::vx_new_string("infinity");
            return output_1;
          })
        ),
        vx_core::f_case_1(
          vx_core::c_neginfinity,
          vx_core::t_any_from_func->vx_fn_new({}, []() {
            vx_core::Type_string output_1 = vx_core::vx_new_string("neginfinity");
            return output_1;
          })
        ),
        vx_core::f_case_1(
          vx_core::c_notanumber,
          vx_core::t_any_from_func->vx_fn_new({}, []() {
            vx_core::Type_string output_1 = vx_core::vx_new_string("notanumber");
            return output_1;
          })
        ),
        vx_core::f_else(
          vx_core::t_any_from_func->vx_fn_new({value}, [value]() {
            vx_core::Type_string output_1 = vx_core::f_new(vx_core::t_string, vx_core::vx_new(vx_core::t_anylist, {
            value}));
            return output_1;
          })
        )
      })
    );
    vx_core::vx_release_one_except(value, output);
    return output;
  }
  /**
   * @function string_from_int
   * Function Type converting int to string
   * @param  {int} value
   * @return {string}
   * (func string<-int)
   */
  // (func string<-int)
  // class Class_string_from_int {
    Abstract_string_from_int::~Abstract_string_from_int() {}

    Class_string_from_int::Class_string_from_int() : Abstract_string_from_int::Abstract_string_from_int() {
      vx_core::refcount += 1;
    }

    Class_string_from_int::~Class_string_from_int() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_string_from_int::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_from_int output = vx_type::e_string_from_int;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_string_from_int::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_from_int output = vx_type::e_string_from_int;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_string_from_int::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "string<-int", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_string_from_int::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_string_from_int::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "string<-int", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_string_from_int::vx_empty() const {
      return vx_type::e_string_from_int;
    }

    vx_core::Type_any Class_string_from_int::vx_type() const {
      return vx_type::t_string_from_int;
    }

    vx_core::Type_msgblock Class_string_from_int::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_string_from_int::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_string_from_int::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_string_from_int::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_int inputval = vx_core::vx_any_from_any(vx_core::t_int, val);
      output = vx_type::f_string_from_int(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_string_from_int::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_int value = vx_core::vx_any_from_any(vx_core::t_int, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_string_from_int(value);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func string<-string-end)
  vx_core::Type_string f_string_from_string_end(vx_core::Type_string text, vx_core::Type_int endpos) {
    vx_core::Type_string output = vx_core::e_string;
    vx_core::vx_reserve({text, endpos});
    output = vx_type::f_string_from_string_start_end(text, vx_core::vx_new_int(1), endpos);
    vx_core::vx_release_one_except({text, endpos}, output);
    return output;
  }
  /**
   * @function string_from_string_end
   * Returns a substring between 0 end position.
   * @param  {string} text
   * @param  {int} endpos
   * @return {string}
   * (func string<-string-end)
   */
  // (func string<-string-end)
  // class Class_string_from_string_end {
    Abstract_string_from_string_end::~Abstract_string_from_string_end() {}

    Class_string_from_string_end::Class_string_from_string_end() : Abstract_string_from_string_end::Abstract_string_from_string_end() {
      vx_core::refcount += 1;
    }

    Class_string_from_string_end::~Class_string_from_string_end() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_string_from_string_end::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_from_string_end output = vx_type::e_string_from_string_end;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_string_from_string_end::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_from_string_end output = vx_type::e_string_from_string_end;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_string_from_string_end::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "string<-string-end", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_string_from_string_end::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_string_from_string_end::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "string<-string-end", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_string_from_string_end::vx_empty() const {
      return vx_type::e_string_from_string_end;
    }

    vx_core::Type_any Class_string_from_string_end::vx_type() const {
      return vx_type::t_string_from_string_end;
    }

    vx_core::Type_msgblock Class_string_from_string_end::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_string_from_string_end::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_string_from_string_end::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_int endpos = vx_core::vx_any_from_any(vx_core::t_int, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_string_from_string_end(text, endpos);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func string<-string-start)
  vx_core::Type_string f_string_from_string_start(vx_core::Type_string text, vx_core::Type_int startpos) {
    vx_core::Type_string output = vx_core::e_string;
    vx_core::vx_reserve({text, startpos});
    output = vx_type::f_string_from_string_start_end(
      text,
      startpos,
      vx_core::f_length(text)
    );
    vx_core::vx_release_one_except({text, startpos}, output);
    return output;
  }
  /**
   * @function string_from_string_start
   * Returns a substring between start string end.
   * @param  {string} text
   * @param  {int} startpos
   * @return {string}
   * (func string<-string-start)
   */
  // (func string<-string-start)
  // class Class_string_from_string_start {
    Abstract_string_from_string_start::~Abstract_string_from_string_start() {}

    Class_string_from_string_start::Class_string_from_string_start() : Abstract_string_from_string_start::Abstract_string_from_string_start() {
      vx_core::refcount += 1;
    }

    Class_string_from_string_start::~Class_string_from_string_start() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_string_from_string_start::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_from_string_start output = vx_type::e_string_from_string_start;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_string_from_string_start::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_from_string_start output = vx_type::e_string_from_string_start;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_string_from_string_start::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "string<-string-start", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_string_from_string_start::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_string_from_string_start::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "string<-string-start", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_string_from_string_start::vx_empty() const {
      return vx_type::e_string_from_string_start;
    }

    vx_core::Type_any Class_string_from_string_start::vx_type() const {
      return vx_type::t_string_from_string_start;
    }

    vx_core::Type_msgblock Class_string_from_string_start::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_string_from_string_start::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_string_from_string_start::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_int startpos = vx_core::vx_any_from_any(vx_core::t_int, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_string_from_string_start(text, startpos);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func string<-string-start-end)
  vx_core::Type_string f_string_from_string_start_end(vx_core::Type_string text, vx_core::Type_int start, vx_core::Type_int end) {
    vx_core::Type_string output = vx_core::e_string;
    vx_core::vx_reserve({text, start, end});
    std::string str = vx_core::vx_string_from_string_start_end(text->vx_string(), start->vx_int(), end->vx_int());
    output = vx_core::vx_new_string(str);
    vx_core::vx_release_one_except({text, start, end}, output);
    return output;
  }
  /**
   * @function string_from_string_start_end
   * Returns a substring between start and end positions.
   * @param  {string} text
   * @param  {int} start
   * @param  {int} end
   * @return {string}
   * (func string<-string-start-end)
   */
  // (func string<-string-start-end)
  // class Class_string_from_string_start_end {
    Abstract_string_from_string_start_end::~Abstract_string_from_string_start_end() {}

    Class_string_from_string_start_end::Class_string_from_string_start_end() : Abstract_string_from_string_start_end::Abstract_string_from_string_start_end() {
      vx_core::refcount += 1;
    }

    Class_string_from_string_start_end::~Class_string_from_string_start_end() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_string_from_string_start_end::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_from_string_start_end output = vx_type::e_string_from_string_start_end;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_string_from_string_start_end::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_from_string_start_end output = vx_type::e_string_from_string_start_end;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_string_from_string_start_end::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "string<-string-start-end", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_string_from_string_start_end::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_string_from_string_start_end::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "string<-string-start-end", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_string_from_string_start_end::vx_empty() const {
      return vx_type::e_string_from_string_start_end;
    }

    vx_core::Type_any Class_string_from_string_start_end::vx_type() const {
      return vx_type::t_string_from_string_start_end;
    }

    vx_core::Type_msgblock Class_string_from_string_start_end::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_string_from_string_start_end::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_string_from_string_start_end::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_int start = vx_core::vx_any_from_any(vx_core::t_int, arglist->vx_get_any(vx_core::vx_new_int(1)));
      vx_core::Type_int end = vx_core::vx_any_from_any(vx_core::t_int, arglist->vx_get_any(vx_core::vx_new_int(2)));
      output = vx_type::f_string_from_string_start_end(text, start, end);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func string<-stringlist-join)
  vx_core::Type_string f_string_from_stringlist_join(vx_core::Type_stringlist vals, vx_core::Type_string delim) {
    vx_core::Type_string output = vx_core::e_string;
    vx_core::vx_reserve({vals, delim});
    output = vx_type::vx_string_from_stringlist_join(vals, delim);
    vx_core::vx_release_one_except({vals, delim}, output);
    return output;
  }
  /**
   * @function string_from_stringlist_join
   * Returns a string by joining a stringlist by the delimiter
   * @param  {stringlist} vals
   * @param  {string} delim
   * @return {string}
   * (func string<-stringlist-join)
   */
  // (func string<-stringlist-join)
  // class Class_string_from_stringlist_join {
    Abstract_string_from_stringlist_join::~Abstract_string_from_stringlist_join() {}

    Class_string_from_stringlist_join::Class_string_from_stringlist_join() : Abstract_string_from_stringlist_join::Abstract_string_from_stringlist_join() {
      vx_core::refcount += 1;
    }

    Class_string_from_stringlist_join::~Class_string_from_stringlist_join() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_string_from_stringlist_join::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_from_stringlist_join output = vx_type::e_string_from_stringlist_join;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_string_from_stringlist_join::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_string_from_stringlist_join output = vx_type::e_string_from_stringlist_join;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_string_from_stringlist_join::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "string<-stringlist-join", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_string_from_stringlist_join::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_string_from_stringlist_join::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "string<-stringlist-join", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_string_from_stringlist_join::vx_empty() const {
      return vx_type::e_string_from_stringlist_join;
    }

    vx_core::Type_any Class_string_from_stringlist_join::vx_type() const {
      return vx_type::t_string_from_stringlist_join;
    }

    vx_core::Type_msgblock Class_string_from_stringlist_join::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_string_from_stringlist_join::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_string_from_stringlist_join::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_stringlist vals = vx_core::vx_any_from_any(vx_core::t_stringlist, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_string delim = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_string_from_stringlist_join(vals, delim);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func stringlist<-string-split)
  vx_core::Type_stringlist f_stringlist_from_string_split(vx_core::Type_string text, vx_core::Type_string delim) {
    vx_core::Type_stringlist output = vx_core::e_stringlist;
    vx_core::vx_reserve({text, delim});
    output = vx_type::vx_stringlist_from_string_split(text, delim);
    vx_core::vx_release_one_except({text, delim}, output);
    return output;
  }
  /**
   * @function stringlist_from_string_split
   * Returns a stringlist by splitting a string by the delimiter
   * @param  {string} text
   * @param  {string} delim
   * @return {stringlist}
   * (func stringlist<-string-split)
   */
  // (func stringlist<-string-split)
  // class Class_stringlist_from_string_split {
    Abstract_stringlist_from_string_split::~Abstract_stringlist_from_string_split() {}

    Class_stringlist_from_string_split::Class_stringlist_from_string_split() : Abstract_stringlist_from_string_split::Abstract_stringlist_from_string_split() {
      vx_core::refcount += 1;
    }

    Class_stringlist_from_string_split::~Class_stringlist_from_string_split() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_stringlist_from_string_split::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_stringlist_from_string_split output = vx_type::e_stringlist_from_string_split;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_stringlist_from_string_split::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_stringlist_from_string_split output = vx_type::e_stringlist_from_string_split;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_stringlist_from_string_split::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "stringlist<-string-split", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_stringlist_from_string_split::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_stringlist_from_string_split::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "stringlist<-string-split", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_stringlist_from_string_split::vx_empty() const {
      return vx_type::e_stringlist_from_string_split;
    }

    vx_core::Type_any Class_stringlist_from_string_split::vx_type() const {
      return vx_type::t_stringlist_from_string_split;
    }

    vx_core::Type_msgblock Class_stringlist_from_string_split::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_stringlist_from_string_split::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Type_any Class_stringlist_from_string_split::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_string text = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(0)));
      vx_core::Type_string delim = vx_core::vx_any_from_any(vx_core::t_string, arglist->vx_get_any(vx_core::vx_new_int(1)));
      output = vx_type::f_stringlist_from_string_split(text, delim);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func traitnames<-any)
  vx_core::Type_stringlist f_traitnames_from_any(vx_core::Type_any value) {
    vx_core::Type_stringlist output = vx_core::e_stringlist;
    vx_core::vx_reserve(value);
    output = vx_core::f_typenames_from_typelist(
      vx_type::f_traits_from_any(value)
    );
    vx_core::vx_release_one_except(value, output);
    return output;
  }
  /**
   * @function traitnames_from_any
   * Get the trait names of a given type
   * @param  {any} value
   * @return {stringlist}
   * (func traitnames<-any)
   */
  // (func traitnames<-any)
  // class Class_traitnames_from_any {
    Abstract_traitnames_from_any::~Abstract_traitnames_from_any() {}

    Class_traitnames_from_any::Class_traitnames_from_any() : Abstract_traitnames_from_any::Abstract_traitnames_from_any() {
      vx_core::refcount += 1;
    }

    Class_traitnames_from_any::~Class_traitnames_from_any() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_traitnames_from_any::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_traitnames_from_any output = vx_type::e_traitnames_from_any;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_traitnames_from_any::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_traitnames_from_any output = vx_type::e_traitnames_from_any;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_traitnames_from_any::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "traitnames<-any", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_traitnames_from_any::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_traitnames_from_any::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "traitnames<-any", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_traitnames_from_any::vx_empty() const {
      return vx_type::e_traitnames_from_any;
    }

    vx_core::Type_any Class_traitnames_from_any::vx_type() const {
      return vx_type::t_traitnames_from_any;
    }

    vx_core::Type_msgblock Class_traitnames_from_any::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_traitnames_from_any::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_traitnames_from_any::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_traitnames_from_any::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any inputval = vx_core::vx_any_from_any(vx_core::t_any, val);
      output = vx_type::f_traitnames_from_any(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_traitnames_from_any::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any value = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_traitnames_from_any(value);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  // (func traits<-any)
  vx_core::Type_typelist f_traits_from_any(vx_core::Type_any value) {
    vx_core::Type_typelist output = vx_core::e_typelist;
    vx_core::vx_reserve(value);
    output = vx_core::f_traits_from_typedef(
      vx_core::f_typedef_from_any(value)
    );
    vx_core::vx_release_one_except(value, output);
    return output;
  }
  /**
   * @function traits_from_any
   * Get the traits of a given value
   * @param  {any} value
   * @return {typelist}
   * (func traits<-any)
   */
  // (func traits<-any)
  // class Class_traits_from_any {
    Abstract_traits_from_any::~Abstract_traits_from_any() {}

    Class_traits_from_any::Class_traits_from_any() : Abstract_traits_from_any::Abstract_traits_from_any() {
      vx_core::refcount += 1;
    }

    Class_traits_from_any::~Class_traits_from_any() {
      vx_core::refcount -= 1;
      if (this->vx_p_msgblock) {
        vx_core::vx_release_one(this->vx_p_msgblock);
      }
    }

    vx_core::Type_any Class_traits_from_any::vx_new(
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_traits_from_any output = vx_type::e_traits_from_any;
      vx_core::vx_release(vals);
      return output;
    }

    vx_core::Type_any Class_traits_from_any::vx_copy(
      vx_core::Type_any copyval,
      vx_core::vx_Type_listany vals) const {
      vx_type::Func_traits_from_any output = vx_type::e_traits_from_any;
      vx_core::vx_release_except(copyval, output);
      vx_core::vx_release_except(vals, output);
      return output;
    }

    vx_core::Type_typedef Class_traits_from_any::vx_typedef() const {
      vx_core::Type_typedef output = vx_core::Class_typedef::vx_typedef_new(
        "vx/type", // pkgname
        "traits<-any", // name
        ":func", // extends
        vx_core::vx_new(vx_core::t_typelist, {vx_core::t_func}), // traits
        vx_core::e_typelist, // allowtypes
        vx_core::e_typelist, // disallowtypes
        vx_core::e_funclist, // allowfuncs
        vx_core::e_funclist, // disallowfuncs
        vx_core::e_anylist, // allowvalues
        vx_core::e_anylist, // disallowvalues
        vx_core::e_argmap // properties
      );
      return output;
    }

    vx_core::Type_constdef Class_traits_from_any::vx_constdef() const {
      return this->vx_p_constdef;
    }

    vx_core::Type_funcdef Class_traits_from_any::vx_funcdef() const {
      vx_core::Type_funcdef output = vx_core::Class_funcdef::vx_funcdef_new(
        "vx/type", // pkgname
        "traits<-any", // name
        0, // idx
        false, // async
        this->vx_typedef() // typedef
      );
      return output;
    }

    vx_core::Type_any Class_traits_from_any::vx_empty() const {
      return vx_type::e_traits_from_any;
    }

    vx_core::Type_any Class_traits_from_any::vx_type() const {
      return vx_type::t_traits_from_any;
    }

    vx_core::Type_msgblock Class_traits_from_any::vx_msgblock() const {
      vx_core::Type_msgblock output = this->vx_p_msgblock;
      if (!output) {
        output = vx_core::e_msgblock;
      }
      return output;
    }

    vx_core::vx_Type_listany Class_traits_from_any::vx_dispose() {
      return vx_core::emptylistany;
    }

    vx_core::Func_any_from_any Class_traits_from_any::vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const {
      return vx_core::e_any_from_any;
    }

    vx_core::Type_any Class_traits_from_any::vx_any_from_any(vx_core::Type_any val) const {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any inputval = vx_core::vx_any_from_any(vx_core::t_any, val);
      output = vx_type::f_traits_from_any(inputval);
      vx_core::vx_release_except(val, output);
      return output;
    }

    vx_core::Type_any Class_traits_from_any::vx_repl(vx_core::Type_anylist arglist) {
      vx_core::Type_any output = vx_core::e_any;
      vx_core::Type_any value = vx_core::vx_any_from_any(vx_core::t_any, arglist->vx_get_any(vx_core::vx_new_int(0)));
      output = vx_type::f_traits_from_any(value);
      vx_core::vx_release_except(arglist, output);
      return output;
    }

  //}

  vx_type::Func_allowtypenames_from_type e_allowtypenames_from_type = NULL;
  vx_type::Func_allowtypenames_from_type t_allowtypenames_from_type = NULL;
  vx_type::Func_allowtypes_from_type e_allowtypes_from_type = NULL;
  vx_type::Func_allowtypes_from_type t_allowtypes_from_type = NULL;
  vx_type::Func_any_from_int e_any_from_int = NULL;
  vx_type::Func_any_from_int t_any_from_int = NULL;
  vx_type::Func_boolean_from_string_ends e_boolean_from_string_ends = NULL;
  vx_type::Func_boolean_from_string_ends t_boolean_from_string_ends = NULL;
  vx_type::Func_boolean_from_string_starts e_boolean_from_string_starts = NULL;
  vx_type::Func_boolean_from_string_starts t_boolean_from_string_starts = NULL;
  vx_type::Func_int_from_string_find e_int_from_string_find = NULL;
  vx_type::Func_int_from_string_find t_int_from_string_find = NULL;
  vx_type::Func_int_from_string_findkeyword e_int_from_string_findkeyword = NULL;
  vx_type::Func_int_from_string_findkeyword t_int_from_string_findkeyword = NULL;
  vx_type::Func_int_from_string_findlast e_int_from_string_findlast = NULL;
  vx_type::Func_int_from_string_findlast t_int_from_string_findlast = NULL;
  vx_type::Func_is_boolean e_is_boolean = NULL;
  vx_type::Func_is_boolean t_is_boolean = NULL;
  vx_type::Func_is_decimal e_is_decimal = NULL;
  vx_type::Func_is_decimal t_is_decimal = NULL;
  vx_type::Func_is_none e_is_none = NULL;
  vx_type::Func_is_none t_is_none = NULL;
  vx_type::Func_is_string e_is_string = NULL;
  vx_type::Func_is_string t_is_string = NULL;
  vx_type::Func_is_type e_is_type = NULL;
  vx_type::Func_is_type t_is_type = NULL;
  vx_type::Func_is_type_from_any_typelist e_is_type_from_any_typelist = NULL;
  vx_type::Func_is_type_from_any_typelist t_is_type_from_any_typelist = NULL;
  vx_type::Func_string_lowercase e_string_lowercase = NULL;
  vx_type::Func_string_lowercase t_string_lowercase = NULL;
  vx_type::Func_string_outdent e_string_outdent = NULL;
  vx_type::Func_string_outdent t_string_outdent = NULL;
  vx_type::Func_string_trim e_string_trim = NULL;
  vx_type::Func_string_trim t_string_trim = NULL;
  vx_type::Func_string_uppercase e_string_uppercase = NULL;
  vx_type::Func_string_uppercase t_string_uppercase = NULL;
  vx_type::Func_string_from_int e_string_from_int = NULL;
  vx_type::Func_string_from_int t_string_from_int = NULL;
  vx_type::Func_string_from_string_end e_string_from_string_end = NULL;
  vx_type::Func_string_from_string_end t_string_from_string_end = NULL;
  vx_type::Func_string_from_string_start e_string_from_string_start = NULL;
  vx_type::Func_string_from_string_start t_string_from_string_start = NULL;
  vx_type::Func_string_from_string_start_end e_string_from_string_start_end = NULL;
  vx_type::Func_string_from_string_start_end t_string_from_string_start_end = NULL;
  vx_type::Func_string_from_stringlist_join e_string_from_stringlist_join = NULL;
  vx_type::Func_string_from_stringlist_join t_string_from_stringlist_join = NULL;
  vx_type::Func_stringlist_from_string_split e_stringlist_from_string_split = NULL;
  vx_type::Func_stringlist_from_string_split t_stringlist_from_string_split = NULL;
  vx_type::Func_traitnames_from_any e_traitnames_from_any = NULL;
  vx_type::Func_traitnames_from_any t_traitnames_from_any = NULL;
  vx_type::Func_traits_from_any e_traits_from_any = NULL;
  vx_type::Func_traits_from_any t_traits_from_any = NULL;

  // class vx_Class_package {
    vx_Class_package::vx_Class_package() {
      init();
    }
    void vx_Class_package::init() {
      vx_type::e_allowtypenames_from_type = new vx_type::Class_allowtypenames_from_type();
      vx_core::vx_reserve_empty(vx_type::e_allowtypenames_from_type);
      vx_type::t_allowtypenames_from_type = new vx_type::Class_allowtypenames_from_type();
      vx_core::vx_reserve_type(vx_type::t_allowtypenames_from_type);
      vx_type::e_allowtypes_from_type = new vx_type::Class_allowtypes_from_type();
      vx_core::vx_reserve_empty(vx_type::e_allowtypes_from_type);
      vx_type::t_allowtypes_from_type = new vx_type::Class_allowtypes_from_type();
      vx_core::vx_reserve_type(vx_type::t_allowtypes_from_type);
      vx_type::e_any_from_int = new vx_type::Class_any_from_int();
      vx_core::vx_reserve_empty(vx_type::e_any_from_int);
      vx_type::t_any_from_int = new vx_type::Class_any_from_int();
      vx_core::vx_reserve_type(vx_type::t_any_from_int);
      vx_type::e_boolean_from_string_ends = new vx_type::Class_boolean_from_string_ends();
      vx_core::vx_reserve_empty(vx_type::e_boolean_from_string_ends);
      vx_type::t_boolean_from_string_ends = new vx_type::Class_boolean_from_string_ends();
      vx_core::vx_reserve_type(vx_type::t_boolean_from_string_ends);
      vx_type::e_boolean_from_string_starts = new vx_type::Class_boolean_from_string_starts();
      vx_core::vx_reserve_empty(vx_type::e_boolean_from_string_starts);
      vx_type::t_boolean_from_string_starts = new vx_type::Class_boolean_from_string_starts();
      vx_core::vx_reserve_type(vx_type::t_boolean_from_string_starts);
      vx_type::e_int_from_string_find = new vx_type::Class_int_from_string_find();
      vx_core::vx_reserve_empty(vx_type::e_int_from_string_find);
      vx_type::t_int_from_string_find = new vx_type::Class_int_from_string_find();
      vx_core::vx_reserve_type(vx_type::t_int_from_string_find);
      vx_type::e_int_from_string_findkeyword = new vx_type::Class_int_from_string_findkeyword();
      vx_core::vx_reserve_empty(vx_type::e_int_from_string_findkeyword);
      vx_type::t_int_from_string_findkeyword = new vx_type::Class_int_from_string_findkeyword();
      vx_core::vx_reserve_type(vx_type::t_int_from_string_findkeyword);
      vx_type::e_int_from_string_findlast = new vx_type::Class_int_from_string_findlast();
      vx_core::vx_reserve_empty(vx_type::e_int_from_string_findlast);
      vx_type::t_int_from_string_findlast = new vx_type::Class_int_from_string_findlast();
      vx_core::vx_reserve_type(vx_type::t_int_from_string_findlast);
      vx_type::e_is_boolean = new vx_type::Class_is_boolean();
      vx_core::vx_reserve_empty(vx_type::e_is_boolean);
      vx_type::t_is_boolean = new vx_type::Class_is_boolean();
      vx_core::vx_reserve_type(vx_type::t_is_boolean);
      vx_type::e_is_decimal = new vx_type::Class_is_decimal();
      vx_core::vx_reserve_empty(vx_type::e_is_decimal);
      vx_type::t_is_decimal = new vx_type::Class_is_decimal();
      vx_core::vx_reserve_type(vx_type::t_is_decimal);
      vx_type::e_is_none = new vx_type::Class_is_none();
      vx_core::vx_reserve_empty(vx_type::e_is_none);
      vx_type::t_is_none = new vx_type::Class_is_none();
      vx_core::vx_reserve_type(vx_type::t_is_none);
      vx_type::e_is_string = new vx_type::Class_is_string();
      vx_core::vx_reserve_empty(vx_type::e_is_string);
      vx_type::t_is_string = new vx_type::Class_is_string();
      vx_core::vx_reserve_type(vx_type::t_is_string);
      vx_type::e_is_type = new vx_type::Class_is_type();
      vx_core::vx_reserve_empty(vx_type::e_is_type);
      vx_type::t_is_type = new vx_type::Class_is_type();
      vx_core::vx_reserve_type(vx_type::t_is_type);
      vx_type::e_is_type_from_any_typelist = new vx_type::Class_is_type_from_any_typelist();
      vx_core::vx_reserve_empty(vx_type::e_is_type_from_any_typelist);
      vx_type::t_is_type_from_any_typelist = new vx_type::Class_is_type_from_any_typelist();
      vx_core::vx_reserve_type(vx_type::t_is_type_from_any_typelist);
      vx_type::e_string_lowercase = new vx_type::Class_string_lowercase();
      vx_core::vx_reserve_empty(vx_type::e_string_lowercase);
      vx_type::t_string_lowercase = new vx_type::Class_string_lowercase();
      vx_core::vx_reserve_type(vx_type::t_string_lowercase);
      vx_type::e_string_outdent = new vx_type::Class_string_outdent();
      vx_core::vx_reserve_empty(vx_type::e_string_outdent);
      vx_type::t_string_outdent = new vx_type::Class_string_outdent();
      vx_core::vx_reserve_type(vx_type::t_string_outdent);
      vx_type::e_string_trim = new vx_type::Class_string_trim();
      vx_core::vx_reserve_empty(vx_type::e_string_trim);
      vx_type::t_string_trim = new vx_type::Class_string_trim();
      vx_core::vx_reserve_type(vx_type::t_string_trim);
      vx_type::e_string_uppercase = new vx_type::Class_string_uppercase();
      vx_core::vx_reserve_empty(vx_type::e_string_uppercase);
      vx_type::t_string_uppercase = new vx_type::Class_string_uppercase();
      vx_core::vx_reserve_type(vx_type::t_string_uppercase);
      vx_type::e_string_from_int = new vx_type::Class_string_from_int();
      vx_core::vx_reserve_empty(vx_type::e_string_from_int);
      vx_type::t_string_from_int = new vx_type::Class_string_from_int();
      vx_core::vx_reserve_type(vx_type::t_string_from_int);
      vx_type::e_string_from_string_end = new vx_type::Class_string_from_string_end();
      vx_core::vx_reserve_empty(vx_type::e_string_from_string_end);
      vx_type::t_string_from_string_end = new vx_type::Class_string_from_string_end();
      vx_core::vx_reserve_type(vx_type::t_string_from_string_end);
      vx_type::e_string_from_string_start = new vx_type::Class_string_from_string_start();
      vx_core::vx_reserve_empty(vx_type::e_string_from_string_start);
      vx_type::t_string_from_string_start = new vx_type::Class_string_from_string_start();
      vx_core::vx_reserve_type(vx_type::t_string_from_string_start);
      vx_type::e_string_from_string_start_end = new vx_type::Class_string_from_string_start_end();
      vx_core::vx_reserve_empty(vx_type::e_string_from_string_start_end);
      vx_type::t_string_from_string_start_end = new vx_type::Class_string_from_string_start_end();
      vx_core::vx_reserve_type(vx_type::t_string_from_string_start_end);
      vx_type::e_string_from_stringlist_join = new vx_type::Class_string_from_stringlist_join();
      vx_core::vx_reserve_empty(vx_type::e_string_from_stringlist_join);
      vx_type::t_string_from_stringlist_join = new vx_type::Class_string_from_stringlist_join();
      vx_core::vx_reserve_type(vx_type::t_string_from_stringlist_join);
      vx_type::e_stringlist_from_string_split = new vx_type::Class_stringlist_from_string_split();
      vx_core::vx_reserve_empty(vx_type::e_stringlist_from_string_split);
      vx_type::t_stringlist_from_string_split = new vx_type::Class_stringlist_from_string_split();
      vx_core::vx_reserve_type(vx_type::t_stringlist_from_string_split);
      vx_type::e_traitnames_from_any = new vx_type::Class_traitnames_from_any();
      vx_core::vx_reserve_empty(vx_type::e_traitnames_from_any);
      vx_type::t_traitnames_from_any = new vx_type::Class_traitnames_from_any();
      vx_core::vx_reserve_type(vx_type::t_traitnames_from_any);
      vx_type::e_traits_from_any = new vx_type::Class_traits_from_any();
      vx_core::vx_reserve_empty(vx_type::e_traits_from_any);
      vx_type::t_traits_from_any = new vx_type::Class_traits_from_any();
      vx_core::vx_reserve_type(vx_type::t_traits_from_any);
      vx_core::vx_Type_mapany maptype;
      vx_core::vx_Type_mapany mapconst;
      vx_core::vx_Type_mapfunc mapfunc;
      vx_core::vx_Type_mapany mapempty;
      mapfunc["allowtypenames<-type"] = vx_type::t_allowtypenames_from_type;
      mapfunc["allowtypes<-type"] = vx_type::t_allowtypes_from_type;
      mapfunc["any<-int"] = vx_type::t_any_from_int;
      mapfunc["boolean<-string-ends"] = vx_type::t_boolean_from_string_ends;
      mapfunc["boolean<-string-starts"] = vx_type::t_boolean_from_string_starts;
      mapfunc["int<-string-find"] = vx_type::t_int_from_string_find;
      mapfunc["int<-string-findkeyword"] = vx_type::t_int_from_string_findkeyword;
      mapfunc["int<-string-findlast"] = vx_type::t_int_from_string_findlast;
      mapfunc["is-boolean"] = vx_type::t_is_boolean;
      mapfunc["is-decimal"] = vx_type::t_is_decimal;
      mapfunc["is-none"] = vx_type::t_is_none;
      mapfunc["is-string"] = vx_type::t_is_string;
      mapfunc["is-type"] = vx_type::t_is_type;
      mapfunc["is-type<-any-typelist"] = vx_type::t_is_type_from_any_typelist;
      mapfunc["string-lowercase"] = vx_type::t_string_lowercase;
      mapfunc["string-outdent"] = vx_type::t_string_outdent;
      mapfunc["string-trim"] = vx_type::t_string_trim;
      mapfunc["string-uppercase"] = vx_type::t_string_uppercase;
      mapfunc["string<-int"] = vx_type::t_string_from_int;
      mapfunc["string<-string-end"] = vx_type::t_string_from_string_end;
      mapfunc["string<-string-start"] = vx_type::t_string_from_string_start;
      mapfunc["string<-string-start-end"] = vx_type::t_string_from_string_start_end;
      mapfunc["string<-stringlist-join"] = vx_type::t_string_from_stringlist_join;
      mapfunc["stringlist<-string-split"] = vx_type::t_stringlist_from_string_split;
      mapfunc["traitnames<-any"] = vx_type::t_traitnames_from_any;
      mapfunc["traits<-any"] = vx_type::t_traits_from_any;
      vx_core::vx_global_package_set("vx/type", maptype, mapconst, mapfunc);
	   }
  // }

}
