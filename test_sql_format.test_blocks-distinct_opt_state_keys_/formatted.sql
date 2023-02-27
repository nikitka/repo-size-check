PRAGMA UseBlocks;
PRAGMA EmitAggApply;
PRAGMA yt.UsePartitionsByKeysForFinalAgg = "false";
PRAGMA dq.EnableDqReplicate = "1";
USE plato;
SELECT
    key,
    count(*),
    max(subkey),
    sum(DISTINCT subkey),
    avg(subkey),
    count(DISTINCT subkey / 2u),
    avg(DISTINCT subkey / 2u)
FROM Input
GROUP BY
    key
ORDER BY
    key;

