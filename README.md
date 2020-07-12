# email-automater-backend


models: 

user < templates
user < contacts
template
contact < contacttags > tag

X rails g resource user name email password_digest
X rails g resource template name subject body:text user:references
X rails g resource contact name email user:references
X rails g resource tag name
X rails g resource contact_tag contact:references tag:references 


