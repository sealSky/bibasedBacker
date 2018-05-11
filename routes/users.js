let express = require('express');
let router = express.Router();
let $sql = require('../sql/sqlMap.js');

// 引用数据库
let models = require('../sql/db.js');
let mysql = require('mysql');
// 连接数据库
let conn = mysql.createConnection(models.mysql);
conn.connect();

// 注入sql语句
let sqlUser = $sql.user;

// 写入方法
let jsonWrite = function(res, ret) {
  if(typeof ret === 'undefined') {
      res.json({
          code: '1',
          msg: '操作失败'
      });
  } else {
      res.json(ret);
  }
};

// 对象拷贝方法
function copyObject(obj1) {
  let obj2 = {};
  for(let key in obj1){
    obj2[key] = obj1[key];
  }
  return obj2;
}

// POST method route
//增加用户接口
router.post('/register', (req, res) => {
  let params = req.body;
  // 查询昵称
  conn.query(sqlUser.select, [params.name], (err, result) => {
    if(err) {
      console.log(err);
    } 
    // 数据库返回数组大于1，代表已有
    if (result.length >= 1){
      res.json({
        code: 'error',
        msg: '该昵称已被注册，请换一个'
      });
    } else { //未被注册执行插入操作
      conn.query(sqlUser.add, [params.name, params.phone, params.password, params.avatar], (err, result) => {
        if(err) {
          console.log(err)
        }
        if(result) {
          console.log('注册成功');
          res.json({
            code: 'success',
            msg: '注册成功'
          });
        }
      })
    }
  })
});

//用户登录验证借口
//增加用户接口
router.post('/login', (req, res) => {
  let params = req.body;
  // 查询昵称
  conn.query(sqlUser.login, [params.name, params.password], (err, result) => {
    if(err) {
      console.log(err);
    } else {
        // 数据库返回数组大于1，代表已有
        if (result.length >= 1){
          console.log('登录成功');
          res.json({
            code: 'success',
            msg: '登录成功',
            user: copyObject(result[0])
          });
        } else { // 用户名和密码不匹配
          console.log('用户名或密码不正确');
          res.json({
            code: 'error',
            msg: '用户名或密码不正确'
          })
        }
    }
  })
});



/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
  console.log('请求成功');
});

module.exports = router;
