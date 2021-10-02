$projectPath = "D:\Hoc Lap Trinh\Spring Boot\Web-Ban-Hang\product-service\src\main\java\com\tuyennguyen"



$oldPackageName     = "oldPackageName"
$newPackageName     = ($projectPath -split "src\\main\\java\\")[1].Replace("\", ".")

$controllerFile     = "controller\UserController.java"
$entityFile         = "entity\User.java"
$repositoryFile     = "repository\UserRepository.java"
$serviceFile        = "serivce\UserService.java"

(Get-Content "$projectPath\$controllerFile")  -replace $oldPackageName, $newPackageName | Set-Content "$projectPath\$controllerFile"
(Get-Content "$projectPath\$entityFile")      -replace $oldPackageName, $newPackageName | Set-Content "$projectPath\$entityFile"
(Get-Content "$projectPath\$repositoryFile")  -replace $oldPackageName, $newPackageName | Set-Content "$projectPath\$repositoryFile"
(Get-Content "$projectPath\$serviceFile")     -replace $oldPackageName, $newPackageName | Set-Content "$projectPath\$serviceFile"

# cmd /c pause