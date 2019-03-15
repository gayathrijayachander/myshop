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
	
	var products = [
		
		['1', 'ABC'],
		['2', 'BBB'],
		['3', 'CCC'],
		['4', 'DDD'],
		['5', 'EEE'],
		['6', 'FFF'],
		['7', 'GGG'],
		['8', 'HHH'],
		
	];
	
	var $table = $('#productListTable');
	// execute the below code only where we have this table
	if ($table.length) {
		console.log('Inside the table!');
		
	
	}
	
});
		
