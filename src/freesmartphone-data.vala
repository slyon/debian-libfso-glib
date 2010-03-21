/* Generated by vala-dbus-binding-tool 0.1.5. Do not modify! */
/* Generated with: /usr/local/bin/vala-dbus-binding-tool --api-path=/local/pkg/fso/specs/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeSmartphone {

	namespace Data {

		public struct WorldCountry {
			public string code;
			public string name;

			public WorldCountry (string code, string name ) {
				this.code = code;
				this.name = name;
			}
		}

		[DBus (name = "org.freesmartphone.Data.World")]
		public interface World : GLib.Object {

			public abstract async FreeSmartphone.Data.WorldCountry[] get_all_countries() throws DBus.Error;

			public abstract async string get_country_code_for_mcc_mnc(string mcc_mnc) throws FreeSmartphone.Error, DBus.Error;

			public abstract async GLib.HashTable<string, string> get_timezones_for_country_code(string country_code) throws FreeSmartphone.Error, DBus.Error;
		}

		public World get_world_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as World;
		}	}
}
