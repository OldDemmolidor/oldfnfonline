function onCreate()
	makeAnimatedLuaSprite('leHand', 'characters/zordhand', 200, 133);

	addAnimationByPrefix('leHand', 'idle', 'handidle', 24, false);
	addAnimationByPrefix('leHand', 'singUP', 'handup', 24, false);
	addAnimationByPrefix('leHand', 'singDOWN', 'handdown', 24, false);
	addAnimationByPrefix('leHand', 'singLEFT', 'handleft', 24, false);
	addAnimationByPrefix('leHand', 'singRIGHT', 'handright', 24, false);
	addAnimationByPrefix('leHand', 'singUP-alt', 'althandup', 24, false);
	addAnimationByPrefix('leHand', 'singDOWN-alt', 'althanddown', 24, false);
	addAnimationByPrefix('leHand', 'singLEFT-alt', 'althandleft', 24, false);
	addAnimationByPrefix('leHand', 'singRIGHT-alt', 'althandright', 24, false);
	
	addLuaSprite('leHand', true);
	setObjectOrder("boyfriendGroup", getObjectOrder("leHand") + 1)
end

function daZordeffects()
	if getProperty('leHand.animation.curAnim.name') == 'idle' then
		setProperty('boyfriend.visible', true)
		setProperty('defaultCamZoom', 1.1);					
	else
		setProperty('defaultCamZoom', 1.18);
	end
end

function onBeatHit()
	objectPlayAnimation("leHand", "idle", false);
	daZordeffects()
end

local function scrambleNotes(int)
	setPropertyFromGroup("playerStrums", 0, "x", defaultPlayerStrumX0 + math.random(-int,int))
	setPropertyFromGroup("playerStrums", 1, "x", defaultPlayerStrumX1 + math.random(-int,int))
	setPropertyFromGroup("playerStrums", 2, "x", defaultPlayerStrumX2 + math.random(-int,int))
	setPropertyFromGroup("playerStrums", 3, "x", defaultPlayerStrumX3 + math.random(-int,int))
		
	setPropertyFromGroup("playerStrums", 0, "y", defaultPlayerStrumY0 + math.random(-int,int))
	setPropertyFromGroup("playerStrums", 1, "y", defaultPlayerStrumY1 + math.random(-int,int))
	setPropertyFromGroup("playerStrums", 2, "y", defaultPlayerStrumY2 + math.random(-int,int))
	setPropertyFromGroup("playerStrums", 3, "y", defaultPlayerStrumY3 + math.random(-int,int))
end

function lerp(a, b, r)
	return a + r * (b - a);
end

local nDur = 0;
local seedandfeed = 0

function onUpdate(elapsed)
	daZordeffects()
	
	if nDur > 0 then
		nDur = nDur - elapsed
		
		if not (nDur > 0) then
			seedandfeed = seedandfeed + 1
			math.randomseed(seedandfeed)
			scrambleNotes(20)
		else
			scrambleNotes(math.random(15, 20))
		end	
	end
end

singList = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSus)
	if (curBeat<=335 or curBeat>=393) then
		objectPlayAnimation('leHand', singList[direction + 1], false);			    
		setProperty('boyfriend.visible', false)
	else
		objectPlayAnimation('leHand', singList[direction + 1]..'-alt', false);	
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if not isSustainNote then
		setProperty('boyfriend.visible', true)
	end
end