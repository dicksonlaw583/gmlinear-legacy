///rmn(m, n, ...)
{
  var m = argument[0],
      n = argument[1];
  if (GMLIN_DEBUG_MODE) {
    if (argument_count <= 2) {
      show_error("Expecting at least 3 arguments, got " + string(argument_count) + ".", true);
    }
    else if (argument_count != 2+m*n) {
      show_error("Expecting " + string(m*n) + " entries for " + string(m) + "x" + string(n) + " matrix, got " + string(argument_count-2) + ".", true);
    }
  }
  var mm = 0,
      nn = 0;
  var M;
  for (var i = 2; i < argument_count; i++) {
    M[mm, nn] = argument[i];
    if (++nn == n) {
      mm++;
      nn = 0;
    }
  }
  return M;
}
