function onCreate()
	setProperty('skipCountdown',true)
    makeLuaSprite('IHATENIGGERS', 'castle/ski', -330, 850);
    scaleObject('IHATENIGGERS', 1.8, 1.8)

    makeAnimatedLuaSprite('smoke1', 'castle/smmmooke', -670, 170);
    addAnimationByPrefix('smoke1', 'kys', 'smoking', 24, true)
    scaleObject('smoke1', 1.8, 1.8)

    makeAnimatedLuaSprite('fire1', 'castle/fire', 0, 1060);
    addAnimationByPrefix('fire1', 'kysfire', 'fire', 24, true)
    scaleObject('fire1', 4, 3)

    makeAnimatedLuaSprite('fire2', 'castle/fire', 2040, 1060);
    addAnimationByPrefix('fire2', 'kysfire', 'fire', 24, true)
    scaleObject('fire2', 4, 3)

    makeLuaSprite('castle', 'castle/bcastle', -230, 690);
    scaleObject('castle', 1.8, 1.8)

    makeAnimatedLuaSprite('btards', 'castle/bastards', -220, 1550);
    addAnimationByPrefix('btards', 'movingfaggots', 'bastads', 24, false)
    scaleObject('btards', 1.95, 1.8)
    setScrollFactor('btards', 1.2, 1)

end

function onCreatePost()
	setProperty('camera.visible', false)
	setProperty('camHUD.visible', false)
	setProperty('gf.visible', false)
    for i = 0, 3 do 
        setPropertyFromGroup("strumLineNotes", i, "x", -1000)
    end

    for i = 4, 7 do 
        if not middlescroll then
            setPropertyFromGroup("strumLineNotes", i, "x", 50 + (i % 4) * 112)
        end
    end
end

function onStepHit()
    if curStep == 32 then
		setProperty('dad.visible', true)
		setProperty('boyfriend.visible', true)
		setProperty('camHUD.visible', true)
		setProperty('camera.visible', true)
	end
    if curStep == 192 then
        addLuaSprite('IHATENIGGERS', false);
        addLuaSprite('smoke1', false);
        addLuaSprite('fire1', false);
        addLuaSprite('fire2', false);
        addLuaSprite('castle', false);
        addLuaSprite('btards', true);
        for i = 4, 7 do 
            if not middlescroll then
                setPropertyFromGroup("strumLineNotes", i, "x", 750 + (i % 4) * 112)
            end
        end
    end
	if curStep == 764 then
		setProperty('camera.visible', false)
	end
	if curStep == 768 then
		setProperty('camera.visible', true)
		setProperty('gf.visible', true)
	end
end

function onBeatHit()
    if curBeat % 2 == 0 then
        objectPlayAnimation('btards', 'movingfaggots', true) -- сыграть анимаци
    end
end