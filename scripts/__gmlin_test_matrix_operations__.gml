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
  var test_rnn_original = r44(4, 8, 12, 16, 3, 6, 9, 12, 2, 4, 6, 8, 1, 2, 3, 4);
  assert_isnt(rnn_clone(test_rnn_original), test_rnn_original, "rnn() clone isn't cloning!");
  assert_equal(rnn_clone(test_rnn_original), test_rnn_original, "rnn() clone is different!");

  //r22_clone_to(M, Mout)
  var test_cloneto_r22 = r22_zero();
  assert_is(r22_clone_to(test_r22_original, test_cloneto_r22), test_cloneto_r22, "r22_clone_to() returned the wrong matrix!");
  assert_isnt(test_cloneto_r22, test_r22_original, "r22_clone_to() is just transferring references!");
  assert_equal(test_cloneto_r22, test_r22_original, "r22_clone_to() clone is different!");
  //r33_clone_to(M, Mout)
  var test_cloneto_r33 = r33_zero();
  assert_is(r33_clone_to(test_r33_original, test_cloneto_r33), test_cloneto_r33, "r33_clone_to() returned the wrong matrix!");
  assert_isnt(test_cloneto_r33, test_r33_original, "r33_clone_to() is just transferring references!");
  assert_equal(test_cloneto_r33, test_r33_original, "r33_clone_to() clone is different!");
  //r44_clone_to(M, Mout)
  var test_cloneto_r44 = r44_zero();
  assert_is(r44_clone_to(test_r44_original, test_cloneto_r44), test_cloneto_r44, "r44_clone_to() returned the wrong matrix!");
  assert_isnt(test_cloneto_r44, test_r44_original, "r44_clone_to() is just transferring references!");
  assert_equal(test_cloneto_r44, test_r44_original, "r44_clone_to() clone is different!");
  //rmn_clone_to(M, Mout)
  var test_cloneto_rmn = rmn_zero(7, 2);
  assert_is(rmn_clone_to(test_rmn_original, test_cloneto_rmn), test_cloneto_rmn, "rmn_clone_to() returned the wrong matrix!");
  assert_isnt(test_cloneto_rmn, test_rmn_original, "rmn_clone_to() is just transferring references!");
  assert_equal(test_cloneto_rmn, test_rmn_original, "rmn_clone_to() clone is different!");
  //rnn_clone_to(M, Mout)
  var test_cloneto_rnn = rnn_zero(4);
  assert_is(rnn_clone_to(test_rnn_original, test_cloneto_rnn), test_cloneto_rnn, "rnn_clone_to() returned the wrong matrix!");
  assert_isnt(test_cloneto_rnn, test_rnn_original, "rnn_clone_to() is just transferring references!");
  assert_equal(test_cloneto_rnn, test_rnn_original, "rnn_clone_to() clone is different!");
}
