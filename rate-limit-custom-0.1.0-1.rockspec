local plugin_name = "rate-limit-custom"

local package_name = "kong-plugin" .. plugin_name

package = "rate-limit-custom"
version = "0.1.0-1"
source = {
   url = "https://github.com/borgeslucaz/rate-limit-custom"
}
description = {
   homepage = "https://github.com/borgeslucaz/rate-limit-custom",
   license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
    ["kong.plugins."..plugin_name..".expiration"] = "kong/plugins/"..plugin_name.."/expiration.lua",
    ["kong.plugins."..plugin_name..".policies.cluster"] = "kong/plugins/"..plugin_name.."/policies/cluster.lua",
    ["kong.plugins."..plugin_name..".policies.init"] = "kong/plugins/"..plugin_name.."/policies/init.lua",
  }
}