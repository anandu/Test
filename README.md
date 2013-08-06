## DETAILS:

### General

The cookbook installs the Chef Server with needed configuration for CentOS and
Ubuntu.


### Attributes:

These are the settings used in recipes and templates. Default values are noted.
* `node[:chef_server][:fqdn]`-
  The fully qualified domain name for the server.
* `node[:chef_server][:package_location]`-
  Location where the Chef Server packages can be found.
* `node[:chef_server][:dns][:id]`-
  The unique identifier that is associated with the DNS A record of a Chef
  Server. The unique identifier is assigned by the DNS provider when you
  create a dynamic DNS A record. This ID is used to update the associated A
  record with the private/public IP address of the Chef Server.
* `node[:chef_server][:ssh_key]`-
  SSH public key which will be used to validate clients on this server.
* `node[:chef_server][:listen_port]`-
  The port that the Chef Server is listening to the Chef Client requests.
* `node[:chef_server][:ip_type]`-
  The IP type that the Chef Server is listening on. Default: "private"
* `node[:chef_server][:backup][:lineage]`-
  The prefix that will be used to name/locate the backup of a particular Chef
  Server.
* `node[:chef_server][:backup][:primary][:cron][:hour]`-
  Defines the hour of the day when the primary backup will be taken of the Chef
  Server. Backups by default occur every hour, using * to designate every hour
  . Otherwise, the time of the backup is defined by 'Primary Backup Cron Hour'
  and 'Primary Backup Cron Minute'. However, if you specify a value in this
  input (e.g., 23 for 11:00 PM), then backups will occur once per day at the
  specified hour, rather than hourly. Uses standard crontab format.
* `node[:chef_server][:backup][:primary][:cron][:minute]`-
  Defines the minute of the hour when the backup of the Chef Server will be
  taken. Backups of the Chef Server are taken every hour. By default, a minute
  will be randomly chosen at launch time. Otherwise, the time of the backup is
  defined by 'Primary Backup Cron Hour' and 'Primary Backup Cron Minute'. Uses
  standard crontab format.

### Usage Example:

## Update cookbook
* `do_update_code`
  Update cookbooks from remote repo and uploads to the Chef Server.

## The Chef Server connection allow/deny
* `do_chef_client_allow`-
  Allow the Chef Server connection by opening firewall port to the Chef Client.

* `do_chef_client_deny`-
  Deny the Chef Server connection by closing firewall port to the Chef Client.

## Backup the Chef Server
1. You can skip this step if the Chef Server data is already restored (refer
    restore section below).
   Once your server is operational, run: `block_device::setup_block_device`
   recipe, which initializes a block device that supports backup operations.

2. Backup your Chef Server data using: `chef_server::do_primary_backup` recipe,
   so that you can restore the Chef backup in the event of a failure or planned
   termination.

## Restore the Chef Server
1. Once your server is operational, run: `chef_server::do_primary_restore`
   recipe, which restores your Chef Server data from a backup previously saved
   to cloud storage.
