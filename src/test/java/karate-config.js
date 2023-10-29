function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    appUrl: 'https://api.realworld.io/api'
  }

  if (env == 'dev') {
    config.userEmail = 'karate233@test.com'
    config.password = '(BG-=78K.WUsbvUV'
  } 
  if (env == 'qa') {
    config.userEmail = 'karate333@test.com'
    config.password = '(BG-=78K.WUsbvUV'
  }

  var accessToken = karate.callSingle('classpath:helpers/CreateToken.feature', config).authToken
  karate.configure('header', {Authorization: 'Token ' + 'accessToken'})

  return config;
}