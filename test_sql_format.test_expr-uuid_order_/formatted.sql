/* postgres can not */
SELECT
    *
FROM (
        SELECT
            1 AS a,
            Uuid('00000000-0000-0000-0000-000000000000') AS x
        UNION ALL
        SELECT
            2 AS a,
            Uuid('01000000-0000-0000-0000-000000000000') AS x
        UNION ALL
        SELECT
            3 AS a,
            Uuid('00010000-0000-0000-0000-000000000000') AS x
        UNION ALL
        SELECT
            4 AS a,
            Uuid('00000100-0000-0000-0000-000000000000') AS x
        UNION ALL
        SELECT
            5 AS a,
            Uuid('00000001-0000-0000-0000-000000000000') AS x
        UNION ALL
        SELECT
            6 AS a,
            Uuid('00000000-0100-0000-0000-000000000000') AS x
        UNION ALL
        SELECT
            7 AS a,
            Uuid('00000000-0001-0000-0000-000000000000') AS x
        UNION ALL
        SELECT
            8 AS a,
            Uuid('00000000-0000-0100-0000-000000000000') AS x
        UNION ALL
        SELECT
            9 AS a,
            Uuid('00000000-0000-0001-0000-000000000000') AS x
        UNION ALL
        SELECT
            10 AS a,
            Uuid('00000000-0000-0000-0100-000000000000') AS x
        UNION ALL
        SELECT
            11 AS a,
            Uuid('00000000-0000-0000-0001-000000000000') AS x
        UNION ALL
        SELECT
            12 AS a,
            Uuid('00000000-0000-0000-0000-010000000000') AS x
        UNION ALL
        SELECT
            13 AS a,
            Uuid('00000000-0000-0000-0000-000100000000') AS x
        UNION ALL
        SELECT
            14 AS a,
            Uuid('00000000-0000-0000-0000-000001000000') AS x
        UNION ALL
        SELECT
            15 AS a,
            Uuid('00000000-0000-0000-0000-000000010000') AS x
        UNION ALL
        SELECT
            16 AS a,
            Uuid('00000000-0000-0000-0000-000000000100') AS x
        UNION ALL
        SELECT
            17 AS a,
            Uuid('00000000-0000-0000-0000-000000000001') AS x
)
    AS s
ORDER BY
    x;

