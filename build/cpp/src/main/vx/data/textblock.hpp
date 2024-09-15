#ifndef VX_DATA_TEXTBLOCK_HPP
#define VX_DATA_TEXTBLOCK_HPP
#include <vector>
#include "../../vx/core.hpp"
#include "../../vx/collection.hpp"
#include "../../vx/type.hpp"

namespace vx_data_textblock {


  // forward declarations
  class Abstract_delim;
  typedef Abstract_delim* Type_delim;
  extern Type_delim e_delim;
  extern Type_delim t_delim;
  class Abstract_delimlist;
  typedef Abstract_delimlist* Type_delimlist;
  extern Type_delimlist e_delimlist;
  extern Type_delimlist t_delimlist;
  class Abstract_textblock;
  typedef Abstract_textblock* Type_textblock;
  extern Type_textblock e_textblock;
  extern Type_textblock t_textblock;
  class Abstract_textblocklist;
  typedef Abstract_textblocklist* Type_textblocklist;
  extern Type_textblocklist e_textblocklist;
  extern Type_textblocklist t_textblocklist;
  class Class_delimbracketangle;
  typedef Class_delimbracketangle* Const_delimbracketangle;
  extern Const_delimbracketangle c_delimbracketangle;
  class Class_delimbracketcurly;
  typedef Class_delimbracketcurly* Const_delimbracketcurly;
  extern Const_delimbracketcurly c_delimbracketcurly;
  class Class_delimbracketsquare;
  typedef Class_delimbracketsquare* Const_delimbracketsquare;
  extern Const_delimbracketsquare c_delimbracketsquare;
  class Class_delimclose;
  typedef Class_delimclose* Const_delimclose;
  extern Const_delimclose c_delimclose;
  class Class_delimclosing;
  typedef Class_delimclosing* Const_delimclosing;
  extern Const_delimclosing c_delimclosing;
  class Class_delimcomma;
  typedef Class_delimcomma* Const_delimcomma;
  extern Const_delimcomma c_delimcomma;
  class Class_delimcomment;
  typedef Class_delimcomment* Const_delimcomment;
  extern Const_delimcomment c_delimcomment;
  class Class_delimcommentblock;
  typedef Class_delimcommentblock* Const_delimcommentblock;
  extern Const_delimcommentblock c_delimcommentblock;
  class Class_delimline;
  typedef Class_delimline* Const_delimline;
  extern Const_delimline c_delimline;
  class Class_delimlisttest1;
  typedef Class_delimlisttest1* Const_delimlisttest1;
  extern Const_delimlisttest1 c_delimlisttest1;
  class Class_delimlisttest2;
  typedef Class_delimlisttest2* Const_delimlisttest2;
  extern Const_delimlisttest2 c_delimlisttest2;
  class Class_delimlisttest3;
  typedef Class_delimlisttest3* Const_delimlisttest3;
  extern Const_delimlisttest3 c_delimlisttest3;
  class Class_delimnonwhitespace;
  typedef Class_delimnonwhitespace* Const_delimnonwhitespace;
  extern Const_delimnonwhitespace c_delimnonwhitespace;
  class Class_delimparen;
  typedef Class_delimparen* Const_delimparen;
  extern Const_delimparen c_delimparen;
  class Class_delimquote;
  typedef Class_delimquote* Const_delimquote;
  extern Const_delimquote c_delimquote;
  class Class_delimquoteblock;
  typedef Class_delimquoteblock* Const_delimquoteblock;
  extern Const_delimquoteblock c_delimquoteblock;
  class Class_delimspace;
  typedef Class_delimspace* Const_delimspace;
  extern Const_delimspace c_delimspace;
  class Class_delimtest1;
  typedef Class_delimtest1* Const_delimtest1;
  extern Const_delimtest1 c_delimtest1;
  class Class_delimtest2;
  typedef Class_delimtest2* Const_delimtest2;
  extern Const_delimtest2 c_delimtest2;
  class Class_delimtest3;
  typedef Class_delimtest3* Const_delimtest3;
  extern Const_delimtest3 c_delimtest3;
  class Class_delimtext;
  typedef Class_delimtext* Const_delimtext;
  extern Const_delimtext c_delimtext;
  class Class_delimwhitespace;
  typedef Class_delimwhitespace* Const_delimwhitespace;
  extern Const_delimwhitespace c_delimwhitespace;
  class Abstract_children_from_textblock;
  typedef Abstract_children_from_textblock* Func_children_from_textblock;
  extern Func_children_from_textblock e_children_from_textblock;
  extern Func_children_from_textblock t_children_from_textblock;
  class Abstract_delim_first_from_delim_delim;
  typedef Abstract_delim_first_from_delim_delim* Func_delim_first_from_delim_delim;
  extern Func_delim_first_from_delim_delim e_delim_first_from_delim_delim;
  extern Func_delim_first_from_delim_delim t_delim_first_from_delim_delim;
  class Abstract_delim_first_from_string_delimlist;
  typedef Abstract_delim_first_from_string_delimlist* Func_delim_first_from_string_delimlist;
  extern Func_delim_first_from_string_delimlist e_delim_first_from_string_delimlist;
  extern Func_delim_first_from_string_delimlist t_delim_first_from_string_delimlist;
  class Abstract_delim_pos_from_string_delim;
  typedef Abstract_delim_pos_from_string_delim* Func_delim_pos_from_string_delim;
  extern Func_delim_pos_from_string_delim e_delim_pos_from_string_delim;
  extern Func_delim_pos_from_string_delim t_delim_pos_from_string_delim;
  class Abstract_delimlist_pos_from_string_delimlist;
  typedef Abstract_delimlist_pos_from_string_delimlist* Func_delimlist_pos_from_string_delimlist;
  extern Func_delimlist_pos_from_string_delimlist e_delimlist_pos_from_string_delimlist;
  extern Func_delimlist_pos_from_string_delimlist t_delimlist_pos_from_string_delimlist;
  class Abstract_is_close;
  typedef Abstract_is_close* Func_is_close;
  extern Func_is_close e_is_close;
  extern Func_is_close t_is_close;
  class Abstract_is_single;
  typedef Abstract_is_single* Func_is_single;
  extern Func_is_single e_is_single;
  extern Func_is_single t_is_single;
  class Abstract_stringlist_from_textblocklist;
  typedef Abstract_stringlist_from_textblocklist* Func_stringlist_from_textblocklist;
  extern Func_stringlist_from_textblocklist e_stringlist_from_textblocklist;
  extern Func_stringlist_from_textblocklist t_stringlist_from_textblocklist;
  class Abstract_text_from_textblock;
  typedef Abstract_text_from_textblock* Func_text_from_textblock;
  extern Func_text_from_textblock e_text_from_textblock;
  extern Func_text_from_textblock t_text_from_textblock;
  class Abstract_textblock_addchild_from_textblock_find_child;
  typedef Abstract_textblock_addchild_from_textblock_find_child* Func_textblock_addchild_from_textblock_find_child;
  extern Func_textblock_addchild_from_textblock_find_child e_textblock_addchild_from_textblock_find_child;
  extern Func_textblock_addchild_from_textblock_find_child t_textblock_addchild_from_textblock_find_child;
  class Abstract_textblock_delimnotfound;
  typedef Abstract_textblock_delimnotfound* Func_textblock_delimnotfound;
  extern Func_textblock_delimnotfound e_textblock_delimnotfound;
  extern Func_textblock_delimnotfound t_textblock_delimnotfound;
  class Abstract_textblock_findparent_from_textblock;
  typedef Abstract_textblock_findparent_from_textblock* Func_textblock_findparent_from_textblock;
  extern Func_textblock_findparent_from_textblock e_textblock_findparent_from_textblock;
  extern Func_textblock_findparent_from_textblock t_textblock_findparent_from_textblock;
  class Abstract_textblock_init;
  typedef Abstract_textblock_init* Func_textblock_init;
  extern Func_textblock_init e_textblock_init;
  extern Func_textblock_init t_textblock_init;
  class Abstract_textblock_parse;
  typedef Abstract_textblock_parse* Func_textblock_parse;
  extern Func_textblock_parse e_textblock_parse;
  extern Func_textblock_parse t_textblock_parse;
  class Abstract_textblock_parse_one;
  typedef Abstract_textblock_parse_one* Func_textblock_parse_one;
  extern Func_textblock_parse_one e_textblock_parse_one;
  extern Func_textblock_parse_one t_textblock_parse_one;
  class Abstract_textblock_parse_from_string_delim;
  typedef Abstract_textblock_parse_from_string_delim* Func_textblock_parse_from_string_delim;
  extern Func_textblock_parse_from_string_delim e_textblock_parse_from_string_delim;
  extern Func_textblock_parse_from_string_delim t_textblock_parse_from_string_delim;
  class Abstract_textblock_replace_from_textblock_find_replace;
  typedef Abstract_textblock_replace_from_textblock_find_replace* Func_textblock_replace_from_textblock_find_replace;
  extern Func_textblock_replace_from_textblock_find_replace e_textblock_replace_from_textblock_find_replace;
  extern Func_textblock_replace_from_textblock_find_replace t_textblock_replace_from_textblock_find_replace;
  class Abstract_textblock_startleft_from_string_delim_offset;
  typedef Abstract_textblock_startleft_from_string_delim_offset* Func_textblock_startleft_from_string_delim_offset;
  extern Func_textblock_startleft_from_string_delim_offset e_textblock_startleft_from_string_delim_offset;
  extern Func_textblock_startleft_from_string_delim_offset t_textblock_startleft_from_string_delim_offset;
  class Abstract_textblock_startright_from_string_delim_offset;
  typedef Abstract_textblock_startright_from_string_delim_offset* Func_textblock_startright_from_string_delim_offset;
  extern Func_textblock_startright_from_string_delim_offset e_textblock_startright_from_string_delim_offset;
  extern Func_textblock_startright_from_string_delim_offset t_textblock_startright_from_string_delim_offset;
  class Abstract_textblock_from_close_textblock;
  typedef Abstract_textblock_from_close_textblock* Func_textblock_from_close_textblock;
  extern Func_textblock_from_close_textblock e_textblock_from_close_textblock;
  extern Func_textblock_from_close_textblock t_textblock_from_close_textblock;
  class Abstract_textblock_from_empty_textblock;
  typedef Abstract_textblock_from_empty_textblock* Func_textblock_from_empty_textblock;
  extern Func_textblock_from_empty_textblock e_textblock_from_empty_textblock;
  extern Func_textblock_from_empty_textblock t_textblock_from_empty_textblock;
  class Abstract_textblock_from_open_textblock;
  typedef Abstract_textblock_from_open_textblock* Func_textblock_from_open_textblock;
  extern Func_textblock_from_open_textblock e_textblock_from_open_textblock;
  extern Func_textblock_from_open_textblock t_textblock_from_open_textblock;
  class Abstract_textblock_from_single_textblock;
  typedef Abstract_textblock_from_single_textblock* Func_textblock_from_single_textblock;
  extern Func_textblock_from_single_textblock e_textblock_from_single_textblock;
  extern Func_textblock_from_single_textblock t_textblock_from_single_textblock;
  class Abstract_textblock_from_string_delim;
  typedef Abstract_textblock_from_string_delim* Func_textblock_from_string_delim;
  extern Func_textblock_from_string_delim e_textblock_from_string_delim;
  extern Func_textblock_from_string_delim t_textblock_from_string_delim;
  class Abstract_textblock_from_textblock_delim;
  typedef Abstract_textblock_from_textblock_delim* Func_textblock_from_textblock_delim;
  extern Func_textblock_from_textblock_delim e_textblock_from_textblock_delim;
  extern Func_textblock_from_textblock_delim t_textblock_from_textblock_delim;
  class Abstract_textblocklist_from_textblocklist_remove;
  typedef Abstract_textblocklist_from_textblocklist_remove* Func_textblocklist_from_textblocklist_remove;
  extern Func_textblocklist_from_textblocklist_remove e_textblocklist_from_textblocklist_remove;
  extern Func_textblocklist_from_textblocklist_remove t_textblocklist_from_textblocklist_remove;
  // (func children<-textblock)
  vx_data_textblock::Type_textblocklist f_children_from_textblock(vx_data_textblock::Type_textblock textblock);

