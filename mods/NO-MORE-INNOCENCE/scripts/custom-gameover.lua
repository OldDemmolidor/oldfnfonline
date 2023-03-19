function onUpdate()
    if getProperty('boyfriend.curCharacter') == 'bf-dead' then
        setPropertyFromClass('GameOverSubstate','characterName','bf-dead')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
    elseif getProperty('boyfriend.curCharacter') == 'Tailas' then
        setPropertyFromClass('GameOverSubstate','characterName','lol')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')
    end
end