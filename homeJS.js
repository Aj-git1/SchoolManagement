
//function TypingEffect() {
//    return (
//        <Typewriter
//            options={{
//                strings: ['Welcome To SDBD Inter College...', 'The Great Aim of Education is not Knowledge, But Action...', 'We Help You to Learn New Things...'],
//                autoStart: true,
//                loop: true,

//            }}// JavaScript source code
//    )
//}

//window.onload = function () {
//    var textElement = document.querySelector('.text');
//    textElement.innerHTML = 'Welcome to Savitri Devi Bhagwan Das Inter College Bareilly,';
//    textElement.innerHTML = 'The Great Aim of Education is not Knowledge, But Action.., We Help You to Learn New Things..';

//};


var i = 0, text;
text = "Welcome to Savitri Devi Bhagwan Das Inter College Bareilly,"

function typing() {
    if (i < text.length) {
        document.getElementById("text").innerHTML += text.charAt(i);
        i++
        setTimeout(typing, 150);
    }
}
typing();
