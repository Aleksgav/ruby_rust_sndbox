use magnus::{
    prelude::*,
    define_module,
    Error,
    function
};

fn hello_sandbox(subject: String) -> String {
    format!("Hello from Sandbox, {}!", subject)
}

#[magnus::init]
fn init() -> Result<(), Error> {
    let module = define_module("HelloSandbox")?;
    module.define_singleton_method("hello", function!(hello_sandbox, 1))?;

    Ok(())
}
