/* Generated by vala-dbus-binding-tool. Do not modify! */
/* Generated with: /usr/bin/vala-dbus-binding-tool --api-path=/media/Daten/src/git/specs/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeSmartphone {

	[DBus (use_string_marshalling = true)]
	public enum MusicPlayerPlaylistMode {
		[DBus (value="normal")]
		NORMAL,
		[DBus (value="random")]
		RANDOM,
		[DBus (value="endless")]
		ENDLESS,
	}

	[DBus (name = "org.freesmartphone.MusicPlayer.Playlist")]
	public errordomain MusicPlayerPlaylistError {
		[DBus (name = "FileNotFound")]
		FILE_NOT_FOUND,
		[DBus (name = "OutOfRange")]
		OUT_OF_RANGE,
		[DBus (name = "FiletypeNotSupported")]
		FILETYPE_NOT_SUPPORTED,
		[DBus (name = "Empty")]
		EMPTY,
		[DBus (name = "NoFileSelected")]
		NO_FILE_SELECTED,
		[DBus (name = "OutOfFiles")]
		OUT_OF_FILES,
	}

	[DBus (name = "org.freesmartphone")]
	public errordomain Error {
		[DBus (name = "InvalidParameter")]
		INVALID_PARAMETER,
		[DBus (name = "InternalError")]
		INTERNAL_ERROR,
		[DBus (name = "SystemError")]
		SYSTEM_ERROR,
		[DBus (name = "Unsupported")]
		UNSUPPORTED,
	}

	[DBus (name = "org.freesmartphone.MusicPlayer")]
	public interface MusicPlayer : GLib.Object {

		public abstract async void delete_playlist(ObjectPath list) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async ObjectPath get_current_playlist() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async GLib.HashTable<string, GLib.Value?> get_info_for_file(string file) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async string get_playing() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async GLib.HashTable<string, GLib.Value?> get_playing_info() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async string[] get_playlists() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async int get_volume() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void jump(int position) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async ObjectPath new_playlist(string name) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void next() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void pause() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void play() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void previous() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void seek_backward(int step) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void seek_forward(int step) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void set_current_playlist(ObjectPath list) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void set_playing(string file) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void set_volume(int volume) throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public abstract async void stop() throws FreeSmartphone.MusicPlayerError, DBus.Error;

		public signal void playing_changed(string file);

		public signal void playlist_added(ObjectPath path);

		public signal void playlist_removed(ObjectPath path);

		public signal void progress(int progress);

		public signal void state(FreeSmartphone.MusicPlayerState state);
	}

	[DBus (use_string_marshalling = true)]
	public enum MusicPlayerState {
		[DBus (value="stopped")]
		STOPPED,
		[DBus (value="playing")]
		PLAYING,
		[DBus (value="pause")]
		PAUSED,
		[DBus (value="buffering")]
		BUFFERING,
	}

	[DBus (name = "org.freesmartphone.Phone")]
	public interface Phone : GLib.Object {

		public abstract async string[] init_protocols() throws DBus.Error;

		public abstract async ObjectPath create_call(string number, string protocol, bool force) throws DBus.Error;

		public signal void incoming(ObjectPath call);
	}

	[DBus (use_string_marshalling = true)]
	public enum UsageSystemAction {
		[DBus (value="suspend")]
		SUSPEND,
		[DBus (value="resume")]
		RESUME,
		[DBus (value="shutdown")]
		SHUTDOWN,
		[DBus (value="reboot")]
		REBOOT,
	}

	[DBus (name = "org.freesmartphone.Resource")]
	public interface Resource : GLib.Object {

		public abstract async void enable() throws DBus.Error;

		public abstract async void disable() throws FreeSmartphone.ResourceError, DBus.Error;

		public abstract async void suspend() throws FreeSmartphone.ResourceError, DBus.Error;

		public abstract async void resume() throws FreeSmartphone.ResourceError, DBus.Error;
	}

	[DBus (name = "org.freesmartphone.Phone.Call")]
	public interface PhoneCall : GLib.Object {

		public abstract async string get_peer() throws DBus.Error;

		public abstract async string initiate() throws DBus.Error;

		public abstract async string activate() throws DBus.Error;

		public abstract async string release() throws DBus.Error;

		public abstract async string get_status() throws DBus.Error;

		public abstract async void remove() throws DBus.Error;

		public signal void incoming();

		public signal void outgoing();

		public signal void released();

		public signal void activated();
	}

	[DBus (use_string_marshalling = true)]
	public enum UsageResourcePolicy {
		[DBus (value="auto")]
		AUTO,
		[DBus (value="disabled")]
		DISABLED,
		[DBus (value="enabled")]
		ENABLED,
	}

	[DBus (name = "org.freesmartphone.Preferences")]
	public interface Preferences : GLib.Object {

		public abstract async string[] get_services() throws DBus.Error;

		public abstract async ObjectPath get_service(string name) throws DBus.Error;

		public abstract async string[] get_profiles() throws DBus.Error;

		public abstract async string get_profile() throws DBus.Error;

		public abstract async void set_profile(string profile) throws DBus.Error;
	}

	[DBus (name = "org.freesmartphone.MusicPlayer")]
	public errordomain MusicPlayerError {
		[DBus (name = "NoFileSelected")]
		NO_FILE_SELECTED,
		[DBus (name = "NoPlaylistSelected")]
		NO_PLAYLIST_SELECTED,
		[DBus (name = "UnknownPlaylist")]
		UNKNOWN_PLAYLIST,
		[DBus (name = "PlaylistOutOfFiles")]
		PLAYLIST_OUT_OF_FILES,
		[DBus (name = "FileNotFound")]
		FILE_NOT_FOUND,
		[DBus (name = "FiletypeNotSupported")]
		FILETYPE_NOT_SUPPORTED,
		[DBus (name = "ProtocolNotSupported")]
		PROTOCOL_NOT_SUPPORTED,
	}

	[DBus (name = "org.freesmartphone.Usage")]
	public interface Usage : GLib.Object {

		public abstract async void register_resource(string name, ObjectPath path) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract async void unregister_resource(string name) throws DBus.Error;

		public abstract async string[] list_resources() throws DBus.Error;

		public abstract async FreeSmartphone.UsageResourcePolicy get_resource_policy(string name) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract async void set_resource_policy(string name, FreeSmartphone.UsageResourcePolicy policy) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract async bool get_resource_state(string name) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract async string[] get_resource_users(string name) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract async void request_resource(string name) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract async void release_resource(string name) throws FreeSmartphone.UsageError, DBus.Error;

		public abstract async void suspend() throws DBus.Error;

		public abstract async void shutdown() throws DBus.Error;

		public abstract async void reboot() throws DBus.Error;

		public signal void resource_available(string name, bool availability);

		public signal void resource_changed(string name, bool state, GLib.HashTable<string, GLib.Value?> attributes);

		public signal void system_action(FreeSmartphone.UsageSystemAction action);
	}

	[DBus (name = "org.freesmartphone.Usage")]
	public errordomain UsageError {
		[DBus (name = "PolicyUnknown")]
		POLICY_UNKNOWN,
		[DBus (name = "PolicyDisabled")]
		POLICY_DISABLED,
		[DBus (name = "ResourceUnknown")]
		RESOURCE_UNKNOWN,
		[DBus (name = "ResourceExists")]
		RESOURCE_EXISTS,
		[DBus (name = "ResourceInUse")]
		RESOURCE_IN_USE,
		[DBus (name = "UserExists")]
		USER_EXISTS,
		[DBus (name = "UserUnknown")]
		USER_UNKNOWN,
	}

	[DBus (name = "org.freesmartphone.Network")]
	public interface Network : GLib.Object {

		public abstract async void start_connection_sharing_with_interface(string interface) throws FreeSmartphone.Error, DBus.Error;
	}

	[DBus (name = "org.freesmartphone.MusicPlayer.Playlist")]
	public interface MusicPlayerPlaylist : GLib.Object {

		public abstract async int add(string file) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void change_name(string new_name) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async string get_at_position(int position) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async string[] get_files() throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async FreeSmartphone.MusicPlayerPlaylistMode get_mode() throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async string get_name() throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void insert(int position, string file) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void insert_dir(int position, string file, bool recursive) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void jump_to(int position) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void load_from_file(string file) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void remove(int position) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public abstract async void set_mode(FreeSmartphone.MusicPlayerPlaylistMode mode) throws FreeSmartphone.MusicPlayerPlaylistError, DBus.Error;

		public signal void deleted();

		public signal void file_added(int position, string file);

		public signal void file_removed(int postion);

		public signal void mode_changed(FreeSmartphone.MusicPlayerPlaylistMode mode);

		public signal void name(string name);

		public signal void playing(string file);
	}

	[DBus (name = "org.freesmartphone.Events")]
	public interface Events : GLib.Object {

		public abstract async void add_rule(string rule) throws DBus.Error;

		public abstract async void remove_rule(string name) throws DBus.Error;

		public abstract async void trigger_test(string name, bool value) throws DBus.Error;
	}

	[DBus (name = "org.freesmartphone.Preferences.Service")]
	public interface PreferencesService : GLib.Object {

		public abstract async string[] get_keys() throws DBus.Error;

		public abstract async GLib.Value get_value(string key) throws DBus.Error;

		public abstract async void set_value(string key, GLib.Value value) throws DBus.Error;

		public abstract async bool is_profilable(string key) throws DBus.Error;

		public abstract async string get_type_(string key) throws DBus.Error;

		public signal void notify(string key, GLib.Value value);
	}

	[DBus (name = "org.freesmartphone.Resource")]
	public errordomain ResourceError {
		[DBus (name = "NotEnabled")]
		NOT_ENABLED,
	}
}
