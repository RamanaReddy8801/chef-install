# frozen_string_literal: true

############
# REQUIRED #
############

default['newrelic_install']['NEW_RELIC_API_KEY'] = ''
default['newrelic_install']['NEW_RELIC_ACCOUNT_ID'] = ''

############
# OPTIONAL #
############

default['newrelic_install']['NEW_RELIC_REGION'] = 'US'
default['newrelic_install']['env']['HTTPS_PROXY'] = nil
default['newrelic_install']['env']['NEW_RELIC_CLI_SKIP_CORE'] = '1'
default['newrelic_install']['verbosity'] = ''

####################
# TARGETED INSTALL #
####################

# infrastructure-agent-installer
# logs-integration
# php-agent-installer
# dotnet-agent-installer
# agent-control
# logs-integration-agent-control
# nrdot-collector-mysql
# nrdot-collector-mysql-rds
# nrdot-collector-postgresql
# nrdot-collector-postgresql-rds
# nrdot-collector-mssql
# nrdot-collector-mssql-winauth
# nrdot-collector-mssql-rds
# nrdot-collector-mssql-rds-winauth
# nrdot-collector-oracle
# nrdot-collector-oracle-rds
default['newrelic_install']['targets'] = []

########
# TAGS #
########

default['newrelic_install']['tags'] = {}

################
# CLI BEHAVIOR #
################

default['newrelic_install']['timeout_seconds'] = '600'

#############
# PHP, DOTNET #
#############

# optional name for your application
default['newrelic_install']['env']['NEW_RELIC_APPLICATION_NAME'] = ''

############################
# NRDOT MYSQL, POSTGRESQL #
############################

# These targets require env vars that vary by variant (local vs RDS) and
# often include credentials, so no defaults are declared here. Set only the
# vars needed for your chosen target via env attribute overrides.
#
# nrdot-collector-mysql:
#   NR_CLI_MYSQL_CONFIG_PRESET, NR_CLI_MYSQL_SERVER, NR_CLI_MYSQL_PORT,
#   NR_CLI_MYSQL_ROOT_PASSWORD, NR_CLI_MYSQL_LOGIN_NAME
#   (optional: NR_CLI_MYSQL_DATABASE)
#
# nrdot-collector-mysql-rds:
#   NR_CLI_MYSQL_CONFIG_PRESET, NR_CLI_MYSQL_SERVER, NR_CLI_MYSQL_PORT,
#   NR_CLI_MYSQL_MASTER_USER, NR_CLI_MYSQL_MASTER_PASSWORD, NR_CLI_MYSQL_LOGIN_NAME
#   (optional: NR_CLI_MYSQL_DATABASE, NR_CLI_MYSQL_TLS_CA_FILE)
#
# nrdot-collector-postgresql:
#   NR_CLI_POSTGRES_CONFIG_PRESET, NR_CLI_POSTGRES_SERVER, NR_CLI_POSTGRES_PORT,
#   NR_CLI_POSTGRES_SUPERUSER_PASSWORD, NR_CLI_POSTGRES_LOGIN_NAME,
#   NR_CLI_POSTGRES_DATABASES (required, comma-separated)
#
# nrdot-collector-postgresql-rds:
#   NR_CLI_POSTGRES_CONFIG_PRESET, NR_CLI_POSTGRES_SERVER, NR_CLI_POSTGRES_PORT,
#   NR_CLI_POSTGRES_MASTER_USER, NR_CLI_POSTGRES_MASTER_PASSWORD,
#   NR_CLI_POSTGRES_LOGIN_NAME, NR_CLI_POSTGRES_DATABASES (required, comma-separated)
#
# See https://github.com/newrelic/open-install-library/pull/1422, #1423
#######################
# NRDOT MSSQL, ORACLE #
#######################

# These targets require env vars that vary by variant (local vs RDS, auth
# mode) and often include credentials, so no defaults are declared here.
# Set only the vars needed for your chosen target via env attribute overrides.
#
# nrdot-collector-mssql / nrdot-collector-mssql-rds:
#   NR_CLI_MSSQL_CONFIG_PRESET, NR_CLI_MSSQL_SERVER, NR_CLI_MSSQL_PORT,
#   NR_CLI_MSSQL_LOGIN_NAME, NR_CLI_MSSQL_SA_PASSWORD (local) or
#   NR_CLI_MSSQL_MASTER_USER / NR_CLI_MSSQL_MASTER_PASSWORD (RDS)
#
# nrdot-collector-mssql-winauth / nrdot-collector-mssql-rds-winauth:
#   NR_CLI_MSSQL_AUTH_MODE, NR_CLI_MSSQL_WIN_ACCOUNT, NR_CLI_MSSQL_WIN_PASSWORD,
#   NR_CLI_MSSQL_GMSA_ACCOUNT (plus server/port/preset above)
#
# nrdot-collector-oracle:
#   NR_CLI_ORACLE_CONFIG_PRESET, NR_CLI_ORACLE_HOST, NR_CLI_ORACLE_PORT,
#   NR_CLI_ORACLE_CONTAINER_TYPE, NR_CLI_ORACLE_PDB_NAME, NR_CLI_ORACLE_SSH_USER,
#   NR_CLI_ORACLE_LOGIN_NAME, NR_CLI_ORACLE_LOGIN_PASSWORD, NR_CLI_ORACLE_SERVICE_NAME
#
# nrdot-collector-oracle-rds:
#   NR_CLI_ORACLE_CONFIG_PRESET, NR_CLI_ORACLE_HOST, NR_CLI_ORACLE_PORT,
#   NR_CLI_ORACLE_ADMIN_USER, NR_CLI_ORACLE_ADMIN_PASSWORD, NR_CLI_ORACLE_LOGIN_NAME,
#   NR_CLI_ORACLE_LOGIN_PASSWORD, NR_CLI_ORACLE_SERVICE_NAME
#
# See https://github.com/newrelic/open-install-library/pull/1403, #1412, #1416
# for the authoritative recipe definitions (open at time of writing).
