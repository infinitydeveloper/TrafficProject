Execute a drush command. Run `drush help [command]` to view command-specific help.  Run `drush topic` to read even more documentation.

Global options (see `drush topic core-global-options` for the full list):
 -d, --debug                               Display even more information, including internal messages.                                
 -h, --help                                This help system.                                                                          
 -n, --no                                  Assume 'no' as answer to all prompts.                                                      
 -r <path>, --root=<path>                  Drupal root directory to use (default: current directory).                                 
 -s, --simulate                            Simulate all relevant actions (don't actually change the system).                          
 -l <http://example.com:8888>,             URI of the drupal site to use (only needed in multisite environments or when running on an 
 --uri=<http://example.com:8888>           alternate port).                                                                           
 -v, --verbose                             Display extra information about the command.                                               
 -y, --yes                                 Assume 'yes' as answer to all prompts.

Core drush commands: (core)
 archive-dump (ard,    Backup your code, files, and database into a single file.                                                      
 archive-backup, arb)                                                                                                                 
 archive-restore       Expand a site archive into a Drupal web site.                                                                  
 (arr)                                                                                                                                
 cache-clear (cc)      Clear a specific cache, or all drupal caches.                                                                  
 cache-get (cg)        Fetch a cached object and display it.                                                                          
 cache-set (cs)        Cache an object expressed in JSON or var_export() format.                                                      
 core-config (conf,    Edit drushrc, site alias, and Drupal settings.php files.                                                       
 config)                                                                                                                              
 core-cron (cron)      Run all cron hooks in all active modules for specified site.                                                   
 core-execute (exec,   Execute a shell command. Usually used with a site alias.                                                       
 execute)                                                                                                                             
 core-quick-drupal     Download, install, serve and login to Drupal with minimal configuration and dependencies.                      
 (qd)                                                                                                                                 
 core-requirements     Provides information about things that may be wrong in your Drupal installation, if any.                       
 (status-report, rq)                                                                                                                  
 core-rsync (rsync)    Rsync the Drupal tree to/from another server using ssh.                                                        
 core-status (status,  Provides a birds-eye view of the current Drupal installation, if any.                                          
 st)                                                                                                                                  
 core-topic (topic)    Read detailed documentation on a given topic.                                                                  
 drupal-directory      Return path to a given module/theme directory.                                                                 
 (dd)                                                                                                                                 
 help                  Print this help message. See `drush help help` for more options.                                               
 image-flush           Flush all derived images for a given style.                                                                    
 php-eval (eval, ev)   Evaluate arbitrary php code after bootstrapping Drupal (if available).                                         
 php-script (scr)      Run php script(s).                                                                                             
 queue-list            Returns a list of all defined queues                                                                           
 queue-run             Run a specific queue by name                                                                                   
 search-index          Index the remaining search items without wiping the index.                                                     
 search-reindex        Force the search index to be rebuilt.                                                                          
 search-status         Show how many items remain to be indexed out of the total.                                                     
 shell-alias (sha)     Print all known shell alias records.                                                                           
 site-alias (sa)       Print site alias records for all known site aliases and local sites.                                           
 site-install (si)     Install Drupal along with modules/themes/configuration using the specified install profile.                    
 site-set (use)        Set a site alias to work on that will persist for the current session.                                         
 site-ssh (ssh)        Connect to a Drupal site's server via SSH for an interactive session or to run a shell command                 
 test-clean            Clean temporary tables and files.                                                                              
 test-run              Run tests. Note that you must use the --uri option.                                                            
 updatedb (updb)       Apply any database updates required (as with running update.php).                                              
 updatedb-status       List any pending database updates.                                                                             
 (updbst)                                                                                                                             
 usage-send (usend)    Send anonymous Drush usage information to statistics logging site.  Usage statistics contain the Drush command 
                       name and the Drush option names, but no arguments or option values.                                            
 usage-show (ushow)    Show Drush usage information that has been logged but not sent.  Usage statistics contain the Drush command    
                       name and the Drush option names, but no arguments or option values.                                            
 variable-delete       Delete a variable.                                                                                             
 (vdel)                                                                                                                               
 variable-get (vget)   Get a list of some or all site variables and values.                                                           
 variable-set (vset)   Set a variable.                                                                                                
 version               Show drush version.                                                                                            
 watchdog-delete       Delete watchdog messages.                                                                                      
 (wd-del, wd-delete)                                                                                                                  
 watchdog-list         Show available message types and severity levels. A prompt will ask for a choice to show watchdog messages.    
 (wd-list)                                                                                                                            
 watchdog-show         Show watchdog messages.                                                                                        
 (wd-show, ws)
Runserver commands: (runserver)
 runserver (rs)        Runs a lightweight built in http server for development.
Field commands: (field)
 field-clone           Clone a field and all its instances.                         
 field-create          Create fields and instances. Returns urls for field editing. 
 field-delete          Delete a field and its instances.                            
 field-info            View information about fields, field_types, and widgets.     
 field-update          Return URL for field editing web page.
Project manager commands: (pm)
 pm-disable (dis)      Disable one or more extensions (modules or themes).                                                     
 pm-download (dl)      Download projects from drupal.org or other sources.                                                     
 pm-enable (en)        Enable one or more extensions (modules or themes).                                                      
 pm-info (pmi)         Show detailed info for one or more extensions (modules or themes).                                      
 pm-list (pml)         Show a list of available extensions (modules and themes).                                               
 pm-refresh (rf)       Refresh update status information.                                                                      
 pm-releasenotes       Print release notes for given projects.                                                                 
 (rln)                                                                                                                         
 pm-releases (rl)      Print release information for given projects.                                                           
 pm-uninstall          Uninstall one or more modules.                                                                          
 pm-update (up)        Update Drupal core and contrib projects and apply any pending database updates (Same as pm-updatecode + 
                       updatedb).                                                                                              
 pm-updatecode (upc)   Update Drupal core and contrib projects to latest recommended releases.                                 
 pm-updatestatus       Show a report of available minor updates to Drupal core and contrib projects.                           
 (ups)
Role commands: (role)
 role-add-perm (rap)   Grant a specified permission to a role.                                                                        
 role-create (rcrt)    Create a new role.                                                                                             
 role-delete (rdel)    Delete a role.                                                                                                 
 role-list (rls)       Display a list of all roles defined on the system.  If a role name is provided as an argument, then all of the 
                       permissions of that role will be listed.  If a permission name is provided as an option, then all of the roles 
                       that have been granted that permission will be listed.                                                         
 role-remove-perm      Remove a specified permission from a role.                                                                     
 (rmp)
SQL commands: (sql)
 sql-cli (sqlc)        Open a SQL command-line interface using Drupal's credentials.            
 sql-connect           A string for connecting to the DB.                                       
 sql-create            Create a database.                                                       
 sql-drop              Drop all tables in a given database.                                     
 sql-dump              Exports the Drupal DB as SQL using mysqldump or equivalent.              
 sql-query (sqlq)      Execute a query against the site database.                               
 sql-sanitize          Run sanitization operations on the current database.                     
 (sqlsan)                                                                                       
 sql-sync              Copy and import source database to target database. Transfers via rsync.
User commands: (user)
 user-add-role (urol)  Add a role to the specified user accounts.                                    
 user-block (ublk)     Block the specified user(s).                                                  
 user-cancel (ucan)    Cancel a user account with the specified name.                                
 user-create (ucrt)    Create a user account with the specified name.                                
 user-information      Print information about the specified user(s).                                
 (uinf)                                                                                              
 user-login (uli)      Display a one time login link for the given user account (defaults to uid 1). 
 user-password (upwd)  (Re)Set the password for the user account with the specified name.            
 user-remove-role      Remove a role from the specified user accounts.                               
 (urrol)                                                                                             
 user-unblock (uublk)  Unblock the specified user(s).
All commands in provision: (provision)
 backend-parse         Parse the output of --backend commands to a human readable form                                
 hostmaster-install    Install and verify the Hostmaster frontend.                                                    
 hostmaster-migrate    Migrate an instance of the Hostmaster front end to a new platform                              
 hostmaster-uninstall  Uninstall the Hostmaster frontend.                                                             
 provision-backup      Generate a back up for the site.                                                               
 provision-backup-del  Delete a backup file.                                                                          
 ete                                                                                                                  
 provision-clone       Clone a site between platforms.                                                                
 provision-delete      Delete a site.                                                                                 
 provision-deploy      Deploy an existing backup to a new url.                                                        
 provision-disable     Disable a site.                                                                                
 provision-enable      Enable a disabled site.                                                                        
 provision-import      Turn an already running site into a provisioned site.                                          
 provision-install     Provision a new site using the provided data.                                                  
 provision-lock        Lock a platform from having any other sites provisioned on it.                                 
 provision-login-rese  Generate a one-time login reset URL.                                                           
 t                                                                                                                    
 provision-migrate     Migrate a site between platforms.                                                              
 provision-restore     Restore the site to a previous backup. This will also generate a backup of the site as it was. 
 provision-save        Save Drush alias                                                                               
 provision-unlock      Unlock a platform so that sites can be provisioned on it.                                      
 provision-verify      Verify that the provisioning framework is correctly installed.
Other commands: (drupalcs,make,provision_tests,dns,registry_rebuild)
 drupalcs (dcs)        Executes PHP_CodeSniffer with Drupal Coding Standards on a particular directory.                          
 make                  Turns a makefile into a working Drupal codebase.                                                          
 make-generate         Generate a makefile from the current Drupal site.                                                         
 (generate-makefile)                                                                                                             
 provision-tests-run   Runs provision tests                                                                                      
 provision-zone        Manipulate a zonefile                                                                                     
 registry-rebuild      Rebuild the registry table (for classes) and the system table (for module locations) in a Drupal install. 
 (rr)
