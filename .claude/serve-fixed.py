#!/usr/bin/env python3
"""Static server that ALWAYS serves from dogshop-next root, regardless of cwd."""
import http.server, os, sys
DOCROOT = "/Users/pcsteinig/Desktop/dogshop-next"
PORT = int(os.environ.get("PORT", 8000))
os.chdir(DOCROOT)

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *a, **kw):
        super().__init__(*a, directory=DOCROOT, **kw)

print(f"Serving {DOCROOT} on :{PORT}", flush=True)
http.server.HTTPServer(("", PORT), Handler).serve_forever()
