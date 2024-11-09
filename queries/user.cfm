<cfquery name = "user">
    select id, name, email from users where id = <cfqueryparam value = "#url.id#" 
              cfsqltype = "cf_sql_integer">
</cfquery>