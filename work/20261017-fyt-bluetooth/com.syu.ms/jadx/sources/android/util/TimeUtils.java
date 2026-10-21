package android.util;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.net.http.CharArrayBuffers;
import android.os.SystemClock;
import android.text.format.DateFormat;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import libcore.util.ZoneInfoDB;
import org.xmlpull.v1.XmlPullParserException;
import u.n;

/* JADX INFO: loaded from: classes.dex */
public class TimeUtils {
    private static final boolean DBG = false;
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final long LARGEST_DURATION = 86399999999L;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final String TAG = "TimeUtils";
    private static String sLastCountry;
    private static String sLastUniqueCountry;
    private static ArrayList<TimeZone> sLastUniqueZoneOffsets;
    private static ArrayList<TimeZone> sLastZones;
    private static final Object sLastLockObj = new Object();
    private static final Object sLastUniqueLockObj = new Object();
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private static int accumField(int i2, int i3, boolean z2, int i4) {
        if (i2 > 99 || (z2 && i4 >= 3)) {
            return i3 + 3;
        }
        if (i2 > 9 || (z2 && i4 >= 2)) {
            return i3 + 2;
        }
        if (z2 || i2 > 0) {
            return i3 + 1;
        }
        return 0;
    }

    public static void formatDuration(long j2, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j2, 0));
        }
    }

    private static int formatDurationLocked(long j2, int i2) {
        char c2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j3 = j2;
        if (sFormatStr.length < i2) {
            sFormatStr = new char[i2];
        }
        char[] cArr = sFormatStr;
        int i8 = 0;
        if (j3 == 0) {
            int i9 = i2 - 1;
            while (i8 < i9) {
                cArr[i8] = CharArrayBuffers.uppercaseAddon;
                i8++;
            }
            cArr[i8] = '0';
            return i8 + 1;
        }
        if (j3 > 0) {
            c2 = '+';
        } else {
            c2 = '-';
            j3 = -j3;
        }
        if (j3 > LARGEST_DURATION) {
            j3 = 86399999999L;
        }
        int i10 = (int) (j3 % 1000);
        int iFloor = (int) Math.floor(j3 / 1000);
        if (iFloor > SECONDS_PER_DAY) {
            i3 = iFloor / SECONDS_PER_DAY;
            iFloor -= SECONDS_PER_DAY * i3;
        } else {
            i3 = 0;
        }
        if (iFloor > 3600) {
            i4 = iFloor / 3600;
            iFloor -= i4 * 3600;
        } else {
            i4 = 0;
        }
        if (iFloor > 60) {
            int i11 = iFloor / 60;
            i5 = iFloor - (i11 * 60);
            i6 = i11;
        } else {
            i5 = iFloor;
            i6 = 0;
        }
        if (i2 != 0) {
            int iAccumField = accumField(i3, 1, false, 0);
            int iAccumField2 = iAccumField + accumField(i4, 1, iAccumField > 0, 2);
            int iAccumField3 = iAccumField2 + accumField(i6, 1, iAccumField2 > 0, 2);
            int iAccumField4 = iAccumField3 + accumField(i5, 1, iAccumField3 > 0, 2);
            i7 = 0;
            for (int iAccumField5 = iAccumField4 + accumField(i10, 2, true, iAccumField4 > 0 ? 3 : 0) + 1; iAccumField5 < i2; iAccumField5++) {
                cArr[i7] = CharArrayBuffers.uppercaseAddon;
                i7++;
            }
        } else {
            i7 = 0;
        }
        cArr[i7] = c2;
        int i12 = i7 + 1;
        boolean z2 = i2 != 0;
        int iPrintField = printField(cArr, i3, DateFormat.DATE, i12, false, 0);
        int iPrintField2 = printField(cArr, i4, DateFormat.HOUR, iPrintField, iPrintField != i12, z2 ? 2 : 0);
        int iPrintField3 = printField(cArr, i6, DateFormat.MINUTE, iPrintField2, iPrintField2 != i12, z2 ? 2 : 0);
        int iPrintField4 = printField(cArr, i5, 's', iPrintField3, iPrintField3 != i12, z2 ? 2 : 0);
        int iPrintField5 = printField(cArr, i10, DateFormat.MINUTE, iPrintField4, true, (!z2 || iPrintField4 == i12) ? 0 : 3);
        cArr[iPrintField5] = 's';
        return iPrintField5 + 1;
    }

    public static String formatUptime(long j2) {
        long jUptimeMillis = j2 - SystemClock.uptimeMillis();
        if (jUptimeMillis > 0) {
            return j2 + " (in " + jUptimeMillis + " ms)";
        }
        if (jUptimeMillis >= 0) {
            return j2 + " (now)";
        }
        return j2 + " (" + (-jUptimeMillis) + " ms ago)";
    }

    public static TimeZone getTimeZone(int i2, boolean z2, long j2, String str) {
        Resources.getSystem().getXml(17760273);
        Date date = new Date(j2);
        TimeZone timeZone = TimeZone.getDefault();
        String id = timeZone.getID();
        int offset = timeZone.getOffset(j2);
        boolean zInDaylightTime = timeZone.inDaylightTime(date);
        TimeZone timeZone2 = null;
        for (TimeZone timeZone3 : getTimeZones(str)) {
            if (timeZone3.getID().equals(id) && offset == i2 && zInDaylightTime == z2) {
                return timeZone;
            }
            if (timeZone2 == null && timeZone3.getOffset(j2) == i2 && timeZone3.inDaylightTime(date) == z2) {
                timeZone2 = timeZone3;
            }
        }
        return timeZone2;
    }

    public static String getTimeZoneDatabaseVersion() {
        return ZoneInfoDB.getInstance().getVersion();
    }

    public static ArrayList<TimeZone> getTimeZones(String str) {
        synchronized (sLastLockObj) {
            if (str != null) {
                if (str.equals(sLastCountry)) {
                    return sLastZones;
                }
            }
            ArrayList<TimeZone> arrayList = new ArrayList<>();
            if (str == null) {
                return arrayList;
            }
            XmlResourceParser xml = Resources.getSystem().getXml(17760273);
            try {
                try {
                    n.a(xml, "timezones");
                    while (true) {
                        n.f(xml);
                        String name = xml.getName();
                        if (name == null || !name.equals("timezone")) {
                            break;
                            break;
                        }
                        if (str.equals(xml.getAttributeValue(null, "code")) && xml.next() == 4) {
                            TimeZone timeZone = TimeZone.getTimeZone(xml.getText());
                            if (timeZone.getID().startsWith("GMT")) {
                                continue;
                            } else {
                                arrayList.add(timeZone);
                            }
                        }
                    }
                } catch (IOException e2) {
                    Log.e(TAG, "Got IO exception getTimeZone('" + str + "'): e=", e2);
                } catch (XmlPullParserException e3) {
                    Log.e(TAG, "Got xml parser exception getTimeZone('" + str + "'): e=", e3);
                }
                xml.close();
                synchronized (sLastLockObj) {
                    sLastZones = arrayList;
                    sLastCountry = str;
                }
                return arrayList;
            } catch (Throwable th) {
                xml.close();
                throw th;
            }
        }
    }

    public static ArrayList<TimeZone> getTimeZonesWithUniqueOffsets(String str) {
        synchronized (sLastUniqueLockObj) {
            if (str != null) {
                if (str.equals(sLastUniqueCountry)) {
                    return sLastUniqueZoneOffsets;
                }
            }
            ArrayList<TimeZone> timeZones = getTimeZones(str);
            ArrayList<TimeZone> arrayList = new ArrayList<>();
            for (TimeZone timeZone : timeZones) {
                boolean z2 = false;
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (arrayList.get(i2).getRawOffset() == timeZone.getRawOffset()) {
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    arrayList.add(timeZone);
                }
            }
            synchronized (sLastUniqueLockObj) {
                sLastUniqueZoneOffsets = arrayList;
                sLastUniqueCountry = str;
            }
            return arrayList;
        }
    }

    public static String logTimeOfDay(long j2) {
        Calendar calendar = Calendar.getInstance();
        if (j2 < 0) {
            return Long.toString(j2);
        }
        calendar.setTimeInMillis(j2);
        return String.format("%tm-%td %tH:%tM:%tS.%tL", calendar, calendar, calendar, calendar, calendar, calendar);
    }

    private static int printField(char[] cArr, int i2, char c2, int i3, boolean z2, int i4) {
        int i5;
        if (!z2 && i2 <= 0) {
            return i3;
        }
        if ((!z2 || i4 < 3) && i2 <= 99) {
            i5 = i3;
        } else {
            int i6 = i2 / 100;
            cArr[i3] = (char) (i6 + 48);
            i5 = i3 + 1;
            i2 -= i6 * 100;
        }
        if ((z2 && i4 >= 2) || i2 > 9 || i3 != i5) {
            int i7 = i2 / 10;
            cArr[i5] = (char) (i7 + 48);
            i5++;
            i2 -= i7 * 10;
        }
        cArr[i5] = (char) (i2 + 48);
        int i8 = i5 + 1;
        cArr[i8] = c2;
        return i8 + 1;
    }

    public static void formatDuration(long j2, PrintWriter printWriter, int i2) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j2, i2)));
        }
    }

    public static void formatDuration(long j2, PrintWriter printWriter) {
        formatDuration(j2, printWriter, 0);
    }

    public static void formatDuration(long j2, long j3, PrintWriter printWriter) {
        if (j2 == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j2 - j3, printWriter, 0);
        }
    }
}
