-- invite me to the mod you fucking niggers
-- no
function onCreate()
	addCharacterToList('cancerretard', 'dad');
--	setProperty('skipCountdown',true)
	precacheImage('niggershit/scream/cancer_scream')
	precacheImage('niggershit/scream/v_scream')
	precacheImage('niggershit/scream/cancervanalsex')
	--game still lags tho
	
    makeLuaSprite('vBG', 'niggershit/background_V', -800, 170);
	addLuaSprite('vBG', false);

    makeAnimatedLuaSprite('cancerBG', 'niggershit/cunt_cancer_bg', -800, 500);
    addAnimationByPrefix('cancerBG', 'OJSIMPSON', 'cancer bg', 24, true)
	addLuaSprite('cancerBG', false);
	
	makeLuaSprite('screamBG', 'ебутся как то два клоуна в жопу', 0, 0)
	makeGraphic('screamBG', 2000, 2000, 'ffffff')
	setObjectCamera('screamBG', 'hud')
	addLuaSprite('screamBG', true)
	
	makeAnimatedLuaSprite('scream1', 'niggershit/scream/cancer_scream', -1280, -120);
    addAnimationByPrefix('scream1', 'OJSIMPSON', '심볼 36', 24, true)
	addLuaSprite('scream1', true);
	--scaleObject('scream', 1.2, 1.2)
	
	makeAnimatedLuaSprite('scream2', 'niggershit/scream/v_scream', 1280, -20);
    addAnimationByPrefix('scream2', 'OJSIMPSON2', '심볼 28', 24, true)
	addLuaSprite('scream2', true);
	--scaleObject('scream2', 1.2, 1.2)
	
	makeAnimatedLuaSprite('scream3', 'niggershit/scream/cancervanalsex', 0, -125);
    addAnimationByPrefix('scream3', 'OJSIMPSON3', 'both', 24, true)
	addLuaSprite('scream3', true);
	--scaleObject('scream3', 1.2, 1.2)
	
	makeAnimatedLuaSprite('duet', 'niggershit/duet_part', -850, 400);
    addAnimationByPrefix('duet', 'line', 'duet', 24, true)
	addLuaSprite('duet', false);
	
	for i = 1,3 do
		setObjectCamera('scream'..i, 'hud')
		setProperty('scream'..i..'.visible', false);
	end
end

function onCreatePost()
	setProperty('screamBG.visible', false);
	setProperty('cancerBG.visible', false);
	setProperty('duet.visible', false);
end

function onBeatHit()
    if curBeat == 92 or curBeat == 220 or curBeat == 412 then
		CancerScream()
	end
    if curBeat == 124 or curBeat == 444 then
		VtanScream()
	end
    if curBeat == 508 then
		DuoScream()
	end 
    if curBeat == 512 then
		setProperty('scream3.visible', false);
		cancelTween('screamBGTween')
		setProperty('screamBG.alpha', 0)
		setProperty('screamBG.visible', false)
	end
end

function onEvent(n, v1, v2)
	if n == 'cuntfront' then
		for i = 1,3 do
			setProperty('scream'..i..'.visible', false);
		end
		cancelTween('screamBGTween')
		setProperty('screamBG.alpha', 0)
		setProperty('screamBG.visible', false)
		if v1 == '0' then
			VtanSolo()
		end
		if v1 == '1' then
			CancerSolo()
		end
		if v1 == '2' then
			DUO()
		end
	end
end

function VtanSolo() --v tan appears and super orange arm =7
	triggerEvent('Flash', '3', '0.2')
	triggerEvent('Change Character', 'dad', 'cancerhand')
	setProperty('cancerBG.visible', false);
	setProperty('boyfriend.visible', true)
	setProperty('duet.visible', false);
	setCharacterX('dad', defaultOpponentX)
	triggerEvent('Camera Follow Pos')
	setProperty('camera.angle', 10)
	doTweenAngle('cameraCoolAngleTween', 'camera', 0, 0.2, 'cubeOut')
	triggerEvent('Camera Follow Pos', '75', '825')
end

function CancerSolo() -- cance
	triggerEvent('Flash', '3', '0.2')
	triggerEvent('Change Character', 'dad', 'cancerretard')
	setProperty('cancerBG.visible', true);
	setProperty('boyfriend.visible', false)
	setProperty('duet.visible', false);
	setCharacterX('dad', defaultOpponentX)
	triggerEvent('Camera Follow Pos')
	setProperty('camera.angle', -10)
	doTweenAngle('cameraCoolAngleTween', 'camera', 0, 0.2, 'cubeOut')
	triggerEvent('Camera Follow Pos', '-70', '915')
end

function DUO() --VTAN AND CANCER LOL RAPPIN!!
	triggerEvent('Change Character', 'dad', 'cancerretard')
	setProperty('cancerBG.visible', false);
	setProperty('duet.visible', true);
	setProperty('boyfriend.visible', true)
	setCharacterX('dad', defaultOpponentX - 160)
	triggerEvent('Camera Follow Pos', '-100', '850')
end

function VtanScream()
	setProperty('scream2.visible', true);
	objectPlayAnimation('scream2', 'OJSIMPSON2', true)
	setProperty('screamBG.visible', true)
	setProperty('scream2.x', 1280)
	doTweenAlpha('screamBGTween', 'screamBG', 1, 0.5, 'linear')
	doTweenX('vScreamX', 'scream2', 0, 0.5, 'cubeOut')
end

function CancerScream()
	setProperty('scream1.visible', true);
    objectPlayAnimation('scream1', 'OJSIMPSON', true)
	setProperty('screamBG.visible', true)
	setProperty('scream1.x', -1280)
	doTweenAlpha('screamBGTween', 'screamBG', 1, 0.5, 'linear')
	doTweenX('cancerScreamX', 'scream1', -40, 0.7, 'cubeOut')
end

function DuoScream()
	setProperty('scream3.visible', true);
    objectPlayAnimation('scream3', 'OJSIMPSON3', true)
	setProperty('screamBG.visible', true)
	setProperty('scream3.x', -160)
	doTweenAlpha('screamBGTween', 'screamBG', 1, 0.5, 'linear')
	doTweenX('duoScreamX', 'scream3', -1240, 1.5, 'elasticInOut')
end

function onTweenCompleted(n)
	if n == 'duoScreamX' then
		doTweenX('duoScreamX', 'scream3', -160, 1.5, 'elasticInOut')
	end
end