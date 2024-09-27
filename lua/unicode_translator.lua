local function unicode_to_char(code)
  local unicode = tonumber(code, 16)
  if (unicode < 32) then
    return nil
  else
    local char = utf8.char(unicode)
    return char
  end
end

local function unicode_translator(input, seg, env)
  local pattern = "au([0-9a-f]+)"
  local code = string.match(input, pattern)
  if (code ~= nil and #code < 5) then
    local char = unicode_to_char(code)
    if char ~= nil then
      local candidate = Candidate("unicode", seg.start, seg._end, char, "〔U+" .. string.upper(code).."〕")
      --candidate.preedit = "U+" .. string.upper(code)
      yield(candidate)
    end
  end
end
return unicode_translator
