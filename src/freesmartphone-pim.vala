/* Generated by vala-dbus-binding-tool. Do not modify! */
/* Generated with: /usr/local/bin/vala-dbus-binding-tool --api-path=/local/pkg/fso/specs/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeSmartphone {

	namespace PIM {

		[DBus (name = "org.freesmartphone.PIM.Calls")]
		public interface Calls : GLib.Object {

			public abstract async string add(GLib.HashTable<string, GLib.Value?> call_data) throws DBus.Error;

			public abstract async string get_single_call_single_field(GLib.HashTable<string, GLib.Value?> query, string field) throws DBus.Error;

			public abstract async string query(GLib.HashTable<string, GLib.Value?> query) throws DBus.Error;

			public signal void new_call(string call_path);

			public signal void new_missed_calls(int amount);
		}

		[DBus (name = "org.freesmartphone.PIM.MessageQuery")]
		public interface MessageQuery : GLib.Object {

			public abstract async int get_result_count() throws DBus.Error;

			public abstract async void rewind() throws DBus.Error;

			public abstract async void skip(int count) throws DBus.Error;

			public abstract async string get_message_path() throws DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?> get_result() throws DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?>[] get_multiple_results(int count) throws DBus.Error;

			public abstract async void dispose_() throws DBus.Error;
		}

		[DBus (name = "org.freesmartphone.PIM.CallQuery")]
		public interface CallQuery : GLib.Object {

			public abstract async int get_result_count() throws DBus.Error;

			public abstract async void rewind() throws DBus.Error;

			public abstract async void skip(int count) throws DBus.Error;

			public abstract async string get_call_path() throws DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?> get_result() throws DBus.Error;

			public abstract  GLib.HashTable<string, GLib.Value?>[] get_multiple_results(int count) throws DBus.Error;

			public abstract async void dispose_() throws DBus.Error;
		}

		[DBus (name = "org.freesmartphone.PIM.MessageFolder")]
		public interface MessageFolder : GLib.Object {

			public abstract async int get_message_count() throws DBus.Error;

			public abstract async string[] get_message_paths(int first, int count) throws DBus.Error;

			public signal void message_moved(string message_path, string new_folder);
		}

		[DBus (name = "org.freesmartphone.PIM.Sources")]
		public interface Sources : GLib.Object {

			public abstract async void init_all_entries() throws DBus.Error;

			public abstract async int get_entry_count() throws DBus.Error;

			public abstract  string[] get_domains() throws DBus.Error;

			public abstract  string get_default_backend(string domain) throws DBus.Error;
		}

		[DBus (name = "org.freesmartphone.PIM.Contact")]
		public interface Contact : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_content() throws DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?> get_multiple_fields(string field_list) throws DBus.Error;

			public abstract  string[] get_used_backends() throws DBus.Error;

			public abstract async void update(GLib.HashTable<string, GLib.Value?> contact_data) throws DBus.Error;

			public abstract async void delete() throws DBus.Error;
		}

		[DBus (name = "org.freesmartphone.PIM.ContactQuery")]
		public interface ContactQuery : GLib.Object {

			public abstract async int get_result_count() throws DBus.Error;

			public abstract async void rewind() throws DBus.Error;

			public abstract async void skip(int count) throws DBus.Error;

			public abstract async string get_contact_path() throws DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?> get_result() throws DBus.Error;

			public abstract  GLib.HashTable<string, GLib.Value?>[] get_multiple_results(int count) throws DBus.Error;

			public abstract async void dispose_() throws DBus.Error;
		}

		[DBus (name = "org.freesmartphone.PIM.Contacts")]
		public interface Contacts : GLib.Object {

			public abstract async string add(GLib.HashTable<string, GLib.Value?> contact_data) throws DBus.Error;

			public abstract async string get_single_contact_single_field(GLib.HashTable<string, GLib.Value?> query, string field) throws DBus.Error;

			public abstract async string query(GLib.HashTable<string, GLib.Value?> query) throws DBus.Error;

			public signal void new_contact(string contact_path);
		}

		[DBus (name = "org.freesmartphone.PIM.Messages")]
		public interface Messages : GLib.Object {

			public abstract async string add(GLib.HashTable<string, GLib.Value?> message_data) throws DBus.Error;

			public abstract async string get_single_message_single_field(GLib.HashTable<string, GLib.Value?> query, string field) throws DBus.Error;

			public abstract async string query(GLib.HashTable<string, GLib.Value?> query) throws DBus.Error;

			public abstract async string[] get_folder_names() throws DBus.Error;

			public abstract async string get_folder_path_from_name(string folder_name) throws DBus.Error;

			public signal void new_message(string message_path);

			public signal void incoming_message(string message_path);

			public signal void unread_messages(int amount);
		}

		[DBus (name = "org.freesmartphone.PIM.Source")]
		public interface Source : GLib.Object {

			public abstract async string get_name() throws DBus.Error;

			public abstract async string get_status() throws DBus.Error;

			public abstract async string[] get_supported_p_i_m_domains() throws DBus.Error;

			public abstract  void enable() throws DBus.Error;

			public abstract  void disable() throws DBus.Error;

			public abstract  bool get_enabled() throws DBus.Error;

			public abstract  string[] get_properties() throws DBus.Error;

			public abstract  void set_as_default(string domain) throws DBus.Error;
		}

		[DBus (name = "org.freesmartphone.PIM.Call")]
		public interface Call : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_content() throws DBus.Error;

			public abstract async GLib.HashTable<string, GLib.Value?> get_multiple_fields(string field_list) throws DBus.Error;

			public abstract  string[] get_used_backends() throws DBus.Error;

			public abstract async void update(GLib.HashTable<string, GLib.Value?> call_data) throws DBus.Error;

			public abstract async void delete() throws DBus.Error;
		}

		[DBus (name = "org.freesmartphone.PIM.Message")]
		public interface Message : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_content() throws DBus.Error;

			public abstract async void get_multiple_fields(string field_list) throws DBus.Error;

			public abstract async void move_to_folder(string folder_name) throws DBus.Error;

			public abstract async void update(GLib.HashTable<string, GLib.Value?> message_data) throws DBus.Error;

			public abstract async void delete() throws DBus.Error;
		}
	}
}