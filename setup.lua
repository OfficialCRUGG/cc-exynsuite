local function centerText(text)
    term.clear()
    local w, h = term.getSize()
    term.setCursorPos(math.floor(w / 2 - text:len() / 2 + .5), math.floor(h / 2 + .5))
    io.write(text)
end

local function download(url, destination)
    if fs.exists(destination) then
        return false
    end
    local req = http.get(url)
    local res = req.readAll()
    req.close()
    if res then
        local file = fs.open(destination, "w")
        file.write(res)
        file.close()
        return true
    else
        return false
    end
end

term.setTextColor(colors.black)
term.setBackgroundColor(colors.white)

centerText("Welcome to Exyn")
sleep(3)
centerText("Exyn will now be installed...")
sleep(3)
centerText("This might take a bit")
sleep(3)
centerText("Your computer will be restarted whilst installing!")
sleep(3)

--> Create File Structure
fs.makeDir("user")
fs.makeDir("user/apps")
fs.makeDir("exyn")
fs.makeDir("exyn/systemApps")
fs.makeDir("exyn/apis")

--> Downloading OS Files
download("https://raw.githubusercontent.com/cc-exyn/exyn/master/exyn/boot.lua", "/exyn/boot.lua")
download("https://raw.githubusercontent.com/cc-exyn/exyn/master/exyn/install.lua", "/exyn/install.lua")

download("https://raw.githubusercontent.com/cc-exyn/exyn/master/startup.lua", "startup")

download("https://raw.githubusercontent.com/cc-exyn/exyn/master/exyn/apis/exynSystem.lua", "/exyn/apis/exynSystem")
download("https://raw.githubusercontent.com/cc-exyn/exyn/master/exyn/apis/exynUi.lua", "/exyn/apis/exynUi")
download("https://raw.githubusercontent.com/cc-exyn/exyn/master/exyn/apis/exynHttp.lua", "/exyn/apis/exynHttp")

--> Reboot
centerText("Rebooting in 3...")
sleep(1)
centerText("Rebooting in 2...")
sleep(1)
centerText("Rebooting in 1...")
sleep(1)
os.reboot()
