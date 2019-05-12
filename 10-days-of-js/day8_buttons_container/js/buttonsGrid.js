const btn1 = document.getElementById('btn1');
const btn2 = document.getElementById('btn2');
const btn3 = document.getElementById('btn3');
const btn4 = document.getElementById('btn4');
const btn5 = document.getElementById('btn5');
const btn6 = document.getElementById('btn6');
const btn7 = document.getElementById('btn7');
const btn8 = document.getElementById('btn8');
const btn9 = document.getElementById('btn9');

btn5.onclick = () => {
  [
    btn1.innerHTML,
    btn2.innerHTML,
    btn3.innerHTML,
    btn4.innerHTML,
    btn6.innerHTML,
    btn7.innerHTML,
    btn8.innerHTML,
    btn9.innerHTML,
  ] = [
    btn4.innerHTML,
    btn1.innerHTML,
    btn2.innerHTML,
    btn7.innerHTML,
    btn3.innerHTML,
    btn8.innerHTML,
    btn9.innerHTML,
    btn6.innerHTML,
  ];
};
