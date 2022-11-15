# FileSizeVerification

This script was created to verify that the size of an outlook file remained smaller than 50GB. If said file got larger than 40 GB it would issue a warning allowing the user to delete Outlook files to shrink its size and prevent errors within the outlook application. 

Optional:
To automate this task one can create a batch file to execute powershell and run this script. Then using task scheduler set the batch script to run upon user log in which then executes the Verifier script. 
