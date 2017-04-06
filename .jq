def unique_count: group_by(.) | map({key: .[0] | tostring, value: length}) | from_entries;
