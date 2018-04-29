// sql语句
var sqlMap = {
    // 用户
    user: {
        add: 'insert into users(name, phone, password, avatar) values (?, ?, ?, ?)',
        select: 'SELECT * FROM users WHERE find_in_set(?, name)',
        login: 'SELECT * FROM users WHERE find_in_set(?, name) && find_in_set(?, password)'
    },
    // 文章语句
    article: {
        add: 'insert into articles(title, body, user_id) values (?, ?, ?)',
        selects: 'SELECT * FROM articles WHERE find_in_set(?, user_id)',
        selectAll: 'SELECT * FROM articles',
        select: 'SELECT * FROM articles WHERE find_in_set(?, id)',
        deleteArticle: 'DELETE FROM articles WHERE user_id = ? and id = ?',
        reviseArticle: 'UPDATE articles SET title = ? , body = ?, text = ? WHERE id = ?'
    }
}

module.exports = sqlMap;