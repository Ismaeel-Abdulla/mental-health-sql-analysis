SELECT
  CASE
    WHEN Gender = 0 THEN 'Male'
    ELSE 'Female'
END
  AS gender,
  ROUND( 100*COUNT (CASE
        WHEN `Do you attend classes regularly_` >=3 AND `Do you face any sleep problems or difficulties falling asleep_` >=3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Do you face any sleep problems or difficulties falling asleep_` >= 3 THEN 1
    END
      ),2) AS Sleep_attendance,
  ROUND( 100* COUNT(
      CASE
        WHEN `Have you noticed a rapid heartbeat or palpitations_` >= 3 AND `Do you have trouble concentrating on your academic tasks_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Have you noticed a rapid heartbeat or palpitations_` >= 3 THEN 1
    END
      ),2) AS heart_focus,
  ROUND( 100* COUNT(
      CASE
        WHEN `Do you feel overwhelmed with your academic workload_` >= 3 AND `Do you struggle to find time for relaxation and leisure activities_` >= 3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Do you feel overwhelmed with your academic workload_` >= 3 THEN 1
    END
      ),2) AS Workload_leisure,
  ROUND( 100* COUNT(CASE
        WHEN `Do you feel overwhelmed with your academic workload_` >= 3 AND `Do you find that your relationship often causes you stress_` >=3 THEN 1
    END
      ) / COUNT(
      CASE
        WHEN `Do you find that your relationship often causes you stress_` >=3 THEN 1
    END
      ),2) AS Relationship_workload,
  ROUND( 100* COUNT(CASE
        WHEN `Have you been experiencing any illness or health issues_` >=3 AND `Do you have trouble concentrating on your academic tasks_` >= 3 THEN 1
    END
      ) / COUNT(CASE
        WHEN `Have you been experiencing any illness or health issues_` >=3 THEN 1
    END
      ),2) AS illness_focus,
  ROUND( 100* COUNT(CASE
        WHEN `Do you often feel lonely or isolated_` >= 3 AND `Are you in competition with your peers_ and does it affect you_` >= 3 THEN 1
    END
      ) / COUNT(CASE
        WHEN `Do you often feel lonely or isolated_` >= 3 THEN 1
    END
      ),2) AS isolation_competition
FROM
  `ismaeel-work.Student_stress.mental_health`
GROUP BY
  Gender
