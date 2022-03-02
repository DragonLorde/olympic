let loginText = document.querySelector('.login__text');
let MenuText = document.querySelector('.user__avatar__text__menu');


function render () {
    dataUser = getCookie('name' , true)

    formShow.textContent = 'Выйти'
    formShow.classList.remove('login')
    formShow.classList.add('auth')

    userDataRect(dataUser.login, dataUser.img);

    document.querySelector('.auth').addEventListener('click' , (e) => {
        deleteCookie('name');        
        location.reload()
    });
}


function userDataRect(login, img) {
    loginText.textContent = '';
    MenuText.insertAdjacentHTML("afterbegin", `<a href="">Профиль</a>`)
    loginText.insertAdjacentText("afterbegin" , 
    `${login}`)
    if (img != undefined) {
        loginText.insertAdjacentHTML("afterend" , 
        `<img class="user__avatar" src= '${img}'>`)
    } else {
        loginText.insertAdjacentHTML("afterend" , 
        `<img class="user__avatar" src= 'img/man.svg'>`)
    }
}

console.log(getCookie('name'))

if(getCookie('name') != undefined ) {

    render()
}


