package android.service.notification;

import android.accessibilityservice.c;
import android.app.ActivityManager;
import android.app.NotificationManager;
import android.app.job.JobInfo;
import android.app.m;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.nfc.cardemulation.CardEmulation;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Contacts;
import android.provider.Settings;
import android.provider.SettingsStringUtil;
import android.provider.Telephony;
import android.telecom.Logging.Session;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import com.android.internal.R;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.telephony.IccCardConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes2.dex */
public class ZenModeConfig implements Parcelable {
    private static final String ALLOW_ATT_CALLS = "calls";
    private static final String ALLOW_ATT_CALLS_FROM = "callsFrom";
    private static final String ALLOW_ATT_EVENTS = "events";
    private static final String ALLOW_ATT_FROM = "from";
    private static final String ALLOW_ATT_MESSAGES = "messages";
    private static final String ALLOW_ATT_MESSAGES_FROM = "messagesFrom";
    private static final String ALLOW_ATT_REMINDERS = "reminders";
    private static final String ALLOW_ATT_REPEAT_CALLERS = "repeatCallers";
    private static final String ALLOW_ATT_SCREEN_OFF = "visualScreenOff";
    private static final String ALLOW_ATT_SCREEN_ON = "visualScreenOn";
    private static final String ALLOW_TAG = "allow";
    private static final String AUTOMATIC_TAG = "automatic";
    private static final String CONDITION_ATT_COMPONENT = "component";
    private static final String CONDITION_ATT_FLAGS = "flags";
    private static final String CONDITION_ATT_ICON = "icon";
    private static final String CONDITION_ATT_ID = "id";
    private static final String CONDITION_ATT_LINE1 = "line1";
    private static final String CONDITION_ATT_LINE2 = "line2";
    private static final String CONDITION_ATT_STATE = "state";
    private static final String CONDITION_ATT_SUMMARY = "summary";
    private static final String CONDITION_TAG = "condition";
    public static final String COUNTDOWN_PATH = "countdown";
    private static final int DAY_MINUTES = 1440;
    private static final boolean DEFAULT_ALLOW_CALLS = true;
    private static final boolean DEFAULT_ALLOW_EVENTS = true;
    private static final boolean DEFAULT_ALLOW_MESSAGES = false;
    private static final boolean DEFAULT_ALLOW_REMINDERS = true;
    private static final boolean DEFAULT_ALLOW_REPEAT_CALLERS = false;
    private static final boolean DEFAULT_ALLOW_SCREEN_OFF = true;
    private static final boolean DEFAULT_ALLOW_SCREEN_ON = true;
    private static final int DEFAULT_SOURCE = 1;
    public static final String EVENT_PATH = "event";
    public static final String IS_ALARM_PATH = "alarm";
    private static final String MANUAL_TAG = "manual";
    public static final int MAX_SOURCE = 2;
    private static final int MINUTES_MS = 60000;
    private static final String RULE_ATT_COMPONENT = "component";
    private static final String RULE_ATT_CONDITION_ID = "conditionId";
    private static final String RULE_ATT_CREATION_TIME = "creationTime";
    private static final String RULE_ATT_ENABLED = "enabled";
    private static final String RULE_ATT_ENABLER = "enabler";
    private static final String RULE_ATT_ID = "ruleId";
    private static final String RULE_ATT_NAME = "name";
    private static final String RULE_ATT_SNOOZING = "snoozing";
    private static final String RULE_ATT_ZEN = "zen";
    public static final String SCHEDULE_PATH = "schedule";
    private static final int SECONDS_MS = 1000;
    public static final int SOURCE_ANYONE = 0;
    public static final int SOURCE_CONTACT = 1;
    public static final int SOURCE_STAR = 2;
    public static final String SYSTEM_AUTHORITY = "android";
    private static String TAG = "ZenModeConfig";
    private static final int XML_VERSION = 2;
    private static final String ZEN_ATT_USER = "user";
    private static final String ZEN_ATT_VERSION = "version";
    public static final String ZEN_TAG = "zen";
    private static final int ZERO_VALUE_MS = 10000;
    public boolean allowCalls;
    public int allowCallsFrom;
    public boolean allowEvents;
    public boolean allowMessages;
    public int allowMessagesFrom;
    public boolean allowReminders;
    public boolean allowRepeatCallers;
    public boolean allowWhenScreenOff;
    public boolean allowWhenScreenOn;
    public ArrayMap<String, ZenRule> automaticRules;
    public ZenRule manualRule;
    public int user;
    public static final int[] ALL_DAYS = {1, 2, 3, 4, 5, 6, 7};
    public static final int[] WEEKNIGHT_DAYS = {1, 2, 3, 4, 5};
    public static final int[] WEEKEND_DAYS = {6, 7};
    public static final int[] MINUTE_BUCKETS = generateMinuteBuckets();
    public static final Parcelable.Creator<ZenModeConfig> CREATOR = new Parcelable.Creator<ZenModeConfig>() { // from class: android.service.notification.ZenModeConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ZenModeConfig createFromParcel(Parcel parcel) {
            return new ZenModeConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ZenModeConfig[] newArray(int i2) {
            return new ZenModeConfig[i2];
        }
    };

    public static class EventInfo {
        public static final int REPLY_ANY_EXCEPT_NO = 0;
        public static final int REPLY_YES = 2;
        public static final int REPLY_YES_OR_MAYBE = 1;
        public String calendar;
        public int reply;
        public int userId = -10000;

        public static int resolveUserId(int i2) {
            return i2 == -10000 ? ActivityManager.getCurrentUser() : i2;
        }

