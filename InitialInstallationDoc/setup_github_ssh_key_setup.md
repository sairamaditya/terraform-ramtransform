# Documentaion for ssh key setup for git operations

Followed steps in this [link](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key) to create a new ssh key

Once key was created followed steps in this [link](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?platform=linux#about-addition-of-ssh-keys-to-your-account)

Commands run on my wsl local

```bash
ssh-keygen -t ed25519 -C "youremail@example.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub

Add this public file into your github account, this will allow access to repos for cloning.

ssh -T git@github.com

git clone <Your ssh clone link>

git config --global user.email "you@example.com"

git config --global user.name "Your Name"
