<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

use Phalcon\Mvc\Application;
use Phalcon\Config\Adapter\Ini as ConfigIni;

try {
    define('APP_PATH', realpath('..') . '/');

    /**
     * Read the configuration
     */
    $config = new ConfigIni(APP_PATH . 'config/config.ini');
    if (is_readable(APP_PATH . 'config/config.ini.dev')) {
        $override = new ConfigIni(APP_PATH . 'config/config.ini.dev');
        $config->merge($override);
    }

    /**
     * Auto-loader configuration
     */
    require APP_PATH . 'config/loader.php';

    /**
     * Load application services
     */
    require APP_PATH . 'config/services.php';

    $application = new Application($di);

    echo $application->handle()->getContent();
} catch (Exception $e){
    echo $e->getMessage() . '<br>';
    echo '<pre>' . $e->getTraceAsString() . '</pre>';
}

