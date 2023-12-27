const regExp_phone = /010-\d{4}-\d{4}/;

const regExp_pw = /(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=]){8,16}/;

const regExp_id = /(?=.*[0-9]){8,10}/;

document.addEventListener("DOMContentLoaded", function () {

const frm = document.forms['frm_Join'];



frm.querySelector('#join_btn').addEventListener("click", function () {

    if (document.getElementById('member_id').value == '') {

      alert("아이디가 입력되지 않았습니다");

      document.querySelector('#member_id').focus();

    } else if (!regExp_id.test(document.getElementById('member_id').value)) {

      alert("아이디는 8글자 이상 10글자 이하로 숫자를 1개 이상 포함해야 합니다");

      document.querySelector('#member_id').focus();

    } else {

      document.querySelector('#member_pw').focus();

    }

  });





    document.querySelector('#frm_Join').addEventListener('submit', function(e) {



    let isValid = false;



    const password = document.querySelector('#member_pw').value;

    const confirmPassword = document.querySelector('#re_pw').value;

    

    if (password !== confirmPassword) {

        alert('비밀번호가 일치하지 않습니다.');

        document.querySelector('#re_pw').focus();

        isValid = false;

        e.preventDefault();

    }else if (document.querySelector('#member_name').value == '') {

        alert('이름을 입력해주세요.');

        document.querySelector('#member_name').focus();

        isValid = false;

    }else if(document.querySelector('#member_year').value == '') {

        alert('생년을 입력해주세요.');

        document.querySelector('#member_year').focus();

        isValid = false;

    }else if (document.querySelector('#member_id').value == '') {

        alert('아이디를 작성해주세요.');

        document.querySelector('#member_id').focus();

        isValid = false;

    }else if (document.querySelector('#member_pw').value == '') {

        alert('비밀번호를 설정해주세요.');

        document.querySelector('#member_pw').focus();

        isValid = false;

    }else if (!regExp_pw.test(document.querySelector('#member_pw').value)) {

        alert("비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.");

        document.querySelector('#member_pw').focus();

    }else if (document.querySelector('#re_pw').value == '') {

        alert('비밀번호 확인을 위해 재입력칸을 입력 해주세요')

        document.querySelector('#re_pw').focus();

        isValid = false;

    }else if (document.querySelector('#handphone').value == '') {

        alert('연락처를 입력해주세요.');

        document.querySelector('#handphone').focus();

        isValid = false;

    }else if (!regExp_phone.test(document.querySelector('#handphone').value)) {

        alert("전화번호는 010-숫자4자리-숫자4자리 로 입력해야 합니다");

        document.querySelector('#handphone').focus();

        isValid = false;

    }else if (document.querySelector('#email').value == '') {

        alert('이메일주소를 입력해주세요');

        document.querySelector('#email').focus();

        isValid = false;



    }else {

        isValid = true;

    }if (!isValid) {

        e.preventDefault();

        e.stopPropagation();

    }else {

        alert('회원가입을 완료했습니다.');

        alert('로그인 페이지로 넘어갑니다.')

    }

  });





  

});