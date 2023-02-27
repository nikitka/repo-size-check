PRAGMA UseBlocks;
PRAGMA EmitAggApply;
USE plato;
SELECT
    min(key)
FROM Input
WHERE subkey != 5;

