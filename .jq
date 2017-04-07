def unique_count: group_by(.) | map({(.[0] | tostring): length}) | add;
