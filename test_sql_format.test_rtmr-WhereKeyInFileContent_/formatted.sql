SELECT STREAM
    *
FROM plato.Input
WHERE key IN String::SplitToList(FileContent("keyid.lst"), "\n", TRUE);
