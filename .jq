def unique_count:
  group_by(.) | map({(.[0] | tostring): length}) | add;

def unique_percent:
  unique_count | add as $sum | map_values(. / $sum);

def vk_peer_id:
  (.chat_id // empty) + 2e9 // .user_id;
