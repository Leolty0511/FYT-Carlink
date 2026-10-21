package android.os;

import android.os.storage.StorageManager;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.util.FastXmlSerializer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class AppPowerSaveConfig implements Parcelable {
    private static final String APPCONFIG_FILENAME = "appPowerSaveConfig.xml";
    private static final int AUTOLAUNCH_DEF;
    private static final String AUTOLAUNCH_DEF_PROP = "persist.sys.pwctl.auto";
    public static final Parcelable.Creator<AppPowerSaveConfig> CREATOR;
    public static final int MASK_ALARM = 2;
    public static final int MASK_AUTOLAUNCH = 16;
    public static final int MASK_LOCKSCRRENCLEANUP = 64;
    public static final int MASK_NETWORK = 8;
    public static final int MASK_NULL = 0;
    public static final int MASK_OPTIMIZE = 1;
    public static final int MASK_POWERCONSUMERTYPE = 128;
    public static final int MASK_SECONDARYLAUNCH = 32;
    public static final int MASK_WAKELOCK = 4;
    public static final int POWER_CONSUMER_TYPE_ALARM = 1;
    public static final int POWER_CONSUMER_TYPE_GPS = 4;
    public static final int POWER_CONSUMER_TYPE_NONE = 0;
    public static final int POWER_CONSUMER_TYPE_WAKELOCK = 2;
    private static final int SECONDARYLAUNCH_DEF;
    private static final String SECONDARYLAUNCH_DEF_PROP = "persist.sys.pwctl.secondary";
    static final String TAG = "PowerController.Config";
    public static final int VALUE_AUTO = 0;
    public static final int VALUE_INVALID = -1;
    public static final int VALUE_NO_OPTIMIZE = 2;
    public static final int VALUE_OPTIMIZE = 1;
    private static final String XML_ATTRIBUTE_PKG_ALARM = "alarm";
    private static final String XML_ATTRIBUTE_PKG_AUTOLAUNCH = "autolaunch";
    private static final String XML_ATTRIBUTE_PKG_LOCKSCREENCLEANUP = "lockscreencleanup";
    private static final String XML_ATTRIBUTE_PKG_NAME = "name";
    private static final String XML_ATTRIBUTE_PKG_NETWORK = "network";
    private static final String XML_ATTRIBUTE_PKG_OPTIMIZE = "optimize";
    private static final String XML_ATTRIBUTE_PKG_POWERCONSUMERTYPE = "consumertype";
    private static final String XML_ATTRIBUTE_PKG_SECONDARYLAUNCH = "secondarylaunch";
    private static final String XML_ATTRIBUTE_PKG_WAKELOCK = "wakelock";
    private static final String XML_TAG_FILE = "app_powersave_config";
    private static final String XML_TAG_PKG = "package";
    private static int[] mDefConfig;
    public static int[] mMaskArray = {1, 2, 4, 8, 16, 32, 64, 128};
    public int alarm;
    public int autoLaunch;
    public int lockscreenCleanup;
    public int network;
    public int optimize;
    public int powerConsumerType;
    public int secondaryLaunch;
    public int wakelock;

    public enum ConfigType {
        TYPE_NULL(-1),
        TYPE_OPTIMIZE(0),
        TYPE_ALARM(1),
        TYPE_WAKELOCK(2),
        TYPE_NETWORK(3),
        TYPE_AUTOLAUNCH(4),
        TYPE_SECONDARYLAUNCH(5),
        TYPE_LOCKSCREENCLEANUP(6),
        TYPE_POWERCONSUMERTYPE(7),
        TYPE_MAX(8);

        public final int value;

        ConfigType(int i2) {
            this.value = i2;
        }
    }

    static {
        int i2 = SystemProperties.getInt(AUTOLAUNCH_DEF_PROP, 1);
        AUTOLAUNCH_DEF = i2;
        int i3 = SystemProperties.getInt(SECONDARYLAUNCH_DEF_PROP, 1);
        SECONDARYLAUNCH_DEF = i3;
        int[] iArr = {1, 0, 0, 0, 1, 1, 0, 0};
        mDefConfig = iArr;
        iArr[ConfigType.TYPE_AUTOLAUNCH.value] = i2;
        mDefConfig[ConfigType.TYPE_SECONDARYLAUNCH.value] = i3;
        CREATOR = new Parcelable.Creator<AppPowerSaveConfig>() { // from class: android.os.AppPowerSaveConfig.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AppPowerSaveConfig createFromParcel(Parcel parcel) {
                return new AppPowerSaveConfig(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AppPowerSaveConfig[] newArray(int i4) {
                return new AppPowerSaveConfig[i4];
            }
        };
    }

    public AppPowerSaveConfig() {
        this.optimize = 1;
        this.alarm = 0;
        this.wakelock = 0;
        this.network = 0;
        this.autoLaunch = 0;
        this.secondaryLaunch = 0;
        this.lockscreenCleanup = 0;
        this.powerConsumerType = 0;
        for (int i2 = 0; i2 < ConfigType.TYPE_MAX.value; i2++) {
            setConfigWithType(this, i2, mDefConfig[i2]);
        }
    }

    public static String ConfigType2Str(int i2) {
        return (i2 < 0 || i2 >= 8) ? android.accessibilityservice.c.d("Unknown type: ", i2) : new String[]{"TYPE_OPTIMIZE", "TYPE_ALARM", "TYPE_WAKELOCK", "TYPE_NETWORK", "TYPE_AUTOLAUNCH", "TYPE_SECONDARYLAUNCH", "TYPE_LOCKSCREENCLEANUP", "TYPE_POWERCONSUMERTYPE"}[i2];
    }

    public static String ConfigValue2Str(int i2) {
        return (i2 < 0 || i2 >= 3) ? android.accessibilityservice.c.d("Unknown value: ", i2) : new String[]{"VALUE_AUTO", "VALUE_OPTIMIZE", "VALUE_NO_OPTIMIZE"}[i2];
    }

    public static int getConfigValue(AppPowerSaveConfig appPowerSaveConfig, int i2) {
        if (i2 == ConfigType.TYPE_OPTIMIZE.value) {
            return appPowerSaveConfig.optimize;
        }
        if (i2 == ConfigType.TYPE_ALARM.value) {
            return appPowerSaveConfig.alarm;
        }
        if (i2 == ConfigType.TYPE_WAKELOCK.value) {
            return appPowerSaveConfig.wakelock;
        }
        if (i2 == ConfigType.TYPE_NETWORK.value) {
            return appPowerSaveConfig.network;
        }
        if (i2 == ConfigType.TYPE_AUTOLAUNCH.value) {
            return appPowerSaveConfig.autoLaunch;
        }
        if (i2 == ConfigType.TYPE_SECONDARYLAUNCH.value) {
            return appPowerSaveConfig.secondaryLaunch;
        }
        if (i2 == ConfigType.TYPE_LOCKSCREENCLEANUP.value) {
            return appPowerSaveConfig.lockscreenCleanup;
        }
        if (i2 == ConfigType.TYPE_POWERCONSUMERTYPE.value) {
            return appPowerSaveConfig.powerConsumerType;
        }
        return -1;
    }

    public static int getDefaultValue(int i2) {
        return mDefConfig[i2];
    }

    public static boolean isDefault(int i2, int i3) {
        return mDefConfig[i2] == i3;
    }

    public static boolean readConfig(Map<String, AppPowerSaveConfig> map) {
        FileInputStream fileInputStreamOpenRead;
        try {
            fileInputStreamOpenRead = new AtomicFile(new File(new File(Environment.getDataDirectory(), StorageManager.UUID_SYSTEM), APPCONFIG_FILENAME)).openRead();
        } catch (FileNotFoundException e2) {
            Slog.e(TAG, ">>>file not found," + e2);
            fileInputStreamOpenRead = null;
        }
        if (fileInputStreamOpenRead == null) {
            try {
                fileInputStreamOpenRead = new AtomicFile(new File(new File(Environment.getRootDirectory(), "etc"), APPCONFIG_FILENAME)).openRead();
            } catch (FileNotFoundException e3) {
                Slog.e(TAG, ">>>default file not found," + e3);
                return false;
            }
        }
        try {
            try {
                try {
                    try {
                        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                        xmlPullParserNewPullParser.setInput(fileInputStreamOpenRead, "UTF-8");
                        String attributeValue = null;
                        AppPowerSaveConfig appPowerSaveConfig = null;
                        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                            if (eventType != 2) {
                                if (eventType == 3 && "package".equals(xmlPullParserNewPullParser.getName())) {
                                    map.put(attributeValue, appPowerSaveConfig);
                                    appPowerSaveConfig = null;
                                }
                            } else if ("package".equals(xmlPullParserNewPullParser.getName())) {
                                appPowerSaveConfig = new AppPowerSaveConfig();
                                attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "name");
                                appPowerSaveConfig.optimize = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(null, XML_ATTRIBUTE_PKG_OPTIMIZE));
                                appPowerSaveConfig.alarm = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(null, "alarm"));
                                appPowerSaveConfig.wakelock = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(null, XML_ATTRIBUTE_PKG_WAKELOCK));
                                appPowerSaveConfig.network = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(null, "network"));
                                appPowerSaveConfig.autoLaunch = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(null, XML_ATTRIBUTE_PKG_AUTOLAUNCH));
                                appPowerSaveConfig.secondaryLaunch = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(null, XML_ATTRIBUTE_PKG_SECONDARYLAUNCH));
                                appPowerSaveConfig.lockscreenCleanup = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(null, XML_ATTRIBUTE_PKG_LOCKSCREENCLEANUP));
                                appPowerSaveConfig.powerConsumerType = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(null, XML_ATTRIBUTE_PKG_POWERCONSUMERTYPE));
                            }
                        }
                        try {
                            fileInputStreamOpenRead.close();
                            return true;
                        } catch (IOException e4) {
                            Slog.e(TAG, "Fail to close stream " + e4);
                            return false;
                        } catch (Exception e5) {
                            Slog.e(TAG, "exception at last,e: " + e5);
                            return false;
                        }
                    } catch (Throwable th) {
                        try {
                            fileInputStreamOpenRead.close();
                            throw th;
                        } catch (IOException e6) {
                            Slog.e(TAG, "Fail to close stream " + e6);
                            return false;
                        } catch (Exception e7) {
                            Slog.e(TAG, "exception at last,e: " + e7);
                            return false;
                        }
                    }
                } catch (IOException e8) {
                    Slog.e(TAG, "Failed parsing " + e8);
                    try {
                        fileInputStreamOpenRead.close();
                        return false;
                    } catch (IOException e9) {
                        Slog.e(TAG, "Fail to close stream " + e9);
                        return false;
                    } catch (Exception e10) {
                        Slog.e(TAG, "exception at last,e: " + e10);
                        return false;
                    }
                } catch (IndexOutOfBoundsException e11) {
                    Slog.e(TAG, "Failed parsing " + e11);
                    try {
                        fileInputStreamOpenRead.close();
                        return false;
                    } catch (IOException e12) {
                        Slog.e(TAG, "Fail to close stream " + e12);
                        return false;
                    } catch (Exception e13) {
                        Slog.e(TAG, "exception at last,e: " + e13);
                        return false;
                    }
                }
            } catch (NullPointerException e14) {
                Slog.e(TAG, "Failed parsing " + e14);
                try {
                    fileInputStreamOpenRead.close();
                    return false;
                } catch (IOException e15) {
                    Slog.e(TAG, "Fail to close stream " + e15);
                    return false;
                } catch (Exception e16) {
                    Slog.e(TAG, "exception at last,e: " + e16);
                    return false;
                }
            } catch (XmlPullParserException e17) {
                Slog.e(TAG, "Failed parsing " + e17);
                try {
                    fileInputStreamOpenRead.close();
                    return false;
                } catch (IOException e18) {
                    Slog.e(TAG, "Fail to close stream " + e18);
                    return false;
                } catch (Exception e19) {
                    Slog.e(TAG, "exception at last,e: " + e19);
                    return false;
                }
            }
        } catch (IllegalStateException e20) {
            Slog.e(TAG, "Failed parsing " + e20);
            try {
                fileInputStreamOpenRead.close();
                return false;
            } catch (IOException e21) {
                Slog.e(TAG, "Fail to close stream " + e21);
                return false;
            } catch (Exception e22) {
                Slog.e(TAG, "exception at last,e: " + e22);
                return false;
            }
        } catch (NumberFormatException e23) {
            Slog.e(TAG, "Failed parsing " + e23);
            try {
                fileInputStreamOpenRead.close();
                return false;
            } catch (IOException e24) {
                Slog.e(TAG, "Fail to close stream " + e24);
                return false;
            } catch (Exception e25) {
                Slog.e(TAG, "exception at last,e: " + e25);
                return false;
            }
        }
    }

    public static boolean setConfigWithType(AppPowerSaveConfig appPowerSaveConfig, int i2, int i3) {
        if (i2 == ConfigType.TYPE_POWERCONSUMERTYPE.value) {
            appPowerSaveConfig.powerConsumerType = i3;
            return true;
        }
        if (i3 < 0 || i3 > 2) {
            return false;
        }
        if (i2 == ConfigType.TYPE_OPTIMIZE.value) {
            appPowerSaveConfig.optimize = i3;
        } else if (i2 == ConfigType.TYPE_ALARM.value) {
            appPowerSaveConfig.alarm = i3;
        } else if (i2 == ConfigType.TYPE_WAKELOCK.value) {
            appPowerSaveConfig.wakelock = i3;
        } else if (i2 == ConfigType.TYPE_NETWORK.value) {
            appPowerSaveConfig.network = i3;
        } else if (i2 == ConfigType.TYPE_AUTOLAUNCH.value) {
            appPowerSaveConfig.autoLaunch = i3;
        } else if (i2 == ConfigType.TYPE_SECONDARYLAUNCH.value) {
            appPowerSaveConfig.secondaryLaunch = i3;
        } else if (i2 == ConfigType.TYPE_LOCKSCREENCLEANUP.value) {
            appPowerSaveConfig.lockscreenCleanup = i3;
        }
        return true;
    }

    public static boolean writeConfig(Map<String, AppPowerSaveConfig> map) {
        AtomicFile atomicFile = new AtomicFile(new File(new File(Environment.getDataDirectory(), StorageManager.UUID_SYSTEM), APPCONFIG_FILENAME));
        try {
            FileOutputStream fileOutputStreamStartWrite = atomicFile.startWrite();
            try {
                FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
                fastXmlSerializer.setOutput(fileOutputStreamStartWrite, "utf-8");
                fastXmlSerializer.startDocument(null, Boolean.TRUE);
                fastXmlSerializer.startTag(null, XML_TAG_FILE);
                if (map != null) {
                    for (Map.Entry<String, AppPowerSaveConfig> entry : map.entrySet()) {
                        String key = entry.getKey();
                        AppPowerSaveConfig value = entry.getValue();
                        if (!value.isReset()) {
                            fastXmlSerializer.startTag(null, "package");
                            fastXmlSerializer.attribute(null, "name", key);
                            fastXmlSerializer.attribute(null, XML_ATTRIBUTE_PKG_OPTIMIZE, String.valueOf(value.optimize));
                            fastXmlSerializer.attribute(null, "alarm", String.valueOf(value.alarm));
                            fastXmlSerializer.attribute(null, XML_ATTRIBUTE_PKG_WAKELOCK, String.valueOf(value.wakelock));
                            fastXmlSerializer.attribute(null, "network", String.valueOf(value.network));
                            fastXmlSerializer.attribute(null, XML_ATTRIBUTE_PKG_AUTOLAUNCH, String.valueOf(value.autoLaunch));
                            fastXmlSerializer.attribute(null, XML_ATTRIBUTE_PKG_SECONDARYLAUNCH, String.valueOf(value.secondaryLaunch));
                            fastXmlSerializer.attribute(null, XML_ATTRIBUTE_PKG_LOCKSCREENCLEANUP, String.valueOf(value.lockscreenCleanup));
                            fastXmlSerializer.attribute(null, XML_ATTRIBUTE_PKG_POWERCONSUMERTYPE, String.valueOf(value.powerConsumerType));
                            fastXmlSerializer.endTag(null, "package");
                        }
                    }
                }
                fastXmlSerializer.endTag(null, XML_TAG_FILE);
                fastXmlSerializer.endDocument();
                atomicFile.finishWrite(fileOutputStreamStartWrite);
                return true;
            } catch (IOException e2) {
                Slog.e(TAG, "Failed to write state, restoring backup.exp:\n" + e2);
                atomicFile.failWrite(fileOutputStreamStartWrite);
                return false;
            }
        } catch (IOException e3) {
            Slog.e(TAG, "Failed to write state: " + e3);
            return false;
        }
    }

    private static void writeItem(XmlSerializer xmlSerializer, String str, String str2) throws IOException {
        xmlSerializer.startTag(null, str);
        if (str2 == null) {
            xmlSerializer.text("null");
        } else {
            xmlSerializer.text(str2);
        }
        xmlSerializer.endTag(null, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isReset() {
        return false;
    }

    public boolean isValid() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = this.alarm;
        return i7 >= 0 && i7 <= 2 && (i2 = this.wakelock) >= 0 && i2 <= 2 && (i3 = this.network) >= 0 && i3 <= 2 && (i4 = this.autoLaunch) >= 0 && i4 <= 2 && (i5 = this.secondaryLaunch) >= 0 && i5 <= 2 && (i6 = this.lockscreenCleanup) >= 0 && i6 <= 2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(TAG);
        sb.append("{ optimize: " + this.optimize + ", alarm: " + ConfigValue2Str(this.alarm) + "(" + this.alarm + "), wakelock: " + ConfigValue2Str(this.wakelock) + "(" + this.wakelock + "), network: " + ConfigValue2Str(this.network) + "(" + this.network + "), autoLaunch: " + ConfigValue2Str(this.autoLaunch) + "(" + this.autoLaunch + "), secondaryLaunch: " + ConfigValue2Str(this.secondaryLaunch) + "(" + this.secondaryLaunch + "), lockscreenCleanup: " + ConfigValue2Str(this.lockscreenCleanup) + "(" + this.lockscreenCleanup + ") }");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.optimize);
        parcel.writeInt(this.alarm);
        parcel.writeInt(this.wakelock);
        parcel.writeInt(this.network);
        parcel.writeInt(this.autoLaunch);
        parcel.writeInt(this.secondaryLaunch);
        parcel.writeInt(this.lockscreenCleanup);
        parcel.writeInt(this.powerConsumerType);
    }

    public AppPowerSaveConfig(Parcel parcel) {
        this.optimize = 1;
        this.alarm = 0;
        this.wakelock = 0;
        this.network = 0;
        this.autoLaunch = 0;
        this.secondaryLaunch = 0;
        this.lockscreenCleanup = 0;
        this.powerConsumerType = 0;
        this.optimize = parcel.readInt();
        this.alarm = parcel.readInt();
        this.wakelock = parcel.readInt();
        this.network = parcel.readInt();
        this.autoLaunch = parcel.readInt();
        this.secondaryLaunch = parcel.readInt();
        this.lockscreenCleanup = parcel.readInt();
        this.powerConsumerType = parcel.readInt();
    }
}
