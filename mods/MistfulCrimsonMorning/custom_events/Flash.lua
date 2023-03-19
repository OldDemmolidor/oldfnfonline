-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Flash' then
		makeLuaSprite('flash', 'None', -500, -500);
		scaleObject('flash', 700, 700);
		setLuaSpriteScrollFactor('flash', 0, 0);
		addLuaSprite('flash', true);
		doTweenAlpha('flash', 'flash', 0, 1, 'linear')
		runTimer('flashaway', 1)
	end
end

function onTimerCompleted(tag, loops, loopsLeft) 
	if name == 'flashaway' then
		removeLuaSprite('flash', true)
	end
end