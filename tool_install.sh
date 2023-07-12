#!/bin/bash
#install git 
#Install terraform
#This is aws linux machine

$yum install git -y

$yum update -y
$sudo yum install -y yum-utils
$sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
$sudo yum -y install terraform
$terraform -version
