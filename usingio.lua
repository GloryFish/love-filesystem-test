-- 
--  usingio.lua
--  love-filesize-test
--  
--  Created by Jay Roberts on 2011-02-08.
-- 

local lines = {}
local totaltime = 0

local filename = 'words.list'

local starttime = os.clock()

local file = assert(io.open(filename, 'r'), string.format('Word list file not found: %s', filename))
for line in file:lines() do 
  table.insert(lines, line)
end

totaltime = os.clock() - starttime

local file = assert(io.open(filename, 'r'), string.format('Word list file not found: %s', filename))


print(string.format('Loaded %i lines in %f seconds', #lines, totaltime))
