local http = require("socket.http")
local ltn12 = require("ltn12")

local respbody = {}
local reqbody = "example string"

local result, respcode, respheaders, respstatus = http.request{
    method="POST",
    url="http://example.com/notify",
    source=ltn12.source.string(reqbody),
    headers={
        ["content-type"]="text/plain",
        ["content-length"]=tostring(#reqbody)
    },
    sink=ltn12.sink.table(respbody)
}
respbody=table.concat(respbody)
