<cfquery name = "delete">
    delete from users where id = <cfqueryparam value = "#url.id#" cfsqltype = "cf_sql_integer">
</cfquery>

<cflocation url = "../index.cfm" addtoken = "no">