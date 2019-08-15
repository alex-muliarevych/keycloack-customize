<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 
<html>
<head>
    <title>DEOPWARE</title>

    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <link rel="shortcut icon" href="welcome-content/favicon.ico" type="image/x-icon">

    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
</head>

<body>
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
      <div class="welcome-header">
        <img src="${resourcesPath}/logo.png" alt="${productName}" border="0" />
        <h1>Welcome to DEOPWARE!</h1>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-4">
          <div class="card-pf h-l">
            <#if successMessage?has_content>
                <p class="alert success">${successMessage}</p>
            <#elseif errorMessage?has_content>
                <p class="alert error">${errorMessage}</p>
            <#elseif bootstrap>
                <p>Problem with user identification? Ask for support.</p>
            </#if>

            <#if bootstrap && localUser>
                <form method="post" class="welcome-form">
                    <p>
                        <label for="username">Username</label>
                        <input id="username" name="username" />
                    </p>

                    <p>
                        <label for="password">Password</label>
                        <input id="password" name="password" type="password" />
                    </p>

                    <p>
                        <label for="passwordConfirmation">Password confirmation</label>
                        <input id="passwordConfirmation" name="passwordConfirmation" type="password" />
                    </p>

                    <input id="stateChecker" name="stateChecker" type="hidden" value="${stateChecker}" />

                    <button id="create-button" type="submit" class="btn btn-primary">Create</button>
                </form>
            </#if>
          </div>
        </div>
      </div>
      <div class='footer'>
        <a href="http://deopware.com">Our Site</a>
      </div>
    </div>
  </div>
</div>
</body>
</html>
