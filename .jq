def unique_count:
  group_by(.) | map({(.[0] | tostring): length}) | add;

def ratio_values:
  add as $sum | map_values(. / $sum);

def vk_peer_id:
  (.chat_id // empty) + 2e9 // .user_id;

def walk(f):
  . as $in
    | if type == "object" then map_values(walk(f)) | f
    elif type == "array" then map(walk(f)) | f
    else f
    end;

def xcodeproj(proj):
  def run:
  walk(
      (proj.objects[select(strings and length == 24 and . != proj.rootObject)] | run) // .
      );
  proj.objects[select(. == proj.rootObject)] // . | run;

def xcodeproj:
  . as $root | .rootObject | xcodeproj($root);

def xcodetarget(target):
  xcodeproj | .targets[] | select(.name == target) | walk(sort? // .);

def peek3:
  reduce path(.[]?[]?[]?) as $path
    (.; setpath($path; getpath($path) | (arrays | []) // (objects | {}) // .));

def semver_major:
  split(".") | first;

def group_by_key(f):
  to_entries | group_by(.key | f) | map(from_entries);

def count_by_key(f):
  group_by_key(f) | map({ (to_entries[0].key | f): add}) | add;

def to_csv:
  to_entries | map([.key, .value] | @csv)[];

def intersection:
  def i(y): ((unique + (y|unique)) | sort) as $sorted
    | reduce range(1; $sorted|length) as $i ([]; if $sorted[$i] == $sorted[$i-1] then . + [$sorted[$i]] else . end);
  reduce .[1:][] as $a (.[0]; i($a));
