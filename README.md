# drones

Este repositorio contiene el espacio de trabajo desarrollado para realizar la gestion de un grupo de drones

## Prerrequisitos

- Ubuntu 18.04
- Ros Melodic
- Gazebo 9
- Clonar repositorios adicionales
- Python
- Pip
- MAVProxy
- Mavlink

## Instalaciones

### Ubuntu 18.04

Si no tienes instalado Ubuntu, ¡pues instalalo!
Puedes descargar la imagen iso de este [enlace](https://releases.ubuntu.com/18.04/)

### Ros Melodic

Estos comandos son los mismos que se utilizan en la página oficial de ROS, consultalo en este [enlace](http://wiki.ros.org/melodic/Installation/Ubuntu).

````
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
````
````
sudo apt install curl
````
````
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
````
````
sudo apt update
````
````
sudo apt install ros-melodic-desktop-full
````
````
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
````
````
source ~/.bashrc
````
````
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
````
````
sudo apt install python-rosdep
````
````
sudo rosdep init
````
````
rosdep update
````
### Gazebo 9

```` 
sudo apt-get update 
````
````
sudo apt-get install gazebo9
````
````
sudo apt-get install libgazebo9-dev
````
### Clonar repositorios adicionales
#### Repositorio Drone iris
````
git clone https://github.com/Sebastian2218/drone_iris_simulation.git
````
````
cd drone_iris_simulation/cd ardupilot_gazebo
````
````
mkdir build
````
````
cd build
````
````
cmake ..
````
````
make -j4
````
````
sudo make install
````
#### Repositorio Ardupilot
````
cd
````
````
cd drone_iris_simulation
````
````
git clone https://github.com/ArduPilot/ardupilot.git
````
````
cd ardupilot
````
````
git submodule update --init --recursive
````
````
echo 'source /usr/share/gazebo/setup.sh' >> ~/.bashrc
````
````
echo 'export GAZEBO_MODEL_PATH=~/drone_iris_simulation/ardupilot_gazebo/models' >> ~/.bashrc
````
````
echo 'export GAZEBO_RESOURCE_PATH=~/drone_iris_simulation/ardupilot_gazebo/worlds:${GAZEBO_RESOURCE_PATH}' >> ~/.bashrc
````
````
source ~/.bashrc
````
#### Repositorio nuevos mundos
````
cd
git clone https://github.com/chaolmu/gazebo_models_worlds_collection
````
Manualmente añadir los elementos de la carpeta de models y worlds de este repositorio en el repositorio de drone_iris_simulation/ardupilot_gazebo
#### Instalar pip:
````
sudo apt update                   
````
````
sudo apt install python-pip       
````
````
pip install pexpect                 
````

#### Instalar python:
````
sudo apt-get install python           
````

#### Instalar MAVProxy:
````
sudo pip install MAVProxy            
````

#### Instalar MAVLink:
````
sudo pip install pymavlink
````
Si no funciona el comando, usar este 
````
python -m pip install pymavlink
````

#### Instalar Pytest
````
pip install pytest
````
