# instance-load-scripts

Bash scripts to run loads on instances.  called by crontab.  

Usage: Base bash shell scripts.  Curl to a url in the scripts.  Launch php files allow for easy launch from webpage.  installation requires to change permissions to execute.

ToDos / currently in progress:

- Create default run configuration if run with out parameters. Randomizing values and load intensity.
- pull config if run without parameters
- parse yaml to get parameters for load test.
- Run load test.
- output to log or system log.
