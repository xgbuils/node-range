Given(/^the program has finished$/) do
  @cucumber = `grunt --no-color`
end

Then(/^the output is correct for each test$/) do
  lines = @cucumber.split("\n")

  lines.length.should == 110

  lines[0].should == 'Running "exec:backgroundServer" (exec) task'
  lines[1].should == ''
  lines[2].should == 'Running "exec:waitForServer" (exec) task'
  lines[3].should == 'Server running at http://127.0.0.1:8124/'
  lines[4].should == ''
  lines[5].should == 'Running "exec:loadPage" (exec) task'
  lines[6].should == '1'
  lines[7].should == '2'
  lines[8].should == 'Fizz'
  lines[9].should == '4'
  lines[10].should == 'Buzz'
  lines[11].should == 'Fizz'
  lines[12].should == '7'
  lines[13].should == '8'
  lines[14].should == 'Fizz'
  lines[15].should == 'Buzz'
  lines[16].should == '11'
  lines[17].should == 'Fizz'
  lines[18].should == '13'
  lines[19].should == '14'
  lines[20].should == 'FizzBuzz'

  lines[-7].should == '98'
  lines[-6].should == 'Fizz'
  lines[-5].should == 'Buzz'
  lines[-4].should == ''
  lines[-3].should == 'Running "exec:killServer" (exec) task'
  lines[-2].should == ''
  lines[-1].should == 'Done, without errors.'
end
