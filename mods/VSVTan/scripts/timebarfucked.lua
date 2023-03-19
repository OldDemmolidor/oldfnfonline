function onCreatePost()
    setProperty('timeBarBG.visible', false);
    setProperty('timeTxt.x', 42 + (screenWidth / 2) - 9999);
    setProperty('timeTxt.y', 20);
    setTextSize('timeTxt', 14);
    setTextBorder('timeTxt', 1, '000000');
    setTextAlignment('timeTxt', 'left');
    if getPropertyFromClass('ClientPrefs', 'downScroll') then
        setProperty('timeTxt.y', screenHeight - 25);
    end

    makeLuaSprite('timeBarBGS', 'timeBar', getProperty('timeTxt.x') - 4, getProperty('timeTxt.y') - 4 + (getProperty('timeTxt.height') / 4));
    setObjectCamera('timeBarBGS', 'camHUD');
    setProperty('timeBarBGS.antialiasing', false);
    addLuaSprite('timeBarBGS');

    setProperty('timeBar.x', getProperty('timeBarBGS.x') + 4);
    setProperty('timeBar.y', 24);
    if getPropertyFromClass('ClientPrefs', 'downScroll') then
        setProperty('timeBar.y', screenHeight - 25 + 4);
    end
    setTimeBarColors('44d844', '2e412e');
    setTextColor('scoreTxt', getHealthColor('dad'));
    setTextColor('botplayTxt', getHealthColor('dad'));
end