namespace Vx.Translation;

public static class Es {

  /**
   * @function translation_es
   * Returns translation data
   * @return {translation}
   * (func translation-es)
   */
  public interface Func_translation_es : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public Vx.Core.Type_translation vx_translation_es();
  }

  public class Class_translation_es : Vx.Core.Class_base, Func_translation_es {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Translation.Es.Class_translation_es output = new Vx.Translation.Es.Class_translation_es();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Translation.Es.Class_translation_es output = new Vx.Translation.Es.Class_translation_es();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/translation/es", // pkgname
        "translation-es", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "translation", // name
          ":struct", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.e_typelist, // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Translation.Es.e_translation_es;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Translation.Es.t_translation_es;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      output = Vx.Translation.Es.f_translation_es();
      return output;
    }

    public Vx.Core.Type_translation vx_translation_es() {
      Vx.Core.Type_translation output = Vx.Translation.Es.f_translation_es();
      return output;
    }

  }

  public static Vx.Translation.Es.Func_translation_es e_translation_es = new Vx.Translation.Es.Class_translation_es();
  public static Vx.Translation.Es.Func_translation_es t_translation_es = new Vx.Translation.Es.Class_translation_es();

  public static Vx.Core.Type_translation f_translation_es() {
    Vx.Core.Type_translation output = Vx.Core.e_translation;
    output = Vx.Core.f_new(
      Vx.Core.t_translation,
      Vx.Core.vx_new(
        Vx.Core.t_anylist,
        Vx.Core.vx_new_string(":name"),
        Vx.Core.vx_new_string("es"),
        Vx.Core.vx_new_string(":wordmap"),
        Vx.Translation.Es.f_words()
      )
    );
    return output;
  }

  /**
   * @function words
   * Word Translation
   * @return {stringmap}
   * (func words)
   */
  public interface Func_words : Vx.Core.Type_func, Vx.Core.Type_replfunc {
    public Vx.Core.Type_stringmap vx_words();
  }

  public class Class_words : Vx.Core.Class_base, Func_words {

    public override Vx.Core.Type_any vx_new(params object[] vals) {
      Vx.Translation.Es.Class_words output = new Vx.Translation.Es.Class_words();
      return output;
    }

    public override Vx.Core.Type_any vx_copy(params object[] vals) {
      Vx.Translation.Es.Class_words output = new Vx.Translation.Es.Class_words();
      return output;
    }

    public override Vx.Core.Type_typedef vx_typedef() {
      Vx.Core.Type_typedef output = Vx.Core.t_func.vx_typedef();
      return output;
    }

    public Vx.Core.Type_funcdef vx_funcdef() {
      Vx.Core.Type_funcdef output = Vx.Core.funcdef_new(
        "vx/translation/es", // pkgname
        "words", // name
        0, // idx
        false, // async
        Vx.Core.typedef_new(
          "vx/core", // pkgname
          "stringmap", // name
          ":map", // extends
          Vx.Core.e_typelist, // traits
          Vx.Core.vx_new(Vx.Core.t_typelist, Vx.Core.t_string), // allowtypes
          Vx.Core.e_typelist, // disallowtypes
          Vx.Core.e_funclist, // allowfuncs
          Vx.Core.e_funclist, // disallowfuncs
          Vx.Core.e_anylist, // allowvalues
          Vx.Core.e_anylist, // disallowvalues
          Vx.Core.e_argmap // properties
        ) // typedef
      );
      return output;
    }

    public override Vx.Core.Type_any vx_empty() {
      Vx.Core.Type_any output = Vx.Translation.Es.e_words;
      return output;
    }

    public override Vx.Core.Type_any vx_type() {
      Vx.Core.Type_any output = Vx.Translation.Es.t_words;
      return output;
    }

    public Vx.Core.Type_any vx_repl(Vx.Core.Type_anylist arglist) {
      Vx.Core.Type_any output = Vx.Core.e_any;
      output = Vx.Translation.Es.f_words();
      return output;
    }

    public Vx.Core.Type_stringmap vx_words() {
      Vx.Core.Type_stringmap output = Vx.Translation.Es.f_words();
      return output;
    }

  }

  public static Vx.Translation.Es.Func_words e_words = new Vx.Translation.Es.Class_words();
  public static Vx.Translation.Es.Func_words t_words = new Vx.Translation.Es.Class_words();

  public static Vx.Core.Type_stringmap f_words() {
    Vx.Core.Type_stringmap output = Vx.Core.e_stringmap;
    output = Vx.Core.f_new(
      Vx.Core.t_stringmap,
      Vx.Core.vx_new(
        Vx.Core.t_anylist,
        Vx.Core.vx_new_string("Hello"),
        Vx.Core.vx_new_string("Hola"),
        Vx.Core.vx_new_string("World"),
        Vx.Core.vx_new_string("Mundo")
      )
    );
    return output;
  }


  public static class PackageRunOnce {
    public static bool RunOnce() {
    Vx.Core.Map<string, Vx.Core.Type_any> maptype = new Vx.Core.LinkedHashMap<string, Vx.Core.Type_any>();
    Vx.Core.Map<string, Vx.Core.Type_any> mapconst = new Vx.Core.LinkedHashMap<string, Vx.Core.Type_any>();
    Vx.Core.Map<string, Vx.Core.Type_func> mapfunc = new Vx.Core.LinkedHashMap<string, Vx.Core.Type_func>();
    mapfunc.put("translation-es", Vx.Translation.Es.t_translation_es);
    mapfunc.put("words", Vx.Translation.Es.t_words);
    Vx.Core.vx_global_package_set("vx/translation/es", maptype, mapconst, mapfunc);
      return true;
    }
  }

  public static bool ranonce = PackageRunOnce.RunOnce();

}
