shake = '0.05, 0.01'

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    if getProperty('dad.curCharacter') == 'max insane' then
        triggerEvent('Screen Shake', shake, '0, 0');
                setProperty("health", getProperty("health") - 0.015)
                if getProperty("health") < 0.001 then
                    setProperty("health", 0.005)
                end
    end 
end