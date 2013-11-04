#nehal 11/4/2013
# awk script to process file from Nehal 
# data file: nehal_test.dat
# NOTE: This is a work in progress to handle multiple fields

BEGIN	{FS = " "}
	{$1 = substr($1,2)
	 $2 = substr($2,11)
	gsub(/"}\)/,"",$2)
	gsub(/"}\)/,"",$3)
	printf("%d,%s %s\n", $1,$2,$3)
	} 
