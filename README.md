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
### Crear Espacio de Trabajo
````
mkdir -p ~/catkin_ws/src
````
````
cd ~/catkin_ws/
````
````
catkin_make
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
cd drone_iris_simulation/ardupilot_gazebo
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
#### Instalar MavRos
````
sudo apt-get install ros-melodic-mavros ros-melodic-mavros-extras
````
````
wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
chmod a+x install_geographiclib_datasets.sh
./install_geographiclib_datasets.sh
````
````
mkdir launch
````
````
cd launch
````
````
roscp mavros apm.launch apm.launch
````
En el archivo apm editar la linea 5 agregando la siguien ip

### Testeo de ardupilot y mundo Iris_arducopter_runway.word
````
gazebo --verbose drone_iris_simulation/ardupilot_gazebo/worlds/iris_arducopter_runway.world
````
````
cd ~/drone_iris_simulation/ardupilot/ArduCopter
../Tools/autotest/sim_vehicle.py -f gazebo-iris --console -I0
````
#### Comandos de MavProxy
````
mode GUIDED
````
````
arm throttle
````
````
takeoff 5
````
````
position  30 0 0
````

## Multi-UAV
https://www.youtube.com/watch?v=r15Tc6e2K7Y

1. Copiar modelo Iris_with_ardupilot la cantidad de veces segun los drones que se requieran. Asignarles nombres.
2. Modificar dentro de cada modelo en el archivo model.config el nombre del modelo según la asignación del paso anterior.
3. Modificar en el archivo model.sdf dentro de los mismos modelos las lineas de codigo <fdm_port_in> y <fdm_port_out> para definir los puertos estos deben escalarse de a 10 en 10.
4. Modificar el Mundo donde se quieren incluir los modelos de los drones modificados y agregar al final las siguientes lineas.

````
    <model name="dron1">
     <pose>0 0 0 0 0 0 </pose>
     <include>
       <uri>model://dron1</uri>
     </include>
    </model>
    
    <model name="dron2">
     <pose>10 0 0 0 0 0 </pose>
     <include>
       <uri>model://dron2</uri>
     </include>
    </model>

    <model name="dron3">
     <pose>20 0 0 0 0 0 </pose>
     <include>
       <uri>model://dron3</uri>
     </include>
    </model>
````
5. Ejecutar mundo gazebo, y los ardupilot de cada dron siguiendo los siguientes comandos:

###### Terminal 0
````
gazebo --verbose drone_iris_simulation/ardupilot_gazebo/worlds/iris_arducopter_runway.world
````

###### Terminal 1
````
cd ~/drone_iris_simulation/ardupilot/ArduCopter
../Tools/autotest/sim_vehicle.py -f gazebo-iris --console -I0 --out=tcpin:0.0.0.0:8100
````
###### Terminal 2
````
cd ~/drone_iris_simulation/ardupilot/ArduCopter
../Tools/autotest/sim_vehicle.py -f gazebo-iris --console -I1 --out=tcpin:0.0.0.0:8200
````
###### Terminal 3
````
cd ~/drone_iris_simulation/ardupilot/ArduCopter
../Tools/autotest/sim_vehicle.py -f gazebo-iris --console -I2 --out=tcpin:0.0.0.0:8300
````


