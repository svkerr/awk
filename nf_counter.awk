# awk script to count number of fields in each row
# and aggregate via an associative array 
BEGIN	{FS = ","}
	{field[NF] += 1}
END	{for(num in field) 
        print field[num],num
	}
