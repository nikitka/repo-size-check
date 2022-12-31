PRAGMA UseBlocks;
PRAGMA EmitAggApply;
USE plato;
SELECT
    max(key)
FROM Input
WHERE subkey != 5;
