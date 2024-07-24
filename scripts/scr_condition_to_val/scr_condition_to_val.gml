function condition_to_val(_condition){
	if _condition > 75 
	{
		return 0;
	}
	if _condition <= 75 && _condition > 50
	{
		return 1;
	}
	if _condition <= 50 && _condition > 25
	{
		return 2;
	}
	if _condition <= 25
	{
		return 3;
	}
}