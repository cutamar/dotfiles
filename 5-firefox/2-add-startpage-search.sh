cp ~/.mozilla/firefox/*.default/search.json.mozlz4 .
python helpers/mozlz4a.py -d search.json.mozlz4 search.json
python helpers/add-search-engine.py config/startpage.json 'wjzMsZIcVnFR1EpP0KAz+610DnFjDkXDtSjmRe5K5tg=' 1
rm search.json.mozlz4 -f
python helpers/mozlz4a.py search.json search.json.mozlz4
cp search.json.mozlz4 ~/.mozilla/firefox/*.default/search.json.mozlz4
rm search.json.mozlz4 -f
rm search.json -f
