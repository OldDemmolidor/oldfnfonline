function createGraphic()

    makeLuaSprite('blackSquare', '', 0, 0);

    makeGraphic('blackSquare', 1980, 1080, '000000');

    setScrollFactor('blackSquare', 0, 0);

    setObjectOrder('blackSquare', 9999999);

    screenCenter('blackSquare');


    addLuaSprite('blackSquare', true);

end


function removeGraphic()

    removeLuaSprite('blackSquare', true);

end


function onStepHit ()
    if curStep == 2944 then
        createGraphic()
        end
    end

