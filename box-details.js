document.addEventListener('DOMContentLoaded', function() {
    const viewDetailsLinks = document.querySelectorAll('.view-details');

    viewDetailsLinks.forEach(function(link) {
        link.addEventListener('click', function(event) {
            event.preventDefault();

            // Retrieve the content of the corresponding box
            const box = link.closest('.category');
            const image = box.querySelector('.productimg').style.backgroundImage;
            const title = box.querySelector('p:first-of-type').textContent;
            const price = box.querySelector('p:nth-of-type(2)').textContent;

            // Construct the query parameters
            const queryParams = new URLSearchParams();
            queryParams.set('image', getImageUrl(image));
            queryParams.set('title', title);
            queryParams.set('price', price);

            // Redirect to the detail page with the constructed query parameters
            window.location.href = `detail.html?${queryParams.toString()}`;
        });
    });
});

// Function to extract image URL from background-image CSS property
function getImageUrl(backgroundImage) {
    return backgroundImage.match(/url\(["']?(.*?)["']?\)/)[1];
}
