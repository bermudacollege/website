#
#<?php die('Forbidden.'); ?>
#Date: 2025-07-20 01:48:42 UTC
#Software: Joomla! 5.3.1 Stable [ Timu ] 27-May-2025 16:00 GMT

#Fields: datetime	priority clientip	category	message
2025-07-20T01:48:42+00:00	INFO 91.196.152.248	tokenfailure	Authentication failed
2025-07-20T01:48:42+00:00	CRITICAL 91.196.152.248	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-07-20T13:58:16+00:00	INFO 195.184.76.41	tokenfailure	Authentication failed
2025-07-20T13:58:16+00:00	CRITICAL 195.184.76.41	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-07-21T04:37:01+00:00	INFO 122.175.76.159	task3	Running task#03 'Update Notification'.
2025-07-21T04:37:01+00:00	INFO 122.175.76.159	task3	Task> Could not instantiate mail function.
2025-07-21T04:37:01+00:00	INFO 122.175.76.159	task3	Task> UpdateNotification end
2025-07-21T04:37:01+00:00	INFO 122.175.76.159	task3	Successfully finished task#03 in 0.55 (net 0.55) seconds.
2025-07-21T04:40:20+00:00	INFO 122.175.76.159	task2	Running task#02 'Session GC'.
2025-07-21T04:40:20+00:00	INFO 122.175.76.159	task2	Task> SessionGC end
2025-07-21T04:40:20+00:00	INFO 122.175.76.159	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-07-21T04:40:20+00:00	CRITICAL 122.175.76.159	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\NotAllowed thrown with message "You don't have permission to access this. Please contact a website administrator if this is incorrect.". Stack trace: #0 [ROOT]/libraries/src/Dispatcher/ComponentDispatcher.php(116): Joomla\Component\Joomlaupdate\Administrator\Dispatcher\Dispatcher->checkAccess()
#1 [ROOT]/libraries/src/Component/ComponentHelper.php(361): Joomla\CMS\Dispatcher\ComponentDispatcher->dispatch()
#2 [ROOT]/libraries/src/Application/AdministratorApplication.php(150): Joomla\CMS\Component\ComponentHelper::renderComponent()
#3 [ROOT]/libraries/src/Application/AdministratorApplication.php(205): Joomla\CMS\Application\AdministratorApplication->dispatch()
#4 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\AdministratorApplication->doExecute()
#5 [ROOT]/administrator/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#6 [ROOT]/administrator/index.php(32): require_once('...')
#7 {main}
2025-07-21T14:07:42+00:00	CRITICAL 106.215.158.205	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\NotAllowed thrown with message "You don't have permission to access this. Please contact a website administrator if this is incorrect.". Stack trace: #0 [ROOT]/libraries/src/Dispatcher/ComponentDispatcher.php(116): Joomla\Component\Joomlaupdate\Administrator\Dispatcher\Dispatcher->checkAccess()
#1 [ROOT]/libraries/src/Component/ComponentHelper.php(361): Joomla\CMS\Dispatcher\ComponentDispatcher->dispatch()
#2 [ROOT]/libraries/src/Application/AdministratorApplication.php(150): Joomla\CMS\Component\ComponentHelper::renderComponent()
#3 [ROOT]/libraries/src/Application/AdministratorApplication.php(205): Joomla\CMS\Application\AdministratorApplication->dispatch()
#4 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\AdministratorApplication->doExecute()
#5 [ROOT]/administrator/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#6 [ROOT]/administrator/index.php(32): require_once('...')
#7 {main}
2025-07-21T14:07:46+00:00	CRITICAL 106.215.158.205	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\NotAllowed thrown with message "You don't have permission to access this. Please contact a website administrator if this is incorrect.". Stack trace: #0 [ROOT]/libraries/src/Dispatcher/ComponentDispatcher.php(116): Joomla\Component\Joomlaupdate\Administrator\Dispatcher\Dispatcher->checkAccess()
#1 [ROOT]/libraries/src/Component/ComponentHelper.php(361): Joomla\CMS\Dispatcher\ComponentDispatcher->dispatch()
#2 [ROOT]/libraries/src/Application/AdministratorApplication.php(150): Joomla\CMS\Component\ComponentHelper::renderComponent()
#3 [ROOT]/libraries/src/Application/AdministratorApplication.php(205): Joomla\CMS\Application\AdministratorApplication->dispatch()
#4 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\AdministratorApplication->doExecute()
#5 [ROOT]/administrator/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#6 [ROOT]/administrator/index.php(32): require_once('...')
#7 {main}
2025-07-22T00:03:37+00:00	INFO 45.42.144.1	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.09 seconds
2025-07-22T00:03:38+00:00	INFO 45.42.144.1	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.06 seconds
2025-07-22T00:05:04+00:00	WARNING 45.42.144.1	jerror	Could not instantiate mail function.
2025-07-22T00:07:42+00:00	INFO 45.42.144.1	joomlafailure	Username and password do not match or you do not have an account yet.
2025-07-22T00:07:42+00:00	WARNING 45.42.144.1	jerror	Username and password do not match or you do not have an account yet.
2025-07-22T00:08:49+00:00	INFO 45.42.144.1	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.09 seconds
2025-07-22T00:08:52+00:00	INFO 45.42.144.1	update	Test logging
2025-07-22T00:08:52+00:00	INFO 45.42.144.1	update	Update started by user Developer (3). Old version is 5.3.1.
2025-07-22T00:08:52+00:00	INFO 45.42.144.1	update	Downloading update file from https://update.joomla.org/releases/5.3.2/Joomla_5.3.2-Stable-Update_Package.zip.
2025-07-22T00:08:52+00:00	INFO 45.42.144.1	update	File Joomla_5.3.2-Stable-Update_Package.zip downloaded.
2025-07-22T00:08:53+00:00	INFO 45.42.144.1	update	Starting installation of new version.
2025-07-22T00:08:59+00:00	INFO 45.42.144.1	update	Finalising installation.
2025-07-22T00:08:59+00:00	INFO 45.42.144.1	update	Start of SQL updates.
2025-07-22T00:08:59+00:00	INFO 45.42.144.1	update	The current database version (schema) is 5.3.0-2025-03-14.
2025-07-22T00:08:59+00:00	INFO 45.42.144.1	update	End of SQL updates.
2025-07-22T00:08:59+00:00	INFO 45.42.144.1	update	Uninstalling extensions
2025-07-22T00:08:59+00:00	INFO 45.42.144.1	update	Deleting removed files and folders.
2025-07-22T00:09:00+00:00	INFO 45.42.144.1	update	Cleaning up after installation.
2025-07-22T00:09:00+00:00	INFO 45.42.144.1	update	Update to version 5.3.2 is complete.
2025-07-22T00:09:00+00:00	INFO 45.42.144.1	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.08 seconds
2025-07-22T00:09:05+00:00	INFO 45.42.144.1	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.07 seconds
2025-07-22T00:09:08+00:00	INFO 45.42.144.1	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.07 seconds
2025-07-22T00:35:59+00:00	INFO 45.42.144.1	controller	Holding edit ID com_scheduler.edit.task.3 Array (     [0] => 3 ) 
2025-07-22T00:35:59+00:00	INFO 45.42.144.1	controller	Checking edit ID com_scheduler.edit.task.3: 1 Array (     [0] => 3 ) 
2025-07-22T00:36:07+00:00	INFO 45.42.144.1	controller	Releasing edit ID com_scheduler.edit.task.3 Array ( ) 
2025-07-22T00:38:48+00:00	INFO 45.42.144.1	controller	Holding edit ID com_plugins.edit.plugin.214 Array (     [0] => 214 ) 
2025-07-22T00:38:48+00:00	INFO 45.42.144.1	controller	Checking edit ID com_plugins.edit.plugin.214: 1 Array (     [0] => 214 ) 
2025-07-22T00:39:14+00:00	INFO 45.42.144.1	controller	Releasing edit ID com_plugins.edit.plugin.214 Array ( ) 
2025-07-22T00:39:32+00:00	INFO 45.42.144.1	controller	Holding edit ID com_plugins.edit.plugin.217 Array (     [0] => 217 ) 
2025-07-22T00:39:32+00:00	INFO 45.42.144.1	controller	Checking edit ID com_plugins.edit.plugin.217: 1 Array (     [0] => 217 ) 
2025-07-22T00:39:40+00:00	INFO 45.42.144.1	controller	Releasing edit ID com_plugins.edit.plugin.217 Array ( ) 
2025-07-22T00:41:21+00:00	INFO 45.42.144.1	controller	Holding edit ID com_modules.edit.module.10 Array (     [0] => 10 ) 
2025-07-22T00:41:21+00:00	INFO 45.42.144.1	controller	Checking edit ID com_modules.edit.module.10: 1 Array (     [0] => 10 ) 
2025-07-22T00:41:34+00:00	INFO 45.42.144.1	controller	Releasing edit ID com_modules.edit.module.10 Array ( ) 
2025-07-22T05:13:26+00:00	INFO 123.201.29.218	task3	Running task#03 'Update Notification'.
2025-07-22T05:13:26+00:00	INFO 123.201.29.218	task3	Successfully finished task#03 in 0.42 (net 0.42) seconds.
2025-07-22T05:13:52+00:00	INFO 123.201.29.218	task2	Running task#02 'Session GC'.
2025-07-22T05:13:52+00:00	INFO 123.201.29.218	task2	Task> SessionGC end
2025-07-22T05:13:52+00:00	INFO 123.201.29.218	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-07-22T05:13:53+00:00	INFO 123.201.29.218	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.07 seconds
2025-07-22T05:13:54+00:00	INFO 123.201.29.218	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.09 seconds
2025-07-22T05:14:06+00:00	INFO 123.201.29.218	controller	Holding edit ID com_users.edit.user.3 Array (     [0] => 3 ) 
2025-07-22T05:14:06+00:00	INFO 123.201.29.218	controller	Checking edit ID com_users.edit.user.3: 1 Array (     [0] => 3 ) 
2025-07-22T05:14:23+00:00	INFO 123.201.29.218	controller	Releasing edit ID com_users.edit.user.3 Array ( ) 
2025-07-23T08:20:32+00:00	INFO 45.42.144.1	task3	Running task#03 'Update Notification'.
2025-07-23T08:20:32+00:00	INFO 45.42.144.1	task3	Successfully finished task#03 in 0.46 (net 0.46) seconds.
2025-07-23T08:20:44+00:00	INFO 45.42.144.1	task2	Running task#02 'Session GC'.
2025-07-23T08:20:44+00:00	INFO 45.42.144.1	task2	Task> SessionGC end
2025-07-23T08:20:44+00:00	INFO 45.42.144.1	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-07-23T08:20:45+00:00	INFO 45.42.144.1	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.08 seconds
2025-07-23T08:20:45+00:00	INFO 45.42.144.1	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.09 seconds
2025-07-24T09:47:55+00:00	INFO 45.42.144.1	task3	Running task#03 'Update Notification'.
2025-07-24T09:47:56+00:00	INFO 45.42.144.1	task3	Successfully finished task#03 in 0.30 (net 0.30) seconds.
2025-07-24T09:52:56+00:00	INFO 45.42.144.1	task2	Running task#02 'Session GC'.
2025-07-24T09:52:56+00:00	INFO 45.42.144.1	task2	Task> SessionGC end
2025-07-24T09:52:56+00:00	INFO 45.42.144.1	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-07-24T23:49:06+00:00	INFO 45.42.144.1	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.07 seconds
2025-07-24T23:49:06+00:00	INFO 45.42.144.1	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.07 seconds
2025-07-25T10:06:39+00:00	INFO 49.36.65.142	task3	Running task#03 'Update Notification'.
2025-07-25T10:06:40+00:00	INFO 49.36.65.142	task3	Successfully finished task#03 in 0.37 (net 0.37) seconds.
2025-07-25T10:06:46+00:00	INFO 49.36.65.142	task2	Running task#02 'Session GC'.
2025-07-25T10:06:46+00:00	INFO 49.36.65.142	task2	Task> SessionGC end
2025-07-25T10:06:46+00:00	INFO 49.36.65.142	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-07-25T10:06:46+00:00	INFO 49.36.65.142	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.07 seconds
2025-07-25T10:06:47+00:00	INFO 49.36.65.142	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.05 seconds
2025-07-25T10:24:16+00:00	WARNING 49.36.65.142	jerror	JInstaller: :Install: File does not exist [ROOT][TMP]/install_68835b5098036/bermuda/js
2025-07-25T10:24:16+00:00	WARNING 49.36.65.142	jerror	JInstaller: :Install: File does not exist [ROOT][TMP]/install_68835b5098036/bermuda/en-GB/tpl_bermuda.ini
2025-07-25T10:57:17+00:00	WARNING 49.36.65.142	jerror	Joomla\Filesystem\File::delete: Failed deleting js
2025-07-25T11:16:11+00:00	INFO 49.36.65.142	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.06 seconds
2025-07-25T11:16:11+00:00	INFO 49.36.65.142	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.06 seconds
2025-07-25T11:21:35+00:00	INFO 49.36.65.142	controller	Holding edit ID com_menus.edit.menu.3 Array (     [0] => 3 ) 
2025-07-25T11:21:41+00:00	INFO 49.36.65.142	controller	Releasing edit ID com_menus.edit.menu.3 Array ( ) 
