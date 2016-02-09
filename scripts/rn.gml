///rn(x0, x1, [x2], [...])
{
  var v;
  for (var i = 0; i < argument_count; i++) {
    v[i] = argument[i];
  }
  return v;
}
