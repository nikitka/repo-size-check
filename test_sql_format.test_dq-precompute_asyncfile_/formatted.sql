USE plato;
PRAGMA dq.EnableDqReplicate;
$a =
    SELECT
        max(key)
    FROM Input
    WHERE key IN ParseFile("String", "list.txt");
SELECT
    *
FROM Input
WHERE key >= $a;
