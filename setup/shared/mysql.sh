#!/bin/bash
# Sets up current MySQL databases.

# Prompt to set a password
mysqladmin -u root password

# Create some default databases
mysqladmin -u root -p create mysqlrails_development

# List all the current databases
mysql -u root -p -e "show databases;"
