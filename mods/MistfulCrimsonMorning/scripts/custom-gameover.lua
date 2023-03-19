function onUpdate()
    if getProperty('boyfriend.curCharacter') == 'bfmc' then
        setPropertyFromClass('GameOverSubstate','characterName','bfmc-dead')
        setPropertyFromClass('GameOverSubstate','loopSoundName','gameOver')
        setPropertyFromClass('GameOverSubstate','endSoundName','gameOverEnd')

    end
end