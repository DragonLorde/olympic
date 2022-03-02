if(getCookie('name') != undefined ) {
    prof()
}


function prof() {
    let login = document.querySelector('.main__login')
    let cnt = document.querySelector('.main__count')
    let login2 = getCookie('name' , true).login
    
    data = {
        'login': login2
    }


        axios
            .post('/core/cnt.php' , data)
            .then(response => {
                props = response.data;
                cnt.textContent = 'Количиство ващих ответов: ' + props.count
            })
            .catch((e) => console.log(e));
    

        login.textContent = 'Ваш логин: ' + login2
}


