
import asyncdispatch
import httpclient

proc asyncreq() {.async.} =
    var client = newAsyncHttpClient()
    echo await client.getContent("http://google.com")

for i in 1..10:
    waitFor asyncreq()

