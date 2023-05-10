require 'rspec'
require './lib/student'

describe Student do

  it 'is an instance of student' do
    student = Student.new('Penelope')

    expect(student).to be_an_instance_of(Student)
  end

  it 'has a name' do
    student = Student.new('Penelope')

    expect(student.name).to eq('Penelope')
  end

  it 'has an empty cookies array' do
    student = Student.new('Penelope')

    expect(student.cookies).to eq([])
  end

  it 'can add cookies to the cookies array' do
    student = Student.new('Penelope')

    student.add_cookie('Chocolate Chunk')
    student.add_cookie('Snickerdoodle')

    expect(student.cookies).to eq(['Chocolate Chunk', 'Snickerdoodle'])
  end

end
