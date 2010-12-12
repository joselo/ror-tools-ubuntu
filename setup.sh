#!/bin/bash

echo "This script will install the most commons tools to develop in Ruby on Rails"

if ! which apt-get; then
  echo "First of all you need install: apt-get"
  exit 1
fi

if [ $USERNAME != "root" ]; then
  echo "You should be root to run this script"
  exit 1
fi

echo "You are going install: git y/n?"
read ANSWER
if [ $ANSWER = "y" ]; then
        sudo apt-get install git-core
fi

echo "You are going install: ruby irb ri rdoc ruby1.8-dev y/n?"
read ANSWER
if [ $ANSWER = "y" ]; then
        sudo apt-get install ruby irb ri rdoc ruby1.8-dev
fi
