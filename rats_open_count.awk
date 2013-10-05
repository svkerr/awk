# awk script to count open and closed rat calls in
# rats-final.dat database
BEGIN	{FS = ","}
	{status[$2] += 1}
END	{for(num in status)
		print num, status[num]
	}