  // (func delim-first<-delim-delim)
  vx_data_textblock::Type_delim f_delim_first_from_delim_delim(vx_data_textblock::Type_delim delim1, vx_data_textblock::Type_delim delim2);

  // (func delim-first<-string-delimlist)
  vx_data_textblock::Type_delim f_delim_first_from_string_delimlist(vx_core::Type_string text, vx_data_textblock::Type_delimlist delimlist);

  // (func delim-pos<-string-delim)
  vx_data_textblock::Type_delim f_delim_pos_from_string_delim(vx_core::Type_string text, vx_data_textblock::Type_delim delim);

  // (func delimlist-pos<-string-delimlist)
  vx_data_textblock::Type_delimlist f_delimlist_pos_from_string_delimlist(vx_core::Type_string text, vx_data_textblock::Type_delimlist delimlist);

  // (func is-close)
  vx_core::Type_boolean f_is_close(vx_data_textblock::Type_delim delimarg);

  // (func is-single)
  vx_core::Type_boolean f_is_single(vx_data_textblock::Type_delim delimarg);

  // (func stringlist<-textblocklist)
  vx_core::Type_stringlist f_stringlist_from_textblocklist(vx_data_textblock::Type_textblocklist textblocklist);

  // (func text<-textblock)
  vx_core::Type_string f_text_from_textblock(vx_data_textblock::Type_textblock block);

