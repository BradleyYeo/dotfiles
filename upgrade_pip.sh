pip list -o > /tmp/outdated_packages.txt
if [ -s /tmp/outdated_packages.txt ]; then
  pip install --upgrade $(cat /tmp/outdated_packages.txt | awk 'NR>2{print $1}')
else
  echo "You have all the latest Python packages."
fi
rm /tmp/outdated_packages.txt

