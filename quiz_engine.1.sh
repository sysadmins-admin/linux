#!/bin/bash

# Devloped by sysadmins-admin

# ***Please Note*** Exiting from the main menu and answering the last question on each quiz will call the undo function.
# Purpose: Writing study material to facilitate learning objectives.
# The quizzes can run on their own, or they can be operated by this controller. 

# Disclaimer: Material used in this program originates from various Linux study materials
# Disclaimer: This program is not intended to ensure student passes, but is intended to be used as an additional resource for 
# study materials and familiarity with running complex scripts.

# Function Purpose: Unset and undo any changes made to the user and system's environment
# only after this function is called.
function undo(){
	export day1_score=0
	export day2_score=0
	export day3_score=0
	export day4_score=0
	export day5_score=0
	export day6_score=0
	export day7_score=0
	export day8_score=0
	export day9_score=0
	export day10_score=0

	# If any score has a value, unset it.
	if [[ day{0..10}_score ]] > /dev/null 2>&1 # Setting global scores back to zero.
	   then 
		unset day{0..10}_score > /dev/null 2>&1 # Removing globally set values from memory
	   else
		export day1_score=0
		export day2_score=0 
		export day3_score=0
		export day4_score=0
		export day5_score=0
		export day6_score=0
		export day7_score=0
		export day8_score=0
		export day9_score=0
		export day10_score=0
		
		# Once global values are established, unset.
		unset day{0..10}_score
	fi
	
	# undo will be the last function called before exit.
	read -p "Press <ENTER> to continue " # Waits for user input
	exit 0 # Positive exit code
	
}

# Function Purpose: Starts Day 10 Quiz
function day10_quiz(){
	clear # Clears the screen	
	
	current_dir=$(pwd) # Establish current directory of main menu and quizzes
	if [ -f ./day10_quiz.sh ] # Check to see if file exists in current directory
	   then
		echo "Day 10 Quiz Started. Good luck!!!" # Positive message.
		. ./day10_quiz.sh # Calls Day 10 Quiz.
	   else
	     echo "day10_quiz.sh not found in $current_dir"
	     echo " " # Additional space. Cleaner look.
	     echo "Try adding day10_quiz.sh to $current_dir and restarting this program"	
	     read -p "Press <ENTER> to continue" # Waits for user input
	     main_menu # Returns user to main menu
	fi
}

# Function Purpose: Starts Day 9 Quiz
function day9_quiz(){
	clear # Clears the screen	
	
	current_dir=$(pwd) # Establish current directory of main menu and quizzes
	if [ -f ./day9_quiz.sh ] # Check to see if file exists in current directory
	   then
		echo "Day 9 Quiz Started. Good luck!!!" # Positive message.
		. ./day9_quiz.sh # Calls Day 9 Quiz.
	   else
	     echo "day9_quiz.sh not found in $current_dir"
	     echo " " # Additional space. Cleaner look.
	     echo "Try adding day9_quiz.sh to $current_dir and restarting this program"	
	     read -p "Press <ENTER> to continue" # Waits for user input
	     main_menu # Returns user to main menu
	fi
}

# Function Purpose: Starts Day 8 Quiz
function day8_quiz(){
	clear # Clears the screen	
	
	current_dir=$(pwd) # Establish current directory of main menu and quizzes
	if [ -f ./day8_quiz.sh ] # Check to see if file exists in current directory
	   then
		echo "Day 8 Quiz Started. Good luck!!!" # Positive message.
		. ./day8_quiz.sh # Calls Day 8 Quiz.
	   else
	     echo "day8_quiz.sh not found in $current_dir"
	     echo " " # Additional space. Cleaner look.
	     echo "Try adding day8_quiz.sh to $current_dir and restarting this program"	
	     read -p "Press <ENTER> to continue" # Waits for user input
	     main_menu # Returns user to main menu
	fi
}

# Function Purpose: Starts Day 7 Quiz
function day7_quiz(){
	clear # Clears the screen	
	
	current_dir=$(pwd) # Establish current directory of main menu and quizzes
	if [ -f ./day7_quiz.sh ] # Check to see if file exists in current directory
	   then
		echo "Day 7 Quiz Started. Good luck!!!" # Positive message.
		. ./day7_quiz.sh # Calls Day 7 Quiz.
	   else
	     echo "day7_quiz.sh not found in $current_dir"
	     echo " " # Additional space. Cleaner look.
	     echo "Try adding day7_quiz.sh to $current_dir and restarting this program"	
	     read -p "Press <ENTER> to continue" # Waits for user input
	     main_menu # Returns user to main menu
	fi
}

