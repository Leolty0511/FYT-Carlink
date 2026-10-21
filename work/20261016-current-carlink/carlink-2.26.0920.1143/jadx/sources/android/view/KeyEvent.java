package android.view;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import android.util.TimeUtils;

/* JADX INFO: loaded from: classes2.dex */
public class KeyEvent extends InputEvent {
    public static final int ACTION_DOWN = 0;
    public static final int ACTION_MULTIPLE = 2;
    public static final int ACTION_UP = 1;
    static final boolean DEBUG = false;
    public static final int FLAG_CANCELED = 32;
    public static final int FLAG_CANCELED_LONG_PRESS = 256;
    public static final int FLAG_EDITOR_ACTION = 16;
    public static final int FLAG_FALLBACK = 1024;
    public static final int FLAG_FROM_SYSTEM = 8;
    public static final int FLAG_KEEP_TOUCH_MODE = 4;
    public static final int FLAG_LONG_PRESS = 128;
    public static final int FLAG_PREDISPATCH = 536870912;
    public static final int FLAG_SOFT_KEYBOARD = 2;
    public static final int FLAG_START_TRACKING = 1073741824;
    public static final int FLAG_TAINTED = Integer.MIN_VALUE;
    public static final int FLAG_TRACKING = 512;
    public static final int FLAG_VIRTUAL_HARD_KEY = 64;

