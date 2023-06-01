--33%
DELIMITER //
CREATE PROCEDURE findLatestVersion(
    IN questionId INTEGER
)
BEGIN
  SELECT childId FROM questions WHERE questionId = questions.id;
END//
DELIMITER ;

-- This partial solution gave the idea to do a while loop until childId was null 

-- Ultimately had trouble getting syntax right for while loop and searched and found stack overflow page and 
-- found out - this problem has been reworked from a past problem 

-- search google 'question versions testdome' -> top result is old version of the question

-- https://stackoverflow.com/questions/71279356/question-versions-using-cte-recursion-mysql for 100% percent solutions
