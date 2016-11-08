
-- Lesson 4a

-- Created by: Justin Richards
-- Created on: Oct-2017
-- Created for: ICS2O
-- This program displays a sprite and it moves around

local beetle
local object2

-- Use this function to perform your initial setup
function setup()
    -- set up display options
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- create beetle
    local imageName = "SpaceCute:Beetle Ship"
    beetle = SpriteObject(imageName, vec2(WIDTH/2, HEIGHT/2))
    
    local object2Name = ("Planet Cute:Enemy Bug")
    object2 = SpriteObject(object2Name, vec2(WIDTH/2, HEIGHT/2))
end

-- This function gets called once every frame
function touched(touch)
    -- local varaibles
   
    
    --Do your coding here
    beetle:touched(touch)
    object2:touched(touch)
end

-- This function gets called once every frame
function draw()
    -- local variables
    
    -- Do your drawing here
    background(0, 0, 0, 255)
    sprite("SpaceCute:Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    
    object2:draw()
    beetle:draw()  
end