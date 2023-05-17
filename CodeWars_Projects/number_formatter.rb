def number_format(n)
  #your code here
  n = n.to_s.reverse
  result = ""
  count = 0
  neg = "-"
  
  n.each_char.with_index do |char, index|
    result << char
    count += 1
    
  next_char = n[index + 1]
  
    if count % 3 == 0 && count < n.length && next_char != neg
      result << ","
    end
  end
  
  result.reverse
end

=begin
Test Passed: Value == "100,000"
Test Passed: Value == "5,678,545"
Test Passed: Value == "-420,902"
Test Passed: Value == "-3"
Test Passed: Value == "-1,003"
Random tests - All Passed
Testing for 29863324938732
Testing for -498171206311880
Testing for -575423
Testing for -45248530
Testing for -6587361107313
Testing for -9893
Testing for 210941359639
Testing for 592943816617663
Testing for -1877602665
Testing for 44627841472189
Testing for -7481599557
Testing for 11668
Testing for 230613265769251
Testing for 62822
Testing for -792397939813736
Testing for 91307245197
Testing for -514955308933136
Testing for 786969745
Testing for 60214069166
Testing for -980091288367
Testing for -939188002288
Testing for 32449363123960
Testing for -49448612730695
Testing for -18785055632843
Testing for 97972250019
Testing for -63
Testing for 838511334676520
Testing for 7854879043265
Testing for -59362148296
Testing for 160629228136383
Testing for 44895707797
Testing for 627229210166554
Testing for -179008158118986
Testing for -65534047188
Testing for -96737844223883
Testing for -3148243903
Testing for -6139703991
Testing for -6513663877
Testing for -2
Testing for 605858476303
=end