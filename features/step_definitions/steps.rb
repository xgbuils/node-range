Given(/^the program has finished$/) do
  @cucumber = `grunt --no-color`
end

Then(/^the output is correct for each test$/) do
  lines = @cucumber.split("\n")

  expect(lines.length).to eq(110)

  expect(lines[0]).to eq('Running "exec:backgroundServer" (exec) task')
  expect(lines[1]).to eq('')
  expect(lines[2]).to eq('Running "exec:waitForServer" (exec) task')
  expect(lines[3]).to eq('Server running at http://127.0.0.1:8124/')
  expect(lines[4]).to eq('')
  expect(lines[5]).to eq('Running "exec:loadPage" (exec) task')
  expect(lines[6]).to eq('1')
  expect(lines[7]).to eq('2')
  expect(lines[8]).to eq('Fizz')
  expect(lines[9]).to eq('4')
  expect(lines[10]).to eq('Buzz')
  expect(lines[11]).to eq('Fizz')
  expect(lines[12]).to eq('7')
  expect(lines[13]).to eq('8')
  expect(lines[14]).to eq('Fizz')
  expect(lines[15]).to eq('Buzz')
  expect(lines[16]).to eq('11')
  expect(lines[17]).to eq('Fizz')
  expect(lines[18]).to eq('13')
  expect(lines[19]).to eq('14')
  expect(lines[20]).to eq('FizzBuzz')

  expect(lines[-7]).to eq('98')
  expect(lines[-6]).to eq('Fizz')
  expect(lines[-5]).to eq('Buzz')
  expect(lines[-4]).to eq('')
  expect(lines[-3]).to eq('Running "exec:killServer" (exec) task')
  expect(lines[-2]).to eq('')
  expect(lines[-1]).to eq('Done, without errors.')
end
