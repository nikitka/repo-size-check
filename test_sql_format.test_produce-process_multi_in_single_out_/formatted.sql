/* syntax version 1 *//* postgres can not */
PRAGMA Dq.EnableDqReplicate = "1";
$udf = YQL::@@
(lambda '(stream)
    (PartitionByKey stream
        (lambda '(item) (Way item))
        (Void)
        (Void)
        (lambda '(listOfPairs)
            (FlatMap listOfPairs (lambda '(pair)
                (Map (Nth pair '1) (lambda '(elem)
                    (AsStruct
                        '('cnt (Visit elem '0 (lambda '(v) (Member v 'subkey)) '1 (lambda '(v) (Member v 'subkey))))
                        '('src (Nth pair '0))
                    )
                ))
            ))
        )
    )
)
@@;
$i = (
    PROCESS plato.Input0, (
        SELECT
            *
        FROM plato.Input0
        WHERE key > "100"
    )
    USING $udf(TableRows())
);
SELECT
    *
FROM $i;
