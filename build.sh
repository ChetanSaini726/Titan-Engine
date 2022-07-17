export JOBS_NUM=$(($(nproc)-1)) # Total number of 'CPU cores - 1'

if [[ "$*" == *"h"* ]]; then #TODO: Conditional executiton for all options.
echo "'h' for help"
echo "'' for debug build only"
echo "'e' for debug build and execute the program"  
echo "'w' for workspace debug build only"
echo "'r' for release build only"
echo "'re' for release build and execute the program"
echo "'wr' for workspace release build only"
elif [[ "$*" == *"e"* ]]; then
cargo run -j $JOBS_NUM
elif [[ "$*" == *"w"* ]]; then
cargo build --workspace -j $JOBS_NUM
elif [[ "$*" == *"r"* ]]; then
cargo build --release -j $JOBS_NUM
elif [[ "$*" == *"re"* ]]; then
cargo run --release -j $JOBS_NUM
elif [[ "$*" == *"wr"* ]]; then
cargo build --workspace --release -j $JOBS_NUM
else 
cargo build -j $JOBS_NUM
fi