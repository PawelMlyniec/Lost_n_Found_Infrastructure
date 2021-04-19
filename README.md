# Local setup
Make sure you have Java 14 installed and correctly configured (Windows)
* download zip package from https://download.java.net/openjdk/jdk14/ri/openjdk-14+36_windows-x64_bin.zip
* extract it to some folder, for example `C:/java`
* set environment variable
** `Path` to `C:\java\bin`
** `JAVA_HOME` to `C:\java` 

Clone the repo including submodules. Then enter the `infrastructure/local` directory
```bash
git clone --recurse-submodules https://gitlab.com/reliable-and-scalable-biskup/infrastructure.git
git submodule update --recursive --remote
cd infrastructure/local
```
Start the backend
```bash
./start-backend.sh # Linux
start-backend.bat # Windows
```
Stop the backend
```bash
./stop-backend.sh # Linux
stop-backend.bat # Windows
```
Stop the backend and delete all containers
```bash
./kill-backend.sh # Linux
kill-backend.bat # Windows
```
Pull changes from all remote repositories to get the latest backend state
```bash
git pull
git submodule update --recursive --remote
```