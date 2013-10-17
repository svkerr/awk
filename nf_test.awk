# awk script to display rows not satisfying
# a particular number of fields in a .csv file

BEGIN	{FS = ","}
	NF == 12 {print $0}
