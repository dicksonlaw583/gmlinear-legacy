{
  //r22_clone
  var test_r22_original = r22(1, 4, 9, 16);
  assert_isnt(r22_clone(test_r22_original), test_r22_original, "r22() clone isn't cloning!");
  assert_equal(r22_clone(test_r22_original), test_r22_original, "r22() clone is different!");
  //r33_clone
  var test_r33_original = r33(4, 9, 2, 3, 5, 7, 8, 1, 6);
  assert_isnt(r33_clone(test_r33_original), test_r33_original, "r33() clone isn't cloning!");
  assert_equal(r33_clone(test_r33_original), test_r33_original, "r33() clone is different!");
  //r44_clone
  var test_r44_original = r44(1, 2, 3, 4, 2, 4, 6, 8, 3, 6, 9, 12, 4, 8, 12, 16);
  assert_isnt(r44_clone(test_r44_original), test_r44_original, "r44() clone isn't cloning!");
  assert_equal(r44_clone(test_r44_original), test_r44_original, "r44() clone is different!");
  //rmn_clone
  var test_rmn_original = rmn(7, 2, 2, 4, 3, 6, 5, 10, 7, 14, 11, 22, 13, 26, 17, 34);
  assert_isnt(rmn_clone(test_rmn_original), test_rmn_original, "rmn() clone isn't cloning!");
  assert_equal(rmn_clone(test_rmn_original), test_rmn_original, "rmn() clone is different!");
  //rnn_clone
  assert_isnt(rnn_clone(test_r44_original), test_r44_original, "rnn() clone isn't cloning!");
  assert_equal(rnn_clone(test_r44_original), test_r44_original, "rnn() clone is different!");
}
