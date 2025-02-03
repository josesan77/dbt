SELECT AVG(ProcessTemp) AS avg_temp, TypeLMH
FROM Production1
GROUP BY TypeLMH;