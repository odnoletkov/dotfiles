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
