<?php
#
# Nota: definir donde encontrar almidon?
#
#define ('ALMIDONDIR', '/usr/local/almidon/');
define ('DEBUG', true);

# Funciones que definen el comportamiento de PHP
setlocale(LC_TIME, "es_ES");
 
# Constantes de conexion la base de datos
$admin_dsn = 'pgsql://almidondemo:secreto1@/almidondemo';
$public_dsn = 'pgsql://almidondemowww:secreto2@/almidondemo';
if (!defined('ADMIN')) define('ADMIN', false);
if (ADMIN===true) define ('DSN', $admin_dsn);
else define ('DSN', $public_dsn);
 
# Constantes del web y filesystem
$configdir = dirname(__FILE__);
$rootdir = substr($configdir, 0, strrpos($configdir,'/'));
define ('ROOTDIR', $rootdir);
define ('DOMAIN', 'local.almidon.org');
define ('SQLLOG', ROOTDIR . '/logs/sql.log');
define ('LOGFILE', ROOTDIR . '/logs/cms.log');
define ('HOMEDIR', ROOTDIR .'/public_html');
define ('URL', 'http://www.' . DOMAIN);
define ('EMAIL', 'info@' . DOMAIN);
define ('PIXDIR', HOMEDIR.'/pix');

define ('MAXROWS', 5);
define ('MAXCOLS', 6);

# Constantes de valores (IDs) de las tablas

define('IDPAGINA', 1);