    @Deprecated
    public static final int FLAG_WOKE_HERE = 1;
    private static final int FYT_KEY_BASE = 285;
    public static final int KEYCODE_0 = 7;
    public static final int KEYCODE_1 = 8;
    public static final int KEYCODE_11 = 227;
    public static final int KEYCODE_12 = 228;
    public static final int KEYCODE_2 = 9;
    public static final int KEYCODE_3 = 10;
    public static final int KEYCODE_3D_MODE = 206;
    public static final int KEYCODE_4 = 11;
    public static final int KEYCODE_5 = 12;
    public static final int KEYCODE_6 = 13;
    public static final int KEYCODE_7 = 14;
    public static final int KEYCODE_8 = 15;
    public static final int KEYCODE_9 = 16;
    public static final int KEYCODE_A = 29;
    public static final int KEYCODE_ALL_APPS = 284;
    public static final int KEYCODE_ALT_LEFT = 57;
    public static final int KEYCODE_ALT_RIGHT = 58;
    public static final int KEYCODE_APOSTROPHE = 75;
    public static final int KEYCODE_APP_SWITCH = 187;
    public static final int KEYCODE_ASSIST = 219;
    public static final int KEYCODE_AT = 77;
    public static final int KEYCODE_AVR_INPUT = 182;
    public static final int KEYCODE_AVR_POWER = 181;
    public static final int KEYCODE_B = 30;
    public static final int KEYCODE_BACK = 4;
    public static final int KEYCODE_BACKSLASH = 73;
    public static final int KEYCODE_BOOKMARK = 174;
    public static final int KEYCODE_BREAK = 121;
    public static final int KEYCODE_BRIGHTNESS_DOWN = 220;
    public static final int KEYCODE_BRIGHTNESS_UP = 221;
    public static final int KEYCODE_BUTTON_1 = 188;
    public static final int KEYCODE_BUTTON_10 = 197;
    public static final int KEYCODE_BUTTON_11 = 198;
    public static final int KEYCODE_BUTTON_12 = 199;
    public static final int KEYCODE_BUTTON_13 = 200;
    public static final int KEYCODE_BUTTON_14 = 201;
    public static final int KEYCODE_BUTTON_15 = 202;
    public static final int KEYCODE_BUTTON_16 = 203;
    public static final int KEYCODE_BUTTON_2 = 189;
    public static final int KEYCODE_BUTTON_3 = 190;
    public static final int KEYCODE_BUTTON_4 = 191;
    public static final int KEYCODE_BUTTON_5 = 192;
    public static final int KEYCODE_BUTTON_6 = 193;
    public static final int KEYCODE_BUTTON_7 = 194;
    public static final int KEYCODE_BUTTON_8 = 195;
    public static final int KEYCODE_BUTTON_9 = 196;
    public static final int KEYCODE_BUTTON_A = 96;
    public static final int KEYCODE_BUTTON_B = 97;
    public static final int KEYCODE_BUTTON_C = 98;
    public static final int KEYCODE_BUTTON_L1 = 102;
    public static final int KEYCODE_BUTTON_L2 = 104;
    public static final int KEYCODE_BUTTON_MODE = 110;
    public static final int KEYCODE_BUTTON_R1 = 103;
    public static final int KEYCODE_BUTTON_R2 = 105;
    public static final int KEYCODE_BUTTON_SELECT = 109;
    public static final int KEYCODE_BUTTON_START = 108;
    public static final int KEYCODE_BUTTON_THUMBL = 106;
    public static final int KEYCODE_BUTTON_THUMBR = 107;
    public static final int KEYCODE_BUTTON_X = 99;
    public static final int KEYCODE_BUTTON_Y = 100;
    public static final int KEYCODE_BUTTON_Z = 101;
    public static final int KEYCODE_C = 31;
    public static final int KEYCODE_CALCULATOR = 210;
    public static final int KEYCODE_CALENDAR = 208;
    public static final int KEYCODE_CALL = 5;
    public static final int KEYCODE_CAMERA = 27;
    public static final int KEYCODE_CAPS_LOCK = 115;
    public static final int KEYCODE_CAPTIONS = 175;
    public static final int KEYCODE_CHANNEL_DOWN = 167;
    public static final int KEYCODE_CHANNEL_UP = 166;
    public static final int KEYCODE_CLEAR = 28;
    public static final int KEYCODE_COMMA = 55;
    public static final int KEYCODE_CONTACTS = 207;
    public static final int KEYCODE_COPY = 278;
    public static final int KEYCODE_CTRL_LEFT = 113;
    public static final int KEYCODE_CTRL_RIGHT = 114;
    public static final int KEYCODE_CUT = 277;
    public static final int KEYCODE_D = 32;
    public static final int KEYCODE_DEL = 67;
    public static final int KEYCODE_DPAD_CENTER = 23;
    public static final int KEYCODE_DPAD_DOWN = 20;
    public static final int KEYCODE_DPAD_DOWN_LEFT = 269;
    public static final int KEYCODE_DPAD_DOWN_RIGHT = 271;
    public static final int KEYCODE_DPAD_LEFT = 21;
    public static final int KEYCODE_DPAD_RIGHT = 22;
    public static final int KEYCODE_DPAD_UP = 19;
    public static final int KEYCODE_DPAD_UP_LEFT = 268;
    public static final int KEYCODE_DPAD_UP_RIGHT = 270;
    public static final int KEYCODE_DVR = 173;
    public static final int KEYCODE_E = 33;
    public static final int KEYCODE_EISU = 212;
    public static final int KEYCODE_ENDCALL = 6;
    public static final int KEYCODE_ENTER = 66;
    public static final int KEYCODE_ENVELOPE = 65;
    public static final int KEYCODE_EQUALS = 70;
    public static final int KEYCODE_ESCAPE = 111;
    public static final int KEYCODE_EXPLORER = 64;
    public static final int KEYCODE_F = 34;
    public static final int KEYCODE_F1 = 131;
    public static final int KEYCODE_F10 = 140;
    public static final int KEYCODE_F11 = 141;
    public static final int KEYCODE_F12 = 142;
    public static final int KEYCODE_F2 = 132;
    public static final int KEYCODE_F3 = 133;
    public static final int KEYCODE_F4 = 134;
    public static final int KEYCODE_F5 = 135;
    public static final int KEYCODE_F6 = 136;
    public static final int KEYCODE_F7 = 137;
    public static final int KEYCODE_F8 = 138;
    public static final int KEYCODE_F9 = 139;
    public static final int KEYCODE_FINGERPRINT_CLICK = 285;
    public static final int KEYCODE_FOCUS = 80;
    public static final int KEYCODE_FORWARD = 125;
    public static final int KEYCODE_FORWARD_DEL = 112;
    public static final int KEYCODE_FUNCTION = 119;
    public static final int KEYCODE_G = 35;
    public static final int KEYCODE_GRAVE = 68;
    public static final int KEYCODE_GUIDE = 172;
    public static final int KEYCODE_H = 36;
    public static final int KEYCODE_HEADSETHOOK = 79;
    public static final int KEYCODE_HELP = 259;
    public static final int KEYCODE_HENKAN = 214;
    public static final int KEYCODE_HOME = 3;
    public static final int KEYCODE_I = 37;
    public static final int KEYCODE_INFO = 165;
    public static final int KEYCODE_INSERT = 124;
    public static final int KEYCODE_J = 38;
    public static final int KEYCODE_K = 39;
    public static final int KEYCODE_KANA = 218;
    public static final int KEYCODE_KATAKANA_HIRAGANA = 215;
    public static final int KEYCODE_L = 40;
    public static final int KEYCODE_LANGUAGE_SWITCH = 204;
    public static final int KEYCODE_LAST_CHANNEL = 229;
    public static final int KEYCODE_LEFT_BRACKET = 71;
    public static final int KEYCODE_M = 41;
    public static final int KEYCODE_MANNER_MODE = 205;
    public static final int KEYCODE_MEDIA_AUDIO_TRACK = 222;
    public static final int KEYCODE_MEDIA_CLOSE = 128;
    public static final int KEYCODE_MEDIA_EJECT = 129;
    public static final int KEYCODE_MEDIA_FAST_FORWARD = 90;
    public static final int KEYCODE_MEDIA_NEXT = 87;
    public static final int KEYCODE_MEDIA_PAUSE = 127;
    public static final int KEYCODE_MEDIA_PLAY = 126;
    public static final int KEYCODE_MEDIA_PLAY_PAUSE = 85;
    public static final int KEYCODE_MEDIA_PREVIOUS = 88;
    public static final int KEYCODE_MEDIA_RECORD = 130;
    public static final int KEYCODE_MEDIA_REWIND = 89;
    public static final int KEYCODE_MEDIA_SKIP_BACKWARD = 273;
    public static final int KEYCODE_MEDIA_SKIP_FORWARD = 272;
    public static final int KEYCODE_MEDIA_STEP_BACKWARD = 275;
    public static final int KEYCODE_MEDIA_STEP_FORWARD = 274;
    public static final int KEYCODE_MEDIA_STOP = 86;
    public static final int KEYCODE_MEDIA_TOP_MENU = 226;
    public static final int KEYCODE_MENU = 82;
    public static final int KEYCODE_META_LEFT = 117;
    public static final int KEYCODE_META_RIGHT = 118;
    public static final int KEYCODE_MINUS = 69;
    public static final int KEYCODE_MOVE_END = 123;
    public static final int KEYCODE_MOVE_HOME = 122;
    public static final int KEYCODE_MUHENKAN = 213;
    public static final int KEYCODE_MUSIC = 209;
    public static final int KEYCODE_MUTE = 91;
    public static final int KEYCODE_N = 42;
    public static final int KEYCODE_NAVIGATE_IN = 262;
    public static final int KEYCODE_NAVIGATE_NEXT = 261;
    public static final int KEYCODE_NAVIGATE_OUT = 263;
    public static final int KEYCODE_NAVIGATE_PREVIOUS = 260;
    public static final int KEYCODE_NOTIFICATION = 83;
    public static final int KEYCODE_NUM = 78;
    public static final int KEYCODE_NUMPAD_0 = 144;
    public static final int KEYCODE_NUMPAD_1 = 145;
    public static final int KEYCODE_NUMPAD_2 = 146;
    public static final int KEYCODE_NUMPAD_3 = 147;
    public static final int KEYCODE_NUMPAD_4 = 148;
    public static final int KEYCODE_NUMPAD_5 = 149;
    public static final int KEYCODE_NUMPAD_6 = 150;
    public static final int KEYCODE_NUMPAD_7 = 151;
    public static final int KEYCODE_NUMPAD_8 = 152;
    public static final int KEYCODE_NUMPAD_9 = 153;
    public static final int KEYCODE_NUMPAD_ADD = 157;
    public static final int KEYCODE_NUMPAD_COMMA = 159;
    public static final int KEYCODE_NUMPAD_DIVIDE = 154;
    public static final int KEYCODE_NUMPAD_DOT = 158;
    public static final int KEYCODE_NUMPAD_ENTER = 160;
    public static final int KEYCODE_NUMPAD_EQUALS = 161;
    public static final int KEYCODE_NUMPAD_LEFT_PAREN = 162;
    public static final int KEYCODE_NUMPAD_MULTIPLY = 155;
    public static final int KEYCODE_NUMPAD_RIGHT_PAREN = 163;
    public static final int KEYCODE_NUMPAD_SUBTRACT = 156;
    public static final int KEYCODE_NUM_LOCK = 143;
    public static final int KEYCODE_O = 43;
    public static final int KEYCODE_P = 44;
    public static final int KEYCODE_PAGE_DOWN = 93;
    public static final int KEYCODE_PAGE_UP = 92;
    public static final int KEYCODE_PAIRING = 225;
    public static final int KEYCODE_PASTE = 279;
    public static final int KEYCODE_PERIOD = 56;
    public static final int KEYCODE_PICTSYMBOLS = 94;
    public static final int KEYCODE_PLUS = 81;
    public static final int KEYCODE_POUND = 18;
    public static final int KEYCODE_POWER = 26;
    public static final int KEYCODE_PROG_BLUE = 186;
    public static final int KEYCODE_PROG_GREEN = 184;
    public static final int KEYCODE_PROG_RED = 183;
    public static final int KEYCODE_PROG_YELLOW = 185;
    public static final int KEYCODE_Q = 45;
    public static final int KEYCODE_R = 46;
    public static final int KEYCODE_RIGHT_BRACKET = 72;
    public static final int KEYCODE_RO = 217;
    public static final int KEYCODE_S = 47;
    public static final int KEYCODE_SCROLL_LOCK = 116;
    public static final int KEYCODE_SEARCH = 84;
    public static final int KEYCODE_SEMICOLON = 74;
    public static final int KEYCODE_SETTINGS = 176;
    public static final int KEYCODE_SHIFT_LEFT = 59;
    public static final int KEYCODE_SHIFT_RIGHT = 60;
    public static final int KEYCODE_SLASH = 76;
    public static final int KEYCODE_SLEEP = 223;
    public static final int KEYCODE_SOFT_LEFT = 1;
    public static final int KEYCODE_SOFT_RIGHT = 2;
    public static final int KEYCODE_SOFT_SLEEP = 276;
    public static final int KEYCODE_SPACE = 62;
    public static final int KEYCODE_SQL_BUTTON_BACK = 292;
    public static final int KEYCODE_SQL_BUTTON_DISPLAYOFF = 286;
    public static final int KEYCODE_SQL_BUTTON_FAST_FORWORD = 289;
    public static final int KEYCODE_SQL_BUTTON_FAST_REVERSE = 290;
    public static final int KEYCODE_SQL_BUTTON_HOME = 291;
    public static final int KEYCODE_SQL_BUTTON_KEY_25 = 319;
    public static final int KEYCODE_SQL_BUTTON_KEY_26 = 320;
    public static final int KEYCODE_SQL_BUTTON_KEY_27 = 321;
    public static final int KEYCODE_SQL_BUTTON_KEY_28 = 322;
    public static final int KEYCODE_SQL_BUTTON_KEY_29 = 323;
    public static final int KEYCODE_SQL_BUTTON_KEY_30 = 324;
    public static final int KEYCODE_SQL_BUTTON_KEY_31 = 325;
    public static final int KEYCODE_SQL_BUTTON_KEY_32 = 326;
    public static final int KEYCODE_SQL_BUTTON_KEY_33 = 327;
    public static final int KEYCODE_SQL_BUTTON_KEY_34 = 328;
    public static final int KEYCODE_SQL_BUTTON_KEY_35 = 329;
    public static final int KEYCODE_SQL_BUTTON_KEY_36 = 330;
    public static final int KEYCODE_SQL_BUTTON_KEY_37 = 331;
    public static final int KEYCODE_SQL_BUTTON_KEY_38 = 332;
    public static final int KEYCODE_SQL_BUTTON_KEY_39 = 333;
    public static final int KEYCODE_SQL_BUTTON_KEY_40 = 334;
    public static final int KEYCODE_SQL_BUTTON_KEY_41 = 335;
    public static final int KEYCODE_SQL_BUTTON_KEY_42 = 336;
    public static final int KEYCODE_SQL_BUTTON_KEY_43 = 337;
    public static final int KEYCODE_SQL_BUTTON_KEY_44 = 338;
    public static final int KEYCODE_SQL_BUTTON_KEY_EIGHT = 302;
    public static final int KEYCODE_SQL_BUTTON_KEY_EIGHTEEN = 312;
    public static final int KEYCODE_SQL_BUTTON_KEY_ELENVEN = 305;
    public static final int KEYCODE_SQL_BUTTON_KEY_FIFTEEN = 309;
    public static final int KEYCODE_SQL_BUTTON_KEY_FIVE = 299;
    public static final int KEYCODE_SQL_BUTTON_KEY_FORTEEN = 308;
    public static final int KEYCODE_SQL_BUTTON_KEY_FOUR = 298;
    public static final int KEYCODE_SQL_BUTTON_KEY_NINE = 303;
    public static final int KEYCODE_SQL_BUTTON_KEY_NINETEEN = 313;
    public static final int KEYCODE_SQL_BUTTON_KEY_ONE = 295;
    public static final int KEYCODE_SQL_BUTTON_KEY_SEVEN = 301;
    public static final int KEYCODE_SQL_BUTTON_KEY_SEVENTEEN = 311;
    public static final int KEYCODE_SQL_BUTTON_KEY_SIX = 300;
    public static final int KEYCODE_SQL_BUTTON_KEY_SIXTEEN = 310;
    public static final int KEYCODE_SQL_BUTTON_KEY_TEN = 304;
    public static final int KEYCODE_SQL_BUTTON_KEY_THIRTEEN = 307;
    public static final int KEYCODE_SQL_BUTTON_KEY_THREE = 297;
    public static final int KEYCODE_SQL_BUTTON_KEY_TWELVE = 306;
    public static final int KEYCODE_SQL_BUTTON_KEY_TWENTY = 314;
    public static final int KEYCODE_SQL_BUTTON_KEY_TWENTYFOUR = 318;
    public static final int KEYCODE_SQL_BUTTON_KEY_TWENTYONE = 315;
    public static final int KEYCODE_SQL_BUTTON_KEY_TWENTYTHREE = 317;
    public static final int KEYCODE_SQL_BUTTON_KEY_TWENTYTWO = 316;
    public static final int KEYCODE_SQL_BUTTON_KEY_TWO = 296;
    public static final int KEYCODE_SQL_BUTTON_NAVI = 287;
    public static final int KEYCODE_SQL_BUTTON_SOUND_DOWN = 294;
    public static final int KEYCODE_SQL_BUTTON_SOUND_UP = 293;
    public static final int KEYCODE_SQL_BUTTON_SRC = 288;
    public static final int KEYCODE_STAR = 17;
    public static final int KEYCODE_STB_INPUT = 180;
    public static final int KEYCODE_STB_POWER = 179;
    public static final int KEYCODE_STEM_1 = 265;
    public static final int KEYCODE_STEM_2 = 266;
    public static final int KEYCODE_STEM_3 = 267;
    public static final int KEYCODE_STEM_PRIMARY = 264;
    public static final int KEYCODE_SWITCH_CHARSET = 95;
    public static final int KEYCODE_SYM = 63;
    public static final int KEYCODE_SYSRQ = 120;
    public static final int KEYCODE_SYSTEM_NAVIGATION_DOWN = 281;
    public static final int KEYCODE_SYSTEM_NAVIGATION_LEFT = 282;
    public static final int KEYCODE_SYSTEM_NAVIGATION_RIGHT = 283;
    public static final int KEYCODE_SYSTEM_NAVIGATION_UP = 280;
    public static final int KEYCODE_T = 48;
    public static final int KEYCODE_TAB = 61;
    public static final int KEYCODE_TV = 170;
    public static final int KEYCODE_TV_ANTENNA_CABLE = 242;
    public static final int KEYCODE_TV_AUDIO_DESCRIPTION = 252;
    public static final int KEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN = 254;
    public static final int KEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP = 253;
    public static final int KEYCODE_TV_CONTENTS_MENU = 256;
    public static final int KEYCODE_TV_DATA_SERVICE = 230;
    public static final int KEYCODE_TV_INPUT = 178;
    public static final int KEYCODE_TV_INPUT_COMPONENT_1 = 249;
    public static final int KEYCODE_TV_INPUT_COMPONENT_2 = 250;
    public static final int KEYCODE_TV_INPUT_COMPOSITE_1 = 247;
    public static final int KEYCODE_TV_INPUT_COMPOSITE_2 = 248;
    public static final int KEYCODE_TV_INPUT_HDMI_1 = 243;
    public static final int KEYCODE_TV_INPUT_HDMI_2 = 244;
    public static final int KEYCODE_TV_INPUT_HDMI_3 = 245;
    public static final int KEYCODE_TV_INPUT_HDMI_4 = 246;
    public static final int KEYCODE_TV_INPUT_VGA_1 = 251;
    public static final int KEYCODE_TV_MEDIA_CONTEXT_MENU = 257;
    public static final int KEYCODE_TV_NETWORK = 241;
    public static final int KEYCODE_TV_NUMBER_ENTRY = 234;
    public static final int KEYCODE_TV_POWER = 177;
    public static final int KEYCODE_TV_RADIO_SERVICE = 232;
    public static final int KEYCODE_TV_SATELLITE = 237;
    public static final int KEYCODE_TV_SATELLITE_BS = 238;
    public static final int KEYCODE_TV_SATELLITE_CS = 239;
    public static final int KEYCODE_TV_SATELLITE_SERVICE = 240;
    public static final int KEYCODE_TV_TELETEXT = 233;
    public static final int KEYCODE_TV_TERRESTRIAL_ANALOG = 235;
    public static final int KEYCODE_TV_TERRESTRIAL_DIGITAL = 236;
    public static final int KEYCODE_TV_TIMER_PROGRAMMING = 258;
    public static final int KEYCODE_TV_ZOOM_MODE = 255;
    public static final int KEYCODE_U = 49;
    public static final int KEYCODE_UNKNOWN = 0;
    public static final int KEYCODE_V = 50;
    public static final int KEYCODE_VOICE_ASSIST = 231;
    public static final int KEYCODE_VOLUME_DOWN = 25;
    public static final int KEYCODE_VOLUME_MUTE = 164;
    public static final int KEYCODE_VOLUME_UP = 24;
    public static final int KEYCODE_W = 51;
    public static final int KEYCODE_WAKEUP = 224;
    public static final int KEYCODE_WINDOW = 171;
    public static final int KEYCODE_X = 52;
    public static final int KEYCODE_Y = 53;
    public static final int KEYCODE_YEN = 216;
    public static final int KEYCODE_Z = 54;
    public static final int KEYCODE_ZENKAKU_HANKAKU = 211;
    public static final int KEYCODE_ZOOM_IN = 168;
    public static final int KEYCODE_ZOOM_OUT = 169;
    private static final String LABEL_PREFIX = "KEYCODE_";
    private static final int LAST_KEYCODE = 338;

