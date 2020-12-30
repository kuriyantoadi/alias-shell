echo "Program Shell"
echo "Lock dan Unlock phpmyadmin"
echo "Untuk Debian 10 Buster 32 Bit - Xampp 5.5.28-0"
echo ""
echo "Untuk lock phpmyadmin (pilih 1)"
echo "Untuk unlcok phpmyadmin (pilih 2)"
echo ""
echo -n "Inputkan pilihan anda :"
read pilih

if [ 1 = $pilih ]
then
  sudo rm /opt/lampp/etc/extra/httpd-xampp.conf
  sudo cp httpd-xampp.conf-lock /opt/lampp/etc/extra/
  sudo mv /opt/lampp/etc/extra/httpd-xampp.conf-lock /opt/lampp/etc/extra/httpd-xampp.conf
  sudo /opt/lampp/lampp restart
  echo "phpmyadmin lock - berhasil"
  exit 0
elif [ 2 = $pilih ]
then
  sudo rm /opt/lampp/etc/extra/httpd-xampp.conf
  sudo cp httpd-xampp.conf-unlock /opt/lampp/etc/extra/
  sudo mv /opt/lampp/etc/extra/httpd-xampp.conf-unlock /opt/lampp/etc/extra/httpd-xampp.conf
  sudo /opt/lampp/lampp restart
  echo "phpmyadmin unlock - berhasil"
  exit 0
else
	echo "Angka yang masukan tidak ada dalam pilihan"
  exit 0
fi
