import std/[os,times,strformat,osproc,strutils]

proc main =
  # const s2 = $now()
  let t = $now()
  const nim = getCurrentCompilerExe()
  var s = &"nim: {nim}\nt: {t}\nNimVersion: {NimVersion}\n"
  let file = "htmldocs/info.txt"
  writeFile(file, s)

  s = s.replace("\n", "<BR>")
  var s2 = fmt"""
<!DOCTYPE html>
<html>
<body>

<h1>My First Heading v1</h1>
<p>My first paragraph.</p>
{s}
</body>
</html>
"""
  let file2 = "htmldocs/info2.html"
  writeFile(file2, s2)
  echo file2

when isMainModule:
  main()
