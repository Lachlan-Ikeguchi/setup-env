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
[format]
    signOff = yes
[sendemail]
    annotate = yes
    confirm = always
    smtpServer = 127.0.0.1
    smtpServerport = 1025
    smtpUser = lachlan_ikeguchi@proton.me
    smtpPass = 
    smtpEncryption = none
" >> ~/.gitconfig
