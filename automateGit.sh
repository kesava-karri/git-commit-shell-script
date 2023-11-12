echo "[from script] minus craic"
echo "[from script]----------Start of script----------"

#######################################
# Samples of invoking the shell script

# ./automateGit.sh --date "2023-11-10" -m "asdf"
# git add .
# git commit --date "DATE" -m "MSG"
# git push origin main


# ./automateGit.sh -m "jkl;"
# git add .
# git commit -m "MSG"
# git push origin main

#######################################

git add .

if [[ $1 == "--date" ]]; then
	echo "[from script] commit for the date:"
	message_string="$4"
	echo "[from script] $2"
	echo "[from script]with commit message:"
	echo "[from script] $message_string"
	git commit --date "$2" -m "$message_string"
elif [[ $1 == "-m" ]]; then
	message_string="$2"

	echo "[from script] Regular commit w message: $message_string"
	git commit -m "$message_string"
fi

git push origin main

echo "[from script]----------End of script----------"