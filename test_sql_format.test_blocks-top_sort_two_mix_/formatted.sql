PRAGMA UseBlocks;
USE plato;
PRAGMA yt.UseNativeDescSort;
SELECT
    key,
    subkey + 0 AS subkey1,
    value
FROM Input
ORDER BY
    key ASC,
    subkey1 DESC
LIMIT 2;

