return {
  cURL = {
    {
      description = "cURL: Lua binding to libcurl",
      homepage = "https://github.com/Lua-cURL",
      license = "MIT/X11",
      name = "cURL",
      require = {
        lcurl = "0.3.1-103",
        luajit = "2.0"
      },
      version = "0.3.1-103",
      version_dir = "0_3_1+103"
    }
  },
  clib_libcurl = {
    {
      description = "free and easy-to-use client-side URL transfer library",
      homepage = "http://curl.haxx.se",
      license = "MIT/X11-derived",
      name = "clib_libcurl",
      require = {
        luajit = "2.0"
      },
      version = "7.42.1-3",
      version_dir = "7_42_1+3"
    }
  },
  clib_libopenblas = {
    {
      description = "OpenBLAS : An optimized BLAS library",
      homepage = "http://www.openblas.net/",
      license = "BSD",
      name = "clib_libopenblas",
      require = {
        luajit = "2.0"
      },
      version = "0.2.15",
      version_dir = "0_2_15"
    }
  },
  lcurl = {
    {
      description = "cURL: Lua binding to libcurl",
      homepage = "https://github.com/Lua-cURL",
      license = "MIT/X11",
      name = "lcurl",
      require = {
        cURL = "0.3.1-103",
        clib_libcurl = "7",
        luajit = "2.0"
      },
      version = "0.3.1-103",
      version_dir = "0_3_1+103"
    }
  },
  lfs = {
    {
      description = "luafilesystem : File System Library for the Lua Programming Language",
      homepage = "http://keplerproject.github.io/luafilesystem",
      license = "MIT/X11",
      name = "lfs",
      require = {
        luajit = "2.0"
      },
      version = "1.6.3-203",
      version_dir = "1_6_3+203"
    }
  },
  luajit = {
    {
      description = "LuaJIT: Just-In-Time Compiler (JIT) for Lua",
      homepage = "http://luajit.org/luajit.html",
      license = "MIT",
      name = "luajit",
      require = {},
      version = "2.1.head20151128",
      version_dir = "2_1_head20151128"
    }
  },
  pkg = {
    {
      description = "ULua package manager",
      homepage = "http://ulua.io/pkg.html",
      license = "MIT <http://opensource.org/licenses/MIT>",
      name = "pkg",
      require = {
        cURL = "0.3.1",
        lfs = "1.6.2",
        luajit = "2.0",
        serpent = "0.27"
      },
      version = "1.0.beta10",
      version_dir = "1_0_beta10"
    }
  },
  sci = {
    {
      description = "general purpose scientific computing library",
      homepage = "http://scilua.org",
      license = "MIT <http://opensource.org/licenses/MIT>",
      name = "sci",
      require = {
        clib_libopenblas = "0.2.15",
        luajit = "2.0",
        xsys = "1.0"
      },
      version = "1.0.beta12",
      version_dir = "1_0_beta12"
    }
  },
  ["sci-lang"] = {
    {
      description = "Syntax extensions to LuaJIT for scientific computing",
      homepage = "https://github.com/stepelu/lua-sci-lang",
      license = "MIT/X11",
      name = "sci-lang",
      require = {
        luajit = "2.0",
        sci = "1.0.beta10"
      },
      version = "1.0.beta10",
      version_dir = "1_0_beta10"
    }
  },
  serpent = {
    {
      description = "serpent : Lua serializer and pretty printer",
      homepage = "https://github.com/pkulchenko/serpent",
      license = "MIT",
      name = "serpent",
      require = {
        luajit = "2.0"
      },
      version = "0.28-103",
      version_dir = "0_28+103"
    }
  },
  xsys = {
    {
      description = "extended Lua system",
      homepage = "http://scilua.org/xsys.html",
      license = "MIT <http://opensource.org/licenses/MIT>",
      name = "xsys",
      require = {
        luajit = "2.0"
      },
      version = "1.0.2",
      version_dir = "1_0_2"
    }
  }
}