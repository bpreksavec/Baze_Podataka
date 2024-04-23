CREATE PROCEDURE ZodiacBP (@datum DATE)
AS
BEGIN
DECLARE @znak VARCHAR(20);
    DECLARE @mjesec INT;
	DECLARE @dan INT;
	
	SET @mjesec = MONTH (@datum);
	SET @dan = DAY (@datum);
	
    SET @znak =  
        CASE 
            WHEN (@dan  > 21 AND @mjesec = 12) OR (@dan < 21 AND @mjesec = 1) THEN 'Jarac'
            WHEN (@dan > 20 AND @mjesec = 1) OR (@dan <21 AND @mjesec = 2) THEN 'Vodenjak'
			WHEN (@dan > 20 AND @mjesec = 2) OR (@dan <21 AND @mjesec = 3) THEN 'Ribe'
			WHEN (@dan > 20 AND @mjesec = 3) OR (@dan <21 AND @mjesec = 4) THEN 'Ovan'
			WHEN (@dan > 20 AND @mjesec = 4) OR (@dan <22 AND @mjesec = 5) THEN 'Bik'
			WHEN (@dan > 20 AND @mjesec = 5) OR (@dan <23 AND @mjesec = 6) THEN 'Blizanci'
			WHEN (@dan > 21 AND @mjesec = 6) OR (@dan <23 AND @mjesec = 7) THEN 'Rak'
			WHEN (@dan > 22 AND @mjesec = 7) OR (@dan <23 AND @mjesec = 8) THEN 'Lav'
			WHEN (@dan > 22 AND @mjesec = 8) OR (@dan <23 AND @mjesec = 9) THEN 'Djevica'
			WHEN (@dan > 22 AND @mjesec = 9) OR (@dan <23 AND @mjesec = 10) THEN 'Vaga'
			WHEN (@dan > 22 AND @mjesec = 10) OR (@dan <23 AND @mjesec = 11) THEN 'Škorpion'
        
            ELSE 'Strijelac'
        END;

    PRINT 'Horoskopski znak za datum: ' + @znak;
END;

drop procedure ZodiacBP;

EXEC ZodiacBP '2002-10-17';