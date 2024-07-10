function condition_sprite(_val){
	if _val == 0
	{
		return 0;
	}
	if _val > 75 && _val <= 100
	{
		return 0
	}
	if _val > 50 && _val <= 75
	{
		return 1
	}
	if _val > 25 && _val <= 50
	{
		return 2
	}
	if _val > 0 && _val <= 25
	{
		return 3
	}
	
}