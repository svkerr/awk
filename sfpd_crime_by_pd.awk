# awk script to aggregate a particular crime
# by police district
# and day of week
# input file: sfpd processed file
BEGIN	{FS = ","
         crime = "assault"
         printf("\nCrime is: %s\n", crime)
         } 

	{if ($1 ~ "assault")
		pd[$5] += 1 && dw[$2] += 1  # grab police district and day of week
	}

END { for(num in pd)
	 printf("%i %s \n", pd[num], num) | "sort -rn"
      printf("\n")
      for(day in dw)
	 printf("%i %s \n", dw[day], day)
      printf("\n")  
	}
