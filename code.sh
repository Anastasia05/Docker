ans="y"
echo "Hello! This is SPRAVOCHNIK"
echo -en '\n'
echo "Creator: Kravtsova Anastasia"
while test $ans="y"
do
echo -en '\n'
echo "Please, enter file name"
read fil
if test -f "$fil"
then
echo -n "Name: " && stat --format=%n $fil
echo -n "Type: " && stat --format=%F $fil
echo -n "Size: " && stat --format=%s $fil
echo -n "Owner: " && stat --format=%U $fil
echo -n "Permission: " && ls -l $fil
echo -n "Birth: " && stat --format=%w $fil
else
echo "File not found" >&2
fi
echo -en '\n'
read -p "Continue y/n? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
done
