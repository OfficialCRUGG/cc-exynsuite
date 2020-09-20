function centerText(text)
    term.clear()
    local w, h = term.getSize()
    term.setCursorPos(math.floor(w / 2 - text:len() / 2 + .5), math.floor(h / 2 + .5))
    io.write(text)
end

function clear()
    term.clear()
    term.setCursorPos(1,1)
end

function setTheme(theme)
    if theme == "boot" then
        term.setTextColor(colors.lightGray)
        term.setBackgroundColor(colors.white)
    elseif theme == "light" then
        term.setTextColor(colors.black)
        term.setBackgroundColor(colors.white)
    elseif theme == "dark" then
        term.setTextColor(colors.white)
        term.setBackgroundColor(colors.black)
    else
        term.setTextColor(colors.white)
        term.setBackgroundColor(colors.black)
    end
end
