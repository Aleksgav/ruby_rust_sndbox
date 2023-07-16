# frozen_string_literal: true

RSpec.describe RubyRustSndbox do
  it "has a version number" do
    expect(RubyRustSndbox::VERSION).not_to be nil
  end

  describe "HelloSandbox" do
    it "print hello" do
      hello = "Rust"
      greeting = HelloSandbox.hello(hello)

      expect(greeting).to eq "Hello from Sandbox, #{hello}!"
    end

    it "raise exceptin with wrong arg type" do
      expect { HelloSandbox.hello(123) }.to raise_error(StandardError)
    end
  end
end
