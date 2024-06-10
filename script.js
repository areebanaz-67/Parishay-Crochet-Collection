class ImageSlider {
    constructor(images) {
      this.images = images;
      this.currentSlide = 0;
      this.slider = document.querySelector('.sliderimages');
      this.prevButton = document.getElementById('prev-btn');
      this.nextButton = document.getElementById('next-btn');
  
      this.prevButton.addEventListener('click', this.prevSlide.bind(this));
      this.nextButton.addEventListener('click', this.nextSlide.bind(this));
  
      this.showSlide(this.currentSlide);
      setInterval(this.nextSlide.bind(this), 5000); // Auto slide every 5 seconds
    }
  
    showSlide(slideIndex) {
      this.slider.querySelector('img').src = this.images[slideIndex];
    }
  
    nextSlide() {
      this.currentSlide = (this.currentSlide + 1) % this.images.length;
      this.showSlide(this.currentSlide);
    }
  
    prevSlide() {
      this.currentSlide = (this.currentSlide - 1 + this.images.length) % this.images.length;
      this.showSlide(this.currentSlide);
    }
  }
  
  document.addEventListener('DOMContentLoaded', function() {
    const images = ['decor.png', 'img_e5128.webp', '1-1-scaled.jpg','easy-crochet-patterns-a88842b.webp','OIP.jpeg'];
    const imageSlider = new ImageSlider(images);
  });


// FOR LOGO TO HOMEPAGE RENDERING
document.addEventListener('DOMContentLoaded', function() {
  const logo = document.querySelector('.logo');

  // Add click event listener to the logo
  logo.addEventListener('click', function(event) {
    // Prevent the default behavior of the anchor tag
    event.preventDefault();
    
    // Navigate to the home page
    window.location.href = 'index.html';
  });

});