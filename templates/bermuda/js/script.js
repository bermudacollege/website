window.addEventListener("scroll", () => {
  let scrollPosition = window.scrollY + 80; // Adjust offset if needed

  document.querySelectorAll(".section_content").forEach(section => {
    const top = section.offsetTop;
    const bottom = top + section.offsetHeight;

    if (scrollPosition >= top && scrollPosition < bottom) {
      // Remove active class from all
      document.querySelectorAll(".section_menu ul li a").forEach(link => link.classList.remove("active"));

      // Safely get corresponding menu link
      const currentLink = document.querySelector(`.section_menu ul li a[href="#${section.id}"]`);
      if (currentLink) {
        currentLink.classList.add("active");
      }
    }
  });
});

// Active class on click
document.querySelectorAll(".section_menu ul li a").forEach(link => {
  link.addEventListener("click", function () {
    document.querySelectorAll(".section_menu ul li").forEach(l => l.classList.remove("active"));
    this.classList.add("active");
  });
});

/*============ Selectpicker Start ============*/
 $(document).ready( function() {
 	//$('.selectpicker').selectpicker();	
	if($('.sub-menu .menu-item').length>0){

		$(document).on('click', '.menu-item > h6', function(e) {
			e.preventDefault(); // just in case it's inside a link

			const $clicked = $(this);
			const $menuItem = $clicked.closest('.menu-item');
			const $submenu = $menuItem.children('ul');

			// Close other open submenus in the same .sub-menu
			$menuItem
				.siblings()
				.children('ul')
				.slideUp();

			// Toggle current submenu
			$submenu.slideToggle();
		});
		$(document).on('click', '.nav-menu > ul > li > .collapse', function(e) {
			e.preventDefault();
			$(this).parent().siblings().find('.sub-menu').slideUp();
			$(this).parent().find('.sub-menu').slideToggle();
			$(this).toggleClass('active')
		});		
	}
	if($('.hamburger').length>0){
		$(".hamburger").click(function(){
			$(this).toggleClass("is-active");
			$('body').toggleClass('show-menu')
		});	
		$(".searchbox .icon").click(function(){
			$(this).parent().toggleClass("is-active");
		});			
	}
	if($(window).width() < 991){
		$(document).on('click', '.topbar-menu .menu-item > a', function(e) {
			e.preventDefault();
			$(this).parent().siblings().find('.sub-menu').slideUp();
			$(this).parent().find('.sub-menu').slideToggle();
			$('.topbar-menu .menu-item > a').removeClass('active')
			$(this).toggleClass('active')
		});				
	}


	if($('.home-slider').length>0){
		$('.home-slider').slick({
			dots: false,
			arrows:true,
			appendArrows: $('.slick-nav'),
			prevArrow: '<button type="button" data-role="none" class="slick-prev" aria-label="Previous" tabindex="0" role="button"><svg width="53" height="53" viewBox="0 0 53 53" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M23.4133 28.0926L34.1576 28.0926C35.0357 28.0926 35.7476 27.3807 35.7476 26.5026C35.7476 25.6245 35.0357 24.9126 34.1576 24.9126L23.4082 24.9126L26.3168 22.002C26.9376 21.3811 26.9374 20.3743 26.3162 19.7536C25.695 19.1328 24.6882 19.133 24.0675 19.7542L18.4747 25.3506C18.1703 25.6404 17.9806 26.0493 17.9806 26.5026C17.9806 26.9828 18.1934 27.4131 18.5299 27.7048L24.0675 33.2462C24.6882 33.8673 25.695 33.8677 26.3162 33.247C26.9373 32.6263 26.9376 31.6196 26.3168 30.9985L23.4133 28.0926Z" fill="#019CA8"/><path fill-rule="evenodd" clip-rule="evenodd" d="M48.0644 26.5019C48.0644 38.2094 38.5725 47.7 26.8653 47.6999C15.158 47.6999 5.66613 38.2094 5.66613 26.5019C5.66613 14.7946 15.158 5.30398 26.8653 5.30398C38.5725 5.30398 48.0644 14.7946 48.0644 26.5019ZM26.8653 44.5199C36.8165 44.52 44.8844 36.4529 44.8844 26.5019C44.8844 16.551 36.8165 8.48398 26.8653 8.48398C16.9142 8.48398 8.84613 16.551 8.84613 26.5019C8.84613 36.4529 16.9142 44.5199 26.8653 44.5199Z" fill="#019CA8"/></svg></button>',
			nextArrow: '<button type="button" data-role="none" class="slick-next" aria-label="Next" tabindex="0" role="button"><svg width="53" height="53" viewBox="0 0 53 53" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M29.5867 24.9074H18.8424C17.9643 24.9074 17.2524 25.6193 17.2524 26.4974C17.2524 27.3755 17.9643 28.0874 18.8424 28.0874H29.5918L26.6832 30.998C26.0624 31.6189 26.0626 32.6257 26.6838 33.2464C27.305 33.8672 28.3118 33.867 28.9325 33.2458L34.5253 27.6494C34.8297 27.3596 35.0194 26.9507 35.0194 26.4974C35.0194 26.0172 34.8066 25.5869 34.4701 25.2952L28.9325 19.7538C28.3118 19.1327 27.305 19.1323 26.6838 19.753C26.0626 20.3737 26.0624 21.3804 26.6832 22.0015L29.5867 24.9074Z" fill="#019CA8"/><path fill-rule="evenodd" clip-rule="evenodd" d="M4.93561 26.4981C4.93561 14.7906 14.4275 5.30005 26.1347 5.30005C37.842 5.30005 47.3339 14.7906 47.3339 26.4981C47.3339 38.2054 37.842 47.696 26.1347 47.696C14.4275 47.696 4.93561 38.2054 4.93561 26.4981ZM26.1347 8.48005C16.1835 8.48005 8.11561 16.5471 8.11561 26.4981C8.11561 36.449 16.1835 44.516 26.1347 44.516C36.0858 44.516 44.1539 36.449 44.1539 26.4981C44.1539 16.5471 36.0858 8.48005 26.1347 8.48005Z" fill="#019CA8"/></svg></button>',
			infinite: true,
			speed: 500,
			fade: true,
			cssEase: 'linear',			
			autoplay: true,
  			autoplaySpeed: 3000,
			slidesToShow: 1,
			slidesToScroll:1,
			responsive: [
				{
					breakpoint: 1024,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1,
					}
				},
				{
					breakpoint: 600,
					settings: {
						slidesToShow: 1,
						slidesToScroll:1
					}
				},
				{
					breakpoint: 480,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1
					}
				}
			]
		});
	}
	if($('.keeptouch-slider').length>0){
		$('.keeptouch-slider').slick({
			dots: false,
			arrows:true,
			//appendArrows: $('.slick-nav'),
			prevArrow: '<button type="button" data-role="none" class="slick-prev" aria-label="Previous" tabindex="0" role="button"><svg width="22" height="17" viewBox="0 0 22 17" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9.35347 0.160004C9.72147 0.160004 10.0735 0.272004 10.4095 0.496004C10.7455 0.704004 11.0255 0.976003 11.2495 1.312C11.4575 1.648 11.5615 1.984 11.5615 2.32C11.5615 2.704 11.4015 3.112 11.0815 3.544C10.7615 3.976 10.3855 4.4 9.95347 4.816C9.50547 5.248 9.11347 5.616 8.77747 5.92L18.6895 5.92C19.6015 5.92 20.2495 5.992 20.6335 6.136C21.0175 6.28 21.3215 6.52 21.5455 6.856C21.7695 7.176 21.8815 7.624 21.8815 8.2C21.8815 8.776 21.7775 9.224 21.5695 9.544C21.3455 9.864 21.0415 10.104 20.6575 10.264C20.2735 10.408 19.6175 10.48 18.6895 10.48L8.77747 10.48L9.95347 11.608C10.6095 12.248 11.0415 12.736 11.2495 13.072C11.4575 13.424 11.5615 13.76 11.5615 14.08C11.5615 14.416 11.4575 14.752 11.2495 15.088C11.0415 15.424 10.7695 15.696 10.4335 15.904C10.0815 16.128 9.72147 16.24 9.35347 16.24C9.03347 16.24 8.68947 16.136 8.32147 15.928C7.95347 15.736 7.52147 15.4 7.02547 14.92L0.113467 8.2L6.88147 1.624C7.45747 1.08 7.92947 0.704004 8.29747 0.496004C8.66547 0.272004 9.01747 0.160004 9.35347 0.160004Z" fill="#019CA8"/></svg></button>',
			nextArrow: '<button type="button" data-role="none" class="slick-next" aria-label="Next" tabindex="0" role="button"><svg width="22" height="17" viewBox="0 0 22 17" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12.6465 16.84C12.2785 16.84 11.9265 16.728 11.5905 16.504C11.2545 16.296 10.9745 16.024 10.7505 15.688C10.5425 15.352 10.4385 15.016 10.4385 14.68C10.4385 14.296 10.5985 13.888 10.9185 13.456C11.2385 13.024 11.6145 12.6 12.0465 12.184C12.4945 11.752 12.8865 11.384 13.2225 11.08H3.31053C2.39853 11.08 1.75053 11.008 1.36653 10.864C0.982531 10.72 0.678531 10.48 0.454531 10.144C0.230531 9.824 0.118531 9.376 0.118531 8.8C0.118531 8.224 0.222531 7.776 0.430531 7.456C0.654531 7.136 0.958531 6.896 1.34253 6.736C1.72653 6.592 2.38253 6.52 3.31053 6.52H13.2225L12.0465 5.392C11.3905 4.752 10.9585 4.264 10.7505 3.928C10.5425 3.576 10.4385 3.24 10.4385 2.92C10.4385 2.584 10.5425 2.248 10.7505 1.912C10.9585 1.576 11.2305 1.304 11.5665 1.096C11.9185 0.871999 12.2785 0.759999 12.6465 0.759999C12.9665 0.759999 13.3105 0.863999 13.6785 1.072C14.0465 1.264 14.4785 1.6 14.9745 2.08L21.8865 8.8L15.1185 15.376C14.5425 15.92 14.0705 16.296 13.7025 16.504C13.3345 16.728 12.9825 16.84 12.6465 16.84Z" fill="#019CA8"/></svg></button>',
			infinite: true,
			speed: 500,
			centerMode: true,
			centerPadding: '188	px',
			//fade: true,
			cssEase: 'linear',			
			autoplay: true,
  			autoplaySpeed: 3000,
			slidesToShow: 3,
			slidesToScroll:1,
			responsive: [
				{
					breakpoint: 1024,
					settings: {
						slidesToShow: 3,
						slidesToScroll: 1,
					}
				},
				{
					breakpoint: 600,
					settings: {
						slidesToShow: 2,
						slidesToScroll:2
					}
				},
				{
					breakpoint: 480,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1
					}
				}
			]
		});
	}

	if($(".accordion").length>0){
		$(".accordion").click(function () {
			$(this).toggleClass("active");
			$(this).next(".panel").slideToggle(200);
		});
		$("#expandAll").click(function () {
			$(".accordion").addClass("active");
			$(".panel").slideDown(200);
		});
		$("#collapseAll").click(function () {
			$(".accordion").removeClass("active");
			$(".panel").slideUp(200);
		});
 	}
});

/*============ Selectpicker End ============*/ 