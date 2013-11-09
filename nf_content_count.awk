# awk script to count occurences of some 
# particular field - change $#
# input: some csv file 
BEGIN	{FS = ","}
        {if ($3 == "ZipAndDownload")
	  user[$8] +=1 }
        
END	{for(p in user)
		print user[p], p 
	}
