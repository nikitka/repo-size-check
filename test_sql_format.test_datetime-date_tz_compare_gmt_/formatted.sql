/* postgres can not */
SELECT
    CAST("2000-01-01,GMT" AS tzdate) == CAST("2000-01-01" AS date);
SELECT
    CAST("2000-01-01,GMT" AS tzdate) < CAST("2000-01-01" AS date);
SELECT
    CAST("2000-01-01,GMT" AS tzdate) <= CAST("2000-01-01" AS date);
SELECT
    CAST("2000-01-01,GMT" AS tzdate) > CAST("2000-01-01" AS date);
SELECT
    CAST("2000-01-01,GMT" AS tzdate) >= CAST("2000-01-01" AS date);
SELECT
    CAST("2000-01-01,GMT" AS tzdate) != CAST("2000-01-01" AS date);
SELECT
    CAST("2000-01-01" AS date) == CAST("2000-01-01,GMT" AS tzdate);
SELECT
    CAST("2000-01-01" AS date) < CAST("2000-01-01,GMT" AS tzdate);
SELECT
    CAST("2000-01-01" AS date) <= CAST("2000-01-01,GMT" AS tzdate);
SELECT
    CAST("2000-01-01" AS date) > CAST("2000-01-01,GMT" AS tzdate);
SELECT
    CAST("2000-01-01" AS date) >= CAST("2000-01-01,GMT" AS tzdate);
SELECT
    CAST("2000-01-01" AS date) != CAST("2000-01-01,GMT" AS tzdate);
SELECT
    CAST("2000-01-01T12:00:00,GMT" AS tzdatetime) == CAST("2000-01-01T12:00:00Z" AS datetime);
SELECT
    CAST("2000-01-01T12:00:00,GMT" AS tzdatetime) < CAST("2000-01-01T12:00:00Z" AS datetime);
SELECT
    CAST("2000-01-01T12:00:00,GMT" AS tzdatetime) <= CAST("2000-01-01T12:00:00Z" AS datetime);
SELECT
    CAST("2000-01-01T12:00:00,GMT" AS tzdatetime) > CAST("2000-01-01T12:00:00Z" AS datetime);
SELECT
    CAST("2000-01-01T12:00:00,GMT" AS tzdatetime) >= CAST("2000-01-01T12:00:00Z" AS datetime);
SELECT
    CAST("2000-01-01T12:00:00,GMT" AS tzdatetime) != CAST("2000-01-01T12:00:00Z" AS datetime);
SELECT
    CAST("2000-01-01T12:00:00Z" AS datetime) == CAST("2000-01-01T12:00:00,GMT" AS tzdatetime);
SELECT
    CAST("2000-01-01T12:00:00Z" AS datetime) < CAST("2000-01-01T12:00:00,GMT" AS tzdatetime);
SELECT
    CAST("2000-01-01T12:00:00Z" AS datetime) <= CAST("2000-01-01T12:00:00,GMT" AS tzdatetime);
SELECT
    CAST("2000-01-01T12:00:00Z" AS datetime) > CAST("2000-01-01T12:00:00,GMT" AS tzdatetime);
SELECT
    CAST("2000-01-01T12:00:00Z" AS datetime) >= CAST("2000-01-01T12:00:00,GMT" AS tzdatetime);
SELECT
    CAST("2000-01-01T12:00:00Z" AS datetime) != CAST("2000-01-01T12:00:00,GMT" AS tzdatetime);
SELECT
    CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp) == CAST("2000-01-01T12:00:00.123456Z" AS timestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp) < CAST("2000-01-01T12:00:00.123456Z" AS timestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp) <= CAST("2000-01-01T12:00:00.123456Z" AS timestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp) > CAST("2000-01-01T12:00:00.123456Z" AS timestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp) >= CAST("2000-01-01T12:00:00.123456Z" AS timestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp) != CAST("2000-01-01T12:00:00.123456Z" AS timestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456Z" AS timestamp) == CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456Z" AS timestamp) < CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456Z" AS timestamp) <= CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456Z" AS timestamp) > CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456Z" AS timestamp) >= CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp);
SELECT
    CAST("2000-01-01T12:00:00.123456Z" AS timestamp) != CAST("2000-01-01T12:00:00.123456,GMT" AS tztimestamp);
