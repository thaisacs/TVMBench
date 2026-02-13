```
            _______     ____  __ ____                  _     
           |_   _\ \   / /  \/  | __ )  ___ _ __   ___| |__  
             | |  \ \ / /| |\/| |  _ \ / _ \ '_ \ / __| '_ \ 
             | |   \ V / | |  | | |_) |  __/ | | | (__| | | |
             |_|    \_/  |_|  |_|____/ \___|_| |_|\___|_| |_|
                                          by: thais camacho
```

TVMBench is a benchmarking suite for evaluating TVM performance and assessing TGC algorithm.

## ABOUT TGC
Task Graph Caching (TGC) is an algorithm proposed for Apache TVM's auto-tuning pipeline. Its goal is to reduce compilation (auto-tuning) time by reusing optimization knowledge from previously tuned models, rather than starting every tuning run from scratch.
### BUILDING IT
To install the required dependencies for TGC, execute the following commands:
```
# Load CUDA module
ml cuda/12.6.3

# Create and activate virtual environment
conda create -n tvm-build-venv -c conda-forge \
    "llvmdev=18" \
    "cmake>=3.24" \
    git \
    python=3.11
conda activate tvm-build-venv

# Upgrade pip
python -m pip install --upgrade pip

# Install Python dependencies
pip install numpy ninja tornado psutil 'xgboost>=1.1.0' cloudpickle ml-dtypes cython

# Install PyTorch with CUDA support
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124

# Install ONNX
pip install onnx==1.16
```
To get started with TGC, you can build TVM using the following commands:
```
# Clone TVM repository
git clone --recursive https://github.com/thaisacs/tvm
cd tvm && git checkout auto-cache-tgc
git submodule update --init --recursive

# Create build directory
mkdir build && cd build
cmake -DUSE_LLVM=ON -DUSE_CUDA=ON -DUSE_CUBLAS=OFF -DUSE_CUDNN=OFF -DUSE_CUTLASS=OFF ..

# Build with parallel jobs
cmake --build . --parallel $(nproc)
cd .. && cd 3rdparty/tvm-ffi; pip install .; cd ..
```
Branch `auto-cache-tgc` is tied to MetaSchedule.
If you want to work with Ansor, switch to `tgc-algorithm`.
## CITATION
```
@article{10.1145/3810246,
author = {Camacho, Thais and Alvarenga, Lucas and Pereira, Marcio and Araujo, Guido},
title = {Using Task Graph Caching to Accelerate TVM Code Generation},
year = {2026},
issue_date = {June 2026},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
volume = {23},
number = {2},
issn = {1544-3566},
url = {https://doi.org/10.1145/3810246},
doi = {10.1145/3810246},
month = jun,
articleno = {56},
numpages = {26},
keywords = {Auto-tuning, apache TVM, compiler optimization, caching, software performance}
}
```
