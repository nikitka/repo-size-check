/* postgres can not */
$first = ($x) -> {
    RETURN $x.0
};
$second = ($x) -> {
    RETURN $x.1
};
$i = AsDict(AsTuple(1, "A"), AsTuple(2, "B"));
$j = AsDict(AsTuple(1, "A"), AsTuple(2, "C"));
$k = AsDict(AsTuple(1, "A"), AsTuple(2, "D"));
$l = AsList(
    AsTuple($i, Void()),
    AsTuple($i, Void()),
    AsTuple($j, Void())
);
$d = ToDict($l);
SELECT
    $d,
    DictKeys($d),
    DictPayloads($d),
    DictItems($d);

SELECT
    DictLookup($d, $i),
    DictLookup($d, $k);

SELECT
    DictContains($d, $i),
    DictContains($d, $k);

$d = Yql::ToDict($l, $first, $second, AsTuple(AsAtom("Compact"), AsAtom("Hashed"), AsAtom("One")));
SELECT
    $d,
    DictKeys($d),
    DictPayloads($d),
    DictItems($d);

SELECT
    DictLookup($d, $i),
    DictLookup($d, $k);

SELECT
    DictContains($d, $i),
    DictContains($d, $k);

