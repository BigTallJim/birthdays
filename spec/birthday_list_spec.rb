require "birthday_list.rb"
describe Birthday do
  it "add name and birthday to hash map" do
    expect(subject.saveFriend("James", "23/11/1974")).to eq("23/11/1974")
  end
  it "displays birthdays if they are today" do
    allow(Time).to receive(:now).and_return Time.new(2019,8,26)
    subject.saveFriend("Person1", "24/08/1974")
    subject.saveFriend("Person2", "25/08/1974")
    subject.saveFriend("James", "26/08/1974")
    subject.saveFriend("Person3", "27/08/1974")
    expect(subject.birthdays_today).to eq(["It's James's Birthday today"])
  end
end
