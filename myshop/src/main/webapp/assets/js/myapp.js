$(function()  {
	
	switch(menu)
{
	
	case 'About Us':
		$about('#about').addClass('active');
		break;
	case 'Contact Us':
		$about('#contact').addClass('active');
		break;
	default:
		$about('#home').addClass('active');
		break;



}	
	
	
	
});
		
