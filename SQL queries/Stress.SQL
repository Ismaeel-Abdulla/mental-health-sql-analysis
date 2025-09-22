SELECT
  CASE
    WHEN Gender = 0 THEN 'Male'
    ELSE 'Female'
END
  AS gender,
  ROUND( 100*COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >=3 AND `Do you find that your relationship often causes you stress_` >=3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2) AS relationship_stress,
  ROUND( 100*COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >=3 AND `Is your working environment unpleasant or stressful_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2 ) AS environment_stress,
  ROUND( 100*COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >=3 AND `Are you facing any difficulties with your professors or instructors_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2) AS instructor_stress,
  ROUND( 100*COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 AND `Is your hostel or home environment causing you difficulties_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2) AS Home_stress,
  ROUND( 100*COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 AND `Have you gained_lost weight_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2) AS weight_stress,
  ROUND( 100*COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 AND `Do you lack confidence in your choice of academic subjects_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2) AS Confidence_stress,
  ROUND( 100*COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 AND `Are you in competition with your peers_ and does it affect you_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2 ) AS peers_stress,
  ROUND( 100*COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 AND `Do you have trouble concentrating on your academic tasks_` >= 3 THEN 1
    END
      ) / COUNT(CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2) AS focus_stress,
  ROUND( 100*COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 AND `Do you face any sleep problems or difficulties falling asleep_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2) AS Sleep_stress,
  ROUND( 100* COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 AND `Have you noticed a rapid heartbeat or palpitations_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2 ) AS Heart_stress,
  ROUND( 100* COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 AND `Do you attend classes regularly_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you recently experienced stress in your life_` >= 3 THEN 1
    END
      ),2) AS attendance_stress
FROM
  `ismaeel-work.Student_stress.mental_health`
GROUP BY
  Gender
