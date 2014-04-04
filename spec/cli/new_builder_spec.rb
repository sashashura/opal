require 'cli/spec_helper'
require 'opal/new_builder'
require 'cli/shared/path_reader_shared'

describe Opal::NewBuilder do
  let(:filepath) { 'foo/bar.rb' }
  let(:compiled_source) { "compiled source" }
  subject(:builder) { described_class.new path_reader, compiler }
  let(:compiler) { double('compiler', :requires => requires) }
  let(:path_reader) { double('path reader') }

  before do
    path_reader.stub(:read).with(filepath) { "file source" }
    compiler.stub(:compile).with("file source", :file => filepath) { compiled_source }
  end

  context 'without requires' do
    let(:requires) { [] }

    include_examples :path_reader do
      let(:path) {filepath}
      let(:contents) {"file source"}
    end

    it 'just delegates to Compiler#compile' do
      expect(builder.build(filepath)).to eq("compiled source")
    end
  end

  context 'with requires' do
    let(:requires) { ['foo', 'bar'] }
    let(:required_foo) { "required foo" }
    let(:required_bar) { "required bar" }
    let(:foo_contents) { "foo source" }
    let(:bar_contents) { "bar source" }

    include_examples :path_reader do
      let(:path) {'foo'}
      let(:contents) { foo_contents }
    end

    before do
      path_reader.stub(:read).with('foo') { foo_contents }
      path_reader.stub(:read).with('bar') { bar_contents }
      compiler.stub(:compile).with(foo_contents, :file => "foo", :requirable => true) { required_foo }
      compiler.stub(:compile).with(bar_contents, :file => "bar", :requirable => true) { required_bar }
    end

    it 'includes the required files' do
      expect(builder.build(filepath)).to eq("#{required_foo}#{required_bar}#{compiled_source}")
    end
  end
end