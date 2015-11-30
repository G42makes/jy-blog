#!/bin/bash
#Bootstrap script to get the environment setup on the local system.
#ToDo: get Ansible doing this later
#ToDo: make this script work on either RH or Debian based sysems as I use both

#First order of business is to use pip to install 'pelican' and 'markdown'
pip install pelican markdown
