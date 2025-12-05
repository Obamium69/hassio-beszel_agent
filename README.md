# Hassio-Beszel Agent

> [!NOTE]
> You are currently on the main branch. There could be still be issues when using this branch (for example networking stats not working)

An agent for Home Assistant that integrates with the [Beszel system monitoring tool](https://github.com/henrygd/beszel). This integration collects key device metrics and provides them through a central interface, ideal for users seeking real-time monitoring and reporting for your Home Assistant instance.

## Installation

1. Open the addon store (Settings/Add-ons/Add-on Store)
2. Add this repo (Three dots/Repositories):

   - Working branch: ```https://github.com/Obamium69/hassio-beszel_agent```
3. Go into Beszel and start adding a new system and fill out the neccessary info
4. Copy the public key and token and paste it into the config page of the HASSIO addon in Home Assistant
5. The hub_url is the URL where the Beszel Hub is accessible. It needs to follow this schema: http://[hub-ip-address]:port Example: http://192.168.1.250:8090 (8090 is the default port).
6. Start the addon
