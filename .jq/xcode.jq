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
