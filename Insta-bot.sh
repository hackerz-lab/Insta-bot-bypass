#!/bin/bash

# Header
clear
echo -e "\e[1;32m
   _____ _             ______      _       _               ______ _               _             
  |_   _(_)           |  ____|    | |     | |             |  ____| |             | |            
    | |  _ _ __   __ _| |__  __  _| |_ ___| |__   ___ _ __| |__  | | ___  ___  __| | ___  _ __  
    | | | | '_ \ / _\` |  __| \ \/ / __/ _ \ '_ \ / _ \ '__|  __| | |/ _ \/ _ \/ _\` |/ _ \| '_ \ 
    | | | | | | | (_| | |____ >  <| ||  __/ |_) |  __/ |  | |____| |  __/  __/ (_| | (_) | | | |
    \_/ |_|_| |_|\__, |______/_/\_\\__\___|_.__/ \___|_|  |______|_|\___|\___|\__,_|\___/|_| |_|
                  __/ |                                                                          
                 |___/                                by Marttin Saji
                             GitHub: Hackerz-lab | Email: martinsaji26@gmail.com
\e[0m"

# Initialization sequence
function init_animation() {
    echo -ne "\e[1;32mInitializing hacking module...[ ]\e[0m"
    sleep 1
    echo -ne "\r\e[1;32mInitializing hacking module...[✔]\e[0m\n"
    
    echo -ne "\e[1;32mBypassing Instagram security...[ ]\e[0m"
    sleep 2
    echo -ne "\r\e[1;32mBypassing Instagram security...[✔]\e[0m\n"
    
    echo -ne "\e[1;32mEstablishing secure connection...[ ]\e[0m"
    sleep 1.5
    echo -ne "\r\e[1;32mEstablishing secure connection...[✔]\e[0m\n"
}

# Progress bar function
function progress_bar() {
    echo -ne "\e[1;37mProgress: [          ] 0%\e[0m"
    sleep 0.5
    for i in {1..10}; do
        echo -ne "\r\e[1;37mProgress: ["
        for j in $(seq 1 $i); do
            echo -ne "#"
        done
        for k in $(seq $i 9); do
            echo -ne " "
        done
        echo -ne "] $((i*10))%"
        sleep $(echo "0.2 + $i*0.1" | bc)
    done
    echo
}

# Fake error handling
function fake_error() {
    echo -e "\e[1;31m[!] Connection lost! Re-establishing..."
    sleep 2
    echo -e "\e[1;32m[+] Secondary connection established: 149.154.167.151:443\e[0m"
}

# Main function
function main() {
    read -p $'\e[1;36m[+] Enter target Instagram username: \e[0m' username
    
    init_animation
    fake_error
    
    echo -e "\e[1;33m\n[+] Starting follower injection on @$username\e[0m"
    progress_bar
    
    echo -e "\e[1;32m\n[+] Successfully injected 10,237 followers!\e[0m"
    echo -e "\e[1;35m\n[!] Warning: Avoid checking followers immediately - wait 2-3 hours for natural propagation\e[0m"
    
    # Fake cleanup
    echo -ne "\e[1;37m\nCleaning up traces.............[ ]\e[0m"
    sleep 3
    echo -ne "\r\e[1;37mCleaning up traces.............[✔]\e[0m\n"
    
    # Fake connection closure
    echo -e "\e[1;33m\n[+] Secure connection closed: 149.154.167.151:443\e[0m"
    sleep 2
}

# Loading spinner
function loading_spinner() {
    local pid=$!
    local delay=0.1
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

main
echo -e "\n\e[1;32mOperation completed successfully!\e[0m\n"
