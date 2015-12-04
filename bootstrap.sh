#!/bin/bash
#Bootstrap script to get the environment setup on the local system.
#ToDo: get Ansible doing this later
#ToDo: make this script work on either RH or Debian based sysems as I use both

#First order of business is to use pip to install 'pelican' and 'markdown'
sudo pip install pelican markdown

#Notign here, but commented out, for import capability:
#sudo pip install BeautifulSoup4 lxml
#sudo yum install -y pandoc
