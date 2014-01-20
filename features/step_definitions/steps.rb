Given(/^the program has finished$/) do
  @cucumber = `npm test`
end

Then(/^the output is correct for each test$/) do
  lines = @cucumber.split("\n")

  lines.length.should == 109

  lines[-105].should == 'node fizzbuzz.js &'
  lines[-104].should == 'sleep 2'
  lines[-103].should == 'Server running at http://127.0.0.1:8124/'
  lines[-102].should == 'curl http://localhost:8124 2>/dev/null'
  lines[-101].should == '1'
  lines[-100].should == '2'
  lines[-99].should == 'Fizz'
  lines[-98].should == '4'
  lines[-97].should == 'Buzz'
  lines[-96].should == 'Fizz'
  lines[-95].should == '7'
  lines[-94].should == '8'
  lines[-93].should == 'Fizz'
  lines[-92].should == 'Buzz'
  lines[-91].should == '11'
  lines[-90].should == 'Fizz'
  lines[-89].should == '13'
  lines[-88].should == '14'
  lines[-87].should == 'FizzBuzz'
  lines[-1].should == 'lsof -i tcp:8124 | awk \'NR!=1 {print $2}\' | xargs kill'
end
