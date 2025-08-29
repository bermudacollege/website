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
2025-07-25T12:17:22+00:00	INFO 49.36.65.142	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.06 seconds
2025-07-25T12:17:22+00:00	INFO 49.36.65.142	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.06 seconds
2025-07-25T12:51:34+00:00	INFO 49.36.65.142	controller	Holding edit ID com_templates.edit.style.13 Array (     [0] => 13 ) 
2025-07-25T12:51:35+00:00	INFO 49.36.65.142	controller	Checking edit ID com_templates.edit.style.13: 1 Array (     [0] => 13 ) 
2025-07-25T12:51:39+00:00	INFO 49.36.65.142	controller	Releasing edit ID com_templates.edit.style.13 Array ( ) 
2025-07-25T14:19:22+00:00	INFO 49.36.65.142	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.07 seconds
2025-07-25T14:19:23+00:00	INFO 49.36.65.142	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.07 seconds
2025-07-25T14:20:29+00:00	CRITICAL 49.36.65.142	error	Uncaught Throwable of type Joomla\CMS\Component\Exception\MissingComponentException thrown with message "Component not found.". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(217): Joomla\CMS\Component\ComponentHelper::renderComponent()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(271): Joomla\CMS\Application\SiteApplication->dispatch()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-25T14:36:46+00:00	CRITICAL 49.36.65.142	error	Uncaught Throwable of type Error thrown with message "Call to undefined method Joomla\CMS\Application\SiteApplication::isSite()". Stack trace: #0 [ROOT]/libraries/src/Document/HtmlDocument.php(731): require()
#1 [ROOT]/libraries/src/Document/HtmlDocument.php(785): Joomla\CMS\Document\HtmlDocument->_loadTemplate()
#2 [ROOT]/libraries/src/Document/HtmlDocument.php(622): Joomla\CMS\Document\HtmlDocument->_fetchTemplate()
#3 [ROOT]/libraries/src/Application/CMSApplication.php(1104): Joomla\CMS\Document\HtmlDocument->parse()
#4 [ROOT]/libraries/src/Application/SiteApplication.php(745): Joomla\CMS\Application\CMSApplication->render()
#5 [ROOT]/libraries/src/Application/CMSApplication.php(309): Joomla\CMS\Application\SiteApplication->render()
#6 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#7 [ROOT]/index.php(32): require_once('...')
#8 {main}
2025-07-25T14:45:25+00:00	CRITICAL 49.36.65.142	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-25T15:51:02+00:00	INFO 103.240.204.148	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.08 seconds
2025-07-25T15:51:02+00:00	INFO 103.240.204.148	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.06 seconds
2025-07-26T16:42:50+00:00	INFO 91.196.152.253	tokenfailure	Authentication failed
2025-07-26T16:42:50+00:00	CRITICAL 91.196.152.253	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-07-27T05:40:04+00:00	INFO 195.184.76.46	tokenfailure	Authentication failed
2025-07-27T05:40:04+00:00	CRITICAL 195.184.76.46	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-07-27T07:39:36+00:00	INFO 103.241.225.179	task3	Running task#03 'Update Notification'.
2025-07-27T07:39:36+00:00	INFO 103.241.225.179	task3	Successfully finished task#03 in 0.41 (net 0.41) seconds.
2025-07-27T07:44:36+00:00	INFO 103.241.225.179	task2	Running task#02 'Session GC'.
2025-07-27T07:44:36+00:00	INFO 103.241.225.179	task2	Task> SessionGC end
2025-07-27T07:44:36+00:00	INFO 103.241.225.179	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-07-28T10:45:57+00:00	INFO 123.201.29.99	task3	Running task#03 'Update Notification'.
2025-07-28T10:45:57+00:00	INFO 123.201.29.99	task3	Successfully finished task#03 in 0.15 (net 0.15) seconds.
2025-07-28T10:46:34+00:00	INFO 123.201.29.99	task2	Running task#02 'Session GC'.
2025-07-28T10:46:34+00:00	INFO 123.201.29.99	task2	Task> SessionGC end
2025-07-28T10:46:34+00:00	INFO 123.201.29.99	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-07-29T05:41:25+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:41:25+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:41:26+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:41:26+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:41:26+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:41:26+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:41:27+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:41:27+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:41:27+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:43:13+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:43:13+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:43:13+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:43:13+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:43:14+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:43:14+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:43:14+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:43:15+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:43:15+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T05:43:15+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T06:01:11+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T06:01:11+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T06:01:12+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T06:01:12+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T06:01:12+00:00	CRITICAL 219.91.180.216	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-29T13:10:42+00:00	INFO 175.100.133.70	task3	Running task#03 'Update Notification'.
2025-07-29T13:10:43+00:00	INFO 175.100.133.70	task3	Successfully finished task#03 in 0.55 (net 0.55) seconds.
2025-07-29T16:51:50+00:00	INFO 185.97.95.131	task2	Running task#02 'Session GC'.
2025-07-29T16:51:50+00:00	INFO 185.97.95.131	task2	Task> SessionGC end
2025-07-29T16:51:50+00:00	INFO 185.97.95.131	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-07-30T05:42:38+00:00	CRITICAL 31.7.58.202	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-07-30T18:30:58+00:00	INFO 45.42.144.1	task3	Running task#03 'Update Notification'.
2025-07-30T18:30:59+00:00	INFO 45.42.144.1	task3	Successfully finished task#03 in 0.68 (net 0.68) seconds.
2025-07-31T05:29:44+00:00	INFO 49.36.65.122	task2	Running task#02 'Session GC'.
2025-07-31T05:29:44+00:00	INFO 49.36.65.122	task2	Task> SessionGC end
2025-07-31T05:29:44+00:00	INFO 49.36.65.122	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-07-31T05:31:02+00:00	INFO 49.36.65.122	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.07 seconds
2025-07-31T05:31:02+00:00	INFO 49.36.65.122	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.06 seconds
2025-08-01T04:29:35+00:00	INFO 64.147.80.142	task3	Running task#03 'Update Notification'.
2025-08-01T04:29:35+00:00	INFO 64.147.80.142	task3	Successfully finished task#03 in 0.44 (net 0.44) seconds.
2025-08-01T06:02:53+00:00	INFO 219.91.180.22	task2	Running task#02 'Session GC'.
2025-08-01T06:02:53+00:00	INFO 219.91.180.22	task2	Task> SessionGC end
2025-08-01T06:02:53+00:00	INFO 219.91.180.22	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-08-01T09:27:38+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:27:38+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:27:38+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:27:39+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:27:39+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:27:39+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:27:39+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:27:40+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:31:18+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:31:19+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:31:19+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:31:19+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:31:20+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:31:20+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:31:20+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:35:36+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T09:45:34+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:53:47+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:53:47+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:53:47+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:53:48+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:53:48+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:53:48+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:53:48+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:53:49+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:53:49+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:59:52+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:59:53+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T10:59:53+00:00	CRITICAL 219.91.180.160	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T11:33:09+00:00	CRITICAL 219.91.180.127	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T11:33:09+00:00	CRITICAL 219.91.180.127	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T11:33:10+00:00	CRITICAL 219.91.180.127	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T11:33:10+00:00	CRITICAL 219.91.180.127	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T11:33:10+00:00	CRITICAL 219.91.180.127	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T11:33:11+00:00	CRITICAL 219.91.180.127	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T11:33:11+00:00	CRITICAL 219.91.180.127	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T11:33:11+00:00	CRITICAL 219.91.180.127	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T11:36:37+00:00	CRITICAL 219.91.180.127	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T11:36:38+00:00	CRITICAL 219.91.180.127	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-01T12:04:58+00:00	CRITICAL 219.91.180.107	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-02T19:51:27+00:00	INFO 91.196.152.131	tokenfailure	Authentication failed
2025-08-02T19:51:27+00:00	CRITICAL 91.196.152.131	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-03T07:05:28+00:00	INFO 195.184.76.44	tokenfailure	Authentication failed
2025-08-03T07:05:28+00:00	CRITICAL 195.184.76.44	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-03T19:13:54+00:00	INFO 199.172.196.78	task3	Running task#03 'Update Notification'.
2025-08-03T19:13:54+00:00	INFO 199.172.196.78	task3	Successfully finished task#03 in 0.48 (net 0.48) seconds.
2025-08-03T19:14:10+00:00	INFO 199.172.196.78	task2	Running task#02 'Session GC'.
2025-08-03T19:14:10+00:00	INFO 199.172.196.78	task2	Task> SessionGC end
2025-08-03T19:14:10+00:00	INFO 199.172.196.78	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-08-04T01:49:29+00:00	CRITICAL 88.119.169.39	error	Uncaught Throwable of type Joomla\CMS\Component\Exception\MissingComponentException thrown with message "Component not found.". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(217): Joomla\CMS\Component\ComponentHelper::renderComponent()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(271): Joomla\CMS\Application\SiteApplication->dispatch()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T02:22:57+00:00	CRITICAL 185.177.72.108	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T02:24:15+00:00	CRITICAL 185.177.72.108	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T02:25:49+00:00	CRITICAL 185.177.72.108	error	Uncaught Throwable of type Joomla\CMS\Application\Exception\NotAcceptable thrown with message "Could not match accept header". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-04T02:30:54+00:00	CRITICAL 185.177.72.108	error	Uncaught Throwable of type Joomla\CMS\Application\Exception\NotAcceptable thrown with message "Could not match accept header". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-04T12:18:09+00:00	INFO 49.36.67.68	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.07 seconds
2025-08-04T12:18:09+00:00	INFO 49.36.67.68	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.08 seconds
2025-08-04T13:24:29+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:24:29+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:24:29+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:24:30+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:24:30+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:24:30+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:24:30+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:24:31+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:24:31+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:24:31+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:24:32+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:26:02+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:26:02+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T13:26:02+00:00	CRITICAL 219.91.181.226	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-04T15:29:06+00:00	INFO 45.42.144.1	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.07 seconds
2025-08-04T15:29:07+00:00	INFO 45.42.144.1	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.08 seconds
2025-08-04T19:25:06+00:00	INFO 45.42.144.1	task3	Running task#03 'Update Notification'.
2025-08-04T19:25:06+00:00	INFO 45.42.144.1	task3	Successfully finished task#03 in 0.24 (net 0.24) seconds.
2025-08-04T19:30:07+00:00	INFO 45.42.144.1	task2	Running task#02 'Session GC'.
2025-08-04T19:30:07+00:00	INFO 45.42.144.1	task2	Task> SessionGC end
2025-08-04T19:30:07+00:00	INFO 45.42.144.1	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-08-05T07:00:45+00:00	CRITICAL 45.133.74.118	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:00:45+00:00	CRITICAL 45.133.74.118	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:12+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:13+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:13+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:13+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:14+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:14+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:14+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:15+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:15+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:15+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:16+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:05:16+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:20:43+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T07:20:43+00:00	CRITICAL 123.201.2.172	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-05T22:26:29+00:00	INFO 72.199.142.17	task3	Running task#03 'Update Notification'.
2025-08-05T22:26:29+00:00	INFO 72.199.142.17	task3	Successfully finished task#03 in 0.46 (net 0.46) seconds.
2025-08-05T22:31:29+00:00	INFO 72.199.142.17	task2	Running task#02 'Session GC'.
2025-08-05T22:31:29+00:00	INFO 72.199.142.17	task2	Task> SessionGC end
2025-08-05T22:31:29+00:00	INFO 72.199.142.17	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-08-07T12:31:39+00:00	INFO 207.228.168.190	task3	Running task#03 'Update Notification'.
2025-08-07T12:31:40+00:00	INFO 207.228.168.190	task3	Successfully finished task#03 in 0.47 (net 0.47) seconds.
2025-08-07T12:31:49+00:00	INFO 207.228.168.190	task2	Running task#02 'Session GC'.
2025-08-07T12:31:49+00:00	INFO 207.228.168.190	task2	Task> SessionGC end
2025-08-07T12:31:50+00:00	INFO 207.228.168.190	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-08-08T10:59:19+00:00	INFO 106.215.154.205	updater	Loading information from update site #2 with name "Accredited Joomla! Translations" and URL https://update.joomla.org/language/translationlist_5.xml took 0.06 seconds
2025-08-08T10:59:19+00:00	INFO 106.215.154.205	updater	Loading information from update site #3 with name "Joomla! Update Component" and URL https://update.joomla.org/core/extensions/com_joomlaupdate.xml took 0.08 seconds
2025-08-08T12:42:36+00:00	INFO 203.109.66.22	task3	Running task#03 'Update Notification'.
2025-08-08T12:42:36+00:00	INFO 203.109.66.22	task3	Successfully finished task#03 in 0.35 (net 0.35) seconds.
2025-08-08T12:42:50+00:00	INFO 203.109.66.22	task2	Running task#02 'Session GC'.
2025-08-08T12:42:50+00:00	INFO 203.109.66.22	task2	Task> SessionGC end
2025-08-08T12:42:50+00:00	INFO 203.109.66.22	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-08-08T12:53:45+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T12:53:46+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T12:53:46+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T12:53:46+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:14:24+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:14:25+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:14:25+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:14:25+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:14:25+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:14:26+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:31:06+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:31:07+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:31:07+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:31:07+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:31:07+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:31:08+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:31:08+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:31:08+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:31:09+00:00	CRITICAL 203.109.66.22	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:35:52+00:00	CRITICAL 219.91.181.211	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:49:08+00:00	CRITICAL 123.201.29.164	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:49:08+00:00	CRITICAL 123.201.29.164	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:49:09+00:00	CRITICAL 123.201.29.164	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:49:09+00:00	CRITICAL 123.201.29.164	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:49:09+00:00	CRITICAL 123.201.29.164	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:49:10+00:00	CRITICAL 123.201.29.164	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-08T13:49:10+00:00	CRITICAL 123.201.29.164	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-09T17:50:12+00:00	INFO 91.196.152.254	tokenfailure	Authentication failed
2025-08-09T17:50:12+00:00	CRITICAL 91.196.152.254	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-10T05:52:18+00:00	INFO 195.184.76.253	tokenfailure	Authentication failed
2025-08-10T05:52:18+00:00	CRITICAL 195.184.76.253	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-11T03:03:06+00:00	CRITICAL 185.177.72.9	error	Uncaught Throwable of type Joomla\CMS\Application\Exception\NotAcceptable thrown with message "Could not match accept header". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-11T06:05:16+00:00	INFO 123.201.29.121	task3	Running task#03 'Update Notification'.
2025-08-11T06:05:17+00:00	INFO 123.201.29.121	task3	Successfully finished task#03 in 0.48 (net 0.49) seconds.
2025-08-11T06:06:46+00:00	INFO 123.201.29.121	task2	Running task#02 'Session GC'.
2025-08-11T06:06:46+00:00	INFO 123.201.29.121	task2	Task> SessionGC end
2025-08-11T06:06:46+00:00	INFO 123.201.29.121	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-08-11T06:23:37+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:23:37+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:23:37+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:23:38+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:23:38+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:23:38+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:23:39+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:28:36+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:28:36+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:40:42+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:40:42+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:40:43+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:40:43+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:40:43+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-11T06:40:44+00:00	CRITICAL 123.201.29.121	error	Uncaught Throwable of type Joomla\CMS\Router\Exception\RouteNotFoundException thrown with message "Page not found". Stack trace: #0 [ROOT]/libraries/src/Application/SiteApplication.php(767): Joomla\CMS\Router\Router->parse()
#1 [ROOT]/libraries/src/Application/SiteApplication.php(243): Joomla\CMS\Application\SiteApplication->route()
#2 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\SiteApplication->doExecute()
#3 [ROOT]/includes/app.php(58): Joomla\CMS\Application\CMSApplication->execute()
#4 [ROOT]/index.php(32): require_once('...')
#5 {main}
2025-08-12T17:04:49+00:00	INFO 45.92.19.139	task3	Running task#03 'Update Notification'.
2025-08-12T17:04:49+00:00	INFO 45.92.19.139	task3	Successfully finished task#03 in 0.52 (net 0.52) seconds.
2025-08-13T21:15:46+00:00	CRITICAL 185.177.72.11	error	Uncaught Throwable of type Joomla\CMS\Application\Exception\NotAcceptable thrown with message "Could not match accept header". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-15T14:23:46+00:00	INFO 40.77.179.77	task2	Running task#02 'Session GC'.
2025-08-15T14:23:46+00:00	INFO 40.77.179.77	task2	Task> SessionGC end
2025-08-15T14:23:46+00:00	INFO 40.77.179.77	task2	Successfully finished task#02 in 0.00 (net 0.00) seconds.
2025-08-16T15:38:47+00:00	INFO 91.196.152.132	tokenfailure	Authentication failed
2025-08-16T15:38:47+00:00	CRITICAL 91.196.152.132	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-16T16:51:13+00:00	INFO 91.196.152.254	tokenfailure	Authentication failed
2025-08-16T16:51:13+00:00	CRITICAL 91.196.152.254	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-17T05:08:17+00:00	INFO 195.184.76.250	tokenfailure	Authentication failed
2025-08-17T05:08:17+00:00	CRITICAL 195.184.76.250	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-17T06:13:42+00:00	INFO 195.184.76.249	tokenfailure	Authentication failed
2025-08-17T06:13:42+00:00	CRITICAL 195.184.76.249	error	Uncaught Throwable of type Joomla\CMS\Access\Exception\AuthenticationFailed thrown with message "". Stack trace: #0 [ROOT]/libraries/src/Application/ApiApplication.php(110): Joomla\CMS\Application\ApiApplication->route()
#1 [ROOT]/libraries/src/Application/CMSApplication.php(304): Joomla\CMS\Application\ApiApplication->doExecute()
#2 [ROOT]/api/includes/app.php(50): Joomla\CMS\Application\CMSApplication->execute()
#3 [ROOT]/api/index.php(31): require_once('...')
#4 {main}
2025-08-18T13:10:38+00:00	INFO 106.215.154.78	task3	Running task#03 'Update Notification'.
2025-08-18T13:10:39+00:00	INFO 106.215.154.78	task3	Successfully finished task#03 in 0.39 (net 0.39) seconds.
2025-08-18T13:10:42+00:00	INFO 106.215.154.78	task1	Running task#01 'Rotate Logs'.
