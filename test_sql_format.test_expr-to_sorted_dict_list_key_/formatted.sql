/* postgres can not */
$l = AsList(AsTuple(AsList(1, 2, 3), "foo"), AsTuple(AsList(1, 2), "bar"), AsTuple(AsList(1, 2), "baz"));
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
$d = ToSortedMultiDict($l);
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
