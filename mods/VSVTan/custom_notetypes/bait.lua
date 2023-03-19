local noo = 0
local pos = {
	{981,181},
	{662,405},
	{985,500},
	{680,8},
	{800,335},
	{959,10},
	{630,235},
	{722,500},
	{975,300}
}



function onCreate()
	for i = 1, 9 do
		local n = tostring(i)
		makeLuaSprite("bait"..n, 'StageV/bait/pic'..n, pos[i][1], pos[i][2]);
		setObjectCamera("bait"..n, "camOther")
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'bait' then
		noo = noo + 1;
		addLuaSprite('bait'..tostring(noo), true)
	end
end

function onCreatePost()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'bait' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteTypes/baitnotes')
		end
	end
end