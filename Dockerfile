# Use a more recent Windows Server Core image
FROM mcr.microsoft.com/windows-cssc/python:3.9-servercore-ltsc2022

# Set shell to PowerShell
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

# Verify Python installation
RUN python --version

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Set the startup command
CMD ["python", "app.py"]
