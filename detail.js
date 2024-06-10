document.addEventListener('DOMContentLoaded', function() {
    const urlParams = new URLSearchParams(window.location.search);
    const productImage = urlParams.get('image');
    const productTitle = urlParams.get('title');
    const productPrice = urlParams.get('price');

    document.getElementById('product-image').src = productImage;
    document.getElementById('product-title').textContent = productTitle;
    document.getElementById('product-price').textContent = productPrice;
});
