###########################################################
# Assignment #: 1c
#  Name: Matthew Groholski
#  ASU email: mgrohols@asu.edu
#  Course: CSE/EEE230, TTh 3PM
#  Description: This is my first assembly language program.
#                         It prints "Hello World", "Goodbye World", and "I will study more about MIPS programming".
###########################################################
#data declarations: declare variable names used in program, storage allocated in RAM
.data   
message1:.asciiz "Hello World.\n" #create a string containing "Hello world.\n"
message2:.asciiz "Goodbye World.\n" #create a string containing "Goodbye world.\n"
message3:.asciiz "I will study more about MIPS programming.\n" #create a string containing "I will study more about MIPS programming.\n"

#program code is contained below under .text
.text 
.globl    main    #define a global function main

# the program begins execution at main()
main:
la          $a0, message1  # $a0 = address of message1
li           $v0, 4                # $v0 = 4  --- this is to call print_string()
syscall                           # call print_string()
la          $a0, message2  # $a0 = address of message1
li           $v0, 4                # $v0 = 4  --- this is to call print_string()
syscall                           # call print_string()
la          $a0, message3  # $a0 = address of message1
li           $v0, 4                # $v0 = 4  --- this is to call print_string()
syscall                           # call print_string()
jr          $ra                      # return
