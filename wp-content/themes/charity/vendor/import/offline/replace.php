<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <?php echo '<tit' . 'le>Charity: offline import</tit' . 'le>' ?>
        <style type="text/css">
            html {
                background: #f1f1f1;
            }
            body {
                background: #fff;
                color: #444;
                font-family: "Open Sans", sans-serif;
                margin: 2em auto;
                padding: 1em 2em;
                max-width: 700px;
                -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.13);
                box-shadow: 0 1px 3px rgba(0,0,0,0.13);
            }
            h1 {
                border-bottom: 1px solid #dadada;
                clear: both;
                color: #666;
                font: 24px "Open Sans", sans-serif;
                margin: 30px 0 0 0;
                padding: 0;
                padding-bottom: 7px;
            }
            #error-page {
                margin-top: 50px;
            }
            #error-page p {
                font-size: 14px;
                line-height: 1.5;
                margin: 25px 0 20px;
            }
            #error-page code {
                font-family: Consolas, Monaco, monospace;
            }
            ul li {
                margin-bottom: 10px;
                font-size: 14px ;
            }
            a {
                color: #21759B;
                text-decoration: none;
            }
            a:hover {
                color: #D54E21;
            }
            .loader {
                width: 250px;
                height: 50px;
                line-height: 50px;
                text-align: center;
                position: absolute;
                top: 50%;
                left: 50%;
                -webkit-transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                transform: translate(-50%, -50%);
                font-family: helvetica, arial, sans-serif;
                text-transform: uppercase;
                font-weight: 900;
                color: #444;
                letter-spacing: 0.2em;
            }
            .loader::before, .loader::after {
                content: "";
                display: block;
                width: 15px;
                height: 15px;
                background: #444;
                position: absolute;
                -webkit-animation: load .7s infinite alternate ease-in-out;
                animation: load .7s infinite alternate ease-in-out;
            }
            .loader::before {
                top: 0;
            }
            .loader::after {
                bottom: 0;
            }

            @-webkit-keyframes load {
                0% {
                left: 0;
                height: 30px;
                width: 15px;
            }
            50% {
                height: 8px;
                width: 40px;
            }
            100% {
                left: 235px;
                height: 30px;
                width: 15px;
            }
            }

            @keyframes load {
                0% {
                left: 0;
                height: 30px;
                width: 15px;
            }
            50% {
                height: 8px;
                width: 40px;
            }
            100% {
                left: 235px;
                height: 30px;
                width: 15px;
            }
            }

        </style>
    </head>
    <body id="error-page">

        <h1>Please wait ..</h1>
        <ul>
            <li>Don't click on back button</li>
            <li>Don't refresh page.</li>

        </ul>

        <?php
        if (!empty($_GET['cimport'])):


            $siteurl = $_GET['durl'];
            $dbname = $_GET['dbn'];
            $uname = $_GET['dbu'];
            $dbpass = $_GET['dbp'];
            $host = $_GET['dbh'];
            $prefix = $_GET['pfix'];

            if (!empty($_GET['caction'])) {
                require_once 'charity-importer.php';
                $charityImporter = new Charity\Core\Import\Charity_Importer();

                if ($_GET['caction'] == "import") {
                    $import = $charityImporter->importStart($siteurl, $dbname, $uname, $dbpass, $host, $prefix);
                    if (isset($import) && count($import) == 0) {
                        $queryLink = '?cimport=true&caction=replace&durl=' . urlencode($siteurl) . '&dbn=' . urlencode($dbname) . '&dbu=' . urlencode($uname) . '&dbp=' . urlencode($dbpass) . '&dbh=' . urlencode($host) . '&pfix=' . urlencode($prefix);
                        ?><script> window.location.href='<?php echo $_SERVER["PHP_SELF"] . $queryLink; ?>'; </script><?php
              //  die();
            } else {
                echo "<p>Sorry import not work. Please conatct on Theemon support support@theemon.com</p>";
                //die();
            }
        }

        if ($_GET['caction'] == "replace") {
            $replace = $charityImporter->replaceStart($siteurl, $dbname, $uname, $dbpass, $host, $prefix);
            if (isset($replace['change']) && $replace['change'] == 0) {
                echo "<p>Sorry search & replace not work. Please conatct on Theemon support support@theemon.com</p>";
                //die();
            } else {
                        ?><script> window.location.href='<?php echo $siteurl . "?oneclk=signon"; ?>'; </script><?php
                //die();
            }
        }
    }

endif;
        ?>
        <!--div class="loader">Loading...</div-->            
    </body>
</html>
<?php 