    @Deprecated
    public static final int MAX_KEYCODE = 84;
    private static final int MAX_RECYCLED = 10;
    private static final int META_ALL_MASK = 7827711;
    public static final int META_ALT_LEFT_ON = 16;
    public static final int META_ALT_LOCKED = 512;
    public static final int META_ALT_MASK = 50;
    public static final int META_ALT_ON = 2;
    public static final int META_ALT_RIGHT_ON = 32;
    public static final int META_CAPS_LOCK_ON = 1048576;
    public static final int META_CAP_LOCKED = 256;
    public static final int META_CTRL_LEFT_ON = 8192;
    public static final int META_CTRL_MASK = 28672;
    public static final int META_CTRL_ON = 4096;
    public static final int META_CTRL_RIGHT_ON = 16384;
    public static final int META_FUNCTION_ON = 8;
    private static final int META_INVALID_MODIFIER_MASK = 7343872;
    private static final int META_LOCK_MASK = 7340032;
    public static final int META_META_LEFT_ON = 131072;
    public static final int META_META_MASK = 458752;
    public static final int META_META_ON = 65536;
    public static final int META_META_RIGHT_ON = 262144;
    private static final int META_MODIFIER_MASK = 487679;
    public static final int META_NUM_LOCK_ON = 2097152;
    public static final int META_SCROLL_LOCK_ON = 4194304;
    public static final int META_SELECTING = 2048;
    public static final int META_SHIFT_LEFT_ON = 64;
    public static final int META_SHIFT_MASK = 193;
    public static final int META_SHIFT_ON = 1;
    public static final int META_SHIFT_RIGHT_ON = 128;
    public static final int META_SYM_LOCKED = 1024;
    public static final int META_SYM_ON = 4;
    private static final int META_SYNTHETIC_MASK = 3840;
    static final String TAG = "KeyEvent";
    private static KeyEvent gRecyclerTop;
    private static int gRecyclerUsed;
    private int mAction;
    private String mCharacters;
    private int mDeviceId;
    private long mDownTime;
    private long mEventTime;
    private int mFlags;
    private int mKeyCode;
    private int mMetaState;
    private KeyEvent mNext;
    private int mRepeatCount;
    private int mScanCode;
    private int mSource;
    private static final String[] META_SYMBOLIC_NAMES = {"META_SHIFT_ON", "META_ALT_ON", "META_SYM_ON", "META_FUNCTION_ON", "META_ALT_LEFT_ON", "META_ALT_RIGHT_ON", "META_SHIFT_LEFT_ON", "META_SHIFT_RIGHT_ON", "META_CAP_LOCKED", "META_ALT_LOCKED", "META_SYM_LOCKED", "0x00000800", "META_CTRL_ON", "META_CTRL_LEFT_ON", "META_CTRL_RIGHT_ON", "0x00008000", "META_META_ON", "META_META_LEFT_ON", "META_META_RIGHT_ON", "0x00080000", "META_CAPS_LOCK_ON", "META_NUM_LOCK_ON", "META_SCROLL_LOCK_ON", "0x00800000", "0x01000000", "0x02000000", "0x04000000", "0x08000000", "0x10000000", "0x20000000", "0x40000000", "0x80000000"};
    private static final Object gRecyclerLock = new Object();
    public static final Parcelable.Creator<KeyEvent> CREATOR = new Parcelable.Creator<KeyEvent>() { // from class: android.view.KeyEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyEvent createFromParcel(Parcel parcel) {
            parcel.readInt();
            return KeyEvent.createFromParcelBody(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeyEvent[] newArray(int i2) {
            return new KeyEvent[i2];
        }
    };

    public interface Callback {
        boolean onKeyDown(int i2, KeyEvent keyEvent);

        boolean onKeyLongPress(int i2, KeyEvent keyEvent);

        boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent);

        boolean onKeyUp(int i2, KeyEvent keyEvent);
    }

