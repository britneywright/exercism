var defaultKey = 'aaaaaaaaaa'

var Cipher = function(newKey = defaultKey){
  key = newKey
};

// Cipher.prototype.key = 'aaaaaaaaaa'

// Cipher.prototype.key = function(key){
//   return key;
// };

Cipher.prototype.encode = function(string){
  return string;
};

Cipher.prototype.decode = function(string){
  return string;
};

module.exports = Cipher;
