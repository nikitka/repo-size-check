/* postgres can not */-- Find has optional args
SELECT
    String::ReplaceAll();
-- too few
SELECT
    String::ReplaceAll("abc");
-- too few
SELECT
    String::ReplaceAll("abc", "b", 2, 4);
-- too many
SELECT
    String::ReplaceAll("abc", "b", 2, 4, 44);
-- too many
