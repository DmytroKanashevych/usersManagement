<cfinclude template = "./queries/user.cfm">

<cfset request.pageTitle = "Edit">

<cfinclude template = "./includes/header.cfm">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-4">
            <div class="text-center my-3">
                <div class="mb-3">
                    <h3>Edit user in database</h3>
                </div>
                <form action="./actions/update.cfm" method="post" class="text-center mt-4">
                    <cfoutput query = "user">
                        <input type="hidden" name="id" id="id" value="#user.id#">
                        <div class="mb-3">
                            <input type="text" name="name" id="name" value="#user.name#" placeholder="Enter name" class="form-control">
                        </div>
                        <div class="mb-3">
                            <input type="email" name="email" id="email" value="#user.email#" placeholder="Enter email" class="form-control">
                        </div>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <input type="submit" value="Edit user" class="btn btn-outline-secondary">
                        </div>
                    </cfoutput>
                </form>
            </div>
        </div>
    </div>
</div>
<cfinclude template = "./includes/footer.cfm">