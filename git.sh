echo "

===========================================================
Remember to set up git credentials via the github cli tool!

Remember to configure sendemail password!
===========================================================

"

echo "
[user]
	name = Lachlan Ikeguchi
	email = lachlan_ikeguchi@proton.me
[push]
	autoSetupRemote = true
	recurseSubmodules = on-demand
[init]
	defaultBranch = master
[core]
	editor = nvim
[submodule]
    recurse = true
[sendemail]
    confirm = always
    smtpserver = 127.0.0.1
    smtpserverport = 1025
    smtpuser = lachlan_ikeguchi@proton.me
    smtppass = 
    smtpencryption = none
" >> ~/.gitconfig
