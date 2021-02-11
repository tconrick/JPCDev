### *_Velcome, to our VVV-based Development Repository_* :wave:

## Notice: Currently out of date and configured for specific use, needs to be generalized.

---
#### Instructions:
To initialize the development environment, please first navigate to the VVVDevTest directory, where your git clone was made, and run the commands detailed below in the command line. You might want to settle in, as the first install caaan take some time :popcorn: :sleeping:

#### Step One: download and install git if you don't have it
  
##### If you have git, and need to install vagrant before the VVV install, use these commands while in /VVVDevTest:
Run the following commands with your desired/existing git username (email):  
```
chmod +x initVagrant.sh
./initVagrant.sh yourGitEmail@GoesHere.Yeet
```  

##### If you have git and vagrant, for a fresh VVV install, use these commands while in /VVVDevTest:
```
chmod +x initVVV.sh
./initVVV.sh
```

##### For just a VM reload, input command (provision is optional, reinstalls dependencies) while while in /VVVDevTest/VVV:
``vagrant reload --provision``

##### To reset to a clean install of the VM, use these commands while in /VVVDevTest:
```
chmod +x cleanUpReInstall.sh
./cleanUpReInstall.sh
```

### To View and Login to Site:

Once the VVV install has finished (with hopefully no errors), go to [the VVV dashboard, vvv.test](vvv.test)

To view our test site go to: [VVVDevTest.test](VVVDevTest.test)

To login to WordPress go to [VVVDevTest.test/wp-login.php](VVVDevTest.test/wp-login) using these default details: :ok_hand:
>username: admin  
>password: password

