--created with Super_Hugo's Stage Editor v1.6.3

function onCreate()

	makeLuaSprite('obj5', 'StageC/whitebg', -904, -482)
	setObjectOrder('obj5', 0)
	addLuaSprite('obj5', true)
	
	makeLuaSprite('obj7', 'StageC/mountains', -675, -123)
	setObjectOrder('obj7', 1)
	setScrollFactor('obj7', 1.2, 1.2)
	addLuaSprite('obj7', true)
	
	makeAnimatedLuaSprite('obj8', 'StageC/house', 78, -136)
	setObjectOrder('obj8', 2)
	setScrollFactor('obj8', 1.2, 1.2)
	addAnimationByPrefix('obj8', 'anim', 'housescaled0', 24, true)
	playAnim('obj8', 'anim', true)
	addLuaSprite('obj8', true)
	
	makeLuaSprite('obj9', 'StageC/base', -798, 557)
	setObjectOrder('obj9', 3)
	scaleObject('obj9', 1.3, 1.3)
	setScrollFactor('obj9', 1.2, 1.2)
	addLuaSprite('obj9', true)
	
end