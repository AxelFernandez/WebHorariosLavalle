<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <title>Horarios Lavalle Web</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/navbar-static/">
        <!-- Bootstrap core CSS -->
        <link href="https://getbootstrap.com/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <?php
        foreach($css_files as $file): ?>
            <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
        <?php endforeach; ?>
        <?php foreach($js_files as $file): ?>
            <script src="<?php echo $file; ?>"></script>
        <?php endforeach; ?>

    </head>
    <body >
        <nav class="site-header sticky-top py-1">
            <div class="navbar navbar-expand-md navbar-dark bg-dark mb-4 justify-content-between">
                <div style="float: left">
                    <img style="margin-left: 30%; margin-top: 5%" width="100" height="80" src="<?php echo base_url();?>Img/Logo.jpg">
                </div>

                <ul style="margin-left: 40%" class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="<?php echo base_url();?>backend/taxi">Taxi <span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="<?php echo base_url();?>backend/hours">Horarios <span class="sr-only"></span></a>
                    </li>
                </ul>

            </div>

        </nav>
        <div style="margin-left: 5%;margin-right: 5%">
            <?php
            echo $output;
            ?>
        </div>
    </body>
    </html>
