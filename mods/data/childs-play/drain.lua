function opponentNoteHit(id, noteData, noteType, isSustainNote)
        health = getProperty('health')
    if getProperty('health') > 0.01 then
           setProperty('health', health- 0.014);
        end
end