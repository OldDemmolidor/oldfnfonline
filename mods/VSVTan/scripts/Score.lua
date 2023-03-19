local customScore = ' Score: '
local customMisses = ' • Misses: '
local customRating = ' • Rating: '
local customNoHitRating = ' • Rating: 0%' --when the rating is on 0%

function round(x, n)
  n = math.pow(10, n or 0)
  x = x * n
  if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
  return x / n
end

function onUpdatePost()
if ratingFC == '' then
    setProperty('scoreTxt.text', customScore .. score .. customMisses .. misses .. customNoHitRating)
else
    setProperty('scoreTxt.text', customScore .. score .. customMisses .. misses .. customRating ..round(rating * 100, 2).. '% [' ..ratingFC..']')
end
end

function onCreatePost()
  setTimeBarColors('FF0000', '000000');
    setTextColor('scoreTxt', getHealthColor('dad'));
    setTextColor('botplayTxt', getHealthColor('dad'));
end

function getHealthColor(char)
  return string.format('%02x%02x%02x', getProperty(char..'.healthColorArray[0]'), getProperty(char..'.healthColorArray[1]'), getProperty(char..'.healthColorArray[2]'))
end