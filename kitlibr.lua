print("init kitlibr")

getgenv().identifykit = newcclosure(function()
    return "kitiana", "1.0.0"
end)

local function attach()
    if isfile("kitlibr/attached.klr") and readfile("kitlibr/attached.klr") == "[ kitlibr 1.0.0 ]" then
        writefile("kitlibr/attached.klr", "read")
    end
end

local function exec()
    if isfile("kitlibr/execution.klr") then
        local output = readfile("kitlibr/execution.klr")
        if output and #output > 0 then
            local func, err = loadstring(output)
            if func then
                xpcall(func, function(err)
                    warn("Error during execution:", err)
                end)
            else
                warn("Error loading string:", err)
            end
        end
        delfile("kitlibr/execution.klr")
    end
end

while true do
    attach()
    exec()
    wait(0.1)
end

