///r2_lerp_to(v1, v2, amount, vout)
{
  argument3[@ 0] = lerp(argument0[0], argument1[0], argument2);
  argument3[@ 1] = lerp(argument0[1], argument1[1], argument2);
  return argument3;
}
