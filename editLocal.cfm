<cfset request.pageTitle = "Edit">

<cfinclude template = "./includes/header.cfm">

<cfif structKeyExists(url, "id")>
    <cfset userFound = false>

    <cfloop array = "#session.users#" index = "user">
        <cfif user.id EQ url.id>
            <cfset userFound = true>
            <cfset currentUser = user>
            <cfbreak>
        </cfif>
    </cfloop>

    <cfif userFound>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="text-center my-3">
                        <div class="mb-3">
                            <h3>Edit user in session storage</h3>
                        </div>
                        <form action="./actions/updateLocal.cfm" method="post" class="text-center">
                            <div class="mb-3">
                                <input type="hidden" name="id" id="id" value="<cfoutput>#currentUser.id#</cfoutput>">
                            </div>
                            <div class="mb-3">
                                <input type="text" name="name" id="name" value="<cfoutput>#currentUser.name#</cfoutput>" placeholder="Enter name" class="form-control">
                            </div>
                            <div class="mb-3">
                                <input type="email" name="email" id="email" value="<cfoutput>#currentUser.email#</cfoutput>" placeholder="Enter email" class="form-control">
                            </div>
                            <div class="d-grid gap-2 col-6 mx-auto">
                                <input type="submit" value="Edit user" class="btn btn-outline-secondary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    <cfelse>
        <p>User not found.</p>
    </cfif>
    <cfelse>
        <p>No user ID provided.</p>
    </cfif>
<cfinclude template = "./includes/footer.cfm">