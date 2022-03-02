// setCookie('name', '1255');
// console.log(getCookie('name'));


function authIs() {
    data = {
        'login':'',
        'pass': ''
    };
    
    let inputs = document.querySelector('form');
    let button = document.querySelector('.auth__bt');
    let er = document.querySelector('.eroor');

    button.style.display = 'none';


    for(let prop of inputs) {
        if(prop.type == 'text') {
            data.login = prop.value;
        } else if (prop.type == 'password') {
            data.pass = prop.value;
        }
    }

    axios
        .post('/core/auth.php' , data)
        .then(response => {
            props = response.data;
            if (props.code == 201) {
                setCookie('name', {
                    'uuid': props.uuid , 
                    'login': props.login
                });
                form.classList.add('hide');
                console.log(getCookie('name', true));
                location.reload();
            } else {
                button.style.display = 'block';
                er.textContent = 'Invalid name or pass!'
            }
        })
        .catch((e) => console.log(e));

    data = null;
}

