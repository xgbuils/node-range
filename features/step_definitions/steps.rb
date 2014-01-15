Given(/^the program has finished$/) do
  @cucumber = `make test`
end

Then(/^the output is correct for each test$/) do
  lines = @cucumber.split("\n")

  lines.length.should == 105

  lines[0].should == 'node fizzbuzz.js &'
  lines[1].should == 'sleep 2'
  lines[2].should == 'Server running at http://127.0.0.1:8124/'
  lines[3].should == 'curl http://localhost:8124 2>/dev/null'
  lines[4].should == '1'
  lines[5].should == '2'
  lines[6].should == 'Fizz'
  lines[7].should == '4'
  lines[8].should == 'Buzz'
  lines[9].should == 'Fizz'
  lines[10].should == '7'
  lines[11].should == '8'
  lines[12].should == 'Fizz'
  lines[13].should == 'Buzz'
  lines[14].should == '11'
  lines[15].should == 'Fizz'
  lines[16].should == '13'
  lines[17].should == '14'
  lines[18].should == 'FizzBuzz'
  lines[-1].should == 'lsof -i tcp:8124 | awk \'NR!=1 {print $2}\' | xargs kill'
end
