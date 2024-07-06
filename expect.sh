#!/usr/bin/expect

set timeout 5
spawn /root/linux-brprinter-installer-2.2.4-1
while true {
        expect {
                -re "Input model name" {
                        send "DCP-J125\r";
                } -re "Test Print" {
                        send "n\r";
                } -re "OK.*->" {
                        send "y\r";
                } -re "Do you agree" {
                        send "y\r";
                } -re "Will you specify" {
                        send "y\r";
                } -re "Do you want to continue" {
                        send "y\r";
                } -re "select the number of destination Device URI" {
                        send "9\r";
                } -re "Hit Enter.*Return key" {
                        send "y\r";
                        exit;
                }
        }
}