  // (func textblock-addchild<-textblock-find-child)
  vx_data_textblock::Type_textblock f_textblock_addchild_from_textblock_find_child(vx_data_textblock::Type_textblock textblockarg, vx_data_textblock::Type_textblock find, vx_data_textblock::Type_textblock child);

  // (func textblock-delimnotfound)
  vx_data_textblock::Type_textblock f_textblock_delimnotfound(vx_data_textblock::Type_textblock textblockarg);

  // (func textblock-findparent<-textblock)
  vx_data_textblock::Type_textblock f_textblock_findparent_from_textblock(vx_data_textblock::Type_textblock textblockarg);

  // (func textblock-init)
  vx_data_textblock::Type_textblock f_textblock_init(vx_data_textblock::Type_textblock textblockarg);

  // (func textblock-parse)
  vx_data_textblock::Type_textblock f_textblock_parse(vx_data_textblock::Type_textblock textblock);

  // (func textblock-parse-one)
  vx_data_textblock::Type_textblock f_textblock_parse_one(vx_data_textblock::Type_textblock textblockarg);

  // (func textblock-parse<-string-delim)
  vx_data_textblock::Type_textblock f_textblock_parse_from_string_delim(vx_core::Type_string text, vx_data_textblock::Type_delim delim);

  // (func textblock-replace<-textblock-find-replace)
  vx_data_textblock::Type_textblock f_textblock_replace_from_textblock_find_replace(vx_data_textblock::Type_textblock textblockarg, vx_data_textblock::Type_textblock find, vx_data_textblock::Type_textblock replace);

