// sql语句
var sqlMap = {
    // 用户
    user: {
        add: 'insert into users(name, phone, password, avatar) values (?, ?, ?, ?)',
        select: 'SELECT * FROM users WHERE find_in_set(?, name)',
        selectId: 'SELECT name, avatar FROM users WHERE find_in_set(?, id)',
        login: 'SELECT * FROM users WHERE find_in_set(?, name) && find_in_set(?, password)',
        updated_favorites_count: 'UPDATE users SET favorites_count = ? WHERE id = ?'
    },
    // 文章语句
    article: {
        add: 'insert into articles(title, body, user_id, created_at) values (?, ?, ?, ?)',
        selects: 'SELECT * FROM articles WHERE find_in_set(?, user_id)',
        selectAll: 'SELECT * FROM articles',
        select: 'SELECT * FROM articles WHERE find_in_set(?, id)',
        deleteArticle: 'DELETE FROM articles WHERE user_id = ? and id = ?',
        reviseArticle: 'UPDATE articles SET title = ? , body = ?, text = ?, updated_at = ?, img = ? WHERE id = ?',
        readArticle: 'UPDATE articles SET reads_count=reads_count+1 WHERE id = ?',
        commentsArticle: 'UPDATE articles SET comments_count = ? WHERE id = ?',
        followersArticle: 'UPDATE articles SET followers_count = ? WHERE id = ?',

        likeArticle: 'INSERT into collections(user_id, article_id) values (?, ?)',
        isLikeArticle: 'SELECT * FROM collections WHERE find_in_set(?, user_id) && find_in_set(?, article_id)',
        deldteLikeArticle: 'DELETE FROM collections WHERE user_id = ? and article_id = ?',
        getArticleCollections: 'SELECT * FROM collections WHERE article_id = ?',
        getLikeArticle_id: 'SELECT * FROM collections WHERE user_id = ?',

        likeAction: 'INSERT into followers(follower_id, followed_id) values (?, ?)',
        deldteLikeAction: 'DELETE FROM followers WHERE follower_id = ? and followed_id = ?',
        isLikeAction: 'SELECT * FROM followers WHERE find_in_set(?, follower_id) && find_in_set(?, follower_id)',

        appearComment: 'INSERT into comments(user_id, article_id, comment) values (?, ?, ?)',
        loaderComment: 'SELECT * FROM comments WHERE find_in_set(?, article_id)',
    }
}

module.exports = sqlMap;