# awk script to count zip code instances in
# rats-final.dat database
BEGIN	{FS = ","}
	{performer[$8] += 1}
END	{for(id in performer)
        print performer[id], id
	}