  // (func textblock-startleft<-string-delim-offset)
  vx_data_textblock::Type_textblock f_textblock_startleft_from_string_delim_offset(vx_core::Type_string text, vx_data_textblock::Type_delim delim, vx_core::Type_int offset);

  // (func textblock-startright<-string-delim-offset)
  vx_data_textblock::Type_textblock f_textblock_startright_from_string_delim_offset(vx_core::Type_string text, vx_data_textblock::Type_delim delimin, vx_core::Type_int offset);

  // (func textblock<-close-textblock)
  vx_data_textblock::Type_textblock f_textblock_from_close_textblock(vx_data_textblock::Type_delim close, vx_data_textblock::Type_textblock textblockarg);

  // (func textblock<-empty-textblock)
  vx_data_textblock::Type_textblock f_textblock_from_empty_textblock(vx_data_textblock::Type_delim empty, vx_data_textblock::Type_textblock textblockarg);

  // (func textblock<-open-textblock)
  vx_data_textblock::Type_textblock f_textblock_from_open_textblock(vx_data_textblock::Type_delim open, vx_data_textblock::Type_textblock textblockarg);

  // (func textblock<-single-textblock)
  vx_data_textblock::Type_textblock f_textblock_from_single_textblock(vx_data_textblock::Type_delim single, vx_data_textblock::Type_textblock textblockarg);

  // (func textblock<-string-delim)
  vx_data_textblock::Type_textblock f_textblock_from_string_delim(vx_core::Type_string text, vx_data_textblock::Type_delim delim);

  // (func textblock<-textblock-delim)
  vx_data_textblock::Type_textblock f_textblock_from_textblock_delim(vx_data_textblock::Type_textblock textblock, vx_data_textblock::Type_delim delim);

  // (func textblocklist<-textblocklist-remove)
  vx_data_textblock::Type_textblocklist f_textblocklist_from_textblocklist_remove(vx_data_textblock::Type_textblocklist tblist, vx_data_textblock::Type_delim remove);

  // (type delim)
  class Abstract_delim : public virtual vx_core::Abstract_struct {
  public:
    Abstract_delim() {};
    virtual ~Abstract_delim() = 0;
    // vx_map()
    virtual vx_core::vx_Type_mapany vx_map() const = 0;
    // vx_get_any(key)
    virtual vx_core::Type_any vx_get_any(vx_core::Type_string key) const = 0;
    // name()
    vx_core::Type_string vx_p_name = NULL;
    virtual vx_core::Type_string name() const = 0;
    // starttext()
    vx_core::Type_string vx_p_starttext = NULL;
    virtual vx_core::Type_string starttext() const = 0;
    // endtext()
    vx_core::Type_string vx_p_endtext = NULL;
    virtual vx_core::Type_string endtext() const = 0;
    // pos()
    vx_core::Type_int vx_p_pos = NULL;
    virtual vx_core::Type_int pos() const = 0;
    // delimlist()
    vx_data_textblock::Type_delimlist vx_p_delimlist = NULL;
    virtual vx_data_textblock::Type_delimlist delimlist() const = 0;
  };
  class Class_delim : public virtual Abstract_delim {
  public:
    Class_delim();
    virtual ~Class_delim() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::vx_Type_mapany vx_map() const override;
    virtual vx_core::Type_any vx_get_any(vx_core::Type_string key) const override;
    virtual vx_core::Type_string name() const override;
    virtual vx_core::Type_string starttext() const override;
    virtual vx_core::Type_string endtext() const override;
    virtual vx_core::Type_int pos() const override;
    virtual vx_data_textblock::Type_delimlist delimlist() const override;
  };

