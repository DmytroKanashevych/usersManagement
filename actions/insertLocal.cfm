<cfif structKeyExists(form, "name") AND structKeyExists(form, "email")>
    <cfif NOT structKeyExists(session, "users")>
        <cfset session.users = []>
    </cfif>
    <cfset newUser = {"id" = createUUID(), "name" = form.name, "email" = form.email}>
    <cfset arrayAppend(session.users, newUser)>

    <cflocation url = "../localUsers.cfm">
</cfif>