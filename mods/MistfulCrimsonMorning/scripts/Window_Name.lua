function onCreate()
	setPropertyFromClass("openfl.Lib", "application.window.title",  "Mistful Crimson Morning - Loading, please wait...")
end
function onDestroy()
	setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin': Psych Engine")
end

function onCreatePost()
	setPropertyFromClass("openfl.Lib", "application.window.title", "Mistful Crimson Morning - " .. songName)
end

function onGameOver()
    setPropertyFromClass("openfl.Lib", "application.window.title", "Mistful Crimson Morning - GAMEOVER")
    return Function_Continue;
end