        public EventInfo copy() {
            EventInfo eventInfo = new EventInfo();
            eventInfo.userId = this.userId;
            eventInfo.calendar = this.calendar;
            eventInfo.reply = this.reply;
            return eventInfo;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof EventInfo)) {
                return false;
            }
            EventInfo eventInfo = (EventInfo) obj;
            return this.userId == eventInfo.userId && Objects.equals(this.calendar, eventInfo.calendar) && this.reply == eventInfo.reply;
        }

        public int hashCode() {
            return 0;
        }
    }

    public static class ScheduleInfo {
        public int[] days;
        public int endHour;
        public int endMinute;
        public boolean exitAtAlarm;
        public long nextAlarm;
        public int startHour;
        public int startMinute;

        public static String ts(long j2) {
            StringBuilder sb = new StringBuilder();
            sb.append(new Date(j2));
            sb.append(" (");
            return m.k(sb, j2, ")");
        }

        public ScheduleInfo copy() {
            ScheduleInfo scheduleInfo = new ScheduleInfo();
            int[] iArr = this.days;
            if (iArr != null) {
                int[] iArr2 = new int[iArr.length];
                scheduleInfo.days = iArr2;
                int[] iArr3 = this.days;
                System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
            }
            scheduleInfo.startHour = this.startHour;
            scheduleInfo.startMinute = this.startMinute;
            scheduleInfo.endHour = this.endHour;
            scheduleInfo.endMinute = this.endMinute;
            scheduleInfo.exitAtAlarm = this.exitAtAlarm;
            scheduleInfo.nextAlarm = this.nextAlarm;
            return scheduleInfo;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ScheduleInfo)) {
                return false;
            }
            ScheduleInfo scheduleInfo = (ScheduleInfo) obj;
            return ZenModeConfig.toDayList(this.days).equals(ZenModeConfig.toDayList(scheduleInfo.days)) && this.startHour == scheduleInfo.startHour && this.startMinute == scheduleInfo.startMinute && this.endHour == scheduleInfo.endHour && this.endMinute == scheduleInfo.endMinute && this.exitAtAlarm == scheduleInfo.exitAtAlarm;
        }

        public int hashCode() {
            return 0;
        }

        public String toString() {
            return "ScheduleInfo{days=" + Arrays.toString(this.days) + ", startHour=" + this.startHour + ", startMinute=" + this.startMinute + ", endHour=" + this.endHour + ", endMinute=" + this.endMinute + ", exitAtAlarm=" + this.exitAtAlarm + ", nextAlarm=" + ts(this.nextAlarm) + '}';
        }
    }

    public ZenModeConfig() {
        this.allowCalls = true;
        this.allowRepeatCallers = false;
        this.allowMessages = false;
        this.allowReminders = true;
        this.allowEvents = true;
        this.allowCallsFrom = 1;
        this.allowMessagesFrom = 1;
        this.user = 0;
        this.allowWhenScreenOff = true;
        this.allowWhenScreenOn = true;
        this.automaticRules = new ArrayMap<>();
    }

    private static <T> void addKeys(ArraySet<T> arraySet, ArrayMap<T, ?> arrayMap) {
        if (arrayMap != null) {
            for (int i2 = 0; i2 < arrayMap.size(); i2++) {
                arraySet.add(arrayMap.keyAt(i2));
            }
        }
    }

    private Diff diff(ZenModeConfig zenModeConfig) {
        Diff diff = new Diff();
        if (zenModeConfig == null) {
            return diff.addLine("config", "delete");
        }
        int i2 = this.user;
        if (i2 != zenModeConfig.user) {
            diff.addLine("user", Integer.valueOf(i2), Integer.valueOf(zenModeConfig.user));
        }
        boolean z2 = this.allowCalls;
        if (z2 != zenModeConfig.allowCalls) {
            diff.addLine("allowCalls", Boolean.valueOf(z2), Boolean.valueOf(zenModeConfig.allowCalls));
        }
        boolean z3 = this.allowRepeatCallers;
        if (z3 != zenModeConfig.allowRepeatCallers) {
            diff.addLine("allowRepeatCallers", Boolean.valueOf(z3), Boolean.valueOf(zenModeConfig.allowRepeatCallers));
        }
        boolean z4 = this.allowMessages;
        if (z4 != zenModeConfig.allowMessages) {
            diff.addLine("allowMessages", Boolean.valueOf(z4), Boolean.valueOf(zenModeConfig.allowMessages));
        }
        int i3 = this.allowCallsFrom;
        if (i3 != zenModeConfig.allowCallsFrom) {
            diff.addLine("allowCallsFrom", Integer.valueOf(i3), Integer.valueOf(zenModeConfig.allowCallsFrom));
        }
        int i4 = this.allowMessagesFrom;
        if (i4 != zenModeConfig.allowMessagesFrom) {
            diff.addLine("allowMessagesFrom", Integer.valueOf(i4), Integer.valueOf(zenModeConfig.allowMessagesFrom));
        }
        boolean z5 = this.allowReminders;
        if (z5 != zenModeConfig.allowReminders) {
            diff.addLine("allowReminders", Boolean.valueOf(z5), Boolean.valueOf(zenModeConfig.allowReminders));
        }
        boolean z6 = this.allowEvents;
        if (z6 != zenModeConfig.allowEvents) {
            diff.addLine("allowEvents", Boolean.valueOf(z6), Boolean.valueOf(zenModeConfig.allowEvents));
        }
        boolean z7 = this.allowWhenScreenOff;
        if (z7 != zenModeConfig.allowWhenScreenOff) {
            diff.addLine("allowWhenScreenOff", Boolean.valueOf(z7), Boolean.valueOf(zenModeConfig.allowWhenScreenOff));
        }
        boolean z8 = this.allowWhenScreenOn;
        if (z8 != zenModeConfig.allowWhenScreenOn) {
            diff.addLine("allowWhenScreenOn", Boolean.valueOf(z8), Boolean.valueOf(zenModeConfig.allowWhenScreenOn));
        }
        ArraySet arraySet = new ArraySet();
        addKeys(arraySet, this.automaticRules);
        addKeys(arraySet, zenModeConfig.automaticRules);
        int size = arraySet.size();
        for (int i5 = 0; i5 < size; i5++) {
            String str = (String) arraySet.valueAt(i5);
            ArrayMap<String, ZenRule> arrayMap = this.automaticRules;
            ZenRule zenRule = null;
            ZenRule zenRule2 = arrayMap != null ? arrayMap.get(str) : null;
            ArrayMap<String, ZenRule> arrayMap2 = zenModeConfig.automaticRules;
            if (arrayMap2 != null) {
                zenRule = arrayMap2.get(str);
            }
            ZenRule.appendDiff(diff, c.k("automaticRule[", str, "]"), zenRule2, zenRule);
        }
        ZenRule.appendDiff(diff, "manualRule", this.manualRule, zenModeConfig.manualRule);
        return diff;
    }

    private static int[] generateMinuteBuckets() {
        int[] iArr = new int[15];
        iArr[0] = 15;
        iArr[1] = 30;
        iArr[2] = 45;
        for (int i2 = 1; i2 <= 12; i2++) {
            iArr[i2 + 2] = i2 * 60;
        }
        return iArr;
    }

    private static String getConditionLine(Context context, ZenModeConfig zenModeConfig, int i2, boolean z2, boolean z3) {
        String string = "";
        if (zenModeConfig == null) {
            return "";
        }
        ZenRule zenRule = zenModeConfig.manualRule;
        if (zenRule != null) {
            Uri uri = zenRule.conditionId;
            String str = zenRule.enabler;
            if (str != null) {
                string = getOwnerCaption(context, str);
            } else if (uri == null) {
                string = context.getString(R.string.zen_mode_forever);
            } else {
                long jTryParseCountdownConditionId = tryParseCountdownConditionId(uri);
                Condition timeCondition = zenModeConfig.manualRule.condition;
                if (jTryParseCountdownConditionId > 0) {
                    timeCondition = toTimeCondition(context, jTryParseCountdownConditionId, Math.round((jTryParseCountdownConditionId - System.currentTimeMillis()) / 60000.0f), i2, z3);
                }
                String str2 = timeCondition == null ? "" : z2 ? timeCondition.line1 : timeCondition.summary;
                if (!TextUtils.isEmpty(str2)) {
                    string = str2;
                }
            }
        }
        for (ZenRule zenRule2 : zenModeConfig.automaticRules.values()) {
            if (zenRule2.isAutomaticActive()) {
                string = string.isEmpty() ? zenRule2.name : context.getResources().getString(R.string.zen_mode_rule_name_combination, string, zenRule2.name);
            }
        }
        return string;
    }

    public static String getConditionSummary(Context context, ZenModeConfig zenModeConfig, int i2, boolean z2) {
        return getConditionLine(context, zenModeConfig, i2, false, z2);
    }

    public static ComponentName getEventConditionProvider() {
        return new ComponentName(SYSTEM_AUTHORITY, "EventConditionProvider");
    }

    private static CharSequence getFormattedTime(Context context, long j2, boolean z2, int i2) {
        return DateFormat.format(DateFormat.getBestDateTimePattern(Locale.getDefault(), (!z2 ? "EEE " : "").concat(DateFormat.is24HourFormat(context, i2) ? "Hm" : "hma")), j2);
    }

    private static String getOwnerCaption(Context context, String str) {
        CharSequence charSequenceLoadLabel;
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            if (applicationInfo == null || (charSequenceLoadLabel = applicationInfo.loadLabel(packageManager)) == null) {
                return "";
            }
            String strTrim = charSequenceLoadLabel.toString().trim();
            return strTrim.length() > 0 ? strTrim : "";
        } catch (Throwable th) {
            Slog.w(TAG, "Error loading owner caption", th);
            return "";
        }
    }

    public static ComponentName getScheduleConditionProvider() {
        return new ComponentName(SYSTEM_AUTHORITY, "ScheduleConditionProvider");
    }

    private static boolean isToday(long j2) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.setTimeInMillis(j2);
        return gregorianCalendar.get(1) == gregorianCalendar2.get(1) && gregorianCalendar.get(2) == gregorianCalendar2.get(2) && gregorianCalendar.get(5) == gregorianCalendar2.get(5);
    }

    private static boolean isValidAutomaticRule(ZenRule zenRule) {
        return (zenRule == null || TextUtils.isEmpty(zenRule.name) || !Settings.Global.isValidZenMode(zenRule.zenMode) || zenRule.conditionId == null || !sameCondition(zenRule)) ? false : true;
    }

    public static boolean isValidCountdownConditionId(Uri uri) {
        return tryParseCountdownConditionId(uri) != 0;
    }

    public static boolean isValidCountdownToAlarmConditionId(Uri uri) {
        if (tryParseCountdownConditionId(uri) != 0 && uri.getPathSegments().size() >= 4 && "alarm".equals(uri.getPathSegments().get(2))) {
            try {
                return Boolean.parseBoolean(uri.getPathSegments().get(3));
            } catch (RuntimeException e2) {
                Slog.w(TAG, "Error parsing countdown alarm condition: " + uri, e2);
            }
        }
        return false;
    }

    public static boolean isValidEventConditionId(Uri uri) {
        return tryParseEventConditionId(uri) != null;
    }

    public static boolean isValidHour(int i2) {
        return i2 >= 0 && i2 < 24;
    }

    private static boolean isValidManualRule(ZenRule zenRule) {
        return zenRule == null || (Settings.Global.isValidZenMode(zenRule.zenMode) && sameCondition(zenRule));
    }

    public static boolean isValidMinute(int i2) {
        return i2 >= 0 && i2 < 60;
    }

    public static boolean isValidScheduleConditionId(Uri uri) {
        return tryParseScheduleConditionId(uri) != null;
    }

    private static boolean isValidSource(int i2) {
        return i2 >= 0 && i2 <= 2;
    }

    public static String newRuleId() {
        return UUID.randomUUID().toString().replace(NativeLibraryHelper.CLEAR_ABI_OVERRIDE, "");
    }

    private static int prioritySendersToSource(int i2, int i3) {
        if (i2 == 0) {
            return 0;
        }
        int i4 = 1;
        if (i2 != 1) {
            i4 = 2;
            if (i2 != 2) {
                return i3;
            }
        }
        return i4;
    }

    public static Condition readConditionXml(XmlPullParser xmlPullParser) {
        Uri uriSafeUri = safeUri(xmlPullParser, "id");
        if (uriSafeUri == null) {
            return null;
        }
        try {
            return new Condition(uriSafeUri, xmlPullParser.getAttributeValue(null, "summary"), xmlPullParser.getAttributeValue(null, CONDITION_ATT_LINE1), xmlPullParser.getAttributeValue(null, CONDITION_ATT_LINE2), safeInt(xmlPullParser, "icon", -1), safeInt(xmlPullParser, "state", -1), safeInt(xmlPullParser, "flags", -1));
        } catch (IllegalArgumentException e2) {
            Slog.w(TAG, "Unable to read condition xml", e2);
            return null;
        }
    }

    public static ZenRule readRuleXml(XmlPullParser xmlPullParser) {
        ZenRule zenRule = new ZenRule();
        zenRule.enabled = safeBoolean(xmlPullParser, "enabled", true);
        zenRule.snoozing = safeBoolean(xmlPullParser, RULE_ATT_SNOOZING, false);
        zenRule.name = xmlPullParser.getAttributeValue(null, "name");
        String attributeValue = xmlPullParser.getAttributeValue(null, "zen");
        int iTryParseZenMode = tryParseZenMode(attributeValue, -1);
        zenRule.zenMode = iTryParseZenMode;
        if (iTryParseZenMode == -1) {
            Slog.w(TAG, "Bad zen mode in rule xml:" + attributeValue);
            return null;
        }
        zenRule.conditionId = safeUri(xmlPullParser, RULE_ATT_CONDITION_ID);
        zenRule.component = safeComponentName(xmlPullParser, CardEmulation.EXTRA_SERVICE_COMPONENT);
        zenRule.creationTime = safeLong(xmlPullParser, "creationTime", 0L);
        zenRule.enabler = xmlPullParser.getAttributeValue(null, RULE_ATT_ENABLER);
        zenRule.condition = readConditionXml(xmlPullParser);
        return zenRule;
    }

    public static ZenModeConfig readXml(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2 || !"zen".equals(xmlPullParser.getName())) {
            return null;
        }
        ZenModeConfig zenModeConfig = new ZenModeConfig();
        zenModeConfig.user = safeInt(xmlPullParser, "user", zenModeConfig.user);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                throw new IllegalStateException("Failed to reach END_DOCUMENT");
            }
            String name = xmlPullParser.getName();
            if (next == 3 && "zen".equals(name)) {
                return zenModeConfig;
            }
            if (next == 2) {
                if (ALLOW_TAG.equals(name)) {
                    zenModeConfig.allowCalls = safeBoolean(xmlPullParser, ALLOW_ATT_CALLS, false);
                    zenModeConfig.allowRepeatCallers = safeBoolean(xmlPullParser, ALLOW_ATT_REPEAT_CALLERS, false);
                    zenModeConfig.allowMessages = safeBoolean(xmlPullParser, ALLOW_ATT_MESSAGES, false);
                    zenModeConfig.allowReminders = safeBoolean(xmlPullParser, ALLOW_ATT_REMINDERS, true);
                    zenModeConfig.allowEvents = safeBoolean(xmlPullParser, ALLOW_ATT_EVENTS, true);
                    int iSafeInt = safeInt(xmlPullParser, "from", -1);
                    int iSafeInt2 = safeInt(xmlPullParser, ALLOW_ATT_CALLS_FROM, -1);
                    int iSafeInt3 = safeInt(xmlPullParser, ALLOW_ATT_MESSAGES_FROM, -1);
                    if (isValidSource(iSafeInt2) && isValidSource(iSafeInt3)) {
                        zenModeConfig.allowCallsFrom = iSafeInt2;
                        zenModeConfig.allowMessagesFrom = iSafeInt3;
                    } else if (isValidSource(iSafeInt)) {
                        Slog.i(TAG, "Migrating existing shared 'from': " + sourceToString(iSafeInt));
                        zenModeConfig.allowCallsFrom = iSafeInt;
                        zenModeConfig.allowMessagesFrom = iSafeInt;
                    } else {
                        zenModeConfig.allowCallsFrom = 1;
                        zenModeConfig.allowMessagesFrom = 1;
                    }
                    zenModeConfig.allowWhenScreenOff = safeBoolean(xmlPullParser, ALLOW_ATT_SCREEN_OFF, true);
                    zenModeConfig.allowWhenScreenOn = safeBoolean(xmlPullParser, ALLOW_ATT_SCREEN_ON, true);
                } else if ("manual".equals(name)) {
                    zenModeConfig.manualRule = readRuleXml(xmlPullParser);
                } else if (AUTOMATIC_TAG.equals(name)) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, RULE_ATT_ID);
                    ZenRule ruleXml = readRuleXml(xmlPullParser);
                    if (attributeValue != null && ruleXml != null) {
                        ruleXml.id = attributeValue;
                        zenModeConfig.automaticRules.put(attributeValue, ruleXml);
                    }
                }
            }
        }
    }

    private static boolean safeBoolean(XmlPullParser xmlPullParser, String str, boolean z2) {
        return safeBoolean(xmlPullParser.getAttributeValue(null, str), z2);
    }

    private static ComponentName safeComponentName(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (TextUtils.isEmpty(attributeValue)) {
            return null;
        }
        return ComponentName.unflattenFromString(attributeValue);
    }

    private static int safeInt(XmlPullParser xmlPullParser, String str, int i2) {
        return tryParseInt(xmlPullParser.getAttributeValue(null, str), i2);
    }

    private static long safeLong(XmlPullParser xmlPullParser, String str, long j2) {
        return tryParseLong(xmlPullParser.getAttributeValue(null, str), j2);
    }

    private static Uri safeUri(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (TextUtils.isEmpty(attributeValue)) {
            return null;
        }
        return Uri.parse(attributeValue);
    }

    private static boolean sameCondition(ZenRule zenRule) {
        if (zenRule == null) {
            return false;
        }
        Uri uri = zenRule.conditionId;
        if (uri == null) {
            return zenRule.condition == null;
        }
        Condition condition = zenRule.condition;
        return condition == null || uri.equals(condition.id);
    }

    private static int sourceToPrioritySenders(int i2, int i3) {
        if (i2 == 0) {
            return 0;
        }
        int i4 = 1;
        if (i2 != 1) {
            i4 = 2;
            if (i2 != 2) {
                return i3;
            }
        }
        return i4;
    }

    public static String sourceToString(int i2) {
        if (i2 == 0) {
            return "anyone";
        }
        if (i2 != 1) {
            return i2 != 2 ? IccCardConstants.INTENT_VALUE_ICC_UNKNOWN : "stars";
        }
        return Contacts.AUTHORITY;
    }

    public static Uri toCountdownConditionId(long j2, boolean z2) {
        return new Uri.Builder().scheme("condition").authority(SYSTEM_AUTHORITY).appendPath(COUNTDOWN_PATH).appendPath(Long.toString(j2)).appendPath("alarm").appendPath(Boolean.toString(z2)).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String toDayList(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i2 > 0) {
                sb.append('.');
            }
            sb.append(iArr[i2]);
        }
        return sb.toString();
    }

    public static Uri toEventConditionId(EventInfo eventInfo) {
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("condition").authority(SYSTEM_AUTHORITY).appendPath("event").appendQueryParameter("userId", Long.toString(eventInfo.userId));
        String str = eventInfo.calendar;
        if (str == null) {
            str = "";
        }
        return builderAppendQueryParameter.appendQueryParameter("calendar", str).appendQueryParameter("reply", Integer.toString(eventInfo.reply)).build();
    }

    public static Condition toNextAlarmCondition(Context context, long j2, int i2) {
        return new Condition(toCountdownConditionId(j2, true), "", context.getResources().getString(R.string.zen_mode_until, getFormattedTime(context, j2, isToday(j2), i2)), "", 0, 1, 1);
    }

    public static Uri toScheduleConditionId(ScheduleInfo scheduleInfo) {
        return new Uri.Builder().scheme("condition").authority(SYSTEM_AUTHORITY).appendPath(SCHEDULE_PATH).appendQueryParameter("days", toDayList(scheduleInfo.days)).appendQueryParameter(Telephony.BaseMmsColumns.START, scheduleInfo.startHour + "." + scheduleInfo.startMinute).appendQueryParameter("end", scheduleInfo.endHour + "." + scheduleInfo.endMinute).appendQueryParameter("exitAtAlarm", String.valueOf(scheduleInfo.exitAtAlarm)).build();
    }

    public static Condition toTimeCondition(Context context, int i2, int i3) {
        return toTimeCondition(context, i2, i3, false);
    }

    public static long tryParseCountdownConditionId(Uri uri) {
        if (Condition.isValidId(uri, SYSTEM_AUTHORITY) && uri.getPathSegments().size() >= 2 && COUNTDOWN_PATH.equals(uri.getPathSegments().get(0))) {
            try {
                return Long.parseLong(uri.getPathSegments().get(1));
            } catch (RuntimeException e2) {
                Slog.w(TAG, "Error parsing countdown condition: " + uri, e2);
            }
        }
        return 0L;
    }

    private static int[] tryParseDayList(String str, String str2) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(str2);
        if (strArrSplit.length == 0) {
            return null;
        }
        int[] iArr = new int[strArrSplit.length];
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            int iTryParseInt = tryParseInt(strArrSplit[i2], -1);
            if (iTryParseInt == -1) {
                return null;
            }
            iArr[i2] = iTryParseInt;
        }
        return iArr;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0039  */
    public static EventInfo tryParseEventConditionId(Uri uri) {
        boolean z2;
        if (uri != null && uri.getScheme().equals("condition") && uri.getAuthority().equals(SYSTEM_AUTHORITY)) {
            z2 = uri.getPathSegments().size() == 1 && uri.getPathSegments().get(0).equals("event");
        }
        if (!z2) {
            return null;
        }
        EventInfo eventInfo = new EventInfo();
        eventInfo.userId = tryParseInt(uri.getQueryParameter("userId"), -10000);
        String queryParameter = uri.getQueryParameter("calendar");
        eventInfo.calendar = queryParameter;
        if (TextUtils.isEmpty(queryParameter) || tryParseLong(eventInfo.calendar, -1L) != -1) {
            eventInfo.calendar = null;
        }
        eventInfo.reply = tryParseInt(uri.getQueryParameter("reply"), 0);
        return eventInfo;
    }

    private static int[] tryParseHourAndMinute(String str) {
        int iIndexOf;
        if (TextUtils.isEmpty(str) || (iIndexOf = str.indexOf(46)) < 1 || iIndexOf >= str.length() - 1) {
            return null;
        }
        int iTryParseInt = tryParseInt(str.substring(0, iIndexOf), -1);
        int iTryParseInt2 = tryParseInt(str.substring(iIndexOf + 1), -1);
        if (isValidHour(iTryParseInt) && isValidMinute(iTryParseInt2)) {
            return new int[]{iTryParseInt, iTryParseInt2};
        }
        return null;
    }

    private static int tryParseInt(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return i2;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    private static long tryParseLong(String str, long j2) {
        if (TextUtils.isEmpty(str)) {
            return j2;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j2;
        }
    }

    public static ScheduleInfo tryParseScheduleConditionId(Uri uri) {
        if (!(uri != null && uri.getScheme().equals("condition") && uri.getAuthority().equals(SYSTEM_AUTHORITY) && uri.getPathSegments().size() == 1 && uri.getPathSegments().get(0).equals(SCHEDULE_PATH))) {
            return null;
        }
        int[] iArrTryParseHourAndMinute = tryParseHourAndMinute(uri.getQueryParameter(Telephony.BaseMmsColumns.START));
        int[] iArrTryParseHourAndMinute2 = tryParseHourAndMinute(uri.getQueryParameter("end"));
        if (iArrTryParseHourAndMinute == null || iArrTryParseHourAndMinute2 == null) {
            return null;
        }
        ScheduleInfo scheduleInfo = new ScheduleInfo();
        scheduleInfo.days = tryParseDayList(uri.getQueryParameter("days"), "\\.");
        scheduleInfo.startHour = iArrTryParseHourAndMinute[0];
        scheduleInfo.startMinute = iArrTryParseHourAndMinute[1];
        scheduleInfo.endHour = iArrTryParseHourAndMinute2[0];
        scheduleInfo.endMinute = iArrTryParseHourAndMinute2[1];
        scheduleInfo.exitAtAlarm = safeBoolean(uri.getQueryParameter("exitAtAlarm"), false);
        return scheduleInfo;
    }

    private static int tryParseZenMode(String str, int i2) {
        int iTryParseInt = tryParseInt(str, i2);
        return Settings.Global.isValidZenMode(iTryParseInt) ? iTryParseInt : i2;
    }

    public static void writeConditionXml(Condition condition, XmlSerializer xmlSerializer) throws IOException {
        xmlSerializer.attribute(null, "id", condition.id.toString());
        xmlSerializer.attribute(null, "summary", condition.summary);
        xmlSerializer.attribute(null, CONDITION_ATT_LINE1, condition.line1);
        xmlSerializer.attribute(null, CONDITION_ATT_LINE2, condition.line2);
        xmlSerializer.attribute(null, "icon", Integer.toString(condition.icon));
        xmlSerializer.attribute(null, "state", Integer.toString(condition.state));
        xmlSerializer.attribute(null, "flags", Integer.toString(condition.flags));
    }

    public static void writeRuleXml(ZenRule zenRule, XmlSerializer xmlSerializer) throws IOException {
        xmlSerializer.attribute(null, "enabled", Boolean.toString(zenRule.enabled));
        xmlSerializer.attribute(null, RULE_ATT_SNOOZING, Boolean.toString(zenRule.snoozing));
        String str = zenRule.name;
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "zen", Integer.toString(zenRule.zenMode));
        ComponentName componentName = zenRule.component;
        if (componentName != null) {
            xmlSerializer.attribute(null, CardEmulation.EXTRA_SERVICE_COMPONENT, componentName.flattenToString());
        }
        Uri uri = zenRule.conditionId;
        if (uri != null) {
            xmlSerializer.attribute(null, RULE_ATT_CONDITION_ID, uri.toString());
        }
        xmlSerializer.attribute(null, "creationTime", Long.toString(zenRule.creationTime));
        String str2 = zenRule.enabler;
        if (str2 != null) {
            xmlSerializer.attribute(null, RULE_ATT_ENABLER, str2);
        }
        Condition condition = zenRule.condition;
        if (condition != null) {
            writeConditionXml(condition, xmlSerializer);
        }
    }

    public void applyNotificationPolicy(NotificationManager.Policy policy) {
        if (policy == null) {
            return;
        }
        int i2 = policy.priorityCategories;
        this.allowCalls = (i2 & 8) != 0;
        this.allowMessages = (i2 & 4) != 0;
        this.allowEvents = (i2 & 2) != 0;
        this.allowReminders = (i2 & 1) != 0;
        this.allowRepeatCallers = (i2 & 16) != 0;
        this.allowCallsFrom = prioritySendersToSource(policy.priorityCallSenders, this.allowCallsFrom);
        this.allowMessagesFrom = prioritySendersToSource(policy.priorityMessageSenders, this.allowMessagesFrom);
        int i3 = policy.suppressedVisualEffects;
        if (i3 != -1) {
            this.allowWhenScreenOff = (i3 & 1) == 0;
            this.allowWhenScreenOn = (i3 & 2) == 0;
        }
    }

    public ZenModeConfig copy() {
        Parcel parcelObtain = Parcel.obtain();
        try {
            writeToParcel(parcelObtain, 0);
            parcelObtain.setDataPosition(0);
            return new ZenModeConfig(parcelObtain);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ZenModeConfig)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ZenModeConfig zenModeConfig = (ZenModeConfig) obj;
        return zenModeConfig.allowCalls == this.allowCalls && zenModeConfig.allowRepeatCallers == this.allowRepeatCallers && zenModeConfig.allowMessages == this.allowMessages && zenModeConfig.allowCallsFrom == this.allowCallsFrom && zenModeConfig.allowMessagesFrom == this.allowMessagesFrom && zenModeConfig.allowReminders == this.allowReminders && zenModeConfig.allowEvents == this.allowEvents && zenModeConfig.allowWhenScreenOff == this.allowWhenScreenOff && zenModeConfig.allowWhenScreenOn == this.allowWhenScreenOn && zenModeConfig.user == this.user && Objects.equals(zenModeConfig.automaticRules, this.automaticRules) && Objects.equals(zenModeConfig.manualRule, this.manualRule);
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.allowCalls), Boolean.valueOf(this.allowRepeatCallers), Boolean.valueOf(this.allowMessages), Integer.valueOf(this.allowCallsFrom), Integer.valueOf(this.allowMessagesFrom), Boolean.valueOf(this.allowReminders), Boolean.valueOf(this.allowEvents), Boolean.valueOf(this.allowWhenScreenOff), Boolean.valueOf(this.allowWhenScreenOn), Integer.valueOf(this.user), this.automaticRules, this.manualRule);
    }

    public boolean isValid() {
        if (!isValidManualRule(this.manualRule)) {
            return false;
        }
        int size = this.automaticRules.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!isValidAutomaticRule(this.automaticRules.valueAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public NotificationManager.Policy toNotificationPolicy() {
        int i2 = this.allowCalls ? 8 : 0;
        if (this.allowMessages) {
            i2 |= 4;
        }
        if (this.allowEvents) {
            i2 |= 2;
        }
        if (this.allowReminders) {
            i2 |= 1;
        }
        if (this.allowRepeatCallers) {
            i2 |= 16;
        }
        int i3 = !this.allowWhenScreenOff ? 1 : 0;
        if (!this.allowWhenScreenOn) {
            i3 |= 2;
        }
        return new NotificationManager.Policy(i2, sourceToPrioritySenders(this.allowCallsFrom, 1), sourceToPrioritySenders(this.allowMessagesFrom, 1), i3);
    }

    public String toString() {
        return "ZenModeConfig[user=" + this.user + ",allowCalls=" + this.allowCalls + ",allowRepeatCallers=" + this.allowRepeatCallers + ",allowMessages=" + this.allowMessages + ",allowCallsFrom=" + sourceToString(this.allowCallsFrom) + ",allowMessagesFrom=" + sourceToString(this.allowMessagesFrom) + ",allowReminders=" + this.allowReminders + ",allowEvents=" + this.allowEvents + ",allowWhenScreenOff=" + this.allowWhenScreenOff + ",allowWhenScreenOn=" + this.allowWhenScreenOn + ",automaticRules=" + this.automaticRules + ",manualRule=" + this.manualRule + ']';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.allowCalls ? 1 : 0);
        parcel.writeInt(this.allowRepeatCallers ? 1 : 0);
        parcel.writeInt(this.allowMessages ? 1 : 0);
        parcel.writeInt(this.allowReminders ? 1 : 0);
        parcel.writeInt(this.allowEvents ? 1 : 0);
        parcel.writeInt(this.allowCallsFrom);
        parcel.writeInt(this.allowMessagesFrom);
        parcel.writeInt(this.user);
        parcel.writeParcelable(this.manualRule, 0);
        if (this.automaticRules.isEmpty()) {
            parcel.writeInt(0);
        } else {
            int size = this.automaticRules.size();
            String[] strArr = new String[size];
            ZenRule[] zenRuleArr = new ZenRule[size];
            for (int i3 = 0; i3 < size; i3++) {
                strArr[i3] = this.automaticRules.keyAt(i3);
                zenRuleArr[i3] = this.automaticRules.valueAt(i3);
            }
            parcel.writeInt(size);
            parcel.writeStringArray(strArr);
            parcel.writeTypedArray(zenRuleArr, 0);
        }
        parcel.writeInt(this.allowWhenScreenOff ? 1 : 0);
        parcel.writeInt(this.allowWhenScreenOn ? 1 : 0);
    }

    public void writeXml(XmlSerializer xmlSerializer) throws IOException {
        xmlSerializer.startTag(null, "zen");
        xmlSerializer.attribute(null, "version", Integer.toString(2));
        xmlSerializer.attribute(null, "user", Integer.toString(this.user));
        xmlSerializer.startTag(null, ALLOW_TAG);
        xmlSerializer.attribute(null, ALLOW_ATT_CALLS, Boolean.toString(this.allowCalls));
        xmlSerializer.attribute(null, ALLOW_ATT_REPEAT_CALLERS, Boolean.toString(this.allowRepeatCallers));
        xmlSerializer.attribute(null, ALLOW_ATT_MESSAGES, Boolean.toString(this.allowMessages));
        xmlSerializer.attribute(null, ALLOW_ATT_REMINDERS, Boolean.toString(this.allowReminders));
        xmlSerializer.attribute(null, ALLOW_ATT_EVENTS, Boolean.toString(this.allowEvents));
        xmlSerializer.attribute(null, ALLOW_ATT_CALLS_FROM, Integer.toString(this.allowCallsFrom));
        xmlSerializer.attribute(null, ALLOW_ATT_MESSAGES_FROM, Integer.toString(this.allowMessagesFrom));
        xmlSerializer.attribute(null, ALLOW_ATT_SCREEN_OFF, Boolean.toString(this.allowWhenScreenOff));
        xmlSerializer.attribute(null, ALLOW_ATT_SCREEN_ON, Boolean.toString(this.allowWhenScreenOn));
        xmlSerializer.endTag(null, ALLOW_TAG);
        if (this.manualRule != null) {
            xmlSerializer.startTag(null, "manual");
            writeRuleXml(this.manualRule, xmlSerializer);
            xmlSerializer.endTag(null, "manual");
        }
        int size = this.automaticRules.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strKeyAt = this.automaticRules.keyAt(i2);
            ZenRule zenRuleValueAt = this.automaticRules.valueAt(i2);
            xmlSerializer.startTag(null, AUTOMATIC_TAG);
            xmlSerializer.attribute(null, RULE_ATT_ID, strKeyAt);
            writeRuleXml(zenRuleValueAt, xmlSerializer);
            xmlSerializer.endTag(null, AUTOMATIC_TAG);
        }
        xmlSerializer.endTag(null, "zen");
    }

    public static class ZenRule implements Parcelable {
        public static final Parcelable.Creator<ZenRule> CREATOR = new Parcelable.Creator<ZenRule>() { // from class: android.service.notification.ZenModeConfig.ZenRule.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ZenRule createFromParcel(Parcel parcel) {
                return new ZenRule(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ZenRule[] newArray(int i2) {
                return new ZenRule[i2];
            }
        };
        public ComponentName component;
        public Condition condition;
        public Uri conditionId;
        public long creationTime;
        public boolean enabled;
        public String enabler;
        public String id;
        public String name;
        public boolean snoozing;
        public int zenMode;

        public ZenRule() {
        }

        public ZenRule(Parcel parcel) {
            this.enabled = parcel.readInt() == 1;
            this.snoozing = parcel.readInt() == 1;
            if (parcel.readInt() == 1) {
                this.name = parcel.readString();
            }
            this.zenMode = parcel.readInt();
            this.conditionId = (Uri) parcel.readParcelable(null);
            this.condition = (Condition) parcel.readParcelable(null);
            this.component = (ComponentName) parcel.readParcelable(null);
            if (parcel.readInt() == 1) {
                this.id = parcel.readString();
            }
            this.creationTime = parcel.readLong();
            if (parcel.readInt() == 1) {
                this.enabler = parcel.readString();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void appendDiff(Diff diff, String str, ZenRule zenRule, ZenRule zenRule2) {
            if (diff == null) {
                return;
            }
            if (zenRule != null) {
                zenRule.appendDiff(diff, str, zenRule2);
            } else if (zenRule2 != null) {
                diff.addLine(str, "insert");
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ZenRule)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            ZenRule zenRule = (ZenRule) obj;
            return zenRule.enabled == this.enabled && zenRule.snoozing == this.snoozing && Objects.equals(zenRule.name, this.name) && zenRule.zenMode == this.zenMode && Objects.equals(zenRule.conditionId, this.conditionId) && Objects.equals(zenRule.condition, this.condition) && Objects.equals(zenRule.component, this.component) && Objects.equals(zenRule.id, this.id) && zenRule.creationTime == this.creationTime && Objects.equals(zenRule.enabler, this.enabler);
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(this.enabled), Boolean.valueOf(this.snoozing), this.name, Integer.valueOf(this.zenMode), this.conditionId, this.condition, this.component, this.id, Long.valueOf(this.creationTime), this.enabler);
        }

        public boolean isAutomaticActive() {
            return this.enabled && !this.snoozing && this.component != null && isTrueOrUnknown();
        }

        public boolean isTrueOrUnknown() {
            int i2;
            Condition condition = this.condition;
            return condition != null && ((i2 = condition.state) == 1 || i2 == 2);
        }

        public String toString() {
            return ZenRule.class.getSimpleName() + "[enabled=" + this.enabled + ",snoozing=" + this.snoozing + ",name=" + this.name + ",zenMode=" + Settings.Global.zenModeToString(this.zenMode) + ",conditionId=" + this.conditionId + ",condition=" + this.condition + ",component=" + this.component + ",id=" + this.id + ",creationTime=" + this.creationTime + ",enabler=" + this.enabler + ']';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.enabled ? 1 : 0);
            parcel.writeInt(this.snoozing ? 1 : 0);
            if (this.name != null) {
                parcel.writeInt(1);
                parcel.writeString(this.name);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.zenMode);
            parcel.writeParcelable(this.conditionId, 0);
            parcel.writeParcelable(this.condition, 0);
            parcel.writeParcelable(this.component, 0);
            if (this.id != null) {
                parcel.writeInt(1);
                parcel.writeString(this.id);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeLong(this.creationTime);
            if (this.enabler == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcel.writeString(this.enabler);
            }
        }

        private void appendDiff(Diff diff, String str, ZenRule zenRule) {
            if (zenRule == null) {
                diff.addLine(str, "delete");
                return;
            }
            boolean z2 = this.enabled;
            if (z2 != zenRule.enabled) {
                diff.addLine(str, "enabled", Boolean.valueOf(z2), Boolean.valueOf(zenRule.enabled));
            }
            boolean z3 = this.snoozing;
            if (z3 != zenRule.snoozing) {
                diff.addLine(str, ZenModeConfig.RULE_ATT_SNOOZING, Boolean.valueOf(z3), Boolean.valueOf(zenRule.snoozing));
            }
            if (!Objects.equals(this.name, zenRule.name)) {
                diff.addLine(str, "name", this.name, zenRule.name);
            }
            int i2 = this.zenMode;
            if (i2 != zenRule.zenMode) {
                diff.addLine(str, "zenMode", Integer.valueOf(i2), Integer.valueOf(zenRule.zenMode));
            }
            if (!Objects.equals(this.conditionId, zenRule.conditionId)) {
                diff.addLine(str, ZenModeConfig.RULE_ATT_CONDITION_ID, this.conditionId, zenRule.conditionId);
            }
            if (!Objects.equals(this.condition, zenRule.condition)) {
                diff.addLine(str, "condition", this.condition, zenRule.condition);
            }
            if (!Objects.equals(this.component, zenRule.component)) {
                diff.addLine(str, CardEmulation.EXTRA_SERVICE_COMPONENT, this.component, zenRule.component);
            }
            if (!Objects.equals(this.id, zenRule.id)) {
                diff.addLine(str, "id", this.id, zenRule.id);
            }
            long j2 = this.creationTime;
            if (j2 != zenRule.creationTime) {
                diff.addLine(str, "creationTime", Long.valueOf(j2), Long.valueOf(zenRule.creationTime));
            }
            String str2 = this.enabler;
            String str3 = zenRule.enabler;
            if (str2 != str3) {
                diff.addLine(str, ZenModeConfig.RULE_ATT_ENABLER, str2, str3);
            }
        }
    }

    public static Condition toTimeCondition(Context context, int i2, int i3, boolean z2) {
        return toTimeCondition(context, System.currentTimeMillis() + (i2 == 0 ? JobInfo.MIN_BACKOFF_MILLIS : 60000 * i2), i2, i3, z2);
    }

    private static boolean safeBoolean(String str, boolean z2) {
        return TextUtils.isEmpty(str) ? z2 : Boolean.parseBoolean(str);
    }

    public static Condition toTimeCondition(Context context, long j2, int i2, int i3, boolean z2) {
        String string;
        String str;
        String str2;
        String quantityString;
        String quantityString2;
        String string2;
        CharSequence formattedTime = getFormattedTime(context, j2, isToday(j2), i3);
        Resources resources = context.getResources();
        if (i2 < 60) {
            quantityString = resources.getQuantityString(z2 ? R.plurals.zen_mode_duration_minutes_summary_short : R.plurals.zen_mode_duration_minutes_summary, i2, Integer.valueOf(i2), formattedTime);
            quantityString2 = resources.getQuantityString(z2 ? R.plurals.zen_mode_duration_minutes_short : R.plurals.zen_mode_duration_minutes, i2, Integer.valueOf(i2), formattedTime);
            string2 = resources.getString(R.string.zen_mode_until, formattedTime);
        } else {
            if (i2 < DAY_MINUTES) {
                int iRound = Math.round(i2 / 60.0f);
                quantityString = resources.getQuantityString(z2 ? R.plurals.zen_mode_duration_hours_summary_short : R.plurals.zen_mode_duration_hours_summary, iRound, Integer.valueOf(iRound), formattedTime);
                quantityString2 = resources.getQuantityString(z2 ? R.plurals.zen_mode_duration_hours_short : R.plurals.zen_mode_duration_hours, iRound, Integer.valueOf(iRound), formattedTime);
                string2 = resources.getString(R.string.zen_mode_until, formattedTime);
            } else {
                string = resources.getString(R.string.zen_mode_until, formattedTime);
                str = string;
                str2 = str;
            }
            return new Condition(toCountdownConditionId(j2, false), string, str, str2, 0, 1, 1);
        }
        str = quantityString2;
        str2 = string2;
        string = quantityString;
        return new Condition(toCountdownConditionId(j2, false), string, str, str2, 0, 1, 1);
    }

    public static class Diff {
        private final ArrayList<String> lines = new ArrayList<>();

        public Diff addLine(String str, String str2, Object obj, Object obj2) {
            return addLine(m.h(str, ".", str2), obj, obj2);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Diff[");
            int size = this.lines.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 > 0) {
                    sb.append(',');
                }
                sb.append(this.lines.get(i2));
            }
            sb.append(']');
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Diff addLine(String str, String str2) {
            this.lines.add(str + SettingsStringUtil.DELIMITER + str2);
            return this;
        }

        public Diff addLine(String str, Object obj, Object obj2) {
            return addLine(str, obj + Session.SUBSESSION_SEPARATION_CHAR + obj2);
        }
    }

    public ZenModeConfig(Parcel parcel) {
        this.allowCalls = true;
        this.allowRepeatCallers = false;
        this.allowMessages = false;
        this.allowReminders = true;
        this.allowEvents = true;
        this.allowCallsFrom = 1;
        this.allowMessagesFrom = 1;
        this.user = 0;
        this.allowWhenScreenOff = true;
        this.allowWhenScreenOn = true;
        this.automaticRules = new ArrayMap<>();
        this.allowCalls = parcel.readInt() == 1;
        this.allowRepeatCallers = parcel.readInt() == 1;
        this.allowMessages = parcel.readInt() == 1;
        this.allowReminders = parcel.readInt() == 1;
        this.allowEvents = parcel.readInt() == 1;
        this.allowCallsFrom = parcel.readInt();
        this.allowMessagesFrom = parcel.readInt();
        this.user = parcel.readInt();
        this.manualRule = (ZenRule) parcel.readParcelable(null);
        int i2 = parcel.readInt();
        if (i2 > 0) {
            String[] strArr = new String[i2];
            ZenRule[] zenRuleArr = new ZenRule[i2];
            parcel.readStringArray(strArr);
            parcel.readTypedArray(zenRuleArr, ZenRule.CREATOR);
            for (int i3 = 0; i3 < i2; i3++) {
                this.automaticRules.put(strArr[i3], zenRuleArr[i3]);
            }
        }
        this.allowWhenScreenOff = parcel.readInt() == 1;
        this.allowWhenScreenOn = parcel.readInt() == 1;
    }

    public static Diff diff(ZenModeConfig zenModeConfig, ZenModeConfig zenModeConfig2) {
        if (zenModeConfig == null) {
            Diff diff = new Diff();
            if (zenModeConfig2 != null) {
                diff.addLine("config", "insert");
            }
            return diff;
        }
        return zenModeConfig.diff(zenModeConfig2);
    }
}
