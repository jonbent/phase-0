#### How does tracking and adding changes make developers' lives easier?
Having the ability to track and add changes to code allows the developer and outside developers to quickly and easily see the progression of the code. It also allows for easier debugging when you are able to compare what changes where made to the code since the bug was introduced.

#### What is a commit?
A commit is essentially saving that version of the code to your repository.

#### What are the best practices for commit messages?
There are several best practices when it comes to commit messages:
 1. The first line of the commit message should be a short description limited to 50 characters.
 2. If more information is needed then one should skip a line and add additional body text.
 3. Always write commit messages in the present tense.

#### What does the HEAD^ argument mean?
HEAD^ is the last commit that was made.

#### What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages are:
 1. Modified
 2. Add
 3. Commit

#### Write a handy cheatsheet of the commands you need to commit your changes?
###### Option 1
 1. git add <file-name> or git add . (to add all modified files)
 2. git commit -m "add single line commit message here" or git commit -v (to add multi-line commit message in text editor)

###### Option 2
 1. git commit -am "add single line commit message here" (to add and commit in one line)

#### What is a pull request and how do you create and merge one?
Pull requests are a way to add code from a branch to the master branch.

To create a pull request you would push the new branch to your GitHub repository with git push origin name-of-branch. Then you would click the *Compare and Pull Request* button. Next confirm that your base branch is **master** and the comparison branch is **name-of-new-branch**. Fill in the title and description in a similar fashion to a multi-line commit message. Lastly, click the *Create pull request* button.

Once a pull request has been made click on the *merge* button on the *Conversation* tab of the pull request. Click the *Confirm merge* button to confirm and complete the merge. It is best practice to delete the branch once it has been merged with the master branch.

#### Why are pull requests preferred when working with teams?
Pull requests are preferred when working with teams because it allows you to merge updates into the master branch as opposed to overwriting the master branch, which is what would happen if you just pushed your changes to the repository.
