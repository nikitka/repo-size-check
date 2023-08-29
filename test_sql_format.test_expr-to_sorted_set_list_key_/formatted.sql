/* postgres can not */
$l = AsList(
    AsTuple(AsList(1, 2, 3), Void()),
    AsTuple(AsList(1, 2), Void()),
    AsTuple(AsList(1, 2), Void())
);
$d = ToSortedDict($l);
SELECT
    $d,
    DictKeys($d),
    DictPayloads($d),
    DictItems($d);

SELECT
    DictLookup($d, AsList(1, 2)),
    DictLookup($d, AsList(1, 3));

SELECT
    DictContains($d, AsList(1, 2)),
    DictContains($d, AsList(1, 3));

