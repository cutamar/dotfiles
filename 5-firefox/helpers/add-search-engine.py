import os
import sys
import json
import re

engine_path = sys.argv[1]
try:
    engine_hash = sys.argv[2]
except ValueError:
    pass
try:
    set_default = bool(sys.argv[3])
except ValueError:
    set_default = bool(0)

engine_file = open(engine_path, 'r')
engine = json.loads(engine_file.read())
engine_file.close()

engine_name = engine['_name']

with open('search.json', 'r') as f:
    data = f.read()
    json_data = json.loads(data)
    engine_count = len(json_data['engines'])
    engine['_metaData']['order'] = engine_count + 1
    json_data['engines'].append(engine)
    if set_default:
        json_data['metaData']['current'] = engine_name
        json_data['metaData']['hash'] = engine_hash
    with open('search.json.new', 'w') as new_f:
        new_f.write(json.dumps(json_data))

os.remove('search.json')
os.rename('search.json.new', 'search.json')
