# awk script to convert upper case text to lower
# case text in a file 
BEGIN	{FS = ","}
	{print tolower($0) }