    private KeyEvent() {
    }

    public static String actionToString(int i2) {
        if (i2 == 0) {
            return "ACTION_DOWN";
        }
        if (i2 != 1) {
            return i2 != 2 ? Integer.toString(i2) : "ACTION_MULTIPLE";
        }
        return "ACTION_UP";
    }

    public static KeyEvent changeAction(KeyEvent keyEvent, int i2) {
        return new KeyEvent(keyEvent, i2);
    }

    public static KeyEvent changeFlags(KeyEvent keyEvent, int i2) {
        KeyEvent keyEvent2 = new KeyEvent(keyEvent);
        keyEvent2.mFlags = i2;
        return keyEvent2;
    }

    public static KeyEvent changeTimeRepeat(KeyEvent keyEvent, long j2, int i2) {
        return new KeyEvent(keyEvent, j2, i2);
    }

    public static KeyEvent createFromParcelBody(Parcel parcel) {
        return new KeyEvent(parcel);
    }

    public static int getDeadChar(int i2, int i3) {
        return KeyCharacterMap.getDeadChar(i2, i3);
    }

    public static int getMaxKeyCode() {
        return 338;
    }

    public static int getModifierMetaStateMask() {
        return META_MODIFIER_MASK;
    }

    public static final boolean isAltKey(int i2) {
        return i2 == 57 || i2 == 58;
    }

