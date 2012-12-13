describe Object, "#urls" do
  it "visits a single url and searches for a single text-pattern" do
    res = `../bin/webgrep -e 'booyah' -- 'http://localhost:3000/first.html'`
    $?.exitstatus.should eq(0)
  end
end

describe Object, "#patterns" do
  it "visits a single url and searches for multiple text-patterns" do
    res = `../bin/webgrep -e 'booyah' -e 'Phoney' -- 'http://localhost:3000/first.html'`
    $?.exitstatus.should eq(0)
  end
end
