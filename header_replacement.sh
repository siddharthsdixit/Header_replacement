#CODE PERPOSE : REPLACIG THE SPACES IN THE HEADERS (starting with ">") WITH UNDER SCORE AND DELETING EVERYTHING BEFORE LOCUS.

#!/bin/bash

for d in ./*/*/; 
do
	(cd "$d" && grep ">" *|sed -i 's/ /_/g' * && grep ">" *| sed -i 's/]_.*//g' * && grep ">" *|sed -i 's/^.*locus/>locus/g' *);
done
