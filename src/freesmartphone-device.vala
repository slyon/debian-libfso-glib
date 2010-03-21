/* Generated by vala-dbus-binding-tool 0.1.5. Do not modify! */
/* Generated with: /usr/local/bin/vala-dbus-binding-tool --api-path=/local/pkg/fso/specs/xml/ --directory=./ --strip-namespace=org --rename-namespace=freedesktop:FreeDesktop --rename-namespace=freesmartphone:FreeSmartphone */
using DBus;
using GLib;

namespace FreeSmartphone {

	namespace Device {

		[DBus (name = "org.freesmartphone.Device.Audio")]
		public errordomain AudioError {
			[DBus (name = "UnknownFormat")]
			UNKNOWN_FORMAT,
			[DBus (name = "PlayerError")]
			PLAYER_ERROR,
			[DBus (name = "NotPlaying")]
			NOT_PLAYING,
			[DBus (name = "AlreadyPlaying")]
			ALREADY_PLAYING,
			[DBus (name = "ScenarioInvalid")]
			SCENARIO_INVALID,
			[DBus (name = "ScenarioStackUnderflow")]
			SCENARIO_STACK_UNDERFLOW,
			[DBus (name = "DeviceFailed")]
			DEVICE_FAILED,
		}

		[DBus (use_string_marshalling = true)]
		public enum SoundState {
			[DBus (value="playing")]
			PLAYING,
			[DBus (value="stopped")]
			STOPPED,
		}

		[DBus (use_string_marshalling = true)]
		public enum IdleState {
			[DBus (value="busy")]
			BUSY,
			[DBus (value="idle")]
			IDLE,
			[DBus (value="idle_dim")]
			IDLE_DIM,
			[DBus (value="idle_prelock")]
			IDLE_PRELOCK,
			[DBus (value="lock")]
			LOCK,
			[DBus (value="suspend")]
			SUSPEND,
			[DBus (value="awake")]
			AWAKE,
		}

		[DBus (name = "org.freesmartphone.Device.Input")]
		public interface Input : GLib.Object {

			public abstract async string get_id() throws DBus.Error;

			public abstract async string get_capabilities() throws DBus.Error;

			public signal void event(string name, FreeSmartphone.Device.InputState action, int seconds);
		}

		public Input get_input_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as Input;
		}
		[DBus (use_string_marshalling = true)]
		public enum PowerStatus {
			[DBus (value="charging")]
			CHARGING,
			[DBus (value="discharging")]
			DISCHARGING,
			[DBus (value="full")]
			FULL,
			[DBus (value="empty")]
			EMPTY,
			[DBus (value="critical")]
			CRITICAL,
			[DBus (value="critical")]
			REMOVED,
			[DBus (value="unknown")]
			UNKNOWN,
			[DBus (value="online")]
			ONLINE,
			[DBus (value="offline")]
			OFFLINE,
			[DBus (value="ac")]
			AC,
		}

		[DBus (name = "org.freesmartphone.Device.LED")]
		public interface LED : GLib.Object {

			public abstract async void set_brightness(int brightness) throws DBus.Error;

			public abstract async void set_blinking(int on_duration, int off_duration) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void blink_seconds(int seconds, int on_duration, int off_duration) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void set_networking(string interface, string mode) throws FreeSmartphone.Error, DBus.Error;
		}

