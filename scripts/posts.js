if(getCookie('name') == undefined ) {
    document.querySelector('.set__post').style.display = 'none';
}

function setPost() {
    let coke = getCookie('name', true);
    data = {
        'login': coke.login ,
        'text': '',
        'uuid': coke.uuid
    };
    
    let inputs = document.querySelector('.set__post');

    for(let prop of inputs) {
        if(prop.type == 'textarea') {
            data.text = prop.value;
        }
    }

    axios
        .post('/core/posts.php' , data)
        .then(response => {
            props = response.data;
            console.log(props);
            rower(props);
        })
        .catch((e) => console.log(e));

    data = null;
}
function getPost() {
    data = null;
    axios
        .post('/core/posts.php' , data)
        .then(response => {
            props = response.data;
            rower(props);
        })
        .catch((e) => console.log(e));
}


function rower (data) {
    let col = document.querySelector('.post__column');
    col.textContent = ' ';
    for(let prop of data) {
        col.insertAdjacentHTML("afterbegin", 
        `
        <div class="post__row">
                    <p class="post__login"> ${prop.login} Дата: ${prop.date} </p>
                    <p class="post__text">
                        ${prop.text}
                        <br>
                    </p>
                </div>
        `);
    }
}

getPost();