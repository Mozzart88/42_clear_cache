# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tvanessa <tvanessa@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/20 21:19:50 by tvanessa          #+#    #+#              #
#    Updated: 2019/11/20 21:29:54 by tvanessa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# This script add alias to .zhsrc file

RC_FILE="$HOME/.zshrc"
if [ -z $1 ]; then 
	DIR_NAME="`dirname \"$0\"`"
	DIR_NAME="`( cd \"$DIR_NAME\" && pwd )`"
else 
	DIR_NAME=$1
fi
if [ -z "$DIR_NAME" ]; then
	echo "Fail to read path to dirrectory"
	echo "Pleas specify absolute path with argument"
	echo "install.sh /path/to/repo"
	echo "OR if repo in HOME DIRRECTORY"
	echo "install.sh ~/repo"
	exit 1
fi
echo $DIR_NAME
SH_FILE="$DIR_NAME/clear_cache.sh"
echo "" >> $RC_FILE
echo "# Alias for clear cache script" >> $RC_FILE
echo "alias clear_cache=\"$SH_FILE\"" >> $RC_FILE
echo "Cool!"
echo "Now need to reload your terminal and then you can run command"
echo "clear_cache"
echo "to clear space on your Mac :)"