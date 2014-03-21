homebrew-xgridseed
==================

brew formula to install bfgminer for gridseed

Installation
------------
1. Launch Terminal.app from Spotlight or your Applications folder
2. Install Homebrew by entering the following command:

        ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

3. Run the following command and fix any reported issues:

        brew doctor

3. Tap this Homebrew repostory so that you can install packages from it:

        brew tap wayann/xgridseed
        
4. Finally, install bfgminer:

        brew install bfgminer
        
If you'd like to install the miner using the latest source from Github rather than the latest official package, use the --HEAD parameter:

        brew install bfgminer --HEAD

source:
https://github.com/nwoolls/bfgminer/tree/feature/gridseed-support

DISCLAIMER
this is a copy paste with some fantasy use this at your own risk, I'm not responsible for any issue that could rise from using this formula
