# Niagahoster - Landing Page

## Prerequisite

* [Git](https://git-scm.com/)
* [Composer](https://getcomposer.org/)

## System Requirements

* Apache2
* Curl
* PHP >=7.4, with extensions :
	- curl
	- json
	- phar
	- mbstring
	- openssl
	- apache2

## Installation

Clone repository.
```bash
git clone https://github.com/Test-Full-Stack-Niagahoster-Rana-Krisna/Landing-Page.git
```

cd Landing-Page

Gunakan package manager [composer](https://getcomposer.org/) untuk install
```bash
composer install
```
___

## Usage

### Running Apps
```bash
php -S localhost:8000
```
akses di http://localhost:8000

## Running as Docker

Untuk menjalankan applikasi dalam bentuk docker, build __image__ dengan menggunakan

```
docker build -t niagahoster/landing-page:latest .
```

Jalakan __image__ sebagai container dengan menggunakan
```
docker rm -f landing-page && docker container run -d --name landing-page -p 8000:80 niagahoster/landing-page:latest && docker start landing-page
```
akses di http://localhost:8000