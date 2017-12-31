require './config/db_config.rb'
require './spec/spec_helper.rb'
require './spec/db_helper.rb'

require './models/did_something.rb'

RSpec::describe DidSomething do
    it 'creates' do
        expect(DidSomething.all.count).to eq(0)
        DidSomething.create(name: 'foo')
        expect(DidSomething.all.count).to eq(1)
    end

    it 'creates again' do
        expect(DidSomething.all.count).to eq(0)
        DidSomething.create(name: 'bar')
        expect(DidSomething.all.count).to eq(1)
    end

    it 'tests' do
        expect(true).to eq(true)
    end
end
