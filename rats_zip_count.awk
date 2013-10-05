# awk script to count zip code instances in
# rats-final.dat database
BEGIN	{FS = ","}
	{zip[$12] += 1}
END	{for(num in zip)
		print num, zip[num]
	}
