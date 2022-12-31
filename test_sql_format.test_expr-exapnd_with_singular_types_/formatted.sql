/* postgres can not */
$null_t = Yql::NullType();
$struct_t = Struct<a: String, b: List<Int32>, c: Dict<String, Int64>, d: EmptyList, e: EmptyDict, f: Void, g: $null_t, h: pgtext>;
$callable = CALLABLE (Callable<($struct_t) -> $struct_t>, ($x) -> {
    RETURN $x;
});
SELECT
    $callable(<|a: "1"|>),
    $callable(AddMember(<||>, "a", "2"));
