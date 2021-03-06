% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/authenticate.R
\name{etrd_auth_login_url}
\alias{etrd_auth_login_url}
\title{Auth Step 2: Generate ETRADE URL for log in}
\usage{
etrd_auth_login_url(etrade_cred = NULL, sandbox = FALSE, auto_open = TRUE)
}
\arguments{
\item{etrade_cred}{The output created from
\code{\link{etrd_auth_credentials}} when a valid ETRADE key and secret have
been passed. This entry is not required because the output is saved and
retrieved from R options automatically.}

\item{sandbox}{ETRADE offers a sandbox environment for validating API calls
and responses. If using the sandbox environment, this must be set to TRUE
in each function called throughout etrader. ETRADE states "Sandbox
responses use stored data that's intended to provide typical responses for
basic use cases. So the responses you receive will not contain current
data, and may not exactly match your requests in other ways." Essentially,
the responses will not match the requests entered but successful pull will
indicate whether the entry was valid or not.}

\item{auto_open}{indicate whether the browser should open automatically to
the login URL}
}
\value{
a list of three items: a login URL valid for 5 minutes and two
  request tokens, a key and secret
}
\description{
Step 2 of ETRADE authentication. Use the output from
\code{\link{etrd_auth_credentials}} to generate Request Tokens and a login
URL
}
\details{
Authentication into the ETRADE environment requires a three step process: set
ETRADE credentials, generate request tokens to create a login URL, and use
the verification code to create access tokens. The output from
\code{\link{etrd_auth_credentials}} needs to be fed into this function to
create the URL.

Once the URL is generated it will pop up automatically. Log into the page. If
the redirect is to a normal ETRADE landing page, re-paste the URL into the
browser. The page header should read: Indicate Terms Agreement. Press
"Accept" to generate a 5 digit alpha-numeric Verification Code. The
Verification Code will feed into \code{\link{etrd_auth_access_token}} to
generate Access Tokens and complete the authorization process.
}
\examples{
\dontrun{

# The etrade_cred has been stored into options so does not need to be passed
loginURL = etrd_auth_login_url()

}
}
\seealso{
\code{\link{etrd_auth_credentials}} to set the key and secret into
  an oauth app, \code{\link{etrd_auth_login_url}} to generate request tokens
  and create a login URL, \code{\link{etrd_auth_access_token}} to use the
  verification code to create access tokens,
  \code{\link{etrd_auth_manage_token}} to renew or revoke access tokens
}
