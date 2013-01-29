#!/usr/bin/env sh

# This script count unigram and bigram of text including hashtags and sort them in descending order.
# Change awk to mawk for better performance.
# add -s parameter to sort for allocate more memory usage.

tr -sc 'A-Za-z0-9#_' '\012' < /dev/stdin | mawk '{print tolower($1)}' > all.words
tail -n +2 all.words > next.words
paste all.words next.words > bigram.words
cat all.words bigram.words | sort | uniq -c | sort -nr

rm -f *.words
