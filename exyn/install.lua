exynUi.setTheme("light")
exynUi.centerText("Installing default applications...")
sleep(2)

--> Install epm

exynUi.clear()
exynUi.setTheme("dark")
exynUi.clear()
exynHttp.download("https://raw.githubusercontent.com/cc-exyn/epm/master/epm", "/exyn/systemApps/epm")

shell.run("epm bootstrap")

sleep(1)

exynUi.setTheme("light")
exynUi.centerText("Successfully installed default applications...")
sleep(2)

fs.delete("exyn/install.lua")

exynSystem.reboot()
