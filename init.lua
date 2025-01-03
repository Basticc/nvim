require("basti")
require("lazy.lazy")

OS = package.config:sub(1,1)

if OS == "\\" then
    print("Windows!")
else
    print("Linux!")
end
