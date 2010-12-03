package = "tir"
version = "scm"

source = { }
source.url = "http://tir.mongrel2.org/downloads/tir-scm.tar.gz"

description = {
   summary = "Tir Mongrel2/Lua Web Framework",
   detailed = "Tir is a framework for doing Web applications in Lua with the Mongrel2 web server.",
   homepage = "http://tir.mongrel2.org",
   license = "BSD",
   maintainer = "zedshaw@zedshaw.com",
}
dependencies = {
   "lua >= 5.1",
    "md5",
    "luuid",
    "luajson",
    "luasql-sqlite3",
    "luaposix",
    "telescope",
}
build = {
    type = "none",
    install = {
        bin = {
            'bin/tir',
        },

        lua = {
            ['tir.engine'] = 'tir/engine.lua',
            ['tir.strict'] = 'tir/strict.lua',
        }
    }
}
