# awk script to count zip code instances in
# san francisco pothole database
BEGIN	{FS = ","}
	{zip[$10] += 1}
END	{for(num in zip)
		print num, zip[num]
	}
