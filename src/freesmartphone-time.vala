/* Generated by vala-dbus-binding-tool. Do not modify! */
/* Generated with: /usr/bin/vala-dbus-binding-tool --api-path=../../fso-specs.git/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeSmartphone {

	namespace Time {

		[DBus (name = "org.freesmartphone.Time.Alarm")]
		public interface Alarm : GLib.Object {

			public abstract void clear_alarm(string busname) throws DBus.Error;

			public abstract void set_alarm(string busname, int timestamp) throws DBus.Error;
		}
	}
}
