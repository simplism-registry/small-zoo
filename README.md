# tpl-rust-function

## How to use it?

- Change values in `.release.env`
- Change the name i, `Cargo.toml`


> Add Extism dependency
```bash
cargo add extism-pdk@1.0.0-rc1
```

> Build the wasm plug-in:
```bash
cargo clean
cargo build --release --target wasm32-wasi
```

> Serve the wasm plug-in with Simplism:
```bash
simplism listen \
./target/wasm32-wasi/release/small_zoo.wasm handle --http-port 8080 --log-level info
```

> Query the wasm plug-in:
```bash
curl http://localhost:8080/ant \
-H 'content-type: application/json; charset=utf-8' \
-d 'Bob Morane'

curl http://localhost:8080/cow \
-H 'content-type: application/json; charset=utf-8' \
-d 'Bill Balantine'

curl http://localhost:8080/elephant \
-H 'content-type: application/json; charset=utf-8' \
-d 'John Doe'

curl http://localhost:8080/tiger \
-H 'content-type: application/json; charset=utf-8' \
-d 'Jane Doe'
```
