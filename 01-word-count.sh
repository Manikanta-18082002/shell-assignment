#!/bin/bash

# # Open the text file in read mode
# text_file="count.txt"
# cat $text_file |

# # Split the text file into words
# tr '[:space:]' '\n' |

# # Count the frequency of each word
# sort | uniq -c |

# # Sort the words by frequency
# sort -rn |

# # Print the most frequent word
# head -n 1


sed -e 's/[^[:alpha:]]/ /g' count.txt | tr '\n' " " |  tr -s " " | tr " " '\n'| tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | nl | head -n 5

# This command makes the following:

# Substitute all non alphanumeric characters with a blank space.
# All line breaks are converted to spaces also.
# Reduces all multiple blank spaces to one blank space
# All spaces are now converted to line breaks. Each word in a line.
# Translates all words to lower case to avoid 'Hello' and 'hello' to be different words
# Sorts de text
# Counts and remove the equal lines
# Sorts reverse in order to count the most frequent words
# Add a line number to each word in order to know the word posotion in the whole