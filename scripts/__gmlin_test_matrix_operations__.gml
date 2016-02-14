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
  
  
  //r22_add(M1, M2)
  var test_r22_add_M1 = r22(1, 2, 3, 4),
      test_r22_add_M2 = r22(5, 6, 7, 8),
      test_r22_add_solution = r22(6, 8, 10, 12);
  assert_equal(r22_add(test_r22_add_M1, test_r22_add_M2), test_r22_add_solution, "r22_add() failed!");
  //r33_add(M1, M2)
  var test_r33_add_M1 = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
      test_r33_add_M2 = r33(-9, -8, -7, -6, -5, -4, -3, -2, -1),
      test_r33_add_solution = r33(-8, -6, -4, -2, 0, 2, 4, 6, 8);
  assert_equal(r33_add(test_r33_add_M1, test_r33_add_M2), test_r33_add_solution, "r33_add() failed!");
  //r44_add(M1, M2)
  var test_r44_add_M1 = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      test_r44_add_M2 = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
      test_r44_add_solution = r44(21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51);
  assert_equal(r44_add(test_r44_add_M1, test_r44_add_M2), test_r44_add_solution, "r44_add() failed!");
  //rmn_add(M1, M2)
  var test_rmn_add_M1 = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
      test_rmn_add_M2 = rmn(5, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
      test_rmn_add_solution = rmn(5, 2, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24);
  assert_equal(rmn_add(test_rmn_add_M1, test_rmn_add_M2), test_rmn_add_solution, "rmn_add() failed on 5x2!");
  assert_equal(rmn_add(test_r22_add_M1, test_r22_add_M2), test_r22_add_solution, "rmn_add() failed on 2x2!");
  assert_equal(rmn_add(test_r33_add_M1, test_r33_add_M2), test_r33_add_solution, "rmn_add() failed on 3x3!");
  assert_equal(rmn_add(test_r44_add_M1, test_r44_add_M2), test_r44_add_solution, "rmn_add() failed on 4x4!");
  //rnn_add(M1, M2)
  assert_equal(rnn_add(test_r22_add_M1, test_r22_add_M2), test_r22_add_solution, "rnn_add() failed on 2x2!");
  assert_equal(rnn_add(test_r33_add_M1, test_r33_add_M2), test_r33_add_solution, "rnn_add() failed on 3x3!");
  assert_equal(rnn_add(test_r44_add_M1, test_r44_add_M2), test_r44_add_solution, "rnn_add() failed on 4x4!");
  
  //r22_add_to(M1, M2, Mout)
  var test_r22_add_to_M1_orig = r22(1, 2, 3, 4),
      test_r22_add_to_M2_orig = r22(5, 6, 7, 8),
      test_r22_add_to_solution = r22(6, 8, 10, 12),
      test_r22_add_to_M1 = r22_clone(test_r22_add_to_M1_orig),
      test_r22_add_to_M2 = r22_clone(test_r22_add_to_M2_orig),
      test_r22_add_to_Mout = r22_zero();
  assert_is(r22_add_to(test_r22_add_to_M1, test_r22_add_to_M2, test_r22_add_to_Mout), test_r22_add_to_Mout, "r22_add_to() is returning the wrong matrix!");
  assert_equal(test_r22_add_to_Mout, test_r22_add_to_solution, "r22_add_to() failed!");
  test_r22_add_to_Mout = r22_zero();
  assert_is(r22_add_to(test_r22_add_to_M1, test_r22_add_to_M2, test_r22_add_to_M1), test_r22_add_to_M1, "r22_add_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_r22_add_to_M1, test_r22_add_to_solution, "r22_add_to() failed when Mout is M1!");
  r22_clone_to(test_r22_add_to_M1_orig, test_r22_add_to_M1);
  assert_is(r22_add_to(test_r22_add_to_M1, test_r22_add_to_M2, test_r22_add_to_M2), test_r22_add_to_M2, "r22_add_to() is returning the wrong matrix when Mout is M2!");
  assert_equal(test_r22_add_to_M2, test_r22_add_to_solution, "r22_add_to() failed when Mout is M2!");
  r22_clone_to(test_r22_add_to_M2_orig, test_r22_add_to_M2);
  //r33_add_to(M1, M2, Mout)
  var test_r33_add_to_M1_orig = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
      test_r33_add_to_M2_orig = r33(-9, -8, -7, -6, -5, -4, -3, -2, -1),
      test_r33_add_to_solution = r33(-8, -6, -4, -2, 0, 2, 4, 6, 8),
      test_r33_add_to_M1 = r33_clone(test_r33_add_to_M1_orig),
      test_r33_add_to_M2 = r33_clone(test_r33_add_to_M2_orig),
      test_r33_add_to_Mout = r33_zero();
  assert_is(r33_add_to(test_r33_add_to_M1, test_r33_add_to_M2, test_r33_add_to_Mout), test_r33_add_to_Mout, "r33_add_to() is returning the wrong matrix!");
  assert_equal(test_r33_add_to_Mout, test_r33_add_to_solution, "r33_add_to() failed!");
  test_r33_add_to_Mout = r33_zero();
  assert_is(r33_add_to(test_r33_add_to_M1, test_r33_add_to_M2, test_r33_add_to_M1), test_r33_add_to_M1, "r33_add_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_r33_add_to_M1, test_r33_add_to_solution, "r33_add_to() failed when Mout is M1!");
  r33_clone_to(test_r33_add_to_M1_orig, test_r33_add_to_M1);
  assert_is(r33_add_to(test_r33_add_to_M1, test_r33_add_to_M2, test_r33_add_to_M2), test_r33_add_to_M2, "r33_add_to() is returning the wrong matrix when Mout is M2!");
  assert_equal(test_r33_add_to_M2, test_r33_add_to_solution, "r33_add_to() failed when Mout is M2!");
  r33_clone_to(test_r33_add_to_M2_orig, test_r33_add_to_M2);
  //r44_add_to(M1, M2, Mout)
  var test_r44_add_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      test_r44_add_to_M2_orig = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
      test_r44_add_to_solution = r44(21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51),
      test_r44_add_to_M1 = r44_clone(test_r44_add_to_M1_orig),
      test_r44_add_to_M2 = r44_clone(test_r44_add_to_M2_orig),
      test_r44_add_to_Mout = r44_zero();
  assert_is(r44_add_to(test_r44_add_to_M1, test_r44_add_to_M2, test_r44_add_to_Mout), test_r44_add_to_Mout, "r44_add_to() is returning the wrong matrix!");
  assert_equal(test_r44_add_to_Mout, test_r44_add_to_solution, "r44_add_to() failed!");
  test_r44_add_to_Mout = r44_zero();
  assert_is(r44_add_to(test_r44_add_to_M1, test_r44_add_to_M2, test_r44_add_to_M1), test_r44_add_to_M1, "r44_add_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_r44_add_to_M1, test_r44_add_to_solution, "r44_add_to() failed when Mout is M1!");
  r44_clone_to(test_r44_add_to_M1_orig, test_r44_add_to_M1);
  assert_is(r44_add_to(test_r44_add_to_M1, test_r44_add_to_M2, test_r44_add_to_M2), test_r44_add_to_M2, "r44_add_to() is returning the wrong matrix when Mout is M2!");
  assert_equal(test_r44_add_to_M2, test_r44_add_to_solution, "r44_add_to() failed when Mout is M2!");
  r44_clone_to(test_r44_add_to_M2_orig, test_r44_add_to_M2);
  //rmn_add_to(M1, M2, Mout)
  var test_rmn_add_to_M1_orig = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
      test_rmn_add_to_M2_orig = rmn(5, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
      test_rmn_add_to_solution = rmn(5, 2, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24),
      test_rmn_add_to_M1 = rmn_clone(test_rmn_add_to_M1_orig),
      test_rmn_add_to_M2 = rmn_clone(test_rmn_add_to_M2_orig),
      test_rmn_add_to_Mout = rmn_zero(5, 2);
  assert_is(rmn_add_to(test_rmn_add_to_M1, test_rmn_add_to_M2, test_rmn_add_to_Mout), test_rmn_add_to_Mout, "rmn_add_to() is returning the wrong matrix!");
  assert_equal(test_rmn_add_to_Mout, test_rmn_add_to_solution, "rmn_add_to() failed!");
  test_rmn_add_to_Mout = rmn_zero(5, 2);
  assert_is(rmn_add_to(test_rmn_add_to_M1, test_rmn_add_to_M2, test_rmn_add_to_M1), test_rmn_add_to_M1, "rmn_add_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_rmn_add_to_M1, test_rmn_add_to_solution, "rmn_add_to() failed when Mout is M1!");
  rmn_clone_to(test_rmn_add_to_M1_orig, test_rmn_add_to_M1);
  assert_is(rmn_add_to(test_rmn_add_to_M1, test_rmn_add_to_M2, test_rmn_add_to_M2), test_rmn_add_to_M2, "rmn_add_to() is returning the wrong matrix when Mout is M2!");
  assert_equal(test_rmn_add_to_M2, test_rmn_add_to_solution, "rmn_add_to() failed when Mout is M2!");
  rmn_clone_to(test_rmn_add_to_M2_orig, test_rmn_add_to_M2);
  //rnn_add_to(M1, M2, Mout)
  var test_rnn_add_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      test_rnn_add_to_M2_orig = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
      test_rnn_add_to_solution = r44(21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51),
      test_rnn_add_to_M1 = rnn_clone(test_rnn_add_to_M1_orig),
      test_rnn_add_to_M2 = rnn_clone(test_rnn_add_to_M2_orig),
      test_rnn_add_to_Mout = rnn_zero(4);
  assert_is(rnn_add_to(test_rnn_add_to_M1, test_rnn_add_to_M2, test_rnn_add_to_Mout), test_rnn_add_to_Mout, "rnn_add_to() is returning the wrong matrix!");
  assert_equal(test_rnn_add_to_Mout, test_rnn_add_to_solution, "rnn_add_to() failed!");
  test_rnn_add_to_Mout = rnn_zero(4);
  assert_is(rnn_add_to(test_rnn_add_to_M1, test_rnn_add_to_M2, test_rnn_add_to_M1), test_rnn_add_to_M1, "rnn_add_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_rnn_add_to_M1, test_rnn_add_to_solution, "rnn_add_to() failed when Mout is M1!");
  rnn_clone_to(test_rnn_add_to_M1_orig, test_rnn_add_to_M1);
  assert_is(rnn_add_to(test_rnn_add_to_M1, test_rnn_add_to_M2, test_rnn_add_to_M2), test_rnn_add_to_M2, "rnn_add_to() is returning the wrong matrix when Mout is M2!");
  assert_equal(test_rnn_add_to_M2, test_rnn_add_to_solution, "rnn_add_to() failed when Mout is M2!");
  rnn_clone_to(test_rnn_add_to_M2_orig, test_rnn_add_to_M2);
  
  
  //r22_subtract(M1, M2)
  var test_r22_subtract_M1 = r22(1, 2, 3, 4),
      test_r22_subtract_M2 = r22(5, 6, 7, 8),
      test_r22_subtract_solution = r22(-4, -4, -4, -4);
  assert_equal(r22_subtract(test_r22_subtract_M1, test_r22_subtract_M2), test_r22_subtract_solution, "r22_subtract() failed!");
  //r33_subtract(M1, M2)
  var test_r33_subtract_M1 = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
      test_r33_subtract_M2 = r33(-9, -8, -7, -6, -5, -4, -3, -2, -1),
      test_r33_subtract_solution = r33(10, 10, 10, 10, 10, 10, 10, 10, 10);
  assert_equal(r33_subtract(test_r33_subtract_M1, test_r33_subtract_M2), test_r33_subtract_solution, "r33_subtract() failed!");
  //r44_subtract(M1, M2)
  var test_r44_subtract_M1 = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      test_r44_subtract_M2 = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
      test_r44_subtract_solution = r44(-19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19);
  assert_equal(r44_subtract(test_r44_subtract_M1, test_r44_subtract_M2), test_r44_subtract_solution, "r44_subtract() failed!");
  //rmn_subtract(M1, M2)
  var test_rmn_subtract_M1 = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
      test_rmn_subtract_M2 = rmn(5, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
      test_rmn_subtract_solution = rmn(5, 2, -4, -4, -4, -4, -4, -4, -4, -4, -4, -4);
  assert_equal(rmn_subtract(test_rmn_subtract_M1, test_rmn_subtract_M2), test_rmn_subtract_solution, "rmn_subtract() failed on 5x2!");
  assert_equal(rmn_subtract(test_r22_subtract_M1, test_r22_subtract_M2), test_r22_subtract_solution, "rmn_subtract() failed on 2x2!");
  assert_equal(rmn_subtract(test_r33_subtract_M1, test_r33_subtract_M2), test_r33_subtract_solution, "rmn_subtract() failed on 3x3!");
  assert_equal(rmn_subtract(test_r44_subtract_M1, test_r44_subtract_M2), test_r44_subtract_solution, "rmn_subtract() failed on 4x4!");
  //rnn_subtract(M1, M2)
  assert_equal(rnn_subtract(test_r22_subtract_M1, test_r22_subtract_M2), test_r22_subtract_solution, "rnn_subtract() failed on 2x2!");
  assert_equal(rnn_subtract(test_r33_subtract_M1, test_r33_subtract_M2), test_r33_subtract_solution, "rnn_subtract() failed on 3x3!");
  assert_equal(rnn_subtract(test_r44_subtract_M1, test_r44_subtract_M2), test_r44_subtract_solution, "rnn_subtract() failed on 4x4!");
  
  //r22_subtract_to(M1, M2, Mout)
  var test_r22_subtract_to_M1_orig = r22(1, 2, 3, 4),
      test_r22_subtract_to_M2_orig = r22(5, 6, 7, 8),
      test_r22_subtract_to_solution = r22(-4, -4, -4, -4),
      test_r22_subtract_to_M1 = r22_clone(test_r22_subtract_to_M1_orig),
      test_r22_subtract_to_M2 = r22_clone(test_r22_subtract_to_M2_orig),
      test_r22_subtract_to_Mout = r22_zero();
  assert_is(r22_subtract_to(test_r22_subtract_to_M1, test_r22_subtract_to_M2, test_r22_subtract_to_Mout), test_r22_subtract_to_Mout, "r22_subtract_to() is returning the wrong matrix!");
  assert_equal(test_r22_subtract_to_Mout, test_r22_subtract_to_solution, "r22_subtract_to() failed!");
  test_r22_subtract_to_Mout = r22_zero();
  assert_is(r22_subtract_to(test_r22_subtract_to_M1, test_r22_subtract_to_M2, test_r22_subtract_to_M1), test_r22_subtract_to_M1, "r22_subtract_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_r22_subtract_to_M1, test_r22_subtract_to_solution, "r22_subtract_to() failed when Mout is M1!");
  r22_clone_to(test_r22_subtract_to_M1_orig, test_r22_subtract_to_M1);
  assert_is(r22_subtract_to(test_r22_subtract_to_M1, test_r22_subtract_to_M2, test_r22_subtract_to_M2), test_r22_subtract_to_M2, "r22_subtract_to() is returning the wrong matrix when Mout is M2!");
  assert_equal(test_r22_subtract_to_M2, test_r22_subtract_to_solution, "r22_subtract_to() failed when Mout is M2!");
  r22_clone_to(test_r22_subtract_to_M2_orig, test_r22_subtract_to_M2);
  //r33_subtract_to(M1, M2, Mout)
  var test_r33_subtract_to_M1_orig = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
      test_r33_subtract_to_M2_orig = r33(-9, -8, -7, -6, -5, -4, -3, -2, -1),
      test_r33_subtract_to_solution = r33(10, 10, 10, 10, 10, 10, 10, 10, 10),
      test_r33_subtract_to_M1 = r33_clone(test_r33_subtract_to_M1_orig),
      test_r33_subtract_to_M2 = r33_clone(test_r33_subtract_to_M2_orig),
      test_r33_subtract_to_Mout = r33_zero();
  assert_is(r33_subtract_to(test_r33_subtract_to_M1, test_r33_subtract_to_M2, test_r33_subtract_to_Mout), test_r33_subtract_to_Mout, "r33_subtract_to() is returning the wrong matrix!");
  assert_equal(test_r33_subtract_to_Mout, test_r33_subtract_to_solution, "r33_subtract_to() failed!");
  test_r33_subtract_to_Mout = r33_zero();
  assert_is(r33_subtract_to(test_r33_subtract_to_M1, test_r33_subtract_to_M2, test_r33_subtract_to_M1), test_r33_subtract_to_M1, "r33_subtract_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_r33_subtract_to_M1, test_r33_subtract_to_solution, "r33_subtract_to() failed when Mout is M1!");
  r33_clone_to(test_r33_subtract_to_M1_orig, test_r33_subtract_to_M1);
  assert_is(r33_subtract_to(test_r33_subtract_to_M1, test_r33_subtract_to_M2, test_r33_subtract_to_M2), test_r33_subtract_to_M2, "r33_subtract_to() is returning the wrong matrix when Mout is M2!");
  assert_equal(test_r33_subtract_to_M2, test_r33_subtract_to_solution, "r33_subtract_to() failed when Mout is M2!");
  r33_clone_to(test_r33_subtract_to_M2_orig, test_r33_subtract_to_M2);
  //r44_subtract_to(M1, M2, Mout)
  var test_r44_subtract_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      test_r44_subtract_to_M2_orig = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
      test_r44_subtract_to_solution = r44(-19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19),
      test_r44_subtract_to_M1 = r44_clone(test_r44_subtract_to_M1_orig),
      test_r44_subtract_to_M2 = r44_clone(test_r44_subtract_to_M2_orig),
      test_r44_subtract_to_Mout = r44_zero();
  assert_is(r44_subtract_to(test_r44_subtract_to_M1, test_r44_subtract_to_M2, test_r44_subtract_to_Mout), test_r44_subtract_to_Mout, "r44_subtract_to() is returning the wrong matrix!");
  assert_equal(test_r44_subtract_to_Mout, test_r44_subtract_to_solution, "r44_subtract_to() failed!");
  test_r44_subtract_to_Mout = r44_zero();
  assert_is(r44_subtract_to(test_r44_subtract_to_M1, test_r44_subtract_to_M2, test_r44_subtract_to_M1), test_r44_subtract_to_M1, "r44_subtract_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_r44_subtract_to_M1, test_r44_subtract_to_solution, "r44_subtract_to() failed when Mout is M1!");
  r44_clone_to(test_r44_subtract_to_M1_orig, test_r44_subtract_to_M1);
  assert_is(r44_subtract_to(test_r44_subtract_to_M1, test_r44_subtract_to_M2, test_r44_subtract_to_M2), test_r44_subtract_to_M2, "r44_subtract_to() is returning the wrong matrix when Mout is M2!");
  assert_equal(test_r44_subtract_to_M2, test_r44_subtract_to_solution, "r44_subtract_to() failed when Mout is M2!");
  r44_clone_to(test_r44_subtract_to_M2_orig, test_r44_subtract_to_M2);
  //rmn_subtract_to(M1, M2, Mout)
  var test_rmn_subtract_to_M1_orig = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
      test_rmn_subtract_to_M2_orig = rmn(5, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
      test_rmn_subtract_to_solution = rmn(5, 2, -4, -4, -4, -4, -4, -4, -4, -4, -4, -4),
      test_rmn_subtract_to_M1 = rmn_clone(test_rmn_subtract_to_M1_orig),
      test_rmn_subtract_to_M2 = rmn_clone(test_rmn_subtract_to_M2_orig),
      test_rmn_subtract_to_Mout = rmn_zero(5, 2);
  assert_is(rmn_subtract_to(test_rmn_subtract_to_M1, test_rmn_subtract_to_M2, test_rmn_subtract_to_Mout), test_rmn_subtract_to_Mout, "rmn_subtract_to() is returning the wrong matrix!");
  assert_equal(test_rmn_subtract_to_Mout, test_rmn_subtract_to_solution, "rmn_subtract_to() failed!");
  test_rmn_subtract_to_Mout = rmn_zero(5, 2);
  assert_is(rmn_subtract_to(test_rmn_subtract_to_M1, test_rmn_subtract_to_M2, test_rmn_subtract_to_M1), test_rmn_subtract_to_M1, "rmn_subtract_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_rmn_subtract_to_M1, test_rmn_subtract_to_solution, "rmn_subtract_to() failed when Mout is M1!");
  rmn_clone_to(test_rmn_subtract_to_M1_orig, test_rmn_subtract_to_M1);
  assert_is(rmn_subtract_to(test_rmn_subtract_to_M1, test_rmn_subtract_to_M2, test_rmn_subtract_to_M2), test_rmn_subtract_to_M2, "rmn_subtract_to() is returning the wrong matrix when Mout is M2!");
  assert_equal(test_rmn_subtract_to_M2, test_rmn_subtract_to_solution, "rmn_subtract_to() failed when Mout is M2!");
  rmn_clone_to(test_rmn_subtract_to_M2_orig, test_rmn_subtract_to_M2);
  //rnn_subtract_to(M1, M2, Mout)
  var test_rnn_subtract_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      test_rnn_subtract_to_M2_orig = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
      test_rnn_subtract_to_solution = r44(-19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19),
      test_rnn_subtract_to_M1 = rnn_clone(test_rnn_subtract_to_M1_orig),
      test_rnn_subtract_to_M2 = rnn_clone(test_rnn_subtract_to_M2_orig),
      test_rnn_subtract_to_Mout = rnn_zero(4);
  assert_is(rnn_subtract_to(test_rnn_subtract_to_M1, test_rnn_subtract_to_M2, test_rnn_subtract_to_Mout), test_rnn_subtract_to_Mout, "rnn_subtract_to() is returning the wrong matrix!");
  assert_equal(test_rnn_subtract_to_Mout, test_rnn_subtract_to_solution, "rnn_subtract_to() failed!");
  test_rnn_subtract_to_Mout = rnn_zero(4);
  assert_is(rnn_subtract_to(test_rnn_subtract_to_M1, test_rnn_subtract_to_M2, test_rnn_subtract_to_M1), test_rnn_subtract_to_M1, "rnn_subtract_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_rnn_subtract_to_M1, test_rnn_subtract_to_solution, "rnn_subtract_to() failed when Mout is M1!");
  rnn_clone_to(test_rnn_subtract_to_M1_orig, test_rnn_subtract_to_M1);
  assert_is(rnn_subtract_to(test_rnn_subtract_to_M1, test_rnn_subtract_to_M2, test_rnn_subtract_to_M2), test_rnn_subtract_to_M2, "rnn_subtract_to() is returning the wrong matrix when Mout is M2!");
  assert_equal(test_rnn_subtract_to_M2, test_rnn_subtract_to_solution, "rnn_subtract_to() failed when Mout is M2!");
  rnn_clone_to(test_rnn_subtract_to_M2_orig, test_rnn_subtract_to_M2);
  
  
  //r22_scale(M1, r)
  var test_r22_scale_M1 = r22(1, 2, 3, 4),
      test_r22_scale_r = 5,
      test_r22_scale_solution = r22(5, 10, 15, 20);
  assert_equal(r22_scale(test_r22_scale_M1, test_r22_scale_r), test_r22_scale_solution, "r22_scale() failed!");
  //r33_scale(M1, r)
  var test_r33_scale_M1 = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
      test_r33_scale_r = -10,
      test_r33_scale_solution = r33(-10, -20, -30, -40, -50, -60, -70, -80, -90);
  assert_equal(r33_scale(test_r33_scale_M1, test_r33_scale_r), test_r33_scale_solution, "r33_scale() failed!");
  //r44_scale(M1, r)
  var test_r44_scale_M1 = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      test_r44_scale_r = -1,
      test_r44_scale_solution = r44(-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16);
  assert_equal(r44_scale(test_r44_scale_M1, test_r44_scale_r), test_r44_scale_solution, "r44_scale() failed!");
  //rmn_scale(M1, r)
  var test_rmn_scale_M1 = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
      test_rmn_scale_r = 11,
      test_rmn_scale_solution = rmn(5, 2, 11, 22, 33, 44, 55, 66, 77, 88, 99, 110);
  assert_equal(rmn_scale(test_rmn_scale_M1, test_rmn_scale_r), test_rmn_scale_solution, "rmn_scale() failed on 5x2!");
  assert_equal(rmn_scale(test_r22_scale_M1, test_r22_scale_r), test_r22_scale_solution, "rmn_scale() failed on 2x2!");
  assert_equal(rmn_scale(test_r33_scale_M1, test_r33_scale_r), test_r33_scale_solution, "rmn_scale() failed on 3x3!");
  assert_equal(rmn_scale(test_r44_scale_M1, test_r44_scale_r), test_r44_scale_solution, "rmn_scale() failed on 4x4!");
  //rnn_scale(M1, r)
  assert_equal(rnn_scale(test_r22_scale_M1, test_r22_scale_r), test_r22_scale_solution, "rnn_scale() failed on 2x2!");
  assert_equal(rnn_scale(test_r33_scale_M1, test_r33_scale_r), test_r33_scale_solution, "rnn_scale() failed on 3x3!");
  assert_equal(rnn_scale(test_r44_scale_M1, test_r44_scale_r), test_r44_scale_solution, "rnn_scale() failed on 4x4!");
  
  //r22_scale_to(M1, r, Mout)
  var test_r22_scale_to_M1_orig = r22(1, 2, 3, 4),
      test_r22_scale_to_r_orig = 5,
      test_r22_scale_to_solution = r22(5, 10, 15, 20),
      test_r22_scale_to_M1 = r22_clone(test_r22_scale_to_M1_orig),
      test_r22_scale_to_r = test_r22_scale_to_r_orig,
      test_r22_scale_to_Mout = r22_zero();
  assert_is(r22_scale_to(test_r22_scale_to_M1, test_r22_scale_to_r, test_r22_scale_to_Mout), test_r22_scale_to_Mout, "r22_scale_to() is returning the wrong matrix!");
  assert_equal(test_r22_scale_to_Mout, test_r22_scale_to_solution, "r22_scale_to() failed!");
  test_r22_scale_to_Mout = r22_zero();
  assert_is(r22_scale_to(test_r22_scale_to_M1, test_r22_scale_to_r, test_r22_scale_to_M1), test_r22_scale_to_M1, "r22_scale_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_r22_scale_to_M1, test_r22_scale_to_solution, "r22_scale_to() failed when Mout is M1!");
  r22_clone_to(test_r22_scale_to_M1_orig, test_r22_scale_to_M1);
  //r33_scale_to(M1, r, Mout)
  var test_r33_scale_to_M1_orig = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
      test_r33_scale_to_r_orig = -10,
      test_r33_scale_to_solution = r33(-10, -20, -30, -40, -50, -60, -70, -80, -90),
      test_r33_scale_to_M1 = r33_clone(test_r33_scale_to_M1_orig),
      test_r33_scale_to_r = test_r33_scale_to_r_orig,
      test_r33_scale_to_Mout = r33_zero();
  assert_is(r33_scale_to(test_r33_scale_to_M1, test_r33_scale_to_r, test_r33_scale_to_Mout), test_r33_scale_to_Mout, "r33_scale_to() is returning the wrong matrix!");
  assert_equal(test_r33_scale_to_Mout, test_r33_scale_to_solution, "r33_scale_to() failed!");
  test_r33_scale_to_Mout = r33_zero();
  assert_is(r33_scale_to(test_r33_scale_to_M1, test_r33_scale_to_r, test_r33_scale_to_M1), test_r33_scale_to_M1, "r33_scale_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_r33_scale_to_M1, test_r33_scale_to_solution, "r33_scale_to() failed when Mout is M1!");
  r33_clone_to(test_r33_scale_to_M1_orig, test_r33_scale_to_M1);
  //r44_scale_to(M1, r, Mout)
  var test_r44_scale_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      test_r44_scale_to_r_orig = -1,
      test_r44_scale_to_solution = r44(-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16),
      test_r44_scale_to_M1 = r44_clone(test_r44_scale_to_M1_orig),
      test_r44_scale_to_r = test_r44_scale_to_r_orig,
      test_r44_scale_to_Mout = r44_zero();
  assert_is(r44_scale_to(test_r44_scale_to_M1, test_r44_scale_to_r, test_r44_scale_to_Mout), test_r44_scale_to_Mout, "r44_scale_to() is returning the wrong matrix!");
  assert_equal(test_r44_scale_to_Mout, test_r44_scale_to_solution, "r44_scale_to() failed!");
  test_r44_scale_to_Mout = r44_zero();
  assert_is(r44_scale_to(test_r44_scale_to_M1, test_r44_scale_to_r, test_r44_scale_to_M1), test_r44_scale_to_M1, "r44_scale_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_r44_scale_to_M1, test_r44_scale_to_solution, "r44_scale_to() failed when Mout is M1!");
  r44_clone_to(test_r44_scale_to_M1_orig, test_r44_scale_to_M1);
  //rmn_scale_to(M1, r, Mout)
  var test_rmn_scale_to_M1_orig = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
      test_rmn_scale_to_r_orig = 11,
      test_rmn_scale_to_solution = rmn(5, 2, 11, 22, 33, 44, 55, 66, 77, 88, 99, 110),
      test_rmn_scale_to_M1 = rmn_clone(test_rmn_scale_to_M1_orig),
      test_rmn_scale_to_r = test_rmn_scale_to_r_orig,
      test_rmn_scale_to_Mout = rmn_zero(5, 2);
  assert_is(rmn_scale_to(test_rmn_scale_to_M1, test_rmn_scale_to_r, test_rmn_scale_to_Mout), test_rmn_scale_to_Mout, "rmn_scale_to() is returning the wrong matrix!");
  assert_equal(test_rmn_scale_to_Mout, test_rmn_scale_to_solution, "rmn_scale_to() failed!");
  test_rmn_scale_to_Mout = rmn_zero(5, 2);
  assert_is(rmn_scale_to(test_rmn_scale_to_M1, test_rmn_scale_to_r, test_rmn_scale_to_M1), test_rmn_scale_to_M1, "rmn_scale_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_rmn_scale_to_M1, test_rmn_scale_to_solution, "rmn_scale_to() failed when Mout is M1!");
  rmn_clone_to(test_rmn_scale_to_M1_orig, test_rmn_scale_to_M1);
  //rnn_scale_to(M1, r, Mout)
  var test_rnn_scale_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
      test_rnn_scale_to_r_orig = -1,
      test_rnn_scale_to_solution = r44(-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16),
      test_rnn_scale_to_M1 = rnn_clone(test_rnn_scale_to_M1_orig),
      test_rnn_scale_to_r = test_rnn_scale_to_r_orig,
      test_rnn_scale_to_Mout = rnn_zero(4);
  assert_is(rnn_scale_to(test_rnn_scale_to_M1, test_rnn_scale_to_r, test_rnn_scale_to_Mout), test_rnn_scale_to_Mout, "rnn_scale_to() is returning the wrong matrix!");
  assert_equal(test_rnn_scale_to_Mout, test_rnn_scale_to_solution, "rnn_scale_to() failed!");
  test_rnn_scale_to_Mout = rnn_zero(4);
  assert_is(rnn_scale_to(test_rnn_scale_to_M1, test_rnn_scale_to_r, test_rnn_scale_to_M1), test_rnn_scale_to_M1, "rnn_scale_to() is returning the wrong matrix when Mout is M1!");
  assert_equal(test_rnn_scale_to_M1, test_rnn_scale_to_solution, "rnn_scale_to() failed when Mout is M1!");
  rnn_clone_to(test_rnn_scale_to_M1_orig, test_rnn_scale_to_M1);
}
