///r4_add_to(v1, v2, vout)
{
  argument2[@ 0] = argument0[0]+argument1[0];
  argument2[@ 1] = argument0[1]+argument1[1];
  argument2[@ 2] = argument0[2]+argument1[2];
  argument2[@ 3] = argument0[3]+argument1[3];
  return argument2;
}
