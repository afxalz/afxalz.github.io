# Install dependencies of ruby
sudo apt-get install ruby-full build-essential zlib1g-dev

echo '# Install Ruby Gems to ~/gems' >> ~/.zshrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.zshrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Install jekyll as a ruby gem
# DO NOT INSTALL USING APT (UBUNTU)
gem install jekyll bundler

# install the gem dependencies
bundle update

# build and host the site on localhost
cd ../
bundle exec jekyll serve

