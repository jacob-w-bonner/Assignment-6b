--Background
display.setDefault ( "background", 53/255,235/255,242/255)


--Text 
local enterText = display.newText( "Enter A Number:", 160, 240, native.systemFont, 25)
enterText:setFillColor( 255/255, 255/255, 255/255 )
enterText.x = 160
enterText.y = 350

local titleText = display.newText( "Pi Calculator", 160, 240, native.systemFont, 40)
titleText:setFillColor( 255/255, 255/255, 255/255 )
titleText.x = 160
titleText.y = 0

local answerText = display.newText( "The Answer Is:", 160, 240, native.systemFont, 25)
answerText:setFillColor( 255/255, 255/255, 255/255 )
answerText.x = 160
answerText.y = 475


--Enter Text
numberTextField = native.newTextField( 160, 350 + 65, 225, 40 )
numberTextField.id = "number Textfield"


--Calculate Button
local calculateButton = display.newImageRect( "Assets/calculate.png", 250, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"


--Cosmetics 
local piSymbol = display.newImageRect( "Assets/pi.png", 100, 100 )
piSymbol.x = 160
piSymbol.y = 100


--Calculate Function
local function calculateButtonTouch ( event )

local itt
local logic
local answer

answer = 0
itt = tonumber(numberTextField.text)
--itt short for ittereations 
logic = -1

--Loops the itterations
for math = 1, itt, 1 do
	logic = logic*-1
	answer = answer + 4/(2*math-1)*logic
	answerText.text = ("Answer: "..answer)

end 
end

--Event listeners
calculateButton:addEventListener( "touch", calculateButtonTouch )