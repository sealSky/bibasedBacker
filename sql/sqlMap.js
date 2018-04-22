// sql语句
var sqlMap = {
    // 用户
    user: {
        add: 'insert into users(name, phone, password, avatar) values (?, ?, ?, ?)',
        select: 'SELECT * FROM users WHERE find_in_set(?, name)',
        login: 'SELECT * FROM users WHERE find_in_set(?, name) && find_in_set(?, password)'
    }
}

module.exports = sqlMap;