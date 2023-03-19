function onCreate()
	setPropertyFromClass("openfl.Lib", "application.window.title",  "Friday Night Sadness - Loading, please wait...")
end
function onDestroy()
	setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Sadness - In The Menus")
end

function onCreatePost()
	setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Sadness - " .. songName)
end