ColdFusion Project - User Management

This is a basic ColdFusion web application that allows you to add users. It has two pages:

Page 1: Add users to the database. Page 2: Add users to memory (session storage).

Features

Add User (Database): Form to add users to a Derby database. Add User (In-memory): Add users to session storage.

Requirements

ColdFusion Server (Adobe ColdFusion) Driver Apache Derby Embedded (or any supported database) Git (for cloning the repository)

Usage

Page 1 (index.cfm): Go to this page in your browser, fill in the form to add users, and they will be saved in your Derby. Page 2 (localUsers.cfm): Go to this page to add users. They will be stored in the session.users array in memory, and displayed on the page.

Running Locally

Ensure ColdFusion is installed and running. Set up the web server (Apache or IIS) to point to the webroot of this project. Ensure the database is set up and the correct credentials are in Application.cfc. Open a browser and go to http://localhost:8500.
