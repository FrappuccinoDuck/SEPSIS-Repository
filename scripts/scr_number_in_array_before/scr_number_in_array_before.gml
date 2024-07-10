function number_in_array_before(_array, _val, _spot)
{
	var num = 0
	for(var f = 0; f < _spot; f++)
	{
		if f < _spot
		{
			if _array[f] == _val
			{
				num += 1
			}
		} else
		{
			return num
		}
	}
}