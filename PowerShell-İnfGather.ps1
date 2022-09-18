$gurup = get-LocalGroup | Format-List
echo "----------------------------"
echo " yerel gruplar "
echo "----------------------------"
echo $gurup


echo "----------------------------"
echo "yerel kullanıcılar"
echo "----------------------------"

$kullanici = Get-LocalUser | Format-List
echo $kullanici


echo "----------------------------"
echo "çalışan süreçler ve dizinleri : "
echo "----------------------------"

$servisler = Get-Process | Format-Table -Wrap -AutoSize -Property Path,Name,Id
echo $servisler


echo "----------------------------"
echo " işlemci bilgileri : "
echo "----------------------------"

Get-CimInstance -ClassName Win32_Processor | Select-Object -ExcludeProperty "CIM*"


echo "                                                      "
echo "----------------------------"
echo " windows kayıtlı kullanıcılar : "
echo "----------------------------"


Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property NumberOfLicensedUsers,NumberOfUsers,RegisteredUser