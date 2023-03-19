function onCreate()
	-- background shit
    makeLuaSprite('pret', 'backgrounds/innocence_bg_1', -560, -300);
	setScrollFactor('pret', 1.2, 1.2);
    scaleObject('pret', 1.1, 1.1);
    addLuaSprite('pret', false)

    makeLuaSprite('chau', 'backgrounds/Ilustracion8', -650, 600);
	setScrollFactor('chau', 0.9, 0.9);
	scaleObject('chau', 1.1, 1.1);
    addLuaSprite('chau', false)

    makeLuaSprite('cha', 'backgrounds/Floor', -650, 600);
	setScrollFactor('cha', 0.9, 0.9);
	scaleObject('cha', 1.1, 1.1);
    addLuaSprite('cha', false)


end
