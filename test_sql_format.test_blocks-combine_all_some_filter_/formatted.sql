PRAGMA UseBlocks;
PRAGMA EmitAggApply;
USE plato;
SELECT
    some(key)
FROM Input
WHERE subkey != 5;

