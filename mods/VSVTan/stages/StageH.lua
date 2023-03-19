function onCreate()
	
	makeLuaSprite('bg', 'StageS/bg', -650, -400)
	setLuaSpriteScrollFactor('bg', 0.9, 0.9)
	scaleObject('bg', 1, 1)

	makeLuaSprite('dabuilding', 'StageS/dabuilding', -700, -440)
	setLuaSpriteScrollFactor('dabuilding', 1, 1)
	scaleObject('dabuilding', 1, 1)
	
	addLuaSprite('bg', false)
	addLuaSprite('dabuilding', false)
	addLuaSprite('', false)
	
	close(true)
end


--    makeAnimatedLuaSprite('obj2', 'GF-v', 100, -10)
--	setObjectOrder('obj2', 10)
--	setProperty('obj2.flipX', true)
--	addAnimationByPrefix('obj2', 'anim', 'gf0', 24, true)
--	playAnim('obj2', 'anim', true)
--	addLuaSprite('obj2', true)