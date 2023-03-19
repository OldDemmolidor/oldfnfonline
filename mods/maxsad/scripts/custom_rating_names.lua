function onUpdate()
    if ratingName == '?' then
        setRatingName('?') --When there are no notes
    end
    if ratingName == 'You Suck!' then
        setRatingName('suck') --From 0% to 19% of accuracy :skull:
    end
    if ratingName == 'Shit' then
        setRatingName('fuck you') --From 20% to 39% of accuracy
    end
    if ratingName == 'Bad' then
        setRatingName('no bitches') --From 40% to 49% of accuracy
    end
    if ratingName == 'Bruh' then
        setRatingName('i am a nood') --From 50% to 59% of accuracy
    end
    if ratingName == 'Meh' then
        setRatingName('meh') --From 60% to 68% of accuracy
    end
    if ratingName == 'Nice' then
        setRatingName('good?') --69% of accuracy... "nice"
    end
    if ratingName == 'Good' then
        setRatingName('Damn youre good') --From 70% to 79% of accuracy
    end
    if ratingName == 'Great' then
        setRatingName('Keep it up') --From 80% to 89% of accuracy
    end
    if ratingName == 'Sick!' then
        setRatingName('very good!') --From 90% to 99% of accuracy
    end
    if ratingName == 'Perfect!!' then
        setRatingName('WTF') --100% of accuracy
    end
    if ratingName == '?' and botPlay == true then
        setRatingName('pussy') --When the botplay is activated
    end
end