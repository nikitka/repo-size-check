/* syntax version 1 *//* postgres can not *//* kikimr can not - range not supported */
$a = "";
$b = "Input";
$c = "";
$d = "";
SELECT
    count(*)
FROM plato.regexp($a, $b, $c, $d);

USE plato;
$a = "";
$b = "Input";
$c = "";
$d = "";
SELECT
    count(*)
FROM regexp($a, $b, $c, $d);

