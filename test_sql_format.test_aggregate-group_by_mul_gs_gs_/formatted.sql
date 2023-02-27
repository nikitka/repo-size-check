/* syntax version 1 *//* postgres can not */
SELECT
    count(1),
    kf,
    kl,
    vf,
    vl,
    grouping(kf, kl, vf, vl)
FROM plato.Input
GROUP BY
    GROUPING SETS (
        CAST(key AS uint32) / 100 AS kf,
        CAST(key AS uint32) % 10 AS kl),
    GROUPING SETS (
        Substring(value, 0, 1) AS vf,
        Substring(value, 2, 1) AS vl)
ORDER BY
    kf,
    kl,
    vf,
    vl;

