function approach(_start, _ending, _difference){
	var result
	if _start < _ending
	{
		result = min(_start + _difference, _ending)
		
	} else
	{
		result = max(_start - _difference, _ending)
	}
	return result
	
}