  // (type delimlist)
  class Abstract_delimlist : public virtual vx_core::Abstract_list {
  public:
    Abstract_delimlist() {};
    virtual ~Abstract_delimlist() = 0;
    // vx_get_any(index)
    virtual vx_core::Type_any vx_get_any(vx_core::Type_int index) const = 0;
    // vx_list()
    virtual vx_core::vx_Type_listany vx_list() const = 0;
    // vx_new_from_list(T, List<T>)
    virtual vx_core::Type_any vx_new_from_list(vx_core::vx_Type_listany listval) const = 0;
    std::vector<vx_data_textblock::Type_delim> vx_p_list;
    // vx_listdelim()
    virtual std::vector<vx_data_textblock::Type_delim> vx_listdelim() const = 0;
    // vx_get_delim(index)
    virtual vx_data_textblock::Type_delim vx_get_delim(vx_core::Type_int index) const = 0;
  };
  class Class_delimlist : public virtual Abstract_delimlist {
  public:
    Class_delimlist();
    virtual ~Class_delimlist() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_get_any(vx_core::Type_int index) const override;
    virtual vx_core::vx_Type_listany vx_list() const override;
    virtual vx_core::Type_any vx_new_from_list(vx_core::vx_Type_listany listval) const override;
    virtual std::vector<vx_data_textblock::Type_delim> vx_listdelim() const override;
    virtual vx_data_textblock::Type_delim vx_get_delim(vx_core::Type_int index) const override;
  };

  // (type textblock)
  class Abstract_textblock : public virtual vx_core::Abstract_struct {
  public:
    Abstract_textblock() {};
    virtual ~Abstract_textblock() = 0;
    // vx_map()
    virtual vx_core::vx_Type_mapany vx_map() const = 0;
    // vx_get_any(key)
    virtual vx_core::Type_any vx_get_any(vx_core::Type_string key) const = 0;
    // name()
    vx_core::Type_string vx_p_name = NULL;
    virtual vx_core::Type_string name() const = 0;
    // text()
    vx_core::Type_string vx_p_text = NULL;
    virtual vx_core::Type_string text() const = 0;
    // startpos()
    vx_core::Type_int vx_p_startpos = NULL;
    virtual vx_core::Type_int startpos() const = 0;
    // endpos()
    vx_core::Type_int vx_p_endpos = NULL;
    virtual vx_core::Type_int endpos() const = 0;
    // curpos()
    vx_core::Type_int vx_p_curpos = NULL;
    virtual vx_core::Type_int curpos() const = 0;
    // line()
    vx_core::Type_int vx_p_line = NULL;
    virtual vx_core::Type_int line() const = 0;
    // column()
    vx_core::Type_int vx_p_column = NULL;
    virtual vx_core::Type_int column() const = 0;
    // delim()
    vx_data_textblock::Type_delim vx_p_delim = NULL;
    virtual vx_data_textblock::Type_delim delim() const = 0;
    // close()
    vx_data_textblock::Type_delim vx_p_close = NULL;
    virtual vx_data_textblock::Type_delim close() const = 0;
    // parent()
    vx_data_textblock::Type_textblock vx_p_parent = NULL;
    virtual vx_data_textblock::Type_textblock parent() const = 0;
    // children()
    vx_data_textblock::Type_textblocklist vx_p_children = NULL;
    virtual vx_data_textblock::Type_textblocklist children() const = 0;
  };
  class Class_textblock : public virtual Abstract_textblock {
  public:
    Class_textblock();
    virtual ~Class_textblock() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::vx_Type_mapany vx_map() const override;
    virtual vx_core::Type_any vx_get_any(vx_core::Type_string key) const override;
    virtual vx_core::Type_string name() const override;
    virtual vx_core::Type_string text() const override;
    virtual vx_core::Type_int startpos() const override;
    virtual vx_core::Type_int endpos() const override;
    virtual vx_core::Type_int curpos() const override;
    virtual vx_core::Type_int line() const override;
    virtual vx_core::Type_int column() const override;
    virtual vx_data_textblock::Type_delim delim() const override;
    virtual vx_data_textblock::Type_delim close() const override;
    virtual vx_data_textblock::Type_textblock parent() const override;
    virtual vx_data_textblock::Type_textblocklist children() const override;
  };

  // (type textblocklist)
  class Abstract_textblocklist : public virtual vx_core::Abstract_list {
  public:
    Abstract_textblocklist() {};
    virtual ~Abstract_textblocklist() = 0;
    // vx_get_any(index)
    virtual vx_core::Type_any vx_get_any(vx_core::Type_int index) const = 0;
    // vx_list()
    virtual vx_core::vx_Type_listany vx_list() const = 0;
    // vx_new_from_list(T, List<T>)
    virtual vx_core::Type_any vx_new_from_list(vx_core::vx_Type_listany listval) const = 0;
    std::vector<vx_data_textblock::Type_textblock> vx_p_list;
    // vx_listtextblock()
    virtual std::vector<vx_data_textblock::Type_textblock> vx_listtextblock() const = 0;
    // vx_get_textblock(index)
    virtual vx_data_textblock::Type_textblock vx_get_textblock(vx_core::Type_int index) const = 0;
  };
  class Class_textblocklist : public virtual Abstract_textblocklist {
  public:
    Class_textblocklist();
    virtual ~Class_textblocklist() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_get_any(vx_core::Type_int index) const override;
    virtual vx_core::vx_Type_listany vx_list() const override;
    virtual vx_core::Type_any vx_new_from_list(vx_core::vx_Type_listany listval) const override;
    virtual std::vector<vx_data_textblock::Type_textblock> vx_listtextblock() const override;
    virtual vx_data_textblock::Type_textblock vx_get_textblock(vx_core::Type_int index) const override;
  };

