
When("I have a simple test") do
  expect(1).to eq 1 # Write code here that turns the phrase above into concrete actions
end

Then("my test {string}") do |pass_fail|
  expect(pass_fail).to eq 'passes'
end
