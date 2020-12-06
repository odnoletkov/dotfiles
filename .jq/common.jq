def unique_count:
  reduce .[] as $item ({}; .[$item | tostring] += 1);

def ratio_values:
  .[] /= add;

def intersection:
  reduce .[1:][] as $item (.[0] | unique; . - (. - $item));

# Built-in `combinations` is actually 'permutations'
def combs($n):
  if $n == 0 then
    []
  elif $n == 1 then 
    .[] | [.]
  elif length < $n then
    empty
  elif length == $n then
    .
  else
    [.[0]] + (.[1:] | combs($n - 1)),
    (.[1:] | combs($n))
  end;
