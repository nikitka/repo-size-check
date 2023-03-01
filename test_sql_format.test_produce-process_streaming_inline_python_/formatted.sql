/* syntax version 1 *//* postgres can not */-- not supported on windows
$script = @@
#!/usr/bin/python
import sys
for line in sys.stdin:
    if "bar" in line:
        sys.stdout.write(line)
@@;
$input = (
        SELECT
            String::JoinFromList(AsList(key, subkey, value), ",") AS Data
        FROM plato.Input1
);

PROCESS $input
USING Streaming::ProcessInline(TableRows(), $script);

