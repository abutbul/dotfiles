#awake the aliases
echo "initializing aliases"
. .aliases

# introduce local bin path
PATH=`echo $PATH`:~/.local/bin

#check if ssl dir structure exists & create
test ! -d /usr/ssl && mkdir /usr/ssl

#bring certs from home 
echo "Testing for SSL truststores"
diff ~/.local/usr/ssl/certs/ /usr/ssl/certs/ &>/dev/null
if [ $? == 0 ]
  then
  echo "SSL truststores OK!"
  else
    echo "Untrested SSL store folder, creating backup"
    mv /usr/ssl/certs/ /usr/ssl/old.certs/
    echo "creating links to new trusts"
    ln -s ~/.local/usr/ssl/certs/ /usr/ssl/certs
    echo "SSL truststores OK!"
  fi

#Favorite editor
export EDITOR=vim


