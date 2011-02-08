-- 
--  main.lua
--  love-filesize-test
--  
--  Created by Jay Roberts on 2011-02-08.
-- 

local lines = {}
local totaltime = 0

function love.load()
  
  local filename = 'words.list'
  
  local starttime = love.timer.getMicroTime()
  
  for line in love.filesystem.lines(filename) do 
    table.insert(lines, line)
  end
  
  totaltime = love.timer.getMicroTime() - starttime
end


function love.draw()
  love.graphics.print(string.format('Loaded %i lines in %f seconds', #lines, totaltime), 10, 10)
end