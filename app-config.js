var config = {
    // Name of built js-file
    jsFilename : 'app.js',
    // Port to run the application on
    port: process.env.GOCD_MONITOR_PORT,
    // Webpack dev port to run on
    devPort: process.env.GOCD_MONITOR_DEVPORT,
    // Url for your go server
    goServerUrl: process.env.GOCD_SERVER_URL,
    // Go user to use for communication with go server
    goUser: process.env.GOCD_USER,
    // Password for go user
    goPassword: process.env.GOCD_PASSWORD,
    // How often data from go should be refreshed in seconds
    goPollingInterval: process.env.GOCD_MONITOR_POLLING_INTERVAL,
    // If > 0 switches between pipeline and test results page every n seconds
    switchBetweenPagesInterval: process.env.GOCD_MONITOR_SWITCH_PAGES_INTERVAL,
    // Whether to display build labels
    showBuildLabels: process.env.GOCD_MONITOR_SHOW_BUILD_LABELS
}
module.exports = config;
