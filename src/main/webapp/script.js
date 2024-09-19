let container = document.getElementById('container');

toggle = () => {
    container.classList.toggle('sign-in');
    container.classList.toggle('sign-up');
};

window.onload = function() {
    const urlParams = new URLSearchParams(window.location.search);
    const errorParam = urlParams.get('error');
    const formType = urlParams.get('formType');

    if (errorParam === '1' && formType === 'signIn') {
        container.classList.remove('sign-up');
        container.classList.add('sign-in');
    } else if (errorParam === '1' && formType === 'signUp') {
        container.classList.remove('sign-in');
        container.classList.add('sign-up');
    } else {
        if (formType === 'signUp') {
            container.classList.remove('sign-in');
            container.classList.add('sign-up');
        } else {
            container.classList.remove('sign-up');
            container.classList.add('sign-in');
        }
    }
};
