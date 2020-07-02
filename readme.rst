Create a directory with the following structure:
├── docker-compose.yml
├── Dockerfile
├── dump
│   └── myDb.sql
└── www
    └── All Project!

Run With Docker-compose

If it dosn't run try:

1 - docker-compose down
2 - Deleted old volumes (if there is no significant data) docker system prune --force --volumes
3 - Ran it with docker-compose up -d to set it up in background.

In Database configuration, database.php use this:

$db['default'] = array(
	'dsn'	=> '',
	'hostname' => 'db:3306',   <----this is the linked name in docker-compose.yaml
	'username' => 'root',
	'password' => 'test',
	'database' => 'HorariosLavalle',
	'dbdriver' => 'mysqli',
	'dbprefix' => '',
	'pconnect' => FALSE,
	'db_debug' => (ENVIRONMENT !== 'production'),
	'cache_on' => FALSE,
	'cachedir' => '',
	'char_set' => 'utf8',
	'dbcollat' => 'utf8_general_ci',
	'swap_pre' => '',
	'encrypt' => FALSE,
	'compress' => FALSE,
	'stricton' => FALSE,
	'failover' => array(),
	'save_queries' => TRUE
);
