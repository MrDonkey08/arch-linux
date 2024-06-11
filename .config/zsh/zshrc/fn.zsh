# !/bin/bash

# Functions to create folders for websites

web-project() {
	css-folder
	js-folder
}

web-project-full() {
	web-project
	php-folder
	mkdir img
}

css-folder() {
	mkdir css
	touch css/styles.css
	wget -d css/https://raw.githubusercontent.com/necolas/normalize.css/master/normalize.css
}

js-folder() {
	mkdir js
	touch js/scrypt.js
}

php-folder() {
	mkdir php
	touch php/index.php
}

# Functions to create cpp folders

cpp-project() {
	mkdir $1
	cd $1

	mkdir include src
	touch main.cpp
	#cpp-codeblocks
	#cpp-dev
	cd ../
}

cpp-codeblocks(){
	
}

cpp-dev(){ 
	
}
