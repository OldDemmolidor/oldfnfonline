--created with Super_Hugo's Stage Editor v1.6.3

function onCreate()

	makeAnimatedLuaSprite('obj14', 'backgrounds/snacks/snacksbg', -375, 209)
	setObjectOrder('obj14', 0)
	setProperty('obj14.flipX', true)
	addAnimationByPrefix('obj14', 'anim', 'base wt0', 24, true)
	playAnim('obj14', 'anim', true)
	addLuaSprite('obj14', true)
	
	makeLuaSprite('obj15', 'StageV/whitebg', -770, -335)
	setObjectOrder('obj15', 0)
	scaleObject('obj15', 1.3, 1.3)
	setProperty('obj15.flipX', true)
	addLuaSprite('obj15', true)
	
	makeAnimatedLuaSprite('obj16', 'StageV/backbros/fakemoot', 388, -392)
	setObjectOrder('obj16', 1)
	scaleObject('obj16', 1.9, 1.9)
	setScrollFactor('obj16', 1.3, 1.3)
	addAnimationByPrefix('obj16', 'anim', 'fakemoot0', 24, true)
	playAnim('obj16', 'anim', true)
	addLuaSprite('obj16', true)
	
	makeLuaSprite('obj17', 'StageC/mountains', -850, -801)
	setObjectOrder('obj17', 1)
	scaleObject('obj17', 1.9, 1.9)
	setScrollFactor('obj17', 1.1, 1.1)
	addLuaSprite('obj17', true)
	
	makeAnimatedLuaSprite('obj18', 'StageV/backbros/vr2', -448, 65)
	setObjectOrder('obj18', 22)
	scaleObject('obj18', 1.5, 1.5)
	setScrollFactor('obj18', 0.9, 0.9)
	addAnimationByPrefix('obj18', 'anim', 'vr20', 24, true)
	playAnim('obj18', 'anim', true)
	addLuaSprite('obj18', true)
	
end