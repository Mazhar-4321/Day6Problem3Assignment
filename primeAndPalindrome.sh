function prime()
{
nn=$1
##echo $nn
factors=0
i=1
while [[ $factors -lt 2 ]]
do
if [[ $(($nn%$i)) -eq 0 ]]
then
factors=$((factors+1))
fi
i=$((i+1))
done
if [[ $factors -eq 2 ]]
then
i=1
else
i=0
fi
echo $i
}
function palindrome()
{
n1=$1
rev=0
while [[ $n1 -gt 0 ]]
do
rev=$(($rev*10+$n1%10))
n1=$(($n1/10))
done
echo $rev
}
echo "Enter a Number "
read n
ans1=$(prime n)
ans2=$(palindrome n)
ans2=$(prime $ans2)
echo $ans1,$ans2
if [[  $ans1 = "1" && $ans2 = "1" ]]
then
echo "Both Number and Its Palindrome are Prime"
elif [[  $ans1 = "1" && $ans2 = "0" ]]
then
echo " Number is Prime But Palindrome is not Prime "
elif [[  $ans1 = "0" && $ans2 = "1" ]] 
then
echo " Number is NOt Prime But Palindrome is  Prime "
else
echo "Both Number and Palindrome Are Not Prime "
fi

