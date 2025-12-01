
file="students.txt"

while [ 1 ]
do
echo "--------------------------------------"
echo " Welcome to School Management System! "
echo " 1. TO add student "
echo " 2. TO find by roll no "
echo " 3. TO find by name "
echo " 4. TO find students in a course "
echo " 5. TO count students "
echo " 6. TO delete student "
echo " 7. TO update student "
echo " 8. To quit "
echo " TYPE 1,2,3, .... your choice "

read ch

if [ "$ch" -eq 1 ]
then
echo " enter a 5 digit roll no:  "
read r
echo " enter name:"
read n
echo " enter course:"
read c
echo " enter marks:"
read m
echo "$r $n $c $m" >> $file
echo " Student added "

elif [ "$ch" -eq 2 ]
then
echo " enter the roll no "
read r
grep "^$r " $file

elif [ "$ch" -eq 3 ]
then
echo " enter the name "
read n
grep " $n " $file

elif [ "$ch" -eq 4 ]
then
echo " enter the course "
read c
grep " $c " $file

elif [ "$ch" -eq 5 ]
then
echo " no of students= $(wc -l < $file) "

elif [ "$ch" -eq 6 ]
then
echo " enter the roll no to delete "
read r
grep -v "^$r " $file > temp.txt
mv temp.txt $file
echo " Deleted "

elif [ "$ch" -eq 7 ]
then
echo " enter roll no to update "
read r
grep -v "^$r " $file > temp.txt
mv temp.txt $file

echo " enter details to update "
echo " enter roll no "
read nr
echo " enter the name "
read nn
echo " enter the course "
read nc
echo " enter the marks "
read nm
echo "$nr $nn $nc $nm" >> $file
echo " Updated "

elif [ "$ch" -eq 8 ]
then
echo " Thank you for using the student management system. "
exit

else
echo " wrong choice "
fi
done
