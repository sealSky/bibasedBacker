let express = require('express');
let router = express.Router();
let $sql = require('../sql/sqlMap.js');
let util = require('../public/javascripts/common.js');

// 引用数据库
let models = require('../sql/db.js');
let mysql = require('mysql');
// 连接数据库
let conn = mysql.createConnection(models.mysql);
conn.connect();

// 注入sql语句
let sqlAll = $sql.article;
let sqlUser = $sql.user;

// 对象拷贝方法
function copyObject(obj1) {
  let obj2 = {};
  for(let key in obj1){
    obj2[key] = obj1[key];
  }
  return obj2;
}

function copyArr (arr){
  return arr.map((e)=>{
      if(typeof e === 'object'){
          return Object.assign({},e)
      }else{
          return e
      }
  })
}

 // 转换时间
 function timestampToTime(timestamp) {
  var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
  let Y = date.getFullYear() + '.';
  let M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '.';
  let D = date.getDate() + ' ';
  let h = date.getHours() + ':';
  let m = date.getMinutes();
  return Y+M+D+h+m
}

//新增文章接口
router.post('/newArticle', (req, res) => {
  let params = req.body;
  // console.log(params);
  // 查询昵称
  
  conn.query(sqlAll.add, [params.title, params.body, params.user_id, params.created_at], (err, result) => {
    if(err) {
      console.log(err);
      console.log('新增错误');
    } 
    // 数据库返回符合要求的文章数组
    if (result) {
        // console.log(result);
        res.json('新增成功');
    }
  })
});

//修改文章reviseArticle
router.post('/reviseArticle', (req, res) => {
  let params = req.body;
  // console.log(params);
  let img =  params.body.match(/<img[^>]+>/g) ? params.body.match(/<img[^>]+>/g)[0] : null;
  
  // 查询昵称
  conn.query(sqlAll.reviseArticle, [params.title, params.body, params.text, params.updated_at, img, params.id ], (err, result) => {
    if(err) {
      console.log(err);
      console.log('修改错误');
    } 
    // 数据库返回符合要求的文章数组
    if (result) {
      console.log('修改成功');
        res.json({
            result
        })
    }
  })
});

//获取用户所有文章接口
router.post('/getArticles', (req, res) => {
  let params = req.body;
  // 查询昵称
  conn.query(sqlAll.selects, [params.user_id], (err, result) => {
    if(err) {
      console.log(err);
    }
    if (result) {
      // 将用户所有的文章数存入用户表
      conn.query(sqlUser.updated_favorites_count, [result.length, params.user_id], (err, count) => {
        if(err) {
          console.log(err);
        } else {
          // console.log(params.user_id);
          console.log('更改成功');
        }
      })
        // console.log(result);
        res.json({
            result
        });
    }
  })
});

//获取所有用户的文章接口
router.post('/getArticleAll', (req, res) => {
  let params = req.body;
  conn.query(sqlAll.selectAll, (err, result) => {
    let articleAll = JSON.parse(JSON.stringify(result));
    if(err) {
      console.log(err);
    }
    if (result) {
      result.forEach((item, index) => {
        conn.query(sqlUser.selectId, [item.user_id], (error, users) => {
          if (users) {
            item.author = JSON.parse(JSON.stringify(users[0]));
            result[index] = item;
            if (index+1 === result.length) {
              res.json({
                result
              })
            }
        }
        })
      });
    }
  })
});


// 获取单个文章
router.post('/getArticle', (req, res) => {
  let params = req.body;
  // 查询昵称
  conn.query(sqlAll.select, [params.id], (err, result) => {
    if(err) {
      console.log(err);
    }
    if (result) {
        res.json({
            result
        });
    }
  })
});

// 删除文章
router.post('/deleteArticle', (req, res) => {
  let params = req.body;
  console.log(params);
  // 查询昵称
  conn.query(sqlAll.deleteArticle, [params.user_id, params.id], (err, result) => {
    if(err) {
      console.log(err);
    }
    if (result) {
      // console.log(result);
        res.send('删除成功');
    }
  })
});

// 喜欢文章
router.post('/likeArticle', (req, res) => {
  let _this = this;
  let params = req.body;
  console.log(params);
  // 判断是否已经添加关注
  conn.query(sqlAll.isLikeArticle, [params.user_id, params.article_id], (err, record) => {
    if(err) {
      console.log(err);
    }
    if (record) {
      // console.log(record);
      //已经有记录，则是删除
      if(record.length >= 1) {
          // 查询昵称
        conn.query(sqlAll.deldteLikeArticle, [params.user_id, params.article_id], (err, result) => {
          if(err) {
            console.log(err);
          }
          if (result) {
              res.json({
                is_like: false,
              });
          }
        })
      } else {
          //未有有记录，则是增加
        conn.query(sqlAll.likeArticle, [params.user_id, params.article_id], (err, result) => {
          if(err) {
            console.log(err);
          }
          if (result) {
              res.json({
                is_like: true,
              });
          }
        })
      }
    }
  })
})

