#!/bin/sh

#variables
#input_encrypted_file = $1
#output_decrypted_file = $(echo "$input_encrypted_file" | awk -F. '{print $1}')

#if [ -z "$input_encrypted_file" ]; then exit fi
#if [ -z "$output_decrypted_file" ]; then exit fi


# Decrypt the file
mkdir $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" \
--output $HOME/secrets/my_secret.txt my_secret.json.gpg


