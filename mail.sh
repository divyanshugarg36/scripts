#!/bin/bash
Recipient="divyanshugarg36@gmail.com"
Subject="Mail Heading"
Message="Mail content"
`mail -s $Subject $Recipient <<< $Message`