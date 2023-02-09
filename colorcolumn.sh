if [[ $1 == "on" ]] || [[ $1 == "On" ]]; then
    sed 's/":set colorcolumn=80/:set colorcolumn=80/' ~/.vimrc > temp.txt
    cat temp.txt > ~/.vimrc
    rm temp.txt
elif [[ $1 == "off" ]]; then
    sed 's/:set colorcolumn=80/":set colorcolumn=80/' ~/.vimrc > temp.txt
    cat temp.txt > ~/.vimrc
    rm temp.txt
else
    echo "Usage: column [on|off]"
fi
