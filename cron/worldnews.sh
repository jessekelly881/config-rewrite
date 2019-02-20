#Connected to Internet?
ping -q -w 1 -c 1 `ip r | grep -m 1 default | cut -d ' ' -f 3` >/dev/null || exit

title=$(python -c "import feedparser as fp; f=fp.parse('https://www.reddit.com/r/worldnews.rss'); print(f.entries[0].title)")
notify-send "$title"
