function palindromes()
{
num1=$1
num2=$2
rev=0
flag=0
while [[ $num1 -gt 0 ]]
do
rev=$((rev*10+$num1%10))
num1=$((num1/10))
done
if [[ $rev -eq $num2 ]]
then
flag=1
fi
echo $flag
}
echo "Enter Two Numbers"
read n1
read n2
ans=$(palindromes n1 n2)
if [[ $ans -eq 1 ]]
then
echo "Palindromes"
else
echo "Non palindromes"
fi
echo $ans
