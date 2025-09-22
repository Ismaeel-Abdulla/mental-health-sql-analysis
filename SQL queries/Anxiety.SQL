SELECT
  CASE
    WHEN Gender = 0 THEN 'Male'
    ELSE 'Female'
END
  AS gender,
  ROUND(100* COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 AND `Do you find that your relationship often causes you stress_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 THEN 1
    END
      ),2) AS relationship_anxiety,
  ROUND(100* COUNT(
      CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 AND `Is your working environment unpleasant or stressful_` >= 3 THEN 1
    END
      ) / COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 THEN 1
    END
      ),2) AS working_anxiety,
  ROUND(100* COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 AND `Are you facing any difficulties with your professors or instructors_` >= 3 THEN 1
    END
      ) / COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 THEN 1
    END
      ),2) AS instructor_anxiety,
  ROUND(100* COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >=3 AND `Do you lack confidence in your choice of academic subjects_` >=3 THEN 1
    END
      ) / COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >=3 THEN 1
    END
      ),2) AS confidence_anxiety,
  ROUND(100* COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >=3 AND `Do you face any sleep problems or difficulties falling asleep_` >=3 THEN 1
    END
      ) /COUNT (CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 THEN 1
    END
      ),2) AS sleep_anxiety,
  ROUND(100* COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 AND `Have you noticed a rapid heartbeat or palpitations_` >= 3 THEN 1
    END
      ) /COUNT (CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 THEN 1
    END
      ),2) AS heart_anxiety,
  ROUND( 100*COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 AND `Do you get irritated easily_` >=3 THEN 1
    END
      ) / COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 THEN 1
    END
      ),2) AS irritated_anxiety,
  ROUND( 100* COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 AND `Do you have trouble concentrating on your academic tasks_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >=3 THEN 1
    END
      ),2) AS focus_anxiety,
  ROUND(100* COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 AND `Do you feel overwhelmed with your academic workload_` >= 3 THEN 1
    END
      ) / COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 THEN 1
    END
      ),2) AS overwhelmed_anxiety,
  ROUND(100* COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 AND `Do you attend classes regularly_` >= 3 THEN 1
    END
      ) / COUNT(CASE
        WHEN `Have you been dealing with anxiety or tension recently_` >= 3 THEN 1
    END
      ),2) AS attendance_anxiety
FROM
  `ismaeel-work.Student_stress.mental_health`
GROUP BY
  Gender
