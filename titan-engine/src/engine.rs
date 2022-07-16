use vulkano::instance::InstanceExtensions;

pub fn check_vk_extensions() -> InstanceExtensions {
    let required_extensions = vulkano_win::required_extensions();
    if cfg!(debug_assertions) {
        println!("{:?}", &required_extensions)
    };
    return required_extensions;
}
