#!/bin/bash

SMTP_SERVER="smtp.mail.ru"
SMTP_PORT=465
SMTP_USER="email@mail.ru"
SMTP_PASS="password"
TO_EMAIL="alert@example.com"

USAGE=$(df --output=pcent / | tail -n1 | tr -d '% ')

if [ $USAGE -ge 85 ]; then
    curl -s --url "smtps://$SMTP_SERVER:$SMTP_PORT" \
         --ssl-reqd \
         --user "$SMTP_USER:$SMTP_PASS" \
         --mail-from "$SMTP_USER" \
         --mail-rcpt "$TO_EMAIL" \
         --upload-file - <<EOF
From: $SMTP_USER
To: $TO_EMAIL
Subject: Disk Space Warning!
Content-Type: text/plain; charset=UTF-8

Внимание! Диск заполнен на ${USAGE}% 
Свободного места менее 15%
EOF
fi
