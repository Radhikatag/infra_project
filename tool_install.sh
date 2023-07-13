#!/bin/bash
#install git 
#Install terraform
#Install ansible
#This is aws linux machine

$yum install git -y

$yum update -y
$sudo amazon-linux-extras install epel -y
$sudo yum-config-manager --enable epel
$sudo yum repolist
$sudo yum install ansible
$sudo yum install -y yum-utils
$sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
$sudo yum -y install terraform
$terraform -version
