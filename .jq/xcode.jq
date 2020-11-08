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

def set_path:
  def set_path($id; $path):
    .objects[$id] as $obj |
    ($path + "/" + $obj.path) as $path |
    .objects[$id]._path = $path |
    reduce $obj.children[]? as $child (.; set_path($child; $path));
  set_path(.objects[.rootObject].mainGroup; ".");
