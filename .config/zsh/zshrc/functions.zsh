function mkt(){
	mkdir {nmap,content,exploits,scripts}
}

# Extract nmap information
function extractPorts(){
	ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
	ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"
	echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
	echo -e "\t[*] IP Address: $ip_address"  >> extractPorts.tmp
	echo -e "\t[*] Open ports: $ports\n"  >> extractPorts.tmp
	echo $ports | tr -d '\n' | xclip -sel clip
	echo -e "[*] Ports copied to clipboard\n"  >> extractPorts.tmp
	cat extractPorts.tmp; rm extractPorts.tmp
}

# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

# fzf improvement
function fzf-lovely(){

	if [ "$1" = "h" ]; then
		fzf -m --reverse --preview-window down:20 --preview '[[ $(file --mime {}) =~ binary ]] &&
 	                echo {} is a binary file ||
	                 (bat --style=numbers --color=always {} ||
	                  highlight -O ansi -l {} ||
	                  coderay {} ||
	                  rougify {} ||
	                  cat {}) 2> /dev/null | head -500'

	else
	        fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
	                         echo {} is a binary file ||
	                         (bat --style=numbers --color=always {} ||
	                          highlight -O ansi -l {} ||
	                          coderay {} ||
	                          rougify {} ||
	                          cat {}) 2> /dev/null | head -500'
	fi
}

function rmk(){
	scrub -p dod $1
	shred -zun 10 -v $1
}

### My functions ###

## Images

function img_convert(){
	if [[ $# -lt 2 ]]; then
		echo "Usage: img_convert <images> <output_extension> <quality>"
    	return 1
	fi

	local imgs=("${(@)argv[1,-3]}")
	local out_ext="${argv[-2]}"
	local quality="${argv[-1]}"

	for img in $imgs[@]; do
		if [[ -f "$img" ]]; then
			magick "$img" -quality "$quality" "${img%.*}.$out_ext"
		else
			echo "Warning"
		fi
	done
}

function img_resize(){
	if [[ $# -lt 4 ]]; then
		echo "Usage: img_resize <images> <width> <height> <quality>"
    	return 1
	fi

	local imgs=("${(@)argv[1,-4]}")
	local H="${argv[-3]}"
	local W="${argv[-2]}"
	local quality="${argv[-1]}"

	for img in $imgs; do
		if [[ -f "$img" ]]; then
			magick "$img" -quality "$quality" -resize "$Wx$H"\> "$img"
		else
			echo "Warning"
		fi
	done
}

function img_convert_resize(){
	if [[ $# -lt 4 ]]; then
		echo "Usage: resize_and_convert <images> <output_extension> <width> <height> <quality>"
    	return 1
	fi

	local imgs=("${(@)argv[1,-5]}")
	local out_ext="${argv[-4]}"
	local H="${argv[-3]}"
	local W="${argv[-2]}"
	local quality="${argv[-1]}"

	for img in $imgs; do
		if [[ -f "$img" ]]; then
			magick "$img" -quality "$quality" -resize "$Wx$H"\> "${img%.*}.$out_ext"
		else
			echo "Warning"
		fi
	done
}

#find . -name "*.png" -exec magick {} {}.jpg \; -exec mv {} {}.jpg \;
