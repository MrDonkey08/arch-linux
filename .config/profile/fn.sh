#!/bin/bash

# Functions to create folders for websites

function web-project() {
	touch index.html
	css-folder
	js-folder
}

function web-project-full() {
	web-project
	php-folder
	mkdir img
}

function css-folder() {
	mkdir css
	touch css/styles.css
	wget -d css/https://necolas.github.io/normalize.css/latest/normalize.css
}

function js-folder() {
	mkdir js
	touch js/script.js
}

function php-folder() {
	mkdir php
	touch php/index.php
}

# Functions to create cpp folders

function cpp-project() {
	mkdir "$1"
	cd "$1" || exit

	mkdir include src
	touch main.cpp
	#cpp-codeblocks
	#cpp-dev
	cd ../
}

#function cpp-codeblocks() {}
#function cpp-dev() {}
