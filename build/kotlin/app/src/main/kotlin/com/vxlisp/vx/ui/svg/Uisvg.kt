package com.vxlisp.vx.ui.svg

import com.vxlisp.vx.*
import com.vxlisp.vx.ui.*

object vx_ui_svg_uisvg {

  init {
    var maptype : MutableMap<String, vx_core.Type_any> = LinkedHashMap<String, vx_core.Type_any>()
    var mapconst : MutableMap<String, vx_core.Type_any> = LinkedHashMap<String, vx_core.Type_any>()
    var mapfunc : MutableMap<String, vx_core.Type_func> = LinkedHashMap<String, vx_core.Type_func>()
    vx_core.vx_global_package_set(
      "vx/ui/svg/uisvg",
      vx_core.vx_mapimmutable(maptype),
      vx_core.vx_mapimmutable(mapconst),
      vx_core.vx_mapimmutable(mapfunc)
    )
  }

}
