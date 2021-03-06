# Inference-Tensorflow-Object-Detection-And-PyTorch-Classification

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Requirements](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [License](#license)
* [Contact](#contact)

<!-- ABOUT THE PROJECT -->
## About The Project
Code to automatically run object detection and classification using Tensorflow and PyTorch through a docker container

### Requirements
* Docker

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

* Install Docker

### Installation
 
1. Clone the repo
```sh
git clone https://github.com/tachillon/Inference-Tensorflow-Object-Detection-And-PyTorch-Classification
```
<!-- USAGE EXAMPLES -->
## Usage
```sh
python3 build_docker_and_launch_inference.py --workdir <DIR> --imgdir <DIR>
```
```
build_docker_and_launch_inference.py/
inference_detection_classification.py/
Dockerfile/
├─ results/
├─ model/
│  ├─ frozen_inference_graph.pb
│  ├─ detection_label.pbtxt
│  ├─ resnext101_32x8d.pt
│  ├─ classification_labels.txt
├─ images/
│  ├─ img1.jpg
│  ├─ img2.jpg
│  ├─ img3.jpg
```
Caution: models to detect/classify objects are not provided. 

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

Achille-Tâm GUILCHARD - achilletamguilchard@gmail.com