///r4_scale_to(v, r, vout)
{
  argument2[@ 0] = argument1*argument0[0];
  argument2[@ 1] = argument1*argument0[1];
  argument2[@ 2] = argument1*argument0[2];
  argument2[@ 3] = argument1*argument0[3];
  return argument2;
}
