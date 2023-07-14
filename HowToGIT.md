# How to Git :smile:


* Git is a version control system
* Github is a website that hosts git repositories
* Bitbucket & Gitlab are other web platforms that also host git repositories. 

1. **Initialize Remote Repository** : Once you are on [Github](https://github.com/HamazingCoding). Add a new repository by going to [this page](https://github.com/HamazingCoding?tab=repositories) and clicking on the green button. 
After creating the repository copy the HTTP URL and run the following command whereever you want to create a clone of the remote repository on your local machine.
```
    git clone https://github.com/HamazingCoding/some-project.git
```
2. **Check for `./git` folder**: Once you have cloned the repostiory navigate to the repostiory folder.
```
    cd some-project
    ls -al
```
Upon executing `ls -al` you should see a `./git` folder.  
3. **Add Changes**: Once inside the repostiory folder you can add changes and then commit those changes. Commited changes are saved locally until you push them back to the remote repository.
```
    touch README.md
    add README.md
    git commit -m "Just added README.md"
```
In the above snippet `touch` was used to create a README.md file, which is then subsequently added to the git log and given a commit message. Commit messages are a formality and basically used to document the changes.

```
Some-Project
    │  
    ├── Sub-folder-1
    │    └── README.md
    ├── package.jon
    ├── package-lock.json 
    ├── .git/
    └── .gitignore

```

If you want to add changes **from multiple files** just execute `git add .`  
 Consider you have a Git repository called *Some-Project*, this repo should contain a **.git/** folder. All `git` commands should be run from the `Some-Project` level **not from any of the sub-folders**.  

For example if you changed `Sub-folder-1/README.md` file you can perform:

```
(Some-Project)$ git add ./Sub-folder-1/README.md
```
If you have changed two or more files then it makes sense to just run `git add .`

4. **Push your changes** : Once all of this done you need to check what is the address of your remote repository.
```
    git remote -v
```
The above command will display the address of `origin` this is the address of where your changes will be pushed. Once you are sure the address is the same as `https://github.com/HamazingCoding/some-project.git` then you are ready to push changes.
```
    git push origin main
```
The above command will push your changes to "origin" ie;  `https://github.com/HamazingCoding/some-project.git` onto the `main` branch which is the default branch.

Now you are done :thumbsup: !s


Refer to these links for further details:
* [How to format text in Markdown(.md)](https://www.markdownguide.org/cheat-sheet/)
* [Learn more Git commands and become the Top Geek :heart:](https://education.github.com/git-cheat-sheet-education.pdf)