# Function Purpose: Starts Day 6 Quiz
function day6_quiz(){
	clear # Clears the screen	
	
	current_dir=$(pwd) # Establish current directory of main menu and quizzes
	if [ -f ./day6_quiz.sh ] # Check to see if file exists in current directory
	   then
		echo "Day 6 Quiz Started. Good luck!!!" # Positive message.
		. ./day6_quiz.sh # Calls Day 6 Quiz.
	   else
	     echo "day6_quiz.sh not found in $current_dir"
	     echo " " # Additional space. Cleaner look.
	     echo "Try adding day6_quiz.sh to $current_dir and restarting this program"	
	     read -p "Press <ENTER> to continue" # Waits for user input
	     main_menu # Returns user to main menu
	fi
}

# Function Purpose: Starts Day 5 Quiz
function day5_quiz(){
	clear # Clears the screen	
	
	current_dir=$(pwd) # Establish current directory of main menu and quizzes
	if [ -f ./day5_quiz.sh ] # Check to see if file exists in current directory
	   then
		echo "Day 5 Quiz Started. Good luck!!!" # Positive message.
		. ./day5_quiz.sh # Calls Day 5 Quiz.
	   else
	     echo "day5_quiz.sh not found in $current_dir"
	     echo " " # Additional space. Cleaner look.
	     echo "Try adding day5_quiz.sh to $current_dir and restarting this program"	
	     read -p "Press <ENTER> to continue" # Waits for user input
	     main_menu # Returns user to main menu
	fi
}

# Function Purpose: Starts Day 4 Quiz
function day4_quiz(){
	clear # Clears the screen	
	
	current_dir=$(pwd) # Establish current directory of main menu and quizzes
	if [ -f ./day4_quiz.sh ] # Check to see if file exists in current directory
	   then
		echo "Day 4 Quiz Started. Good luck!!!" # Positive message.
		. ./day4_quiz.sh # Calls Day 4 Quiz.
	   else
	     echo "day4_quiz.sh not found in $current_dir"
	     echo " " # Additional space. Cleaner look.
	     echo "Try adding day4_quiz.sh to $current_dir and restarting this program"	
	     read -p "Press <ENTER> to continue" # Waits for user input
	     main_menu # Returns user to main menu
	fi
}

# Function Purpose: Starts Day 3 Quiz
function day3_quiz(){
	clear # Clears the screen	
	
	current_dir=$(pwd) # Establish current directory of main menu and quizzes
	if [ -f ./day3_quiz.sh ] # Check to see if file exists in current directory
	   then
		echo "Day 3 Quiz Started. Good luck!!!" # Positive message.
		. ./day3_quiz.sh # Calls Day 3 Quiz.
	   else
	     echo "day3_quiz.sh not found in $current_dir"
	     echo " " # Additional space. Cleaner look.
	     echo "Try adding day3_quiz.sh to $current_dir and restarting this program"	
	     read -p "Press <ENTER> to continue" # Waits for user input
	     main_menu # Returns user to main menu
	fi
}

# Function Purpose: Starts Day 2 Quiz
function day2_quiz(){
	clear # Clears the screen	
	
	current_dir=$(pwd) # Establish current directory of main menu and quizzes
	if [ -f ./day2_quiz.sh ] # Check to see if file exists in current directory
	   then
		echo "Day 2 Quiz Started. Good luck!!!" # Positive message.	
		. ./day2_quiz.sh # Calls Day 2 Quiz.
	   else
	     echo "day2_quiz.sh not found in $current_dir"
	     echo " " # Additional space. Cleaner look.	     
	     echo "Try adding day2_quiz.sh to $current_dir and restarting this program"	
	     read -p "Press <ENTER> to continue" # Waits for user input
	     main_menu # Returns user to main menu
	fi
}

# Function Purpose: Starts Day 1 Quiz
function day1_quiz(){
	clear # Clears the screen	
	
	current_dir=$(pwd) # Establish current directory of main menu and quizzes
	if [ -f ./day1_quiz.sh ] # Check to see if file exists in current directory
	   then
		echo "Day 1 Quiz Started. Good luck!!!" # Positive message.
		. ./day1_quiz.sh # Calls Day 1 Quiz.
	   else
	     echo "day1_quiz.sh not found in $current_dir"
	     echo " " # Additional space. Cleaner look.
	     echo "Try adding day1_quiz.sh to $current_dir and restarting this program"	
	     read -p "Press <ENTER> to continue" # Waits for user input
	     main_menu # Returns user to main menu
	fi
}

