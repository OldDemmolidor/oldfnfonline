function onCreate()
    makeLuaSprite('whiteBg','',0 - (getProperty('defaultCamZoom') * 100),0 - (getProperty('defaultCamZoom') * 100))
    scaleObject('whiteBg',1 + (getProperty('defaultCamZoom') * 100),1 + (getProperty('defaultCamZoom') * 100))
    makeGraphic('whiteBg',screenWidth,screenHeight,'0000FF')

    makeLuaSprite('floor', 'Stages/floor troll', -700, 400);
	setScrollFactor('floor', 1, 1);
    scaleObject('floor', 3, 3);

    makeLuaSprite('fundo', 'Stages/monte', -700, -30);
    setScrollFactor('fundo', 1, 1);
    scaleObject('fundo', 3, 3);

    addLuaSprite('whiteBg', false);
    addLuaSprite('floor', false);
end