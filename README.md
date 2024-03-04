# Setup tomcat-mysql-phpmyadmin-with-docker-compose

## Overview

This project is a web application developed using Tomcat, MySQL, and phpMyAdmin, containerized using Docker. The application is built using Maven.

## Prerequisites

- Docker
- Maven

## Getting Started

To get a local copy up and running, follow these steps:

1. Clone the repository:

```bash
git clone https://github.com/HassanDev13/Setup-tomcat-mysql-phpmyadmin-with-docker-compose
```

2. Navigate to the project directory:

```bash
cd Setup-tomcat-mysql-phpmyadmin-with-docker-compose
```

3. Build the project and start the Docker containers:

```bash
./run.sh
```

This script will first use Maven to build the project with `mvn clean install`. Then it will stop any running Docker containers for this project with `docker compose down`. Finally, it will start the Docker containers with `docker compose up -d --build`.

## Usage

After starting the Docker containers, you can access the web application at `http://localhost:8084/demo/test` and phpMyAdmin at `http://localhost:8090`.

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Hacene Zerrouk - zerrouk.mohammed.hacene@gmail.com
