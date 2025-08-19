# Hassio-Beszel Agent

> [!NOTE]  
> You are currently on the main branch. There could be still be issues when using this branch

An agent for Home Assistant that integrates with the [Beszel system monitoring tool](https://github.com/henrygd/beszel). This integration collects key device metrics and provides them through a central interface, ideal for users seeking real-time monitoring and reporting for your Home Assistant instance.

## Configuration

### Basic Settings
- **Key**: SSH private key for agent authentication
- **Hub URL**: URL of the Beszel hub (optional)
- **Token**: Authentication token for the hub (optional)

### Environment Variables
You can add custom environment variables that will be passed to the agent process.

Please note that, at the moment atleast one variable has to be set. (If you don't need this feature, just set it to something random)

**Usage:**
```yaml
environment_vars:
  - name: VARIABLE_NAME
    value: variable_value
  - name: ANOTHER_VAR
    value: another_value