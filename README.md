# An exercise in e-book production

It's been a while since I wanted to get some sort of introduction to meditation.
A friend recommended [Mindfulness in Plain English][1]. There are plenty of pdfs
online, but no epubs or mobi.

[1]: http://www.goodreads.com/book/show/64369.Mindfulness_in_Plain_English

# How

1. `$ cat get_mpe.py`

```python
import requests
from pyquery import PyQuery as pq

BASEURL = 'http://www.budsas.org/ebud/mfneng'
page = requests.get(BASEURL + '/mind0.htm')
d = pq(page.text)

# get chapter links
chaps = [x.values()[0] for x in  d('blockquote p a')]

for ch in chaps:
    if ch.startswith('mind'):
        page = requests.get(URL+'/'+ ch)
        with open('/tmp/'+ch, 'w') as fp:
            fp.write(page.text)
```

2. `$ pandoc -f html -t markdown /tmp/mind* > mpe.md`

3. cleanup in an editor

4. `make epub`
