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

//新增文章接口
router.post('/newArticle', (req, res) => {
  let params = req.body;
  console.log(params);
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
  console.log(params);
  // 查询昵称
  conn.query(sqlAll.reviseArticle, [params.title, params.body, params.text, params.updated_at, params.id ], (err, result) => {
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



/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
  console.log('请求成功');
});

module.exports = router;
