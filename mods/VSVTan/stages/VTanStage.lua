--created with Super_Hugo's Stage Editor v1.6.3

function onCreate()

	makeLuaSprite('obj10', 'StageV/whitebg', -745, -91)
	setObjectOrder('obj10', 0)
	addLuaSprite('obj10', true)
	
	makeLuaSprite('obj12', 'StageV/mountains', -898, 156)
	setObjectOrder('obj12', 1)
	scaleObject('obj12', 1.1, 1.1)
	setScrollFactor('obj12', 1.1, 1.1)
	addLuaSprite('obj12', true)
	
	makeLuaSprite('obj14', 'StageV/homes', -908, 243)
	setObjectOrder('obj14', 2)
	scaleObject('obj14', 1.1, 1.1)
	setScrollFactor('obj14', 1.2, 1.2)
	addLuaSprite('obj14', true)
	
	makeLuaSprite('obj15', 'StageV/ground', -707, 645)
	setObjectOrder('obj15', 3)
	setProperty('obj15.flipX', true)
	addLuaSprite('obj15', true)
	
	makeAnimatedLuaSprite('obj16', 'StageV/backbros/fakemoot', -297, 76)
	setObjectOrder('obj16', 2)
	scaleObject('obj16', 1.1, 1.1)
	setScrollFactor('obj16', 1.3, 1.3)
	setProperty('obj16.flipX', true)
	addAnimationByPrefix('obj16', 'anim', 'fakemoot0', 24, true)
	playAnim('obj16', 'anim', true)
	addLuaSprite('obj16', true)
	
end