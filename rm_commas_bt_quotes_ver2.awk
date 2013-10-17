# when run as an awk script, this removes all commas contained
# within double quotes within each line of aa .csv file. 
# thus preserving the expected number of fields.
# Note that script is hard-coded not to exceed 18 fields.
# This script is dependent upon gawk version of awk
# NOTE: this removes ALL commas (even those without spaces
#  following the comma (unlike previous version)

{
c=0
$0=$0","
while($0) {
  match($0,/ *"[^"]*" *,|[^,]*,/)
  f=substr($0,RSTART,RLENGTH)     
  gsub(/^ *"?|"? *,$/,"",f)      
  gsub(/,/,"/",f)
  ++c
  line=((line) "," (f))
  $0=substr($0,RLENGTH+1)   
} 
gsub(/^,/,"",line)
if (c == 18) 
  print line ",XXXX"
else 
  print line  
line=""
}
