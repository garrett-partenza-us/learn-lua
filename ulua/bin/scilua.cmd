@echo off
SETLOCAL
SET BIN_ROOT=%~dp0
SET BIN_ROOT=%BIN_ROOT:~0,-1%
SET BIN_ROOT=%BIN_ROOT:\=/%
SET LUA_ROOT=%BIN_ROOT%/..
call %LUA_ROOT%/lua.cmd %LUA_ROOT%/sci-lang/1_0_beta10/__bin/scilua.lua %*
