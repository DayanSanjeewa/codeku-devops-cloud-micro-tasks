For run the script
==================
1. To see your present working directory: 
    ~ pwd

2.Clone the project from GitHub

3.Go inside of the project folder:
   eg: ~ cd /home/ubuntu/Project-CPT-LX-001

4.List down all the files inside of the folder:
    ~ ls
        (system_monitor.log    system_monitor.sh)

5.If there are not given the executable permission, make it as a executable:
    ~ chmod +x system_monitor.sh

6. Run the "system_monitor.sh" file:
    ~ ./system_monitor.sh

Schedule with Cron
===================

1. Open the cronetab file for editing:

    ~ cronetab -e

2.Add a cron job. For example, to run the script every 5 minutes:

    eg : */5 * * * * /path to your_script.sh
        (*/5 * * * * /home/ubuntu/test/Project-CPT-LX-001/system_monitor.sh)

3.Save and close the crontab file.
