function number_of_in_array(_array, _val)
{
	var num = 0
	for(var i = 0; i < array_length(_array); i++)
	{
		if _array[i] == _val
		{
			num += 1
		}
	}
	return num
}