PS1='\[\033[0;32m\]$\[\033[00m\] '

if [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
fi

complete -C /go/bin/gocomplete go
complete -C /usr/local/bin/aws_completer aws
complete -C /usr/local/bin/terraform terraform
