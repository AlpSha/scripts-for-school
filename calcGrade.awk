# Calculates the average and necessary points
# fields: className, target point, first grade, first rate, second grade, second rate...

BEGIN { FS = "," }
{
	totalPoint = 0;
	totalRate = 0;
	print $1;
	for (i=3; i<=NF; i=i+3) {
		print "\t" $i "\t" $(i+1)*100 "%\t" $(i+2)
		totalPoint += $i*$(i+1);
		totalRate += $(i+1);
	}
	print "\tAverage: " totalPoint*(1/totalRate);
	if(totalRate != 1) {
		print "\tNeeded: " ($2-totalPoint)*(1/(1-totalRate));
	}
	print "";
}
