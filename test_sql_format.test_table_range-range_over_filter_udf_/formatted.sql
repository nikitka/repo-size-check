/* postgres can not *//* syntax version 1 *//* kikimr can not - range not supported */
$script = @@
def f(f):
  def ft(s):
    return True
  def ff(s):
    return False
  return f and ft or ff
@@;
$callable = Python3::f(Callable<(Bool) -> Callable<(String) -> Bool>>, $script);
$callableT = $callable(String::StartsWith('testfets', 'test'));
SELECT
    count(*) AS count
FROM plato.filter(``, $callableT);

