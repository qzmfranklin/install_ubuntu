# Color scheme for both the mac terminal and vim
cd ~/.vim/bundle
git clone https://github.com/hukl/Smyck-Color-Scheme.git
cd -

# User name and so forth
git config --global user.email "qzmfranklin@gmail.com"
git config --global user.name "Zhongming Qu"

# Global ignore
git config --global core.excludesfile '~/.gitignore_global'
cat gitignore_global >> ~/.gitignore_global

# Default push mode to 'simple': the pre-2.0 behavior
git config --global push.default simple

# No extra edit when merging
git config --global core.mergeoptions --no-edit

# delete all the local branches that are fully merged.
# Those that aren't fully merge have local changes that would be lost if the branch were to be deleted.
git config --global alias.prunelocal '!git fetch -p && git branch -vv | grep '\'': gone]'\'' | awk '\''{print $1}'\'' | xargs git branch -d'
git config --global alias.prunelocal-force '!git fetch -p && git branch -vv | grep '\'': gone]'\'' | awk '\''{print $1}'\'' | xargs git branch -D'
git config --global alias.tree 'log --graph --oneline --decorate'
