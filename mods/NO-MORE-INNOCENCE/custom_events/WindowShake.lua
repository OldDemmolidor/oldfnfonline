local shakeX = 90;
local shakeY = 90;
local shakeX2 = 90;
local shakeY2 = 90;


function onUpdate()
	setPropertyFromClass('openfl.Lib','application.window.x', getRandomFloat(shakeX,shakeX2))
    setPropertyFromClass('openfl.Lib','application.window.y', getRandomFloat(shakeY,shakeY2))
end
function onEvent(name,value1,value2)
	if name == 'WindowShake' then 
		
		if value1 == 'normal' then
			shakeX = 90;
            shakeY = 90;
			shakeX2 = 90;
			shakeY2 = 90;
		end
		if value1 == 'little' then
            shakeX = 95;
            shakeY = 95;
			shakeX2 = 90;
			shakeY2 = 90;
        end
            if value1 == 'medium' then
                shakeX = 90;
                shakeY = 100;
        		shakeX2 = 70;
		        shakeY2 = 85;
            end
                if value1 == 'large' then
                    shakeX = 90;
                    shakeY = 105;
					shakeX2 = 70;
			        shakeY2 = 80;
		end
	end
end
