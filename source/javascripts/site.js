//
const $content = document.getElementsByClassName('js-content');
//
$content && window.addEventListener('load', function(){
  for (var c = 0; c < $content.length; c++) {
    toggle($content[c], "o0", "o1");
    toggle($content[c], 'transform-tY0', 'transform-tYm4');
    $content[c].setAttribute('style', 'transition-delay: ' + ((c+1)*0.15) + 's;');
  }
});
//
function toggle($element, classA, classB) {
  $element.classList.toggle(classA);
  $element.classList.toggle(classB);
}
