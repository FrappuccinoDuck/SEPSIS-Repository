function find_color(_value)
{
	if _value >= 76 //&& _value <= 100
	{
		return c_lime
	}
	else if _value >= 51 && _value < 76
	{
		return c_yellow
	}
	else if _value >= 26 && _value < 51
	{
		return c_orange
	}
	else if  _value < 26
	{
		return c_red
	}
}

