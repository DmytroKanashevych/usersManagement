<cfset request.pageTitle = "Local users">

<cfinclude template = "./includes/header.cfm">
<div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6 col-lg-4">
        <div class="text-center my-3">
          <div class="mb-3">
            <h3>Add user to session storage</h3>
          </div>
          <form action="./actions/insertLocal.cfm" method="post">
            <div class="mb-3">
              <input type="text" name="name" id="name" placeholder="Enter name" class="form-control" required>
            </div>
            <div class="mb-3">
              <input type="email" name="email" id="email" placeholder="Enter email" class="form-control" required>
            </div>
            <div class="d-grid gap-2 col-6 mx-auto mb-5">
              <input type="submit" value="Add user" class="btn btn-outline-secondary">
            </div>
          </form>
        </div>
      </div>
    </div>
</div>
    
    <table class="table table-striped">
      <tr>
        <th class="col-3">ID</th>
        <th class="col-3">Name</th>
        <th class="col-3">Email</th>
        <th class="col-1">Actions</th>
      </tr>
  <cfloop array = "#session.users#" index = "user">
      <tr>
        <td> 
          <cfoutput>#user.id#</cfoutput>
        </td>
        <td> 
          <cfoutput>#user.name#</cfoutput>
        </td>
        <td> 
          <cfoutput>#user.email#</cfoutput>
        </td>
        <td>
          <a href="./editLocal.cfm?id=<cfoutput>#user.id#</cfoutput>" class="btn btn-sm btn-outline-success mr-2">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi 
            bi-pencil-square" viewBox="0 0 16 16">
            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 
            1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 
            .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 
            0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 
            0 0 1 2.5z"/>
            </svg>
          </a>
          <a href="./actions/deleteLocal.cfm?id=<cfoutput>#user.id#</cfoutput>" class="btn btn-sm btn-outline-danger">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi 
            bi-trash3" viewBox="0 0 16 16">
            <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5M11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 
            1.5 0 0 0 5 1.5v1H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 
            1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 
            1-.997-.92L3.042 3.5zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 
            .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47M8 
            4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5"/>
            </svg>
          </a>
        </td>
      </tr>
  </cfloop>
</table>
  <cfif structKeyExists(session, "users") AND arrayLen(session.users) LT 0>
    <p>No users found in session memory.</p>
  </cfif>
<cfinclude template = "./includes/footer.cfm">