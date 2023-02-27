/* syntax version 1 *//* postgres can not */
SELECT
    sum(length(value)) AS s,
    m0,
    m1,
    m2,
    2 * (2 * grouping(m0) + grouping(m1)) + grouping(m2) AS ggg3
FROM plato.Input
GROUP BY
    CUBE (CAST(key AS uint32) AS m0, CAST(key AS uint32) % 10 AS m1, CAST(key AS uint32) % 100 AS m2)
ORDER BY
    s,
    m0,
    m1,
    m2;

