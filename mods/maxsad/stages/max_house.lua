function onCreate()
    makeLuaSprite('whiteBg','',0 - (getProperty('defaultCamZoom') * 100),0 - (getProperty('defaultCamZoom') * 100))
    scaleObject('whiteBg',1 + (getProperty('defaultCamZoom') * 100),1 + (getProperty('defaultCamZoom') * 100))
    makeGraphic('whiteBg',screenWidth,screenHeight,'FFFFFF')

    makeLuaSprite('tress', 'Stages/tress', 755, -225);
	setScrollFactor('tress', 0.2, 0.2);
    scaleObject('tress', 1, 1);
    makeLuaSprite('walls', 'Stages/walls', -2440, -965);
	setScrollFactor('walls', 1, 1);
    scaleObject('walls', 1, 1);
    makeLuaSprite('floor', 'Stages/floor', -2830, 557);
	setScrollFactor('floor', 1, 1);
    scaleObject('floor', 1, 1);
    makeLuaSprite('things', 'Stages/things', -365, 25);
	setScrollFactor('things', 1, 1);
    scaleObject('things', 1, 1);

    addLuaSprite('whiteBg', false);
    addLuaSprite('tress', false);
    addLuaSprite('walls', false);
    addLuaSprite('floor', false);
    addLuaSprite('things', false);
end