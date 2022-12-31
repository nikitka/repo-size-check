SELECT STREAM
    key,
    value,
    CAST(key AS uint64) IN ParseFile('uint64', "keyid.lst") AS privilege
FROM plato.Input;
