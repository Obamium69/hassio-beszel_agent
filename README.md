# Hassio-Beszel Agent

> [!NOTE]
> You are currently on the main branch. There could be still be issues when using this branch (for example networking stats not working)

An agent for Home Assistant that integrates with the [Beszel system monitoring tool](https://github.com/henrygd/beszel). This integration collects key device metrics and provides them through a central interface, ideal for users seeking real-time monitoring and reporting for your Home Assistant instance.

## Installation

1. Open the addon store (Settings/Add-ons/Add-on Store)
2. Add this repo (Three dots/Repositories):

   - Working branch: ```https://github.com/Obamium69/hassio-beszel_agent```
3. Go into Beszel and start adding a new system and fill out the neccessary infos (the addon uses port 45876)
4. Copy the public key and paste it into the config page of the HASSIO addon in Home Assistant
5. Start the addon
