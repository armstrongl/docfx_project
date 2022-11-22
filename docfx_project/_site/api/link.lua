function Link(el)
    return el.content
end

--function Link(el)
--    el.target = string.gsub(el.target, "%.html", ".md")
--    return el
--  end

--removes all spans
function Span(element)
    return element.content
end
