# script: rats_date_counter
# awk script to count open and closed rat call dates in
# rats-final.dat database and sorts based on rat calls
# Note: I use the date in first field common to open and close
BEGIN	{FS = ","}
	{date[$1] += 1}
END	{for(day in date)
		print day, date[day] | "sort -nk 2"
	}
