<cfif structKeyExists(form, "name") AND structKeyExists(form, "name")>
    <cfset userIndex = -1>

    <cfloop array = "#session.users#" index = "user">
        <cfif user.id EQ form.id>
            <cfset user.name = form.name>
            <cfset user.email = form.email>
            <cfset userIndex = arrayFind(session.users, user)>
            <cfbreak>
        </cfif>
    </cfloop>

    <cfif userIndex NEQ -1>
        <cfset request.successMessage = "User updated successfully.">
    <cfelse>
        <cfset request.errorMessage = "User not found.">
    </cfif>
    <cflocation url = "../localUsers.cfm">
</cfif>