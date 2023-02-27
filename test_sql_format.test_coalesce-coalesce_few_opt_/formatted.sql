SELECT
    'first',
    coalesce(first_null, 22),
    coalesce(first_num, 33),
    coalesce(coalesce(first_null, 122), 42),
    coalesce(coalesce(first_num, 133), 43),
    coalesce(coalesce(coalesce(first_null, 222), 442), 100500),
    coalesce(coalesce(coalesce(first_num, 233), 443), 100501),
    'second',
    coalesce(second_null, 22),
    coalesce(second_num, 33),
    coalesce(coalesce(second_null, 122), 42),
    coalesce(coalesce(second_num, 133), 43),
    coalesce(coalesce(coalesce(second_null, 222), 442), 100500),
    coalesce(coalesce(coalesce(second_num, 233), 443), 100501),
    'third',
    coalesce(third_null, 22),
    coalesce(third_num, 33),
    coalesce(coalesce(third_null, 122), 42),
    coalesce(coalesce(third_num, 133), 43),
    coalesce(coalesce(coalesce(third_null, 222), 442), 100500),
    coalesce(coalesce(coalesce(third_num, 233), 443), 100501),
    'end'
FROM plato.Input;

