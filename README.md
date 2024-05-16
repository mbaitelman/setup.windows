# setup.windows

This repo serves as the host for the scripts I use to make my system mine. 

## Boxstarter

It is built on [Boxstarter](https://boxstarter.org/) and uses Chocolatey and other tools to install needed software. 

To call it run the following

```powershell 
START microsoft-edge:htps://boxstarter.org/package/nr/url?hhttps://raw.githubusercontent.com/mbaitelman/setup.windows/main/install.ps1
```

The `/nr/` in the URL specfies to not reboot the system.
