# Ruby Webshot 
`ruby_webshot`

Simple ruby gem for making nice webshots with headless browser.

## DESCRIPTION:

I needed the webshot/screenshot functionality for one of my website and after trying few ruby gems currently available I found that they are not updated lately and that they are using depricated version of `PhantomJs`:
* [webshot](https://github.com/vitalie/webshot)
* [screenshot](https://github.com/amire80/screenshot)

Also, I had an issue with produced image CSS formating when I used webshot gem.

So, I decided to start building a gem for myself and to share for anyone who need something like this.
The Ruby Webshot Gem use latest `Webdrivers`.

## INSTALLATION:
Add gem to your gem file like:
```bash
    gem 'ruby_webshot'
```
or run in console:

```bash
    gem install ruby_webshot
```
## REQUIREMENTS:

The gem was built on `Ruby 2.6.4` on `Ubuntu 18.04` OS. You will probably need to install `selenium-webdriver`.

To install it on `debian` based os use:
```bash
sudo gem install selenium-webdriver
```
Also, you should have installed `google-chrome`. I have used this list of command on my NON GUI Ubuntu 18.04 production OS.
```bash
sudo apt-get update
sudo apt-get install -y libappindicator1 fonts-liberation
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
```

## HOW TO

To use the gem inside your Rails project you need to install gem by adding it inside `Gemfile` as `gem 'ruby_webshot'` or inside your console with `gem install ruby_webshot` command.

Inside your Rails project controller you need to add gem by referencing it as:

 `require 'ruby_webshot'`

 and call it as: 
```bash
  RubyWebshot.call("https://rubyonrails.ba")
```
you will note here that only parameter required to take website webshot is URL to website/webpage.

With call above you will take webshot of home page of site [RubyOnRails.BA](https://www.rubyonrails.ba/)
Webshot will be saved inside `root` dir of your Rails project with dimensions  `width:860 height:860` and file name generated from current date/time in format as: `20-12-2019-162436.png`

Currently, there are few params which you can override and they are: `:save_file_path`, `:file_name`, `:width`,`:height`:

```bash
 RubyWebshot.call("https://www.linkedin.com/in/nezir/",{:save_file_path=> "/home/someuser/somedir", :file_name =>"home.png"})
 ```
or 
```bash
 RubyWebshot.call("https://www.linkedin.com/in/nezir/",{:save_file_path=> "/home/someuser/somedir", :file_name =>"home.png", :width => 500,:height => 500})
 ```
Here is a short vieo tutorial how to use gem inside ruby console:
[![Watch the video](https://img.youtube.com/vi/oxg6UOXsou4/maxresdefault.jpg)](https://www.youtube.com/watch?v=oxg6UOXsou4)

 
