# bbedit-additions
BBEdit additions, such as language modules, language servers, themes, text filters, and more.

## Installation
BBEdit has good documentation on how to customize the functionality. If you can't sort that out, not sure you should be using BBEdit (or Ansible/Serverless for that matter). *HINT*: You need to what you want from this repo to your BBEdit support folder. Whether you clone, link, download and copy, or just create a new file and do a good old fashioned copy-paste, that, my friend, is up to you.

## Contents
Currently only contains two crude language support implementations: Ansible Playbooks and Serverless. Both are pretty much just extensions to yml, but as I have yet to figure out if I can somehow use the compiled YML BBEdit module inside BBEdit as a base, this is just a simple keyword based addition.

## NOTES
- Ansible hooks into *.yml, which is what the internal yml module does. It is not guaranteed which one takes presedence, so you will likely need to select the language by hand at times.
- Serverless hooks to serverless.yml as that is the way things are set up where I need to utilize Serverless. YMMV.
- I actually use iCloud to sync my settings, so this repo won't be all encompassing, but rather just sharing "improvements" in the hopes BBEdit won't die a painful death in the hands of the trendier options.
