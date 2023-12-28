function Span(x)
  local s = x.attributes.style
  local c = (s:match'font%-weight:600' and pandoc.Strong)
    or (s:match'font%-style:italic' and pandoc.Emph)
    or (s:match'text%-decoration: underline' and pandoc.Underline)
  return c and c(x.content) or nil
end
