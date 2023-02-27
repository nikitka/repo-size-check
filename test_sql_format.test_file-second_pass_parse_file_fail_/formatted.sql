/* postgres can not */
$list = ParseFile("int32", "keyid.lst");
SELECT
    ListExtend(ListMap($list, ($x) -> {
        RETURN $x + 1
    }), ListMap($list, ($x) -> {
        RETURN $x + 2
    }));

