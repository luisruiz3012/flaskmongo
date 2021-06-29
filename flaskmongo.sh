#!/bin/bash

create_project() {
	FILEPATH=ENTER_YOUR_PATH
	echo "Enter your project's name: "
	read name
	cd $FILEPATH
	mkdir $name
	cd $name
	echo "Creating app file..."
	touch app.py
	echo "app file created sucessfully"
	echo " "
	echo "Starting git for your project..."
	git init
	echo " "
	echo "Starting your virtualenv..."
	virtualenv -p . venv
	source venv/bin/activate
	echo " "
	echo "Installing dependencies..."
	pip3 install flask flask_pymongo flask_cors
	echo " "
	echo "dependencies installed"
	echo " "
	echo "Let's get started! :D"
	code .
}

create_project