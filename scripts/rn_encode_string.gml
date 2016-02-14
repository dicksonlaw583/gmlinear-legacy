///rn_encode_string(v)
{
  var v_dim = array_length_1d(argument0);
  var result = "";
  for (var i = 0; i < v_dim; i++) {
    if (i != 0) {
      result += ",";
    }
    result += string_format(argument0[i], 15, 14);
  }
  return string_replace_all(result, ' ', '');
}
