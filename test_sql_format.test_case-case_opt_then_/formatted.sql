SELECT
    CASE WHEN TRUE THEN CAST("123" AS int) ELSE 100501 END
UNION ALL
SELECT
    CASE WHEN TRUE THEN NULL ELSE 100502 END
UNION ALL
SELECT
    CASE WHEN FALSE THEN NULL ELSE 100503 END;

