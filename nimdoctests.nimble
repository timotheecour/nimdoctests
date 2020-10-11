version       = "0.1.0"
author        = "Timothee Cour"
description   = "doc tests."
license       = "MIT"
srcDir        = "src"
# skipDirs      = @["docsrc"]
# skipFiles     = @["tests.nim"]

# requires "nim >= 0.18.0"
# requires "regex >= 0.7.4"

task test, "Generate the documentation":
  exec "echo D20201010T220856"

task docs, "Generate the documentation":
  exec "nim doc --project --outdir:htmldocs src/main.nim"
