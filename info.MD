# DevOps-Mentorship

Configure Azure CLI

Set up account thorugh GUI
Go to https://www.python.org/downloads/ and download python and  make sure to select option “Add Python 3.6 to PATH” option.

Next step is to install Azure CLI libraries. In order to do that run ``` pip install –user azure-cli ```

Run command az to verify

Configure Github Account
Set up account through GUI

``` git init ``` to initialize the github

``` git config --global user.name "[name]" ``` --Sets the name you want attached to your commit transactions.

``` git config --global user.name "[name]"```--Sets the name you want attached to your commit transactions.
``` git clone "url of code from repo via https"``` .

``` git branch "name of the branch" ``` .

``` git checkout "name of the branch" ``` .

``` git pull origin "name of branch" ``` .

``` git add . ```-- to add all the changes.

``` git commit -m "message"``` -- to push the changes locally.

``` git push origin "name of branch" ```-- to push the changes remotely.


Configure terraform

Download the appropriate package for your operating system

Unzip and copy the single executable file (terraform.exe) into a separate install directory (for example, inside c:\Terraform).
 
Set the path environment variable with the path to the install directory.

Run the command ``` sysdm.cpl ``` and in the Advanced tab, click on Environment variables.

Scroll down in system variables until you find PATH and click edit.

Add the installation directory of Terraform (c:\Terraform). 

verify with ``` terraform--version ```.
