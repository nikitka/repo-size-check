PRAGMA UseBlocks;
PRAGMA EmitAggApply;
USE plato;
SELECT
    key
FROM Input
GROUP BY
    key
ORDER BY
    key;
