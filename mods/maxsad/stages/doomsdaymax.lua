function onCreate()
    makeLuaSprite('fundo', 'Stages/fundo', -1000, -980);
	setScrollFactor('fundo', 1, 1);
    scaleObject('fundo', 0.6, 0.6);
    makeLuaSprite('sexo', 'Stages/sexo-on', 261, 603);
	setScrollFactor('sexo', 1, 1);
    scaleObject('sexo', 0.8, 0.8);
    makeLuaSprite('como', 'Stages/como-affeta', 971, 581);
	setScrollFactor('como', 1, 1);
    scaleObject('como', 0.3, 0.3);
    makeLuaSprite('festa', 'Stages/festa-do-mathias', 576, 235);
	setScrollFactor('festa', 1, 1);
    scaleObject('festa', 0.4, 0.4);
    makeLuaSprite('sofra', 'Stages/sofra', -184, 384);
    setScrollFactor('sofra', 1, 1);
    scaleObject('sofra', 0.6, 0.6);


    addLuaSprite('fundo', false);
    addLuaSprite('sexo', false);
    addLuaSprite('como', false);
    addLuaSprite('festa', false);
    addLuaSprite('sofra', false);
end
--stage by: OldDemmolidor
--thx dude :)