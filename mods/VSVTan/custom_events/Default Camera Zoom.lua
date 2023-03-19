-- Event notes hooks

function onEvent(name, value1, value2)
	if name == 'Default Camera Zoom' then
		number = tonumber(value1);
		setProperty('defaultCamZoom', value1);
	end
end