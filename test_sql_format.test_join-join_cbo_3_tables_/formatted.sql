USE plato;
PRAGMA yt.CostBasedOptimizer = "PG";
SELECT
    i1.value,
    i2.value,
    i3.value,
    i4.value
FROM Input1
    AS i1
JOIN Input2
    AS i2
ON i1.key = i2.key
JOIN Input3
    AS i3
ON i1.key = i3.key
JOIN Input4
    AS i4
ON i1.key = i4.key;

