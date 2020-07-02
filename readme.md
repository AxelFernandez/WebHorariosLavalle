# Horarios Lavalle Web

## All compatible with Docker

Run With Docker-compose

If it dosn't run try:

```
docker-compose down
Deleted old volumes (if there is no significant data) docker system prune --force --volumes
Ran it with docker-compose up -d to set it up in background.
```

In Database configuration, database.php use this:


```
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
```

