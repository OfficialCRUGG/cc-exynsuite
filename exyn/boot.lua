os.loadAPI("exyn/apis/exynUi")
os.loadAPI("exyn/apis/exynHttp")
os.loadAPI("exyn/apis/exynSystem")

exynUi.setTheme("boot")
exynUi.centerText("(^.^)")

shell.setPath(shell.path()..":/exyn/systemApps:/user/apps")

sleep(3)

--> Installation Process
if fs.exists("exyn/install.lua") then
    shell.run("exyn/install.lua")
end
if fs.exists("exyn/finalization.lua") then
    shell.run("exyn/finalization.lua")
end
if fs.exists("exyn/update.lua") then
    shell.run("exyn/update.lua")
end

exynUi.setTheme("dark")
exynUi.clear()
print("Welcome to Exyn Suite!")
print("Licensed under MIT License")
print("https://github.com/cc-exyn/exyn")
