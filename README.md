homebrew-xgridseed
==================

brew formula to install bfgminer for gridseed, NB this is a hack waiting for bfgminer 4.0 where gridseed support will be included, so before going in to this mess check if bfgminer 4.0 is out.

Installation
------------
1. Launch Terminal.app from Spotlight or your Applications folder
2. Install Homebrew by entering the following command:

        ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

3. Run the following command and fix any reported issues:

        brew doctor

3. Optional: if you come from nwoolls you may untap his faboulous xgminer and also uninstall any previous bfgminer

        brew uninstall bfgminer
        brew untap nwoolls/xgminer

3. Tap this Homebrew repostory so that you can install packages from it:

        brew tap wayann/xgridseed
        
4. Finally, install bfgminer:


        brew install bfgminer --HEAD

source:
https://github.com/nwoolls/bfgminer/tree/feature/gridseed-support

DISCLAIMER
this is a copy paste with some fantasy use this at your own risk, I'm not responsible for any issue that could rise from using this formula
