/* Generated by vala-dbus-binding-tool. Do not modify! */
/* Generated with: /usr/local/bin/vala-dbus-binding-tool --api-path=/local/pkg/fso/specs/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeDesktop {

	namespace Gypsy {

		[DBus (name = "org.freedesktop.Gypsy.Course")]
		public interface Course : GLib.Object {

			public abstract  void get_course(out int fields, out int tstamp, out double speed, out double heading, out double climb) throws DBus.Error;

			public signal void course_changed();
		}

		//Proxy class for interface Course
		public class CourseProxy: GLib.Object, Course {
		
			private Course course;
			
			public CourseProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				course = con.get_object (bus_name,path) as Course;
			}

			public  void get_course(out int fields, out int tstamp, out double speed, out double heading, out double climb) throws DBus.Error { 
				 course.get_course(out fields, out tstamp, out speed, out heading, out climb);
			}
		}
		[DBus (name = "org.freedesktop.Gypsy.Accuracy")]
		public interface Accuracy : GLib.Object {

			public abstract  void get_accuracy(out int fields, out double pdop, out double hdop, out double vdop) throws DBus.Error;

			public signal void accuracy_changed();
		}

		//Proxy class for interface Accuracy
		public class AccuracyProxy: GLib.Object, Accuracy {
		
			private Accuracy accuracy;
			
			public AccuracyProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				accuracy = con.get_object (bus_name,path) as Accuracy;
			}

			public  void get_accuracy(out int fields, out double pdop, out double hdop, out double vdop) throws DBus.Error { 
				 accuracy.get_accuracy(out fields, out pdop, out hdop, out vdop);
			}
		}
		[DBus (name = "org.freedesktop.Gypsy.Time")]
		public interface Time : GLib.Object {

			public abstract  int get_time() throws DBus.Error;

			public signal void time_changed();
		}

		//Proxy class for interface Time
		public class TimeProxy: GLib.Object, Time {
		
			private Time time;
			
			public TimeProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				time = con.get_object (bus_name,path) as Time;
			}

			public  int get_time() throws DBus.Error { 
				return  time.get_time();
			}
		}
		[DBus (name = "org.freedesktop.Gypsy.Device")]
		public interface Device : GLib.Object {

			public abstract  bool get_connection_status() throws DBus.Error;

			public abstract  int get_fix_status() throws DBus.Error;

			public abstract  void start() throws DBus.Error;

			public abstract  void stop() throws DBus.Error;

			public signal void connection_status_changed();

			public signal void fix_status_changed();
		}

		//Proxy class for interface Device
		public class DeviceProxy: GLib.Object, Device {
		
			private Device device;
			
			public DeviceProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				device = con.get_object (bus_name,path) as Device;
			}

			public  bool get_connection_status() throws DBus.Error { 
				return  device.get_connection_status();
			}

			public  int get_fix_status() throws DBus.Error { 
				return  device.get_fix_status();
			}

			public  void start() throws DBus.Error { 
				 device.start();
			}

			public  void stop() throws DBus.Error { 
				 device.stop();
			}
		}
		[DBus (name = "org.freedesktop.Gypsy.Position")]
		public interface Position : GLib.Object {

			public abstract  void get_position(out int fields, out int tstamp, out double lat, out double lon, out double alt) throws DBus.Error;

			public signal void position_changed(int fields, int tstamp, double lat, double lon, double alt);
		}

		//Proxy class for interface Position
		public class PositionProxy: GLib.Object, Position {
		
			private Position position;
			
			public PositionProxy (DBus.Connection con, string bus_name, ObjectPath path) {
				position = con.get_object (bus_name,path) as Position;
			}

			public  void get_position(out int fields, out int tstamp, out double lat, out double lon, out double alt) throws DBus.Error { 
				 position.get_position(out fields, out tstamp, out lat, out lon, out alt);
			}
		}	}
}
