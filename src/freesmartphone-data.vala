/* Generated by vala-dbus-binding-tool 0.3.3. Do not modify! */
/* Generated with: vala-dbus-binding-tool --api-path=/usr/local/share/freesmartphone/xml --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone --gdbus */
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

			public static WorldCountry from_variant (Variant v) {
				return v as WorldCountry;
			}
		}
		[DBus (name = "org.freesmartphone.Data.World", timeout = 120000)]
		public interface World : GLib.Object {

			[DBus (name = "GetAllCountries")]
			public abstract async FreeSmartphone.Data.WorldCountry[] get_all_countries() throws DBusError, IOError;

			[DBus (name = "GetCountryCodeForMccMnc")]
			public abstract async string get_country_code_for_mcc_mnc(string mcc_mnc) throws FreeSmartphone.Error, DBusError, IOError;

			[DBus (name = "GetTimezonesForCountryCode")]
			public abstract async GLib.HashTable<string, string> get_timezones_for_country_code(string country_code) throws FreeSmartphone.Error, DBusError, IOError;

			[DBus (name = "GetApnsForMccMnc")]
			public abstract async FreeSmartphone.Data.WorldConnectivityAccessPoint[] get_apns_for_mcc_mnc(string mcc_mnc) throws FreeSmartphone.Error, DBusError, IOError;
		}

		[DBus (name = "org.freesmartphone.Data.World", timeout = 120000)]
		public interface WorldSync : GLib.Object {

			[DBus (name = "GetAllCountries")]
			public abstract FreeSmartphone.Data.WorldCountry[] get_all_countries() throws DBusError, IOError;

			[DBus (name = "GetCountryCodeForMccMnc")]
			public abstract string get_country_code_for_mcc_mnc(string mcc_mnc) throws FreeSmartphone.Error, DBusError, IOError;

			[DBus (name = "GetTimezonesForCountryCode")]
			public abstract GLib.HashTable<string, string> get_timezones_for_country_code(string country_code) throws FreeSmartphone.Error, DBusError, IOError;

			[DBus (name = "GetApnsForMccMnc")]
			public abstract FreeSmartphone.Data.WorldConnectivityAccessPoint[] get_apns_for_mcc_mnc(string mcc_mnc) throws FreeSmartphone.Error, DBusError, IOError;
		}

		public struct WorldConnectivityAccessPoint {
			public string description;
			public string apn;
			public string username;
			public string password;
			public string dns1;
			public string dns2;

			public WorldConnectivityAccessPoint (string description, string apn, string username, string password, string dns1, string dns2 ) {
				this.description = description;
				this.apn = apn;
				this.username = username;
				this.password = password;
				this.dns1 = dns1;
				this.dns2 = dns2;
			}

			public static WorldConnectivityAccessPoint from_variant (Variant v) {
				return v as WorldConnectivityAccessPoint;
			}
		}	}
}