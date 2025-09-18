property name : Text
property version : Text
property description : Text

Class constructor
	
	var $PACKAGE : 4D:C1709.Folder
	$PACKAGE:=Folder:C1567("/PACKAGE/")  //package.json
	$PACKAGE:=OB Class:C1730($PACKAGE).new($PACKAGE.platformPath; fk platform path:K87:2)
	var $packageFile : 4D:C1709.File
	$packageFile:=$PACKAGE.parent.file("package.json")
	If ($packageFile.exists)
		var $packageJson : Object
		$packageJson:=JSON Parse:C1218($packageFile.getText(); Is object:K8:27)
		This:C1470.name:=$packageJson.name
		This:C1470.version:=$packageJson.version
		This:C1470.description:=$packageJson.description
	End if 
	