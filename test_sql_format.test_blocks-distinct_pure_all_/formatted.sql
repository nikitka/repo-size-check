PRAGMA UseBlocks;
PRAGMA EmitAggApply;
PRAGMA yt.UsePartitionsByKeysForFinalAgg = "false";
PRAGMA dq.EnableDqReplicate = "1";
USE plato;
SELECT
    sum(DISTINCT key),
    min(DISTINCT key)
FROM Input;
