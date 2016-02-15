///rnn_encode_string(M)
{
  var result = "",
      n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      if (j > 0) result += ",";
      result += string_format(argument0[i, j], 6, 4);
    }
    if (i < n-1) {
      result += ";";
    }
  }
  return result;
}
