### *_Velcome, to our VVV-based JPC Development Repository_* :wave:
---
#### Instructions:
To initialize the development environment, please first navigate to the JPCDev directory, where your git clone was made, and run the commands detailed below in the command line. You might want to settle in, as the first install caaan take some time :popcorn: :sleeping:
  
#### For a full git, vagrant, and VVV install, use these commands while in /JPCDev:
Run the following commands with your desired/existing git username (email):  
```
chmod +x initVagrantAndVVV.sh
./initVagrantAndVVV.sh yourGitEmail@GoesHere.Yeet
```  

##### If you have git and vagrant, for a fresh VVV install with a new JPCDev site, use these commands while in /JPCDev:
```
chmod +x initJPCDev.sh
./initJPCDev.sh
```

##### For just a VM reload, input command (provision is optional, reinstalls dependencies) while while in /JPCDev/VVV:
``vagrant reload --provision``

##### To reset to a clean install, use these commands while in /JPCDev:
```
yes | rm -r VVV
```

### To View and Login to Site:

To view the test site go to: [jpcdev.test](jpcdev.test)

To login to WordPress go to [jpcdev.test/wp-login.php](jpcdev.test/wp-login) using these default details: :ok_hand:
>username: admin  
>password: password

