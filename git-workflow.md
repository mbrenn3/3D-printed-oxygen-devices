Git Set-Up
===
Initial set-up
-------

Start a new folder and cd to it, then check settings:

To list identy and settings
	
	$ git config --list

To set up identitiy: 
	
	$ git config --global user.name "John Doe"
	$ git config --global user.email johndoe@example.com

Initialize a repository, add a readme, a remote, and push to github
--------------------------
You will also have to make the repository on github as well

	$ touch README.md
	$ git init
	$ git add README.md
	$ git commit -m "first commit"
	$ git remote add origin https://github.com/mbrenn3/3D-printed-oxygen-devices.git
	$ git push -u origin master 
