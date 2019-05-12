const res = document.getElementById('res');

document.getElementById('btns').addEventListener('click', (e) => {
  const c = (e.target || e.srcElement).textContent;
  const replace = res.textContent.replace(/\b(?=\d)/g, '0b');

  switch (c) {
    case '0':
    case '1':
    case '+':
    case '-':
    case '*':
    case '/':
      res.textContent += c;
      break;
    case 'C':
      res.textContent = '';
      break;
    case '=':
      res.textContent = Math.floor(eval(replace)).toString(2);
      break;
    default:
  }
});
