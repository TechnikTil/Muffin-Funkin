function onEvent(name, value1, value2)
	if name == 'Text dissapear' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('text.alpha', targetAlpha);
		else
			doTweenAlpha('textFadeEventTween', 'text', targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end