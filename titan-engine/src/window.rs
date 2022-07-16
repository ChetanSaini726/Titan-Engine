#[derive(Debug)]
pub struct TitanWindow {
    height: i32,
    width: i32,
    window_name: String,
}

impl TitanWindow {
    pub fn new(height: i32, width: i32, window_name: String) -> TitanWindow {
        return TitanWindow {
            height,
            width,
            window_name,
        };
    }
}
