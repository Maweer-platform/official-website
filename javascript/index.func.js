const slides = document.querySelectorAll(".section");
for (const el of slides) {
  const colorAttr = el.getAttribute("data-background-color");
  if (!colorAttr) {
    continue;
  }
  el.style.backgroundColor = colorAttr;
}