# Function Purpose: Provides an interactive and user-friendly interface to the program.
function main_menu(){
	clear # Clears the screen
	echo "===MAIN MENU==="
	echo " " # Additional space. Cleaner look.
		
	PS3="Please select an option above: "
	# Establish an array for menu options
	menu_options=("Day 1 Quiz" "Day 2 Quiz" "Day 3 Quiz" "Day 4 Quiz" "Day 5 Quiz" "Day 6 Quiz" "Day 7 Quiz" "Day 8 Quiz" "Day 9 Quiz" "Day 10 Quiz" "Restart Main Menu" "Quit")
	select opt in "${menu_options[@]}"
   do	
   
     case $opt in
	
	"Day 1 Quiz") # On Screen Option
	echo "Day 1 Quiz"
	day1_quiz	# Begin quiz 
			# Different named function to start
			# the quiz. "Day 1 Quiz" only selects this option.
	break # Do not run into next choice.
	;; # Close case option

	"Day 2 Quiz") # On Screen Option
	echo "Day 2 Quiz"
	day2_quiz	# Begin quiz 
			# Different named function to start
			# the quiz. "Day 2 Quiz" only selects this option.
	break # Do not run into next choice.
	;; # Close case option

	"Day 3 Quiz") # On Screen Option
	echo "Day 3 Quiz"
	day3_quiz	# Begin quiz 
			# Different named function to start
			# the quiz. "Day 3 Quiz" only selects this option.
	break # Do not run into next choice.
	;; # Close case option

	"Day 4 Quiz") # On Screen Option
	echo "Day 4 Quiz"
	day4_quiz	# Begin quiz 
			# Different named function to start
			# the quiz. "Day 4 Quiz" only selects this option.
	break # Do not run into next choice.
	;; # Close case option
	
	"Day 5 Quiz") # On Screen Option
	echo "Day 5 Quiz"
	day5_quiz	# Begin quiz 
			# Different named function to start
			# the quiz. "Day 5 Quiz" only selects this option.
	break # Do not run into next choice.
	;; # Close case option

	"Day 6 Quiz") # On Screen Option
	echo "Day 6 Quiz"
	day6_quiz	# Begin quiz 
			# Different named function to start
			# the quiz. "Day 6 Quiz" only selects this option.
	break # Do not run into next choice.
	;; # Close case option

	"Day 7 Quiz") # On Screen Option
	echo "Day 7 Quiz"
	day7_quiz	# Begin quiz 
			# Different named function to start
			# the quiz. "Day 7 Quiz" only selects this option.
	break # Do not run into next choice.
	;; # Close case option

	"Day 8 Quiz") # On Screen Option
	echo "Day 8 Quiz"
	day8_quiz	# Begin quiz 
			# Different named function to start
			# the quiz. "Day 8 Quiz" only selects this option.
	break # Do not run into next choice.
	;; # Close case option

	"Day 9 Quiz") # On Screen Option
	echo "Day 9 Quiz"
	day9_quiz	# Begin quiz 
			# Different named function to start
			# the quiz. "Day 9 Quiz" only selects this option.
	break # Do not run into next choice.
	;; # Close case option

	"Day 10 Quiz") # On Screen Option
	echo "Day 10 Quiz"
	day10_quiz	# Begin quiz 
			# Different named function to start
			# the quiz. "Day 10 Quiz" only selects this option.
	break # Do not run into next choice.
	;; # Close case option
	
	"Restart Main Menu") # Refreshes the screen
	echo "Restarting Main Menu..."
	echo " " # Additional space. Cleaner look.
	read -p "Press <ENTER> to continue" # Waits for user input
	reset
	#Function Purpose: Relaunches Main Menu
	if [ ./quiz_engine.* ] > /dev/null 2>&1
	   then
		. ./quiz_engine.* # Start the quiz engine
	   else
		break
	fi
	;; # Close case option

	"Quit") # On Screen Option
	echo "Exiting program ..."
	undo # Calls undo script
	read -p "Press <ENTER> to continue " # Waits for user input
	break # Exit script
	;; # Close case option	

	*) # Error handling and correction
	  echo "Please select a valid option"
	  echo " " # Additional space. Cleaner look.
	  read -p "Press <ENTER> to continue " # Waits for user input
	  main_menu # Returns user to Main Menu
	  break # Error handling and correction
	;; # Close case option
    esac
done
}
main_menu

# Devloped by sysadmins-admin