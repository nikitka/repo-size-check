/* postgres can not */
SELECT
    ListFromRange(13, 42U),
    ListFromRange(13U, 42),
    ListFromRange(13, NULL, 42U),
    ListFromRange(13U, NULL, 42);

