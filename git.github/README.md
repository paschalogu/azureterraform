# Git & GitHub for Version Control

Pushed to the repository on GitHub: [GitHub](https://github.com/paschalogu/devtechproj) https://github.com/paschalogu/devtechproj

### Create a GitHub Repository

Create an account on github: [www.github.com](http://www.github.com)

Navigate to your profile icon at the top right of the page and click “your repositories” then click on “New”

Give your repo a name, Leave the defaults and click Create

![github create.png](/github_create.png)

### Install Git on your Device

Reference this git documentation to install your machine specific version: [https://git-scm.com/book/en/v2/Getting-Started-Installing-Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

#### Ensure that git is installed on the device. Run `git --version` to confirm that it is installed

```bash
git --version
```

#### Initiatialise the project root directory

```bash
git init
```

#### Add an identity on your local command line

```bash
git config --global user.email "[you@example.com](mailto:you@example.com)"
git config --global [user.name](http://user.name/) "Your Name"
```

### >> Create a file and commit the changes to the newly created GitHub repository

```bash
touch text.txt
git add text.txt
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/paschalogu/devtechproj.git
git push -u origin main
```

We will likely get an error: 

<aside>
💡 remote: Support for password authentication was removed on August 13, 2021.
remote: Please see [https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls](https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls) for information on currently recommended modes of authentication.
fatal: Authentication failed for '[https://github.com/paschalogu/devtechproj.git/](https://github.com/paschalogu/devtechproj.git/)'

</aside>

This is because the command line is not authenticated to push to the GitHub repository. To resolve this, we need to authenticate our device using Personal Access Token (PAT) to push to our repository.

### Create a Personal Access Token (PAT)

Personal access tokens (classic) function like ordinary OAuth access tokens. They can be used instead of a password for Git over HTTPS. 

Steps:

Navigate to Github settings >> Developer Settings >> Personal Access Tokens >> Tokens

Solution:

```bash
git remote set-url origin https://githubname:<ghp_GitHubToken>@github.com/username/devtechproj.git
```

After the above step, run the command `git push -u origin main` to push the file to the main branch on GitHub.

Refresh your Github Project page, you should see the file has been added.

### .gitignore Files

Configure the .gitignore file to ignore unwanted files `nano .gitignore` This will be all the files that we do not want to push to public or to GitHub including sensitive data and program/module files.

```bash
.git/
Terraform/./
Terraform/../
*.tfstate
*.tfstate.*
Terraform/.terraform/
.terraform.lock.hcl
# Local .terraform directories
**Terraform/.terraform/*
*.tfvars
*.tfvars.json
*.log

*.terraform/
*terraform.tfstate
*terraform.tfstate.backup
```

This way we have been able to configure source code management for our repository and track the changes.
