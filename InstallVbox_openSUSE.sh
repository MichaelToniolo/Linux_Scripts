#!/bin/bash

sudo zypper up
sudo wget http://download.virtualbox.org/virtualbox/rpm/opensuse/13.2/virtualbox.repo && sudo mv virtualbox.repo /etc/zypp/repos.d/
sudo wget https://www.virtualbox.org/download/oracle_vbox.asc && sudo sudo rpm --import oracle_vbox.asc
sudo zypper ref
sudo zypper in virtualbox
