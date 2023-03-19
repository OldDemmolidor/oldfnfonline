function onEvent(name, value1, value2)
	if name == 'cameraReset' then
   doTweenAngle("TweenAngle", "camGame", 0 , 0.0001, 'linear');
   doTweenAngle("TweenAngle2", "camHUD", 0 , 0.0001, 'linear');
 end
end
