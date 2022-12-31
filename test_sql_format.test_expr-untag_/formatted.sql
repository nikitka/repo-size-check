/* postgres can not */
$energy = ($m, $v) -> {
    RETURN AsTagged(Untag($m, "G") * Untag($v, "V") * Untag($v, "V") / 2, "E");
};
SELECT
    $energy(AsTagged(5.0, "G"), AsTagged(10.0, "V"));
