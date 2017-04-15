def unique_count:
  group_by(.) | map({(.[0] | tostring): length}) | add;

def unique_percent:
  unique_count | add as $sum | map_values(. / $sum);

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
