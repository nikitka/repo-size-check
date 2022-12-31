PRAGMA UseBlocks;
PRAGMA EmitAggApply;
PRAGMA yt.UsePartitionsByKeysForFinalAgg = "false";
PRAGMA dq.EnableDqReplicate = "1";
USE plato;
SELECT
    key,
    count(*),
    count(DISTINCT subkey),
    sum(DISTINCT subkey),
    count(DISTINCT Unwrap(subkey / 2u)),
    sum(DISTINCT Unwrap(subkey / 2u))
FROM Input
GROUP BY
    key
ORDER BY
    key;
