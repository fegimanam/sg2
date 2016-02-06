
local function run(msg, matches)
  local text = matches[1]
  local b = 1

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  return text
end

return {
  description = "Simplest plugin ever!",
  usage = "!bgo [whatever]: echoes the msg",
  patterns = {
    "^!bgo +(.+)$"
  }, 
  run = run 
}
