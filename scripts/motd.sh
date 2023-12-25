#!/bin/bash
# Prepare Photon 4 template for vSphere cloning
# @author Michael Poore

## Setup MoTD
echo 'Setting login banner ...'
UPDATED=$(date +"%Y-%m-%d")
cat << EOF > /etc/issue

           {__   {__ {_            
{__     {__ {__ {_     {__{__ {__  
 {__   {__  {__      {__   {__  {__
  {__ {__   {__    {__     {__  {__
   {_{__    {__  {__       {__  {__
    {__    {____{________ {___  {__
        
        version :   $BUILDVERSION
        updated :   $UPDATED

EOF
ln -sf /etc/issue /etc/issue.net