<cfif structKeyExists(form, "name") AND structKeyExists(form, "email")>

    <cfquery name = "insert">
        INSERT INTO users (name, email)
        VALUES (<cfqueryparam value = "#form.name#" cfsqltype = "cf_sql_varchar">
        ,<cfqueryparam value = "#form.email#" cfsqltype = "cf_sql_varchar">
        )
    </cfquery>

    <cflocation url = "../index.cfm" addtoken = "no">
</cfif>