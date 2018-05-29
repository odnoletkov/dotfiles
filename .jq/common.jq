def unique_count:
  group_by(.) | map({(.[0] | tostring): length}) | add;

def ratio_values:
  add as $sum | map_values(. / $sum);

def walk(f):
  . as $in
    | if type == "object" then map_values(walk(f)) | f
    elif type == "array" then map(walk(f)) | f
    else f
    end;

def intersection:
  def i(y): ((unique + (y|unique)) | sort) as $sorted
    | reduce range(1; $sorted|length) as $i ([]; if $sorted[$i] == $sorted[$i-1] then . + [$sorted[$i]] else . end);
  reduce .[1:][] as $a (.[0]; i($a));

def assoc_by(f):
  map({key: f | tostring, value: .}) | from_entries;
