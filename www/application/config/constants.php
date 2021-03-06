<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| Display Debug backtrace
|--------------------------------------------------------------------------
|
| If set to TRUE, a backtrace will be displayed along with php errors. If
| error_reporting is disabled, the backtrace will not display, regardless
| of this setting
|
*/
defined('SHOW_DEBUG_BACKTRACE') OR define('SHOW_DEBUG_BACKTRACE', TRUE);

/*
|--------------------------------------------------------------------------
| File and Directory Modes
|--------------------------------------------------------------------------
|
| These prefs are used when checking and setting modes when working
| with the file system.  The defaults are fine on servers with proper
| security, but you may wish (or even need) to change the values in
| certain environments (Apache running a separate process for each
| user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
| always be used to set the mode correctly.
|
*/
defined('FILE_READ_MODE')  OR define('FILE_READ_MODE', 0644);
defined('FILE_WRITE_MODE') OR define('FILE_WRITE_MODE', 0666);
defined('DIR_READ_MODE')   OR define('DIR_READ_MODE', 0755);
defined('DIR_WRITE_MODE')  OR define('DIR_WRITE_MODE', 0755);

/*
|--------------------------------------------------------------------------
| File Stream Modes
|--------------------------------------------------------------------------
|
| These modes are used when working with fopen()/popen()
|
*/
defined('FOPEN_READ')                           OR define('FOPEN_READ', 'rb');
defined('FOPEN_READ_WRITE')                     OR define('FOPEN_READ_WRITE', 'r+b');
defined('FOPEN_WRITE_CREATE_DESTRUCTIVE')       OR define('FOPEN_WRITE_CREATE_DESTRUCTIVE', 'wb'); // truncates existing file data, use with care
defined('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE')  OR define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE', 'w+b'); // truncates existing file data, use with care
defined('FOPEN_WRITE_CREATE')                   OR define('FOPEN_WRITE_CREATE', 'ab');
defined('FOPEN_READ_WRITE_CREATE')              OR define('FOPEN_READ_WRITE_CREATE', 'a+b');
defined('FOPEN_WRITE_CREATE_STRICT')            OR define('FOPEN_WRITE_CREATE_STRICT', 'xb');
defined('FOPEN_READ_WRITE_CREATE_STRICT')       OR define('FOPEN_READ_WRITE_CREATE_STRICT', 'x+b');

/*
|--------------------------------------------------------------------------
| Exit Status Codes
|--------------------------------------------------------------------------
|
| Used to indicate the conditions under which the script is exit()ing.
| While there is no universal standard for error codes, there are some
| broad conventions.  Three such conventions are mentioned below, for
| those who wish to make use of them.  The CodeIgniter defaults were
| chosen for the least overlap with these conventions, while still
| leaving room for others to be defined in future versions and user
| applications.
|
| The three main conventions used for determining exit status codes
| are as follows:
|
|    Standard C/C++ Library (stdlibc):
|       http://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
|       (This link also contains other GNU-specific conventions)
|    BSD sysexits.h:
|       http://www.gsp.com/cgi-bin/man.cgi?section=3&topic=sysexits
|    Bash scripting:
|       http://tldp.org/LDP/abs/html/exitcodes.html
|
*/
defined('EXIT_SUCCESS')        OR define('EXIT_SUCCESS', 0); // no errors
defined('EXIT_ERROR')          OR define('EXIT_ERROR', 1); // generic error
defined('EXIT_CONFIG')         OR define('EXIT_CONFIG', 3); // configuration error
defined('EXIT_UNKNOWN_FILE')   OR define('EXIT_UNKNOWN_FILE', 4); // file not found
defined('EXIT_UNKNOWN_CLASS')  OR define('EXIT_UNKNOWN_CLASS', 5); // unknown class
defined('EXIT_UNKNOWN_METHOD') OR define('EXIT_UNKNOWN_METHOD', 6); // unknown class member
defined('EXIT_USER_INPUT')     OR define('EXIT_USER_INPUT', 7); // invalid user input
defined('EXIT_DATABASE')       OR define('EXIT_DATABASE', 8); // database error
defined('EXIT__AUTO_MIN')      OR define('EXIT__AUTO_MIN', 9); // lowest automatically-assigned error code
defined('EXIT__AUTO_MAX')      OR define('EXIT__AUTO_MAX', 125); // highest automatically-assigned error code

/*
 *
 * This Constants is for the common use in application
 *
 */
define('WEEK', 'week');
define('SATURDAY', 'saturday');
define('SUNDAY', 'sunday');
define('ROUTE', 'route');
define('FROM', 'from');
define('TO', 'to');
define('ARRIVAL_HOUR', 'arrivalHour');
define('FINISH_HOUR', 'finishHour');
define('PLATFORM', 'platform');
define('ROW_NAME', 'rowName');
define('DESCRIPTION', 'desc');
define('IDA','ida');
define('VUELTA','vuelta');
define('NAME','name');
define('DOMAIN','domain');
define('TAXINUMBER','taxiNumber');
define('PHONE','phone');
define('LIMIT', 5);
define('TIMEZONE', '-3 hours');

