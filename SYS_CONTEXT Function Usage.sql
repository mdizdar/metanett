SYS_CONTEXT('USERENV', 'NLS_DATE_FORMAT')
Result: 'RR-MM-DD'

SYS_CONTEXT('USERENV', 'NLS_SORT')
Result: 'BINARY'



ACTION 							--> Returns the position in the module
AUDITED_CURSORID 				--> Returns the cursor ID of the SQL that triggered the audit
AUTHENTICATED_IDENTITY 			--> Returns the identity used in authentication
AUTHENTICATION_DATA 			--> Authentication data
AUTHENTICATION_METHOD 			--> Returns the method of authentication
AUTHENTICATION_TYPE 			--> Describes how the user was authenticated. It can be one of the following values: Database, OS, Network, or Proxy
BG_JOB_ID 						--> If the session was established by an Oracle background process, this parameter will return the Job ID. Otherwise, it will return NULL.
CLIENT_IDENTIFIER 				--> Returns the client identifier (global context)
CLIENT_INFO 					--> User session information
CURRENT_BIND 					--> Bind variables for fine-grained auditing
CURRENT_SCHEMA 					--> Returns the default schema used in the current schema
CURRENT_SCHEMAID 				--> Returns the identifier of the default schema used in the current schema
CURRENT_SQL 					--> Returns the SQL that triggered the audit event
CURRENT_SQL_LENGTH 				--> Returns the length of the current SQL statement that triggered the audit event
CURRENT_USER 					--> Name of the current user
CURRENT_USERID 					--> Userid of the current user
DB_DOMAIN 						--> Domain of the database from the DB_DOMAIN initialization parameter
DB_NAME 						--> Name of the database from the DB_NAME initialization parameter
DB_UNIQUE_NAME 					--> Name of the database from the DB_UNIQUE_NAME initialization parameter
ENTRYID 						--> Available auditing entry identifier
ENTERPRISE_IDENTITY 			--> Returns the user's enterprise-wide identity
EXTERNAL_NAME 					--> External of the database user
FG_JOB_ID 						--> If the session was established by a client foreground process, this parameter will return the Job ID. Otherwise, it will return NULL.
GLOBAL_CONTEXT_MEMORY			--> The number used in the System Global Area by the globally accessed context
GLOBAL_UID 						--> The global user ID from Oracle Internet Directory for enterprise security logins. Returns NULL for all other logins.
HOST 							--> Name of the host machine from which the client has connected
IDENTIFICATION_TYPE 			--> Returns the way the user's schema was created
INSTANCE 						--> The identifier number of the current instance
INSTANCE_NAME 					--> The name of the current instance
IP_ADDRESS 						--> IP address of the machine from which the client has connected
ISDBA 							--> Returns TRUE if the user has DBA privileges. Otherwise, it will return FALSE.
LANG 							--> The ISO abbreviate for the language
LANGUAGE 						--> The language, territory, and character of the session. In the following format: language_territory.characterset
MODULE 							--> Returns the appplication name set through DBMS_APPLICATION_INFO package or OCI
NETWORK_PROTOCOL 				--> Network protocol used
NLS_CALENDAR 					--> The calendar of the current session
NLS_CURRENCY 					--> The currency of the current session
NLS_DATE_FORMAT 				--> The date format for the current session
NLS_DATE_LANGUAGE 				--> The language used for dates
NLS_SORT 						--> BINARY or the linguistic sort basis
NLS_TERRITORY 					--> The territory of the current session
OS_USER							--> The OS username for the user logged in
POLICY_INVOKER 					--> The invoker of row-level security policy functions
PROXY_ENTERPRISE_IDENTITY 		--> The Oracle Internet Directory DN when the proxy user is an enterprise user
PROXY_GLOBAL_UID 				--> The global user ID from Oracle Internet Directory for enterprise user security proxy users. Returns NULL for all other proxy users.
PROXY_USER 						--> The name of the user who opened the current session on behalf of SESSION_USER
PROXY_USERID 					--> The identifier of the user who opened the current session on behalf of SESSION_USER
SERVER_HOST 					--> The host name of the machine where the instance is running
SERVICE_NAME 					--> The name of the service that the session is connected to
SESSION_USER 					--> The database user name of the user logged in
SESSION_USERID 					--> The database identifier of the user logged in
SESSIONID 						--> The identifier of the auditing session
SID 							--> Session number
STATEMENTID				 		--> The auditing statement identifier
TERMINAL				 		--> The OS identifier of the current session
