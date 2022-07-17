#[derive(Debug)]
struct TitanWindow {
    height: i32,
    width: i32,
    window_name: &str,
}

impl TitanWindow {
    pub fn new_window(height: i32, width: i32, window_name: &str) -> TitanWindow {
        return TitanWindow {
            height,
            width,
            window_name,
        };
    }

    fn init_window() {}
}