		public LED get_l_e_d_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as LED;
		}
		[DBus (name = "org.freesmartphone.Device.Orientation")]
		public interface Orientation : GLib.Object {

			public abstract async string get_orientation() throws DBus.Error;

			public signal void orientation_changed(string orientation);
		}

		public Orientation get_orientation_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as Orientation;
		}
		[DBus (name = "org.freesmartphone.Device.Vibrator")]
		public interface Vibrator : GLib.Object {

			public abstract async void vibrate_pattern(int pulses, int on_duration, int off_duration, int strength) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void vibrate(int seconds, int strength) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void stop() throws FreeSmartphone.Error, DBus.Error;
		}

		public Vibrator get_vibrator_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as Vibrator;
		}
		[DBus (name = "org.freesmartphone.Device.Info")]
		public interface Info : GLib.Object {

			public abstract async GLib.HashTable<string, GLib.Value?> get_cpu_info() throws DBus.Error;
		}

		public Info get_info_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as Info;
		}
		[DBus (use_string_marshalling = true)]
		public enum InputState {
			[DBus (value="pressed")]
			PRESSED,
			[DBus (value="held")]
			HELD,
			[DBus (value="released")]
			RELEASED,
		}

		[DBus (name = "org.freesmartphone.Device.PowerControl")]
		public interface PowerControl : GLib.Object {

			public abstract async bool get_power() throws DBus.Error;

			public abstract async void set_power(bool on) throws DBus.Error;

			public signal void power(bool on);
		}

		public PowerControl get_power_control_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as PowerControl;
		}
		[DBus (name = "org.freesmartphone.Device.PowerSupply")]
		public interface PowerSupply : GLib.Object {

			public abstract async int get_capacity() throws DBus.Error;

			public abstract async FreeSmartphone.Device.PowerStatus get_power_status() throws DBus.Error;

			public signal void power_status(FreeSmartphone.Device.PowerStatus status);

			public signal void capacity(int energy);
		}

		public PowerSupply get_power_supply_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as PowerSupply;
		}
		[DBus (name = "org.freesmartphone.Device.Display")]
		public interface Display : GLib.Object {

			public abstract async int get_brightness() throws DBus.Error;

			public abstract async void set_brightness(int brightness) throws DBus.Error;

			public abstract async bool get_backlight_power() throws DBus.Error;

			public abstract async void set_backlight_power(bool power) throws DBus.Error;
		}

		public Display get_display_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as Display;
		}
		[DBus (name = "org.freesmartphone.Device.RealtimeClock")]
		public interface RealtimeClock : GLib.Object {

			public abstract async int get_current_time() throws FreeSmartphone.Error, DBus.Error;

			public abstract async void set_current_time(int time) throws FreeSmartphone.Error, DBus.Error;

			public abstract async int get_wakeup_time() throws FreeSmartphone.Error, DBus.Error;

			public abstract async void set_wakeup_time(int time) throws FreeSmartphone.Error, DBus.Error;

			public signal void wakeup_time_changed(int time);

			public signal void alarm(int time);
		}

		public RealtimeClock get_realtime_clock_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as RealtimeClock;
		}
		[DBus (name = "org.freesmartphone.Device.Audio")]
		public interface Audio : GLib.Object {

			public abstract async string[] get_available_scenarios() throws DBus.Error;

			public abstract async void play_sound(string name, int loop, int length) throws FreeSmartphone.Device.AudioError, FreeSmartphone.Error, DBus.Error;

			public abstract async void stop_sound(string name) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void stop_all_sounds() throws DBus.Error;

			public signal void sound_status(string id, FreeSmartphone.Device.SoundState status, GLib.HashTable<string, GLib.Value?> properties);

			public abstract async string get_scenario() throws DBus.Error;

			public abstract async void set_scenario(string scenario) throws FreeSmartphone.Error, DBus.Error;

			public abstract async void push_scenario(string scenario) throws FreeSmartphone.Error, DBus.Error;

			public abstract async string pull_scenario() throws FreeSmartphone.Device.AudioError, DBus.Error;

			public abstract async void save_scenario(string scenario) throws FreeSmartphone.Error, DBus.Error;

			public signal void scenario(string scenario, string reason);
		}

		public Audio get_audio_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as Audio;
		}
		[DBus (name = "org.freesmartphone.Device.IdleNotifier")]
		public interface IdleNotifier : GLib.Object {

			public abstract async FreeSmartphone.Device.IdleState get_state() throws DBus.Error;

			public abstract async GLib.HashTable<string, int> get_timeouts() throws DBus.Error;

			public abstract async void set_timeout(FreeSmartphone.Device.IdleState status, int timeout) throws DBus.Error;

			public abstract async void set_state(FreeSmartphone.Device.IdleState status) throws DBus.Error;

			public signal void state(FreeSmartphone.Device.IdleState status);
		}

		public IdleNotifier get_idle_notifier_proxy(DBus.Connection con, string busname, DBus.ObjectPath path) {
			return con.get_object(busname, path) as IdleNotifier;
		}	}
}
