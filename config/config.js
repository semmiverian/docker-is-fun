module.exports = {
  development: {
    username: 'semmiverian',
    password: 'password',
    database: 'database_try',
    host: 'docker-for-node_postgres_1',
    dialect: 'postgres',
    operatorsAliases: false
  },
  test: {
    username: 'root',
    password: null,
    database: 'database_test',
    host: '127.0.0.1',
    dialect: 'mysql',
    operatorsAliases: false
  },
  production: {
    username: 'root',
    password: null,
    database: 'database_production',
    host: '127.0.0.1',
    dialect: 'mysql',
    operatorsAliases: false
  }
}
