# bbedit-additions
BBEdit additions, such as language modules, language servers, themes, text filters, and more.

## Installation
BBEdit has good documentation on how to customize the functionality. If you can't sort that out, not sure you should be using BBEdit (or Ansible/Serverless for that matter). *HINT*: You need to copy what you want from this repo to your BBEdit support folder. Whether you clone, link, download and copy, or just create a new file and do a good old fashioned copy-paste, that, my friend, is up to you.

## Contents
### AI Assistant Text Filters
There are three Text Filters that provide limited AI assistant functionality to BBEdit. The scripts are written in ruby, and utilize Google's PALM2 API. You will need your own API key for the filters to work. Replace the key variable string with your key inside the script file. But don't commit that as leaking the key is bad! If you wish to use OpenAI, switching the url endpoint and parameters should be easy.

	All the text filters work on the selected text. If not text is selected, I think BBEdit will send the whole document in. This will likely get you past the token limit supported in LLMs, so try to work in chunks.

	The three filters are described below.

#### AI - Debug
	Select a block of code that is not working, and the AI assistant will try to give a suggestion to fix the code. The prompt will use whatever language is set for the document in BBEdit.

#### AI - Generator
	Can be used to generate new code. For example, you could write "Create a python 3 function that takes an input and multiplies it by 3.", select that text, apply the filter, and the text will be replaced by the response from the AI assistant.

#### AI - Suggestions
	A suggestions module. Not super useful as it does not provide copilot level of interactivity due to the need to invoke manually and also due to the latency added. Will provide suggestions for what the AI thinks should be the next 5 lines of code.

### Two crude language support implementations
Ansible Playbooks and Serverless. Both are pretty much just extensions to yml, but as I have yet to figure out if I can somehow use the compiled YML BBEdit module inside BBEdit as a base, these are just a simple keyword based addition.

### Two themes
Two themes: MSDOS and Eclipse. MS-DOS is for old geezers like me, who started coding in the days of MS-DOS. See image 1 below for what it looks like. Eclipse is inspired by the Eclipse IDE. See image 2 below for what that one looks like. Both are not overly polished yet, but functional.

![Screenshot of BBEdit with MS DOS Theme](/ss1.png)
Image 1. A screenshot of BBEdit with MS-DOS inspired theme.

![Screenshot of BBEdit with Eclipse Theme](/ss2.png)
Image 2. A screenshot of BBEdit with Eclipse IDE inspired theme.

### Clippings
Four clippings for copyrights and licenses. Each takes current year and the full
name of the logged in user to automatically generate a copyright notice to be
placed in top of your code files, and one to go in LICENSE.

The licenses included in the clippings are:
#### BSD
The original BSD that gives credit where credit is due.

#### BSD-free
The more modern BSD license that allows pretty free use.

#### EFL
Eiffel license. More fun than the typical MIT, while similar in spirit.

#### Github
A simple free-use give credit where credit is due (ZLIB).

Use the clippings in licenses for LICENSE, and clippings in copyrights for code
files.

## NOTES
- Ansible hooks into *.yml, which is what the internal yml module does. It is not guaranteed which one takes presedence, so you will likely need to select the language by hand at times.
- Serverless hooks to serverless.yml as that is the way things are set up where I need to utilize Serverless. YMMV.
- I actually use iCloud to sync my settings, so this repo won't be all encompassing, but rather just sharing "improvements" in the hopes BBEdit won't die a painful death in the hands of the trendier options.
