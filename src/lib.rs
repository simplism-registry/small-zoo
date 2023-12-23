#![no_main]

use extism_pdk::*;
use serde::{Serialize, Deserialize};

pub fn get_ant(input: String) -> String {
format!(r#"
/\/\
    \_\  _..._
    (" )(_..._)
    ^^  // \\
{}
"#, input).to_string()
}

pub fn get_cow(input: String) -> String {
format!(r#"
^__^
(oo)\_______
(__)\       )\/\
    ||----w |
    ||     ||
{}
"#, input).to_string()
}

pub fn get_elephant(input: String) -> String {
format!(r#"
  _    _
 /=\""/=\
(=(0_0 |=)__
 \_\ _/_/   )
   /_/   _  /\
  |/ |\ || |
     ~ ~  ~
{}
"#, input).to_string()
}
    
pub fn get_default(input: String) -> String {
format!(r#"
{}
"#, input).to_string()
}

// return a hashmap of array of strings
fn headers_map() ->     std::collections::HashMap<String, Vec<String>> {
    let mut headers = std::collections::HashMap::new();
    headers.insert("Content-Type".to_string(), vec!["text/plain".to_string()]);
    headers
}

#[derive(Serialize)]
struct ResponseData {
    pub body: String,
    pub header: std::collections::HashMap<String, Vec<String>>,
    pub code: i32,
}

#[derive(Serialize, Deserialize)]
struct RequestData {
    pub body: String,
    pub header: std::collections::HashMap<String, Vec<String>>,
    pub method: String,
    pub uri: String,
}

#[plugin_fn]
pub fn handle(input: String) -> FnResult<Json<ResponseData>> {

    let req: RequestData = serde_json::from_str(&input).unwrap();

    // see https://www.asciiart.eu/
    let message: String = match req.uri.as_str() {
        "/ant" => get_ant(req.body),
        "/cow" => get_cow(req.body),
        "/elephant" => get_elephant(req.body),
        _ => get_default(req.body),
    };

    let resp = ResponseData { 
        body: message , 
        code: 200, 
        header: headers_map()
    };
    
    Ok(Json(resp))
}
