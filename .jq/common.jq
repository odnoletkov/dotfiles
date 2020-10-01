def unique_count:
  reduce .[] as $item ({}; .[$item | tostring] += 1);

def ratio_values:
  .[] /= add;

def intersection:
  reduce .[1:][] as $item (.[0] | unique; . - (. - $item));

def assoc_by(f):
  map({(f | tostring): .}) | add;
