--This Script was made by Comical Chaos
function onCreate()
	makeLuaSprite('bartop','',0,0);
	makeGraphic('bartop',1280,100,'000000');
	addLuaSprite('bartop',false);
	makeLuaSprite('barbot','',0,620);
	makeGraphic('barbot',1280,100,'000000');
	addLuaSprite('barbot',false);
	setScrollFactor('bartop',0,0);
	setScrollFactor('barbot',0,0);
	setObjectCamera('bartop','hud');
	setObjectCamera('barbot','hud');
end
function onCreatePost()
	setProperty('scoreTxt.visible', false);
	setProperty('timeTxt.visible', true);
	setProperty('timeBar.visible', true);
end