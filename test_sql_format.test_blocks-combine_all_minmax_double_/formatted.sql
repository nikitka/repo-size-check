PRAGMA UseBlocks;
PRAGMA EmitAggApply;
USE plato;
SELECT
    min(subkey),
    max(subkey),
FROM Input;

