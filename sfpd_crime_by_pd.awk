# awk script to aggregate a particular crime
# by police district
# and day of week
# input file: sfpd currently unprocessed file
BEGIN	{FS = ","
         crime = "TRESPASS"
         printf("\nCrime is: %s\n", crime)
         } 

	{if ($2 ~ crime)
		pd[$7] += 1 && dw[$4] += 1  # grab police district and day of week
	}

END { for(num in pd)
	 printf("%i %s \n", pd[num], num) | "sort -rn"
      printf("\n")
      for(day in dw)
	 printf("%i %s \n", dw[day], day)
      printf("\n")  
	}
