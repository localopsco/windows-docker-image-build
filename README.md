# Windows Docker Image with GitHub Actions

This repository demonstrates how to build Windows Docker images using GitHub Actions - perfect for developers who need to create Windows containers without access to a Windows machine.

## 🚀 Quick Start

1. Fork this repository
2. Set up Docker Hub secrets in your GitHub repository:
   - `DOCKERHUB_USERNAME`
   - `DOCKERHUB_TOKEN`
3. Push to main branch or create a tag to trigger the build

## 📦 What's Inside

- Simple Python Flask web application
- Windows-based Dockerfile
- GitHub Actions workflow for automated builds
- Example of Windows container best practices

## 🛠️ The Application

A simple Flask web application that displays:
- Container hostname
- Python version
- Operating system information

## 🐋 Building Locally (Windows Only)

If you have a Windows machine with Docker Desktop:

```bash
# Build the image
docker build -t windows-python-app .

# Run the container
docker run -p 80:80 windows-python-app
```

Visit `http://localhost` to see the app running.

## 🔄 GitHub Actions Workflow

This repository uses GitHub Actions to automatically:
1. Build the Windows Docker image
2. Push to Docker Hub (on main branch pushes and tags)
3. Handle versioning and tagging

## 📁 Repository Structure

```
.
├── .github/
│   └── workflows/
│       └── build.yaml
├── app.py
├── requirements.txt
├── Dockerfile
└── README.md
```

## 🏗️ Dockerfile Explanation

The Dockerfile:
1. Uses Windows Server Core as base image
2. Installs Python in a Windows environment
3. Sets up the application
4. Configures the container for web access

## 🔑 Setting Up Secrets

1. Go to your repository Settings
2. Navigate to Secrets and Variables → Actions
3. Add required secrets:
   - `DOCKERHUB_USERNAME`: Your Docker Hub username
   - `DOCKERHUB_TOKEN`: Your Docker Hub access token

## 📚 Additional Resources

- [My Free Docker eBook](https://github.com/bobbyiliev/introduction-to-docker-ebook)
- [Multi-Platform Docker Images Guide](https://devdojo.com/bobbyiliev/how-to-create-multi-platform-docker-images)
- [Get $200 Free DigitalOcean Credit](https://m.do.co/c/2a9bba940f39)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 💬 Questions?

Feel free to reach out to me on Twitter [@bobbyiliev_](https://twitter.com/bobbyiliev_)!
