<cfif structKeyExists(form, "name") AND structKeyExists(form, "email") AND structKeyExists(form, "id")>

    <cfquery name = "update">
        UPDATE users
        SET name = <cfqueryparam value = "#form.name#" cfsqltype = "cf_sql_varchar">
        ,
        email = <cfqueryparam value = "#form.email#" cfsqltype = "cf_sql_varchar">
        WHERE id = <cfqueryparam value = "#form.id#" cfsqltype = "cf_sql_integer">
    </cfquery>

    <cflocation url = "../index.cfm" addtoken = "no">
</cfif>