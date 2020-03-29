WINDOW_WIDTH = 1280
WINDOW_HEIGHT  = 720

VIRTUAL_WIDTH  = 432
VIRTUAL_HEIGHT = 243

Class = require 'class'
push = require 'push'

require 'Util'
require 'map'

function love.load()
    map = Map()
    love.graphics.setDefaultFilter('nearest', 'nearest')
      
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH,WINDOW_HEIGHT,{
        fullsreen = false,
        resizable = false,
        vsync = true
    })
end

function love.update(dt)

 
end

function love.draw()
    push:apply('start')
    love.graphics.clear(108/225, 140/225,255/255, 255/255)
    love.graphics.print("Hello, world")
    map:render()
    push:apply('end')
    
end
