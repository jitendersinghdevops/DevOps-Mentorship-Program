# DevOps-Mentorship

Configure Azure CLI

Set up account thorugh GUI
Go to https://www.python.org/downloads/ and download python and  make sure to select option “Add Python 3.6 to PATH” option.

Next step is to install Azure CLI libraries. In order to do that run ```sh pip install –user azure-cli ```

Run command az to verify

Configure Github Account
Set up account through GUI
```sh git init ``` to initialize the github
```sh git config --global user.name "[name]"``` --Sets the name you want attached to your commit transactions
```sh git config --global user.name "[name]"```--Sets the name you want attached to your commit transactions
```sh git clone "url of code from repo via https"```
```sh git branch "name of the branch" ```
```sh git checkout "name of the branch"```
```sh git pull origin "name of branch" ```
```sh git add . ```-- to add all the changes
```git commit -m "message"``` -- to push the changes locally
```git push origin "name of branch" ```-- to push the changes remotely

Configure terraform
Download the appropriate package for your operating system
Unzip and copy the single executable file (terraform.exe) into a separate install directory (for example, inside c:\Terraform).
Set the path environment variable with the path to the install directory.
Run the command ```sh sysdm.cpl``` and in the Advanced tab, click on Environment variables.
Scroll down in system variables until you find PATH and click edit.
Add the installation directory of Terraform (c:\Terraform). 
verify with ```sh terraform--version ```