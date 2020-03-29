function generateQuads(atlas, tilewidth, tileheight)
    local sheetWidth  = atlas:getWidth() /tilewidth
    local sheetHeight = atlas.getHeight() / tileheight

    local sheetCounter = 1
    local quads = {}

    for y = 0, sheetHeight - 1 do
        for x = 0, sheetWidth - 1 do
            quads[sheetCounter] = love.graphics.newQuad(x * titlewidth, y * titleheight, titlewidth,titleheight, atlas:getDimensions())
        end
    end

    return quads
end