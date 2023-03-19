function onCreatePost()
    setProperty('camGame.alpha', 0) 
    doTweenAlpha('camHUD.alpha', 0)
    doTweenAlpha('camHUD.alpha', 0)
    setProperty('camHUD.alpha', 0)
end
 
function onSongStart()
    doTweenAlpha('Omae', 'camGame', 1, 1)
    doTweenZoom('Bruh', 'camGame', 1, 1)
end

function onStepHit()
    if curStep == 10 and 9999 then
        doTweenAlpha('Shitno', 'camHUD', 1, 0.5)
    end
end

function onTweenCompleted(tag)
    if tag == 'Bruh' then
        setProperty("defaultCamZoom", 1) 
    end
    
end