// 获取文章喜欢数
router.post('/getArticleCollections', (req, res) => {
  let params = req.body;
  // 查询昵称
  conn.query(sqlAll.getArticleCollections,  params.article_id, (err, result) => {
    if(err) {
      console.log(err);
    }
    if (result) {
      let counts = result.length;
      conn.query(sqlAll.followersArticle, [counts, params.article_id], (error, flag) => {
        if(error) {
          console.log(err);
        } if(flag) {
          console.log('更新喜欢成功');
        }
      })
      res.json({
        counts
      });
    }
  })
})


// 判断是否已经喜欢
router.post('/isLikeArticle', (req, res) => {
  let params = req.body;
  // 查询昵称
  console.log(params);
  conn.query(sqlAll.isLikeArticle,[params.user_id, params.article_id], (err, result) => {
    if(err) {
      console.log(err);
    }
    if (result) {
      console.log('islike'+ result);
      if(result.length >= 1) {
        res.json({
          is_like: true,
        });
      } else {
        res.json({
          is_like: false,
        });
      }
    }
  })
})

// 判断是否已被关注
router.post('/isLikeAction', (req, res) => {
  let params = req.body;
  let followed_id = parseInt(params.followed_id);
  // 查询记录
  conn.query(sqlAll.isLikeAction, [params.follower_id, followed_id], (err, record) => {
    if(err) {
      console.log(err);
    } else if(record) {
      console.log(record);
      if (record >= 1) {
        res.json({
          is_action: false
        })
      } else {
        res.json({
          is_action: true
        })
      }
    }
  })
})
// 关注作者
router.post('/likeAction', (req, res) => {
  let params = req.body;
  let followed_id = parseInt(params.followed_id);
  console.log(followed_id);
  
  // console.log(params);
  // 查询记录
  conn.query(sqlAll.isLikeAction, [params.follower_id, followed_id], (err, record) => {
    if(err) {
      console.log(err);
    } if (record) {
      console.log(record);
      // 已有记录,删除
      if (record.length >= 1) {
        conn.query(sqlAll.deldteLikeAction, [params.follower_id, followed_id], (err, result) => {
          if(err) {
            console.log(err);
          } else if (result) {
            // console.log(result);
            res.json({
              is_action: false,
            });
          }
        })
      } else {
        // 未有则增加
        conn.query(sqlAll.likeAction, [params.follower_id, followed_id], (err, result) => {
          if(err) {
            console.log(err);
          } else if (result) {
            res.json({
              is_action: true,
            });
          }
        })
      }
    }
  })
})

// 阅读，打开给文章阅读数加上1
router.post('/readArticle', (req, res) => {
  let params = req.body;
  conn.query(sqlAll.readArticle, params.article_id, (err, result) => {
    if(err) {
      console.log(err);
    }
    if (result) {
      console.log('阅读+1');
      res.send('阅读+1');
    }
  })
})

// 文章评论
router.post('/appearComment', (req, res) => {
  let params = req.body;
  conn.query(sqlAll.appearComment,[params.user_id, params.article_id, params.comment], (err, result) => {
    if(err) {
      console.log(err);
    }
    if (result) {
      console.log('新增评论');
      res.send('评论成功');
    }
  })
})

// 初始化评论
router.post('/loaderComment', (req, res) => {
  let _this = this;
  let params = req.body;
  // 查询昵称
  console.log(params);
  conn.query(sqlAll.loaderComment, params.article_id, (err, result) => {
    if(err) {
      console.log(err);
    }
    if (result) {
      conn.query(sqlAll.commentsArticle, [result.length, params.article_id], (err, result) => {
        if(err) {
          console.log(err);
        }
        if(result) {
          console.log('更新评论数成功');
        }
      })
      // console.log(result.length);
      if(result.length >= 1) {
        result.forEach((item, index) => {
          conn.query(sqlUser.selectId, [item.user_id], (error, users) => {
            if (users) {
              item.author = JSON.parse(JSON.stringify(users[0]));
              result[index] = item;
              if (index+1 === result.length) {
                res.json({
                  result
                })
              }
          }
          })
        });
      } else {
        res.send('未有评论');
      }
    }
  })
})

// 个人中心

// 获取用户喜欢的文章
router.post('/getLikeArticles', (req, res) => {
  let articles = [];
  let params = req.body;
  // 查询昵称
  conn.query(sqlAll.getLikeArticle_id,  params.user_id, (err, result) => {
    if(err) {
      console.log(err);
    }
    if (result) {
      console.log(result);
      result.forEach((item, index) => {
        conn.query(sqlAll.select, [item.article_id], (error, likeArticles) => {
          console.log(likeArticles);
          if (likeArticles) {
            articles.push(JSON.parse(JSON.stringify(likeArticles[0])));
            if (index+1 === result.length) {
              res.json({
                articles
              })
            }
        }
        })
      });
    }
  })
})


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
  console.log('请求成功');
});

module.exports = router;
