///r22_transpose(M)
{
  var M_new;
  M_new[0, 0] = argument0[0, 0];
  M_new[0, 1] = argument0[1, 0];
  M_new[1, 0] = argument0[0, 1];
  M_new[1, 1] = argument0[1, 1];
  return M_new;
}
