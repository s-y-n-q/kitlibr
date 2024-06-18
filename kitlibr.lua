print("init kitlibr")

getgenv().identifykit = newcclosure(function()
    return "kitlibr", "1.0.0";
end)

local function attach()
    if isfile("kitlibr/attached.klr") and readfile("kitlibr/attached.klr") == "[ kitlibr 1.0.0 ]" then
        writefile("kitlibr/attached.klr", "read")
    end
end

local function exec()
    if isfile("kitlibr/execution.klr") then
        local output = readfile("kitlibr/execution.klr")
        if output ~= "" then
            xpcall(function()
                loadstring(output)()
            end, function(err)
                --warn(err)
            end)
        end
        delfile("kitlibr/execution.klr")
    end
end

while true do
    attach()
    exec()
    wait(0.1)
end
