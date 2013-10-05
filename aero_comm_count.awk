# awk script to count command instances from
# file (aero_awk_stream.dat)
# generated from aerosource web-logs after
# being streamed via an awk script
 
	{command[$1] += $2}
END	{for(num in command)
		print command[num], num
	}
