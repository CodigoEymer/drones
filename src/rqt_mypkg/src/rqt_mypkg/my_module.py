import os
import rospy
import rospkg

from std_msgs.msg import String
from qt_gui.plugin import Plugin
from python_qt_binding import loadUi
from python_qt_binding.QtWidgets import QWidget

#De srv comando
from sensor_msgs.msg import NavSatFix
from nav_msgs.msg import Odometry
from mavros_msgs.srv import *

#global variable
latitude =0.0
longitude=0.0

class MyPlugin(Plugin):


    def __init__(self, context):
        super(MyPlugin, self).__init__(context)
        # Give QObjects reasonable names
        self.setObjectName('MyPlugin')

        # Process standalone plugin command-line arguments
        from argparse import ArgumentParser
        parser = ArgumentParser()
        # Add argument(s) to the parser.
        parser.add_argument("-q", "--quiet", action="store_true",
                      dest="quiet",
                      help="Put plugin in silent mode")
        args, unknowns = parser.parse_known_args(context.argv())
        if not args.quiet:
            print 'arguments: ', args
            print 'unknowns: ', unknowns

        # Create QWidget
        self._widget = QWidget()
        # Get path to UI file which should be in the "resource" folder of this package
        ui_file = os.path.join(rospkg.RosPack().get_path('rqt_mypkg'), 'resource', 'MyPlugin.ui')
        # Extend the widget with all attributes and children from UI file
        loadUi(ui_file, self._widget)
        # Give QObjects reasonable names
        self._widget.setObjectName('MyPluginUi')
        # Show _widget.windowTitle on left-top of each plugin (when
        # it's set in _widget). This is useful when you open multiple
        # plugins at once. Also if you open multiple instances of your
        # plugin at once, these lines add number to make it easy to
        # tell from pane to pane.
        self._widget.setWindowTitle('MasterDron')
        if context.serial_number() > 1:
            self._widget.setWindowTitle(self._widget.windowTitle() + (' (%d)' % context.serial_number()))
        # Add widget to the user interface

        context.add_widget(self._widget)

        self._widget.Barmar.clicked.connect(self.armar)
        self._widget.Bdesarmar.clicked.connect(self.desarmar)
        self._widget.Biniciar.clicked.connect(self.iniciar)
        self._widget.Baterrizar.clicked.connect(self.aterrizar)
        self._widget.Bsubir.clicked.connect(self.subir)

        self.sub = rospy.Subscriber('topic_1', String, self.stringListenerCallback)
        #simple_publisher = rospy.Publisher('topic_1', String, queue_size = 10)


        #self.sub = rospy.Subscriber('monitoring_result', MyMessageType, self.monitoringCallback,  queue_size=1)
        #self.connect(self._widget.Barmar, SIGNAL(clicked()), self.monitoringSlot)

        # Topic callback function.
    def stringListenerCallback(self,data):
        rospy.loginfo('%s', data.data)
        self._widget.instruccion.setText(data.data)

    def armar(self):
        self._widget.instruccion.setText("comando armar enviado")

        rospy.wait_for_service('/mavros/set_mode')
        try:
            flightModeService = rospy.ServiceProxy('/mavros/set_mode', mavros_msgs.srv.SetMode)
            #http://wiki.ros.org/mavros/CustomModes for custom modes
            isModeChanged = flightModeService(custom_mode='STABILIZE') #return true or false
        except rospy.ServiceException, e:
            print "service set_mode call failed: %s. GUIDED Mode could not be set. Check that GPS is enabled"%e

        rospy.wait_for_service('/mavros/cmd/arming')
        try:
            armService = rospy.ServiceProxy('/mavros/cmd/arming', mavros_msgs.srv.CommandBool)
            armService(True)
        except rospy.ServiceException, e:
            print "Service arm call failed: %s"%e


    def desarmar(self):
        self._widget.instruccion.setText("comando desarmar enviado")

    def iniciar(self):
        self._widget.instruccion.setText("comando iniciar enviado")

    def aterrizar(self):
        self._widget.instruccion.setText("comando aterrizar enviado")

        rospy.wait_for_service('/mavros/cmd/land')
        try:
            landService = rospy.ServiceProxy('/mavros/cmd/land', mavros_msgs.srv.CommandTOL)
            #http://wiki.ros.org/mavros/CustomModes for custom modes
            isLanding = landService(altitude = 0, latitude = 0, longitude = 0, min_pitch = 0, yaw = 0)
        except rospy.ServiceException, e:
            print "service land call failed: %s. The vehicle cannot land "%e

    def subir(self):
        a = self._widget.textEdit_subir.toPlainText()
        fa=float(a)
        print(a)
        self._widget.instruccion.setText("comando takeoff enviado: altura definida = "+a)

        rospy.wait_for_service('/mavros/set_mode')
        try:
            flightModeService = rospy.ServiceProxy('/mavros/set_mode', mavros_msgs.srv.SetMode)
            #http://wiki.ros.org/mavros/CustomModes for custom modes
            isModeChanged = flightModeService(custom_mode='GUIDED') #return true or false
        except rospy.ServiceException, e:
            print "service set_mode call failed: %s. GUIDED Mode could not be set. Check that GPS is enabled"%e

        rospy.wait_for_service('/mavros/cmd/takeoff')
        try:
            takeoffService = rospy.ServiceProxy('/mavros/cmd/takeoff', mavros_msgs.srv.CommandTOL)
            takeoffService(altitude = fa, latitude = 0, longitude = 0, min_pitch = 0, yaw = 0)
        except rospy.ServiceException, e:
            print "Service takeoff call failed: %s"%e



#    def monitoringCallback(self, data):
#        self.emit(SIGNAL("changeUI(PyQt_PyObject)"), data)

#    def monitoringSlot(self, data):
#        self._widget.lcdGoalID.display(data.current_trajectory + 1)
#        self._widget.progressBar.setValue(data.max_num_collisions)
#        self._widget.progressBar.setRange(0, data.coll_threshold)

#        p = self._widget.palette()
#        self._widget.setAutoFillBackground(True);
#        if data.severe_collision:
#            p.setColor(self._widget.backgroundRole(), Qt.red)
#        else:
#            p.setColor(self._widget.backgroundRole(), Qt.green)
#        self._widget.setPalette(p)




# FUNCIONES DEFAULD*************

    def shutdown_plugin(self):
        # TODO unregister all publishers here
        pass

    def save_settings(self, plugin_settings, instance_settings):
        # TODO save intrinsic configuration, usually using:
        # instance_settings.set_value(k, v)
        pass

    def restore_settings(self, plugin_settings, instance_settings):
        # TODO restore intrinsic configuration, usually using:
        # v = instance_settings.value(k)
        pass

    #def trigger_configuration(self):
        # Comment in to signal that the plugin has a way to configure
        # This will enable a setting button (gear icon) in each dock widget title bar
        # Usually used to open a modal configuration dialog
