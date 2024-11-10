component {
    this.name = "UsersManagement";
    this.applicationTimeout = createTimeSpan(30, 0, 0, 0);
    this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0, 0, 60, 0);
    this.setClientCookies = true;
    this.datasource = "management";

    public boolean function onApplicationStart() {
        application.users = [];
        return true;
    }

    public boolean function onSessionStart() {
        session.users = [];
        return true;
    }

    public void function onRequestStart(string targetPage) {
      request.pageTitle = "Home";
      request.appTitle = "Users management";
    }

    public void function onRequestEnd() {
        return;
    }

    public void function onError(any exception, string eventName) {
        writeOutput("An error occurred: " & exception.message);
        return;
    }

    public void function onCFCRequest(string cfc, string method, struct args) {
        return;
    }
}
