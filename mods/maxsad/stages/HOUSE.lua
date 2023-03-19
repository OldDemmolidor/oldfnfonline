function onCreate()
	makeLuaSprite('whiteBg','',0 - (getProperty('defaultCamZoom') * 100),0 - (getProperty('defaultCamZoom') * 100))
    scaleObject('whiteBg',1 + (getProperty('defaultCamZoom') * 100),1 + (getProperty('defaultCamZoom') * 100))
    makeGraphic('whiteBg',screenWidth,screenHeight,'FFFFFF')

	makeLuaSprite('floor', 'bg/floor', -470, 300);
	scaleObject('floor', 0.9, 0.9);

	makeLuaSprite('hall', 'bg/hall', -300, -300);
	setScrollFactor('hall', 0.9, 0.9);

	makeLuaSprite('trees', 'bg/trees', -230, -300);
	setScrollFactor('trees', 1.0, 1.0);

	addLuaSprite('whiteBg', false);
	addLuaSprite('trees', false);
	addLuaSprite('hall', false);
	addLuaSprite('floor', false);
end