## @Author: Steven Skedge
## Date: 27/04/2018
## To See active directory fields see:
## http://www.kouti.com/tables/userattributes.htm

$strCLass = "User" 
$StrName = "CN=TestUser" 
$objADSI = [ADSI]"LDAP://OU=<enter>,DC=<enter>,DC=<enter>,DC=<enter>" 
$objUser = $objADSI.create($strCLass, $StrName) 

#Login Name
$objUser.Put("sAMAccountName", "TestUser")

#Password
$objUser.Put("userPassword", "Tester123^")

#Mobile Number
$objUser.Put("mobile", "000000000000")

#First Name
$objUser.Put("givenName", "Test")

#Surname
$objUser.Put("sn", "User")

#Email
$objUser.Put("mail", "test.user@test.com")

#Telephone Number
$objUser.Put("telephoneNumber", "000000000001")

#Sets the Values and submits
$objUser.setInfo()