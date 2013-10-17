# awk script to count offense types in
# SFPD logs
# some SFPD file 
BEGIN	{FS = ","}
	{offense[$1] += 1}
END	{for(num in offense)
		print offense[num],num
	}