    public static final boolean isConfirmKey(int i2) {
        return i2 == 23 || i2 == 62 || i2 == 66 || i2 == 160;
    }

    public static final boolean isGamepadButton(int i2) {
        switch (i2) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
                return true;
            default:
                switch (i2) {
                    case 188:
                    case 189:
                    case 190:
                    case 191:
                    case 192:
                    case 193:
                    case 194:
                    case 195:
                    case 196:
                    case 197:
                    case 198:
                    case 199:
                    case 200:
                    case 201:
                    case 202:
                    case 203:
                        return true;
                    default:
                        return false;
                }
        }
    }

    public static final boolean isMediaKey(int i2) {
        if (i2 == 79 || i2 == 130 || i2 == 126 || i2 == 127) {
            return true;
        }
        switch (i2) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                return false;
        }
    }

    public static final boolean isMetaKey(int i2) {
        return i2 == 117 || i2 == 118;
    }

    public static boolean isModifierKey(int i2) {
        if (i2 == 63 || i2 == 78 || i2 == 113 || i2 == 114) {
            return true;
        }
        switch (i2) {
            case 57:
            case 58:
            case 59:
            case 60:
                return true;
            default:
                switch (i2) {
                    case 117:
                    case 118:
                    case 119:
                        return true;
                    default:
                        return false;
                }
        }
    }

    public static final boolean isSystemKey(int i2) {
        if (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 6 || i2 == 79 || i2 == 80 || i2 == 82 || i2 == 130 || i2 == 164 || i2 == 338 || i2 == 126 || i2 == 127) {
            return true;
        }
        switch (i2) {
            case 24:
            case 25:
            case 26:
            case 27:
                return true;
            default:
                switch (i2) {
                    case 84:
                    case 85:
                    case 86:
                    case 87:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                        return true;
                    default:
                        switch (i2) {
                            case 220:
                            case 221:
                            case 222:
                                return true;
                            default:
                                switch (i2) {
                                    case 280:
                                    case 281:
                                    case 282:
                                    case 283:
                                        return true;
                                    default:
                                        switch (i2) {
                                            case 286:
                                            case 287:
                                            case 288:
                                            case 289:
                                            case 290:
                                            case 291:
                                            case 292:
                                            case 293:
                                            case 294:
                                            case 295:
                                            case 296:
                                            case 297:
                                            case 298:
                                            case 299:
                                            case 300:
                                            case 301:
                                            case 302:
                                            case 303:
                                            case 304:
                                            case 305:
                                            case 306:
                                            case 307:
                                            case 308:
                                            case 309:
                                            case 310:
                                            case 311:
                                            case 312:
                                            case 313:
                                            case 314:
                                            case 315:
                                            case 316:
                                            case 317:
                                            case 318:
                                            case 319:
                                            case 320:
                                            case 321:
                                            case 322:
                                            case 323:
                                            case 324:
                                            case 325:
                                            case 326:
                                            case 327:
                                            case 328:
                                            case 329:
                                            case 330:
                                            case 331:
                                            case 332:
                                            case 333:
                                            case 334:
                                            case 335:
                                            case 336:
                                                return true;
                                            default:
                                                return false;
                                        }
                                }
                        }
                }
        }
    }

    public static final boolean isWakeKey(int i2) {
        if (i2 == 4 || i2 == 82 || i2 == 338 || i2 == 224 || i2 == 225) {
            return true;
        }
        switch (i2) {
            case 265:
            case 266:
            case 267:
                return true;
            default:
                switch (i2) {
                    case 286:
                    case 287:
                    case 288:
                    case 289:
                    case 290:
                    case 291:
                    case 292:
                    case 293:
                    case 294:
                    case 295:
                    case 296:
                    case 297:
                    case 298:
                    case 299:
                    case 300:
                    case 301:
                    case 302:
                    case 303:
                    case 304:
                    case 305:
                    case 306:
                    case 307:
                    case 308:
                    case 309:
                    case 310:
                    case 311:
                    case 312:
                    case 313:
                    case 314:
                    case 315:
                    case 316:
                    case 317:
                    case 318:
                    case 319:
                    case 320:
                    case 321:
                    case 322:
                    case 323:
                    case 324:
                    case 325:
                    case 326:
                    case 327:
                    case 328:
                    case 329:
                    case 330:
                    case 331:
                    case 332:
                    case 333:
                    case 334:
                    case 335:
                    case 336:
                        return true;
                    default:
                        return false;
                }
        }
    }

    public static int keyCodeFromString(String str) {
        int iNativeKeyCodeFromString;
        if (str.startsWith(LABEL_PREFIX) && (iNativeKeyCodeFromString = nativeKeyCodeFromString((str = str.substring(8)))) > 0) {
            return iNativeKeyCodeFromString;
        }
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static String keyCodeToString(int i2) {
        String strNativeKeyCodeToString = nativeKeyCodeToString(i2);
        return strNativeKeyCodeToString != null ? LABEL_PREFIX.concat(strNativeKeyCodeToString) : Integer.toString(i2);
    }

    private static int metaStateFilterDirectionalModifiers(int i2, int i3, int i4, int i5, int i6) {
        int i7;
        boolean z2 = (i3 & i4) != 0;
        int i8 = i5 | i6;
        boolean z3 = (i3 & i8) != 0;
        if (z2) {
            if (z3) {
                throw new IllegalArgumentException("modifiers must not contain " + metaStateToString(i4) + " combined with " + metaStateToString(i5) + " or " + metaStateToString(i6));
            }
            i7 = ~i8;
        } else {
            if (!z3) {
                return i2;
            }
            i7 = ~i4;
        }
        return i2 & i7;
    }

    public static boolean metaStateHasModifiers(int i2, int i3) {
        if ((META_INVALID_MODIFIER_MASK & i3) == 0) {
            return metaStateFilterDirectionalModifiers(metaStateFilterDirectionalModifiers(metaStateFilterDirectionalModifiers(metaStateFilterDirectionalModifiers(normalizeMetaState(i2) & META_MODIFIER_MASK, i3, 1, 64, 128), i3, 2, 16, 32), i3, 4096, 8192, 16384), i3, 65536, 131072, 262144) == i3;
        }
        throw new IllegalArgumentException("modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING");
    }

    public static boolean metaStateHasNoModifiers(int i2) {
        return (normalizeMetaState(i2) & META_MODIFIER_MASK) == 0;
    }

    public static String metaStateToString(int i2) {
        if (i2 == 0) {
            return WifiEnterpriseConfig.ENGINE_DISABLE;
        }
        StringBuilder sb = null;
        int i3 = 0;
        while (i2 != 0) {
            boolean z2 = (i2 & 1) != 0;
            i2 >>>= 1;
            if (z2) {
                String str = META_SYMBOLIC_NAMES[i3];
                if (sb != null) {
                    sb.append('|');
                    sb.append(str);
                } else {
                    if (i2 == 0) {
                        return str;
                    }
                    sb = new StringBuilder(str);
                }
            }
            i3++;
        }
        return sb.toString();
    }

    private static native int nativeKeyCodeFromString(String str);

    private static native String nativeKeyCodeToString(int i2);

    public static int normalizeMetaState(int i2) {
        if ((i2 & 192) != 0) {
            i2 |= 1;
        }
        if ((i2 & 48) != 0) {
            i2 |= 2;
        }
        if ((i2 & 24576) != 0) {
            i2 |= 4096;
        }
        if ((393216 & i2) != 0) {
            i2 |= 65536;
        }
        if ((i2 & 256) != 0) {
            i2 |= 1048576;
        }
        if ((i2 & 512) != 0) {
            i2 |= 2;
        }
        if ((i2 & 1024) != 0) {
            i2 |= 4;
        }
        return i2 & META_ALL_MASK;
    }

    private static KeyEvent obtain() {
        synchronized (gRecyclerLock) {
            KeyEvent keyEvent = gRecyclerTop;
            if (keyEvent == null) {
                return new KeyEvent();
            }
            gRecyclerTop = keyEvent.mNext;
            gRecyclerUsed--;
            keyEvent.mNext = null;
            keyEvent.prepareForReuse();
            return keyEvent;
        }
    }

    @Override // android.view.InputEvent
    public final void cancel() {
        this.mFlags |= 32;
    }

    @Deprecated
    public final boolean dispatch(Callback callback) {
        return dispatch(callback, null, null);
    }

    public final int getAction() {
        return this.mAction;
    }

    public final String getCharacters() {
        return this.mCharacters;
    }

    @Override // android.view.InputEvent
    public final int getDeviceId() {
        return this.mDeviceId;
    }

    public char getDisplayLabel() {
        return getKeyCharacterMap().getDisplayLabel(this.mKeyCode);
    }

    public final long getDownTime() {
        return this.mDownTime;
    }

    @Override // android.view.InputEvent
    public final long getEventTime() {
        return this.mEventTime;
    }

    @Override // android.view.InputEvent
    public final long getEventTimeNano() {
        return this.mEventTime * TimeUtils.NANOS_PER_MS;
    }

    public final int getFlags() {
        return this.mFlags;
    }

    public final KeyCharacterMap getKeyCharacterMap() {
        return KeyCharacterMap.load(this.mDeviceId);
    }

    public final int getKeyCode() {
        return this.mKeyCode;
    }

    @Deprecated
    public boolean getKeyData(KeyCharacterMap.KeyData keyData) {
        return getKeyCharacterMap().getKeyData(this.mKeyCode, keyData);
    }

    @Deprecated
    public final int getKeyboardDevice() {
        return this.mDeviceId;
    }

    public char getMatch(char[] cArr) {
        return getMatch(cArr, 0);
    }

    public final int getMetaState() {
        return this.mMetaState;
    }

    public final int getModifiers() {
        return normalizeMetaState(this.mMetaState) & META_MODIFIER_MASK;
    }

    public char getNumber() {
        return getKeyCharacterMap().getNumber(this.mKeyCode);
    }

    public final int getRepeatCount() {
        return this.mRepeatCount;
    }

    public final int getScanCode() {
        return this.mScanCode;
    }

    @Override // android.view.InputEvent
    public final int getSource() {
        return this.mSource;
    }

    public int getUnicodeChar() {
        return getUnicodeChar(this.mMetaState);
    }

    public final boolean hasModifiers(int i2) {
        return metaStateHasModifiers(this.mMetaState, i2);
    }

    public final boolean hasNoModifiers() {
        return metaStateHasNoModifiers(this.mMetaState);
    }

    public final boolean isAltPressed() {
        return (this.mMetaState & 2) != 0;
    }

    public final boolean isCanceled() {
        return (this.mFlags & 32) != 0;
    }

    public final boolean isCapsLockOn() {
        return (this.mMetaState & 1048576) != 0;
    }

    public final boolean isCtrlPressed() {
        return (this.mMetaState & 4096) != 0;
    }

    @Deprecated
    public final boolean isDown() {
        return this.mAction == 0;
    }

    public final boolean isFunctionPressed() {
        return (this.mMetaState & 8) != 0;
    }

    public final boolean isLongPress() {
        return (this.mFlags & 128) != 0;
    }

    public final boolean isMetaPressed() {
        return (this.mMetaState & 65536) != 0;
    }

    public final boolean isNumLockOn() {
        return (this.mMetaState & 2097152) != 0;
    }

    public boolean isPrintingKey() {
        return getKeyCharacterMap().isPrintingKey(this.mKeyCode);
    }

    public final boolean isScrollLockOn() {
        return (this.mMetaState & 4194304) != 0;
    }

    public final boolean isShiftPressed() {
        return (this.mMetaState & 1) != 0;
    }

    public final boolean isSymPressed() {
        return (this.mMetaState & 4) != 0;
    }

    public final boolean isSystem() {
        return isSystemKey(this.mKeyCode);
    }

    @Override // android.view.InputEvent
    public final boolean isTainted() {
        return (this.mFlags & Integer.MIN_VALUE) != 0;
    }

    public final boolean isTracking() {
        return (this.mFlags & 512) != 0;
    }

    @Override // android.view.InputEvent
    public final void recycle() {
        super.recycle();
        this.mCharacters = null;
        synchronized (gRecyclerLock) {
            int i2 = gRecyclerUsed;
            if (i2 < 10) {
                gRecyclerUsed = i2 + 1;
                this.mNext = gRecyclerTop;
                gRecyclerTop = this;
            }
        }
    }

    @Override // android.view.InputEvent
    public final void recycleIfNeededAfterDispatch() {
    }

    @Override // android.view.InputEvent
    public final void setSource(int i2) {
        this.mSource = i2;
    }

    @Override // android.view.InputEvent
    public final void setTainted(boolean z2) {
        this.mFlags = z2 ? this.mFlags | Integer.MIN_VALUE : this.mFlags & Integer.MAX_VALUE;
    }

    public final void startTracking() {
        this.mFlags |= 1073741824;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("KeyEvent { action=");
        sb.append(actionToString(this.mAction));
        sb.append(", keyCode=");
        sb.append(keyCodeToString(this.mKeyCode));
        sb.append(", scanCode=");
        sb.append(this.mScanCode);
        if (this.mCharacters != null) {
            sb.append(", characters=\"");
            sb.append(this.mCharacters);
            sb.append("\"");
        }
        sb.append(", metaState=");
        sb.append(metaStateToString(this.mMetaState));
        sb.append(", flags=0x");
        android.accessibilityservice.c.x(this.mFlags, sb, ", repeatCount=");
        sb.append(this.mRepeatCount);
        sb.append(", eventTime=");
        sb.append(this.mEventTime);
        sb.append(", downTime=");
        sb.append(this.mDownTime);
        sb.append(", deviceId=");
        sb.append(this.mDeviceId);
        sb.append(", source=0x");
        sb.append(Integer.toHexString(this.mSource));
        sb.append(" }");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(2);
        parcel.writeInt(this.mDeviceId);
        parcel.writeInt(this.mSource);
        parcel.writeInt(this.mAction);
        parcel.writeInt(this.mKeyCode);
        parcel.writeInt(this.mRepeatCount);
        parcel.writeInt(this.mMetaState);
        parcel.writeInt(this.mScanCode);
        parcel.writeInt(this.mFlags);
        parcel.writeLong(this.mDownTime);
        parcel.writeLong(this.mEventTime);
    }

    public KeyEvent(int i2, int i3) {
        this.mAction = i2;
        this.mKeyCode = i3;
        this.mRepeatCount = 0;
        this.mDeviceId = -1;
    }

    public static KeyEvent changeTimeRepeat(KeyEvent keyEvent, long j2, int i2, int i3) {
        KeyEvent keyEvent2 = new KeyEvent(keyEvent);
        keyEvent2.mEventTime = j2;
        keyEvent2.mRepeatCount = i2;
        keyEvent2.mFlags = i3;
        return keyEvent2;
    }

    @Override // android.view.InputEvent
    public KeyEvent copy() {
        return obtain(this);
    }

    public final boolean dispatch(Callback callback, DispatcherState dispatcherState, Object obj) {
        int i2 = this.mAction;
        boolean z2 = true;
        if (i2 == 0) {
            this.mFlags &= -1073741825;
            boolean zOnKeyDown = callback.onKeyDown(this.mKeyCode, this);
            if (dispatcherState == null) {
                return zOnKeyDown;
            }
            if (zOnKeyDown && this.mRepeatCount == 0 && (this.mFlags & 1073741824) != 0) {
                dispatcherState.startTracking(this, obj);
                return zOnKeyDown;
            }
            if (!isLongPress() || !dispatcherState.isTracking(this)) {
                return zOnKeyDown;
            }
            try {
                if (callback.onKeyLongPress(this.mKeyCode, this)) {
                    dispatcherState.performedLongPress(this);
                } else {
                    z2 = zOnKeyDown;
                }
                return z2;
            } catch (AbstractMethodError unused) {
                return zOnKeyDown;
            }
        }
        if (i2 == 1) {
            if (dispatcherState != null) {
                dispatcherState.handleUpEvent(this);
            }
            return callback.onKeyUp(this.mKeyCode, this);
        }
        boolean zOnKeyDown2 = false;
        if (i2 != 2) {
            return false;
        }
        int i3 = this.mRepeatCount;
        int i4 = this.mKeyCode;
        if (callback.onKeyMultiple(i4, i3, this)) {
            return true;
        }
        if (i4 != 0) {
            this.mAction = 0;
            this.mRepeatCount = 0;
            zOnKeyDown2 = callback.onKeyDown(i4, this);
            if (zOnKeyDown2) {
                this.mAction = 1;
                callback.onKeyUp(i4, this);
            }
            this.mAction = 2;
            this.mRepeatCount = i3;
        }
        return zOnKeyDown2;
    }

    public char getMatch(char[] cArr, int i2) {
        return getKeyCharacterMap().getMatch(this.mKeyCode, cArr, i2);
    }

    public int getUnicodeChar(int i2) {
        return getKeyCharacterMap().get(this.mKeyCode, i2);
    }

    public final boolean isWakeKey() {
        return isWakeKey(this.mKeyCode);
    }

    public static class DispatcherState {
        SparseIntArray mActiveLongPresses = new SparseIntArray();
        int mDownKeyCode;
        Object mDownTarget;

        public void handleUpEvent(KeyEvent keyEvent) {
            int keyCode = keyEvent.getKeyCode();
            int iIndexOfKey = this.mActiveLongPresses.indexOfKey(keyCode);
            if (iIndexOfKey >= 0) {
                keyEvent.mFlags |= 288;
                this.mActiveLongPresses.removeAt(iIndexOfKey);
            }
            if (this.mDownKeyCode == keyCode) {
                keyEvent.mFlags |= 512;
                this.mDownKeyCode = 0;
                this.mDownTarget = null;
            }
        }

        public boolean isTracking(KeyEvent keyEvent) {
            return this.mDownKeyCode == keyEvent.getKeyCode();
        }

        public void performedLongPress(KeyEvent keyEvent) {
            this.mActiveLongPresses.put(keyEvent.getKeyCode(), 1);
        }

        public void reset() {
            this.mDownKeyCode = 0;
            this.mDownTarget = null;
            this.mActiveLongPresses.clear();
        }

        public void startTracking(KeyEvent keyEvent, Object obj) {
            if (keyEvent.getAction() != 0) {
                throw new IllegalArgumentException("Can only start tracking on a down event");
            }
            this.mDownKeyCode = keyEvent.getKeyCode();
            this.mDownTarget = obj;
        }

        public void reset(Object obj) {
            if (this.mDownTarget == obj) {
                this.mDownKeyCode = 0;
                this.mDownTarget = null;
            }
        }
    }

    public KeyEvent(long j2, long j3, int i2, int i3, int i4) {
        this.mDownTime = j2;
        this.mEventTime = j3;
        this.mAction = i2;
        this.mKeyCode = i3;
        this.mRepeatCount = i4;
        this.mDeviceId = -1;
    }

    public static KeyEvent obtain(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str) {
        KeyEvent keyEventObtain = obtain();
        keyEventObtain.mDownTime = j2;
        keyEventObtain.mEventTime = j3;
        keyEventObtain.mAction = i2;
        keyEventObtain.mKeyCode = i3;
        keyEventObtain.mRepeatCount = i4;
        keyEventObtain.mMetaState = i5;
        keyEventObtain.mDeviceId = i6;
        keyEventObtain.mScanCode = i7;
        keyEventObtain.mFlags = i8;
        keyEventObtain.mSource = i9;
        keyEventObtain.mCharacters = str;
        return keyEventObtain;
    }

    public KeyEvent(long j2, long j3, int i2, int i3, int i4, int i5) {
        this.mDownTime = j2;
        this.mEventTime = j3;
        this.mAction = i2;
        this.mKeyCode = i3;
        this.mRepeatCount = i4;
        this.mMetaState = i5;
        this.mDeviceId = -1;
    }

    public KeyEvent(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.mDownTime = j2;
        this.mEventTime = j3;
        this.mAction = i2;
        this.mKeyCode = i3;
        this.mRepeatCount = i4;
        this.mMetaState = i5;
        this.mDeviceId = i6;
        this.mScanCode = i7;
    }

    public static KeyEvent obtain(KeyEvent keyEvent) {
        KeyEvent keyEventObtain = obtain();
        keyEventObtain.mDownTime = keyEvent.mDownTime;
        keyEventObtain.mEventTime = keyEvent.mEventTime;
        keyEventObtain.mAction = keyEvent.mAction;
        keyEventObtain.mKeyCode = keyEvent.mKeyCode;
        keyEventObtain.mRepeatCount = keyEvent.mRepeatCount;
        keyEventObtain.mMetaState = keyEvent.mMetaState;
        keyEventObtain.mDeviceId = keyEvent.mDeviceId;
        keyEventObtain.mScanCode = keyEvent.mScanCode;
        keyEventObtain.mFlags = keyEvent.mFlags;
        keyEventObtain.mSource = keyEvent.mSource;
        keyEventObtain.mCharacters = keyEvent.mCharacters;
        return keyEventObtain;
    }

    public KeyEvent(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.mDownTime = j2;
        this.mEventTime = j3;
        this.mAction = i2;
        this.mKeyCode = i3;
        this.mRepeatCount = i4;
        this.mMetaState = i5;
        this.mDeviceId = i6;
        this.mScanCode = i7;
        this.mFlags = i8;
    }

    public KeyEvent(long j2, long j3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.mDownTime = j2;
        this.mEventTime = j3;
        this.mAction = i2;
        this.mKeyCode = i3;
        this.mRepeatCount = i4;
        this.mMetaState = i5;
        this.mDeviceId = i6;
        this.mScanCode = i7;
        this.mFlags = i8;
        this.mSource = i9;
    }

    public KeyEvent(long j2, String str, int i2, int i3) {
        this.mDownTime = j2;
        this.mEventTime = j2;
        this.mCharacters = str;
        this.mAction = 2;
        this.mKeyCode = 0;
        this.mRepeatCount = 0;
        this.mDeviceId = i2;
        this.mFlags = i3;
        this.mSource = 257;
    }

    public KeyEvent(KeyEvent keyEvent) {
        this.mDownTime = keyEvent.mDownTime;
        this.mEventTime = keyEvent.mEventTime;
        this.mAction = keyEvent.mAction;
        this.mKeyCode = keyEvent.mKeyCode;
        this.mRepeatCount = keyEvent.mRepeatCount;
        this.mMetaState = keyEvent.mMetaState;
        this.mDeviceId = keyEvent.mDeviceId;
        this.mSource = keyEvent.mSource;
        this.mScanCode = keyEvent.mScanCode;
        this.mFlags = keyEvent.mFlags;
        this.mCharacters = keyEvent.mCharacters;
    }

    @Deprecated
    public KeyEvent(KeyEvent keyEvent, long j2, int i2) {
        this.mDownTime = keyEvent.mDownTime;
        this.mEventTime = j2;
        this.mAction = keyEvent.mAction;
        this.mKeyCode = keyEvent.mKeyCode;
        this.mRepeatCount = i2;
        this.mMetaState = keyEvent.mMetaState;
        this.mDeviceId = keyEvent.mDeviceId;
        this.mSource = keyEvent.mSource;
        this.mScanCode = keyEvent.mScanCode;
        this.mFlags = keyEvent.mFlags;
        this.mCharacters = keyEvent.mCharacters;
    }

    private KeyEvent(KeyEvent keyEvent, int i2) {
        this.mDownTime = keyEvent.mDownTime;
        this.mEventTime = keyEvent.mEventTime;
        this.mAction = i2;
        this.mKeyCode = keyEvent.mKeyCode;
        this.mRepeatCount = keyEvent.mRepeatCount;
        this.mMetaState = keyEvent.mMetaState;
        this.mDeviceId = keyEvent.mDeviceId;
        this.mSource = keyEvent.mSource;
        this.mScanCode = keyEvent.mScanCode;
        this.mFlags = keyEvent.mFlags;
    }

    private KeyEvent(Parcel parcel) {
        this.mDeviceId = parcel.readInt();
        this.mSource = parcel.readInt();
        this.mAction = parcel.readInt();
        this.mKeyCode = parcel.readInt();
        this.mRepeatCount = parcel.readInt();
        this.mMetaState = parcel.readInt();
        this.mScanCode = parcel.readInt();
        this.mFlags = parcel.readInt();
        this.mDownTime = parcel.readLong();
        this.mEventTime = parcel.readLong();
    }
}
