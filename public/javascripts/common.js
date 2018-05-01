
const util = {
    
    // 对象拷贝方法
    copyObject:function(obj) {
    let backObj = {};
    for(let key in obj){
        backObj[key] = obj[key];
    }
    return backObj;
  }
}

module.exports = util;