  // (const delimbracketangle)
  class Class_delimbracketangle : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimbracketangle output);
  };

  // (const delimbracketcurly)
  class Class_delimbracketcurly : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimbracketcurly output);
  };

  // (const delimbracketsquare)
  class Class_delimbracketsquare : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimbracketsquare output);
  };

  // (const delimclose)
  class Class_delimclose : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimclose output);
  };

  // (const delimclosing)
  class Class_delimclosing : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimclosing output);
  };

  // (const delimcomma)
  class Class_delimcomma : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimcomma output);
  };

  // (const delimcomment)
  class Class_delimcomment : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimcomment output);
  };

  // (const delimcommentblock)
  class Class_delimcommentblock : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimcommentblock output);
  };

  // (const delimline)
  class Class_delimline : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimline output);
  };

  // (const delimlisttest1)
  class Class_delimlisttest1 : public vx_data_textblock::Class_delimlist {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimlisttest1 output);
  };

  // (const delimlisttest2)
  class Class_delimlisttest2 : public vx_data_textblock::Class_delimlist {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimlisttest2 output);
  };

  // (const delimlisttest3)
  class Class_delimlisttest3 : public vx_data_textblock::Class_delimlist {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimlisttest3 output);
  };

  // (const delimnonwhitespace)
  class Class_delimnonwhitespace : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimnonwhitespace output);
  };

  // (const delimparen)
  class Class_delimparen : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimparen output);
  };

  // (const delimquote)
  class Class_delimquote : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimquote output);
  };

  // (const delimquoteblock)
  class Class_delimquoteblock : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimquoteblock output);
  };

  // (const delimspace)
  class Class_delimspace : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimspace output);
  };

  // (const delimtest1)
  class Class_delimtest1 : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimtest1 output);
  };

  // (const delimtest2)
  class Class_delimtest2 : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimtest2 output);
  };

  // (const delimtest3)
  class Class_delimtest3 : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimtest3 output);
  };

  // (const delimtext)
  class Class_delimtext : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimtext output);
  };

  // (const delimwhitespace)
  class Class_delimwhitespace : public vx_data_textblock::Class_delim {
  public:
    static void vx_const_new(vx_data_textblock::Const_delimwhitespace output);
  };

  // (func children<-textblock)
  class Abstract_children_from_textblock : public vx_core::Abstract_any_from_any, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_children_from_textblock() {};
    virtual ~Abstract_children_from_textblock() = 0;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override = 0;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_children_from_textblock : public virtual Abstract_children_from_textblock {
  public:
    Class_children_from_textblock();
    virtual ~Class_children_from_textblock() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func delim-first<-delim-delim)
  class Abstract_delim_first_from_delim_delim : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_delim_first_from_delim_delim() {};
    virtual ~Abstract_delim_first_from_delim_delim() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_delim_first_from_delim_delim : public virtual Abstract_delim_first_from_delim_delim {
  public:
    Class_delim_first_from_delim_delim();
    virtual ~Class_delim_first_from_delim_delim() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func delim-first<-string-delimlist)
  class Abstract_delim_first_from_string_delimlist : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_delim_first_from_string_delimlist() {};
    virtual ~Abstract_delim_first_from_string_delimlist() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_delim_first_from_string_delimlist : public virtual Abstract_delim_first_from_string_delimlist {
  public:
    Class_delim_first_from_string_delimlist();
    virtual ~Class_delim_first_from_string_delimlist() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func delim-pos<-string-delim)
  class Abstract_delim_pos_from_string_delim : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_delim_pos_from_string_delim() {};
    virtual ~Abstract_delim_pos_from_string_delim() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_delim_pos_from_string_delim : public virtual Abstract_delim_pos_from_string_delim {
  public:
    Class_delim_pos_from_string_delim();
    virtual ~Class_delim_pos_from_string_delim() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func delimlist-pos<-string-delimlist)
  class Abstract_delimlist_pos_from_string_delimlist : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_delimlist_pos_from_string_delimlist() {};
    virtual ~Abstract_delimlist_pos_from_string_delimlist() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_delimlist_pos_from_string_delimlist : public virtual Abstract_delimlist_pos_from_string_delimlist {
  public:
    Class_delimlist_pos_from_string_delimlist();
    virtual ~Class_delimlist_pos_from_string_delimlist() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func is-close)
  class Abstract_is_close : public vx_core::Abstract_any_from_any, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_is_close() {};
    virtual ~Abstract_is_close() = 0;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override = 0;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_is_close : public virtual Abstract_is_close {
  public:
    Class_is_close();
    virtual ~Class_is_close() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func is-single)
  class Abstract_is_single : public vx_core::Abstract_any_from_any, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_is_single() {};
    virtual ~Abstract_is_single() = 0;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override = 0;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_is_single : public virtual Abstract_is_single {
  public:
    Class_is_single();
    virtual ~Class_is_single() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func stringlist<-textblocklist)
  class Abstract_stringlist_from_textblocklist : public vx_core::Abstract_any_from_any, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_stringlist_from_textblocklist() {};
    virtual ~Abstract_stringlist_from_textblocklist() = 0;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override = 0;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_stringlist_from_textblocklist : public virtual Abstract_stringlist_from_textblocklist {
  public:
    Class_stringlist_from_textblocklist();
    virtual ~Class_stringlist_from_textblocklist() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func text<-textblock)
  class Abstract_text_from_textblock : public vx_core::Abstract_any_from_any, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_text_from_textblock() {};
    virtual ~Abstract_text_from_textblock() = 0;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override = 0;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_text_from_textblock : public virtual Abstract_text_from_textblock {
  public:
    Class_text_from_textblock();
    virtual ~Class_text_from_textblock() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock-addchild<-textblock-find-child)
  class Abstract_textblock_addchild_from_textblock_find_child : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_addchild_from_textblock_find_child() {};
    virtual ~Abstract_textblock_addchild_from_textblock_find_child() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_addchild_from_textblock_find_child : public virtual Abstract_textblock_addchild_from_textblock_find_child {
  public:
    Class_textblock_addchild_from_textblock_find_child();
    virtual ~Class_textblock_addchild_from_textblock_find_child() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock-delimnotfound)
  class Abstract_textblock_delimnotfound : public vx_core::Abstract_any_from_any, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_delimnotfound() {};
    virtual ~Abstract_textblock_delimnotfound() = 0;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override = 0;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_delimnotfound : public virtual Abstract_textblock_delimnotfound {
  public:
    Class_textblock_delimnotfound();
    virtual ~Class_textblock_delimnotfound() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock-findparent<-textblock)
  class Abstract_textblock_findparent_from_textblock : public vx_core::Abstract_any_from_any, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_findparent_from_textblock() {};
    virtual ~Abstract_textblock_findparent_from_textblock() = 0;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override = 0;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_findparent_from_textblock : public virtual Abstract_textblock_findparent_from_textblock {
  public:
    Class_textblock_findparent_from_textblock();
    virtual ~Class_textblock_findparent_from_textblock() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock-init)
  class Abstract_textblock_init : public vx_core::Abstract_any_from_any, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_init() {};
    virtual ~Abstract_textblock_init() = 0;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override = 0;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_init : public virtual Abstract_textblock_init {
  public:
    Class_textblock_init();
    virtual ~Class_textblock_init() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock-parse)
  class Abstract_textblock_parse : public vx_core::Abstract_any_from_any, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_parse() {};
    virtual ~Abstract_textblock_parse() = 0;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override = 0;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_parse : public virtual Abstract_textblock_parse {
  public:
    Class_textblock_parse();
    virtual ~Class_textblock_parse() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock-parse-one)
  class Abstract_textblock_parse_one : public vx_core::Abstract_any_from_any, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_parse_one() {};
    virtual ~Abstract_textblock_parse_one() = 0;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override = 0;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_parse_one : public virtual Abstract_textblock_parse_one {
  public:
    Class_textblock_parse_one();
    virtual ~Class_textblock_parse_one() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Func_any_from_any vx_fn_new(vx_core::vx_Type_listany lambdavars, vx_core::Abstract_any_from_any::IFn fn) const override;
    virtual vx_core::Type_any vx_any_from_any(vx_core::Type_any value) const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock-parse<-string-delim)
  class Abstract_textblock_parse_from_string_delim : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_parse_from_string_delim() {};
    virtual ~Abstract_textblock_parse_from_string_delim() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_parse_from_string_delim : public virtual Abstract_textblock_parse_from_string_delim {
  public:
    Class_textblock_parse_from_string_delim();
    virtual ~Class_textblock_parse_from_string_delim() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock-replace<-textblock-find-replace)
  class Abstract_textblock_replace_from_textblock_find_replace : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_replace_from_textblock_find_replace() {};
    virtual ~Abstract_textblock_replace_from_textblock_find_replace() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_replace_from_textblock_find_replace : public virtual Abstract_textblock_replace_from_textblock_find_replace {
  public:
    Class_textblock_replace_from_textblock_find_replace();
    virtual ~Class_textblock_replace_from_textblock_find_replace() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock-startleft<-string-delim-offset)
  class Abstract_textblock_startleft_from_string_delim_offset : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_startleft_from_string_delim_offset() {};
    virtual ~Abstract_textblock_startleft_from_string_delim_offset() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_startleft_from_string_delim_offset : public virtual Abstract_textblock_startleft_from_string_delim_offset {
  public:
    Class_textblock_startleft_from_string_delim_offset();
    virtual ~Class_textblock_startleft_from_string_delim_offset() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock-startright<-string-delim-offset)
  class Abstract_textblock_startright_from_string_delim_offset : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_startright_from_string_delim_offset() {};
    virtual ~Abstract_textblock_startright_from_string_delim_offset() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_startright_from_string_delim_offset : public virtual Abstract_textblock_startright_from_string_delim_offset {
  public:
    Class_textblock_startright_from_string_delim_offset();
    virtual ~Class_textblock_startright_from_string_delim_offset() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock<-close-textblock)
  class Abstract_textblock_from_close_textblock : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_from_close_textblock() {};
    virtual ~Abstract_textblock_from_close_textblock() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_from_close_textblock : public virtual Abstract_textblock_from_close_textblock {
  public:
    Class_textblock_from_close_textblock();
    virtual ~Class_textblock_from_close_textblock() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock<-empty-textblock)
  class Abstract_textblock_from_empty_textblock : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_from_empty_textblock() {};
    virtual ~Abstract_textblock_from_empty_textblock() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_from_empty_textblock : public virtual Abstract_textblock_from_empty_textblock {
  public:
    Class_textblock_from_empty_textblock();
    virtual ~Class_textblock_from_empty_textblock() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock<-open-textblock)
  class Abstract_textblock_from_open_textblock : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_from_open_textblock() {};
    virtual ~Abstract_textblock_from_open_textblock() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_from_open_textblock : public virtual Abstract_textblock_from_open_textblock {
  public:
    Class_textblock_from_open_textblock();
    virtual ~Class_textblock_from_open_textblock() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock<-single-textblock)
  class Abstract_textblock_from_single_textblock : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_from_single_textblock() {};
    virtual ~Abstract_textblock_from_single_textblock() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_from_single_textblock : public virtual Abstract_textblock_from_single_textblock {
  public:
    Class_textblock_from_single_textblock();
    virtual ~Class_textblock_from_single_textblock() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock<-string-delim)
  class Abstract_textblock_from_string_delim : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_from_string_delim() {};
    virtual ~Abstract_textblock_from_string_delim() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_from_string_delim : public virtual Abstract_textblock_from_string_delim {
  public:
    Class_textblock_from_string_delim();
    virtual ~Class_textblock_from_string_delim() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblock<-textblock-delim)
  class Abstract_textblock_from_textblock_delim : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblock_from_textblock_delim() {};
    virtual ~Abstract_textblock_from_textblock_delim() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblock_from_textblock_delim : public virtual Abstract_textblock_from_textblock_delim {
  public:
    Class_textblock_from_textblock_delim();
    virtual ~Class_textblock_from_textblock_delim() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  // (func textblocklist<-textblocklist-remove)
  class Abstract_textblocklist_from_textblocklist_remove : public vx_core::Abstract_func, public virtual vx_core::Abstract_replfunc {
  public:
    Abstract_textblocklist_from_textblocklist_remove() {};
    virtual ~Abstract_textblocklist_from_textblocklist_remove() = 0;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override = 0;
  };
  class Class_textblocklist_from_textblocklist_remove : public virtual Abstract_textblocklist_from_textblocklist_remove {
  public:
    Class_textblocklist_from_textblocklist_remove();
    virtual ~Class_textblocklist_from_textblocklist_remove() override;
    virtual vx_core::Type_any vx_new(vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_any vx_copy(vx_core::Type_any copyval, vx_core::vx_Type_listany vals) const override;
    virtual vx_core::Type_funcdef vx_funcdef() const override;
    virtual vx_core::Type_typedef vx_typedef() const override;
    virtual vx_core::Type_constdef vx_constdef() const override;
    virtual vx_core::Type_msgblock vx_msgblock() const override;
    virtual vx_core::vx_Type_listany vx_dispose() override;
    virtual vx_core::Type_any vx_empty() const override;
    virtual vx_core::Type_any vx_type() const override;
    virtual vx_core::Type_any vx_repl(vx_core::Type_anylist arglist) override;
  };

  class vx_Class_package {
  public:
    vx_Class_package();
    void init();
  };
  inline vx_Class_package const vx_package;

}

#endif
