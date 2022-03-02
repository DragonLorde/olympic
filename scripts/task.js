if(getCookie('name') == undefined ) {
    document.querySelector('.coments__form').style.display = 'none';
}

function setPost(e) {
    let coke = getCookie('name', true);
    data = {
        'login': coke.login ,
        'text': '',
        'id': e.parentElement.parentElement.querySelector('.id').textContent,
        'uuid': coke.uuid
    };


    let inputs = e.querySelector('input');
    let btn = e.querySelector('button');
    btn.style.display = 'none';

    data.text = inputs.value;
    
    axios
        .post('/core/task.php' , data)
        .then(response => {
            props = response.data;
            
            rower(props);
            btn.style.display = 'block';
        })
        .catch((e) => console.log(e));

    data = null;
}
function getTask() {
    data = null;
    axios
        .post('/core/task.php' , data)
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
                    <p class="post__login"> ${prop.loginTask}  </p>
                    <p class="post__login id"> ${prop.id}  </p>
                    <p class="post__text">
                            ${prop.text}
                        <br>
                    </p>
                    <div class="post__comments">
                        <div class="post__comments-col">
                           ${rows(prop.ColCom)}
                        </div>
                    <form onsubmit="setPost(this); return false;" class="coments__form">
                        <input type="text" required>
                        <button class="coments__btn"><img src="img/send.svg" alt=""></button>
                    </form>
                </div>
        </div>
        `)
    }
}
getTask();

function rows (arr) {
    let row = '';
    for(let prop of arr) {
        console.log(prop);
        row += " <div class='post__comments-row'> <p class='post__comments-login'> " +  
            prop.login
        + "</p> <p class='post__comments-text'>"+
            prop.textComment
        +"</p></div>"
    }
        return row
}


/* <div class="post__comments-row">
                                <p class="post__comments-login">
                                    ${prop.login} <span> ${prop.date} </span>
                                </p>
                                <p class="post__comments-text">
                                    ${prop.textComment}
                                </p>
                            </div> */


                        //     <div class="post__comments">
                        //     <div class="post__comments-col">
                        //     </div>
                        //     <form onsubmit="setPost(this); return false;" class="coments__form">
                        //         <input type="text" required>
                        //         <button class="coments__btn"><img src="img/send.svg" alt=""></button>
                        //     </form>
                        // </div>