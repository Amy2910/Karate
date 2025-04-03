/*function fn() {
    var env = 'dev'
    var config = {
        urlServeur : 'https://restful-booker.herokuapp.com/auth'
    };

    if (env == 'recette'){
        config.urlServeur = 'https://jsonplaceholder.typicode.com/posts/'
    }

karate.configure('connectTimeout', 5000);
karate.configure('readTimeout', 5000);
karate.configure('ssl', {trustAll: true});
return config;
};*/

function fn() {
    return { baseUrl: 'https://xray.cloud.getxray.app/api/v2' };
}