/*
 * Places to Search
 *
 */
define ("R24DistToMendoza", serialize (array ("asuncion", "el15", "gustavoAndre","costaDeAraujo","lavalle","mendoza","additional")));
define ("R24MendozaToDist", serialize (array ("mendoza", "lavalle", "costaDeAraujo","gustavoAndre","el15","asuncion","additional")));


define ("R40DistToMendoza", serialize (array ("km56", "km47Esc", "jocoli","oscarMendoza","andacollo","croco","sguazini","3DeMayo","sanFrancisco","calleItalia",
    "barrioLaColmena","salvatierra","paramillo","lavalle","verjel","cruce","pastal","borbollon","mendoza","additional")));
define ("R40MendozaToDist", serialize (array ("mendoza", "borbollon", "pastal","cruce","lavalle", "paramillo", "verjel","salvatierra","barrioLaColmena",
    "calleItalia", "sanFrancisco","3DeMayo","sguazini","croco","andacollo","oscarMendoza","jocoli","km47Esc","km56","additional")));



define ("CaliforniaDistToCosta", serialize (array ("3portena","central","california","william","costa","additional")));
define ("CaliforniaCostaToDist", serialize (array ("costa","william","california","central","3portena","additional")));

define ("CaliforniaDistToCostaSunday", serialize (array ("3portena","central","california","costa","additional")));
define ("CaliforniaCostaToDistSunday", serialize (array ("costa","california","central","3portena","additional")));


define ("InternoCostaToDist", serialize (array ("lapega","lasvioletas","elvergel","paramillo","california","labajada","mendoza","lavalle","costaDeAraujo","additional")));
define ("InternoDistToCosta", serialize (array ("costaDeAraujo","lavalle","mendoza","labajada","california","paramillo","elvergel","lasvioletas","lapega","additional")));

define ("InternoCostaToDistSunday", serialize (array ("lasvioletas","lapega", "elvergel","paramillo", "lavalle","costaDeAraujo","additional")));
define ("InternoDistToCostaSunday", serialize (array ("costaDeAraujo","lavalle","paramillo","elvergel","lapega","lasvioletas","additional")));




define ("InternoVillaToDist", serialize (array ("paramillo","lapega","lasvioletas","elvergel","btupac","blacolmena","lavalle","additional")));
define ("InternoDistToVilla", serialize (array ("lavalle","blacolmena","btupac","elvergel","lapega","lasvioletas","paramillo","additional")));

define ("InternoVillaToDistSaturday", serialize (array ("paramillo","lapega", "lasvioletas","elvergel", "mendoza","lavalle","additional")));
define ("InternoDistToVillaSaturday", serialize (array ("lavalle","mendoza","elvergel","lapega","lasvioletas","paramillo","additional")));



/*
 *  Description for Place
 *
 */

//R24
define('asuncion', 'Asuncion');
define('el15', 'El 15');
define('gustavoAndre', 'Gustavo Andre');
define('costaDeAraujo', 'Costa de Araujo');
define('lavalle', 'Lavalle');
define('LAVALLE_TABLE', 'lavalle');
define('MENDOZA_TABLE', 'mendoza');
define('mendoza', 'Mendoza');

define ("tables", serialize (array (

	"californiaidaweek", "californiaidasaturday", "californiaidasunday",
	"californiavueltaweek", "californiavueltasaturday", "californiavueltasunday",
	"ruta24idaweek", "ruta24idasaturday", "ruta24idasunday",
	"ruta24vueltaweek", "ruta24vueltasaturday", "ruta24vueltasunday",
	"ruta40idaweek", "ruta40idasaturday", "ruta40idasunday",
	"ruta40vueltaweek", "ruta40vueltasaturday", "ruta40vueltasunday",
	"internocostaidaweek", "internocostaidasaturday","internocostaidasunday",
	"internocostavueltaweek", "internocostavueltasaturday", "internocostavueltasunday",
	"internolavalleidaweek","internolavalleidasaturday",
	"internolavallevueltaweek","internolavallevueltasaturday"

	)));

define('SPECIAL_HOUR_URL','https://docs.google.com/spreadsheets/d/e/2PACX-1vTSuHhkhHiZFNuBdAU3OmiDBnjhJz3y6dZZovTkVA186COcbhSL-XnkDKxuhzNNceS9alBrOHbEzBWn/pubhtml');
define('CURRENT_HOUR_URL','https://docs.google.com/spreadsheets/d/e/2PACX-1vRc9oEPFok0shA2CFf9RUk171HBTYfr6itpGSZXLNPYGRie7szjtinWN9iNTgh11ZzSRlIbT6V6eAvA/pubhtml');
