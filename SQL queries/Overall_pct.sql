SELECT
  CASE 
    WHEN Gender = 0 THEN 'Male'
    WHEN Gender = 1 THEN 'Female'
  END AS Gender,
  ROUND(
    100*COUNTIF(`Have you recently experienced stress in your life_` >= 3) /
    COUNT(*),2) 
    AS stress_count,
  ROUND(
    100*COUNTIF(`Have you been dealing with anxiety or tension recently_` >= 3)/
    COUNT(*),2) 
    AS anxiety_count,
  ROUND(
    100*COUNTIF(`Have you been feeling sadness or low mood_` >= 3)/
    COUNT(*),2) 
    AS sadness_count,
  ROUND(
    100*COUNTIF(`Have you been experiencing any illness or health issues_` >= 3)/
    COUNT(*),2) 
    AS health_issues,
   ROUND(
    100*COUNTIF(`Do you often feel lonely or isolated_` >= 3)/
    COUNT(*),2) 
    AS lonely,
 ROUND(
  100*COUNTIF(`Is your working environment unpleasant or stressful_`>=3)/
  COUNT(*),2) 
  AS working_environment,
ROUND(
  100*COUNTIF(`Do you lack confidence in your choice of academic subjects_` >= 3)/
  COUNT(*),2) 
  AS lack_confidence,
ROUND(
  100*COUNTIF(`Do you find that your relationship often causes you stress_` >=3)/
  COUNT(*),2) 
  AS relationship_stress,
ROUND(
  100*COUNTIF(`Do you face any sleep problems or difficulties falling asleep_` >= 3)/
  COUNT(*),2)
   AS sleep_issues
FROM `ismaeel-work.Student_stress.mental_health`
GROUP BY Gender
