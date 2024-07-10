function jam_checker(_value){
	randomize()
	if irandom_range(0, _value) == 0
	{
		with(instance_create_depth(0, 0, -9, obj_temporary_notification))
		{
			notification = "Jammed (Chamber to Resolve)"
		}
		return true
	}
}