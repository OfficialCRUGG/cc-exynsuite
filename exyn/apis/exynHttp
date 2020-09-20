function download(url, destination)
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
