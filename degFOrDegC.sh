function degCToDegF()
{
degC=$1
degF=`echo $degC | awk '{printf "%.2f \n",($1*9/5)+32}'`
echo $degF
}
function degFToDegC()
{
degF=$1
degC=`echo $degF | awk '{printf "%.2f \n",($1-32)*5/9}'`
echo $degC
}
echo "Enter 0 to Convert from Cel->Far and 1 for Far->Cel "
read n
case $n in
	1)
	echo "Enter Farhenheit Value"
	read far
	ans=$(degFToDegC $far)
	echo $ans
	;;
	0)
	echo "Enter Celsius Value"
	read cel
	ans=$(degCToDegF $cel)
	echo $ans
	;;
esac
