#!/bin/bash

# Open the text file in read mode
text_file="count.txt"
cat $text_file |

# Split the text file into words
tr '[:space:]' '\n' |

# Count the frequency of each word
sort | uniq -c |

# Sort the words by frequency
sort -rn |

# Print the most frequent word
head -n 1