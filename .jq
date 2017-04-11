def unique_count: group_by(.) | map({(.[0] | tostring): length}) | add;
def vk_peer_id: (.chat_id // empty) + 2e9 // .user_id;
