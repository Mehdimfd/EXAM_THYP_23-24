function toggleContent(element) {
    var contentDiv = element.nextElementSibling;
    var fileContentDiv = contentDiv.querySelector('#filecontent');
    if (contentDiv.style.display === "none") {
        contentDiv.style.display = "block";
    } else {
        contentDiv.style.display = "none";
    }
}
function toggleNavbar() {
    var x = document.getElementById("navbar");
    if (x.className === "navbar") {
        x.className += " responsive";
    } else {
        x.className = "navbar";
    }
}
function openPopup(imageSrc) {
    document.getElementById('popupImage').src = imageSrc;
    console.log(document.getElementById('popupImage').src)
    currentScale = 1.0; 
    currentScale = 1.0; 
    updateImageTransform();
    document.getElementById('popup').style.display = 'block';
}
function zoomIn() {
    currentScale += 0.1;
    updateImageTransform();
}
function zoomOut() {
    currentScale -= 0.1;
    updateImageTransform();
}
function updateImageTransform() {
    var image = document.getElementById('popupImage');
    image.style.transform = 'scale(' + currentScale + ')';
}
function closePopup() {
    document.getElementById('popup').style.display = 'none';
}

function showPopup(index) {
    var overlay = document.getElementById('popup-overlay-' + index);
    var content = document.getElementById('popup-content-' + index);

    overlay.style.display = 'block';
    content.style.display = 'block';
}

function hidePopup(index) {
    var overlay = document.getElementById('popup-overlay-' + index);
    var content = document.getElementById('popup-content-' + index);

    overlay.style.display = 'none';
    content.style.display = 'none';
}
