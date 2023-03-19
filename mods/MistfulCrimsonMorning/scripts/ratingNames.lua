function onUpdate()
    if ratingName == '?' then
        setRatingName('None') --When there are no notes
    end
    if ratingName == 'You Suck!' then
        setRatingName('PAFATIC') --From 0% to 19% of accuracy
    end
    if ratingName == 'Shit' then
        setRatingName('Lmao + Ratio + Didnt ask') --From 20% to 39% of accuracy
    end
    if ratingName == 'Bad' then
        setRatingName('BrEh') --From 40% to 49% of accuracy
    end
    if ratingName == 'Bruh' then
        setRatingName('LOL') --From 50% to 59% of accuracy
    end
    if ratingName == 'Meh' then
        setRatingName('MA MA DI') --From 60% to 68% of accuracy
    end
    if ratingName == 'Nice' then
        setRatingName('Keep trying') --69% of accuracy :bruh:
    end
    if ratingName == 'Good' then
        setRatingName('Ay...Thats pretty good!') --From 70% to 79% of accuracy
    end
    if ratingName == 'Great' then
        setRatingName('Sick Bro!') --From 80% to 89% of accuracy
    end
    if ratingName == 'Sick!' then
        setRatingName('Funky!!!') --From 90% to 99% of accuracy
    end
    if ratingName == 'Perfect!!' then
        setRatingName('P R E F A C T I O N') --100% of accuracy
    end
    if ratingName == '?' and botPlay == true then
        setRatingName('Bot play = REAL PAFATIC') --When the botplay is activated
    end
end