/* postgres can not */
$d = AsDict(AsTuple("fld", "Россия, Санкт-Петербург, Петроградская набережная, 2-4"), AsTuple("_yql_fld", ""));
SELECT
    Yql::TryWeakMemberFromDict(Just($d), NULL, AsAtom("String"), AsAtom("fld"));
