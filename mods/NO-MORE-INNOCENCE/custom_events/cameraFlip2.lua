function onEvent(name, value1, value2)
	if name == 'cameraFlip2' then
   doTweenAngle("TweenAngle", "camGame", -180 , 3, 'elasticOut');
   doTweenAngle("TweenAngle2", "camHUD", 180 , 1, 'sineOut');
 end
end
