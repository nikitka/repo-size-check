SELECT
    Uuid('550e8400-e29b-41d4-a716-446655440000');
SELECT
    CAST('550e8400-e29b-41d4-a716-446655440000' AS Uuid);
SELECT
    CAST(CAST('550e8400-e29b-41d4-a716-446655440000' AS Uuid) AS varchar);
SELECT
    CAST(CAST('550e8400-e29b-41d4-a716-446655440000' AS Uuid) AS varchar) = '550e8400-e29b-41d4-a716-446655440000';
SELECT
    Uuid('550e8400-e29b-41d4-a716-446655440000') = CAST('550e8400-e29b-41d4-a716-446655440000' AS uuid);
SELECT
    Uuid('550e8400-e29b-41d4-a716-446655440000') < CAST('550e8400-e29b-41d4-a716-446655440000' AS uuid);
SELECT
    Uuid('550e8400-e29b-41d4-a716-446655440000') <= CAST('550e8400-e29b-41d4-a716-446655440000' AS uuid);
SELECT
    Uuid('550e8400-e29b-41d4-a716-446655440000') > CAST('550e8400-e29b-41d4-a716-446655440000' AS uuid);
SELECT
    Uuid('550e8400-e29b-41d4-a716-446655440000') >= CAST('550e8400-e29b-41d4-a716-446655440000' AS uuid);
SELECT
    Uuid('550e8400-e29b-41d4-a716-446655440000') != CAST('550e8400-e29b-41d4-a716-446655440000' AS uuid);
