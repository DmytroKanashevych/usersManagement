<cfif structKeyExists(url, "id")>
    <cfset userIndex = -1>

    <cfloop array = "#session.users#" index = "user">
        <cfdump var = "#url.id#">
    
        <cfif user.id EQ url.id>
            <cfset userIndex = arrayFind(session.users, user)>
            <cfbreak>
        </cfif>
    </cfloop>

    <cfif userIndex NEQ -1>
        <cfset arrayDeleteAt(session.users, userIndex)>
    </cfif>
    <cflocation url = "../localUsers.cfm">
</cfif>