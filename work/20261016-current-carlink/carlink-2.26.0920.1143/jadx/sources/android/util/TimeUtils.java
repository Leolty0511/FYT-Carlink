package android.util;

import android.app.m;
import android.icu.util.TimeZone;
import android.os.SystemClock;
import android.text.format.DateFormat;
import android.text.format.b;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import libcore.util.TimeZoneFinder;
import libcore.util.ZoneInfoDB;

/* JADX INFO: loaded from: classes2.dex */
public class TimeUtils {
    private static final boolean DBG = false;
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    public static final long NANOS_PER_MS = 1000000;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final String TAG = "TimeUtils";
    private static String sLastUniqueCountry;
    private static List<String> sLastUniqueZoneOffsets;
    private static final Object sLastUniqueLockObj = new Object();
    private static SimpleDateFormat sLoggingFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[29];
    private static char[] sTmpFormatStr = new char[29];

    private static int accumField(int i2, int i3, boolean z2, int i4) {
        int i5 = 0;
        if (i2 > 999) {
            while (i2 != 0) {
                i5++;
                i2 /= 10;
            }
            return i5 + i3;
        }
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

    private static List<String> extractZoneIds(List<TimeZone> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<TimeZone> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(b.n(it.next()).getID());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void formatDuration(long j2, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j2, 0));
        }
    }

    private static int formatDurationLocked(long j2, int i2) {
        char c;
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
                cArr[i8] = ' ';
                i8++;
            }
            cArr[i8] = '0';
            return i8 + 1;
        }
        if (j3 > 0) {
            c = '+';
        } else {
            j3 = -j3;
            c = '-';
        }
        int i10 = (int) (j3 % 1000);
        int iFloor = (int) Math.floor(j3 / 1000);
        if (iFloor >= SECONDS_PER_DAY) {
            i3 = iFloor / SECONDS_PER_DAY;
            iFloor -= SECONDS_PER_DAY * i3;
        } else {
            i3 = 0;
        }
        if (iFloor >= SECONDS_PER_HOUR) {
            i4 = iFloor / SECONDS_PER_HOUR;
            iFloor -= i4 * SECONDS_PER_HOUR;
        } else {
            i4 = 0;
        }
        if (iFloor >= 60) {
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
            for (int iAccumField5 = accumField(i10, 2, true, iAccumField4 > 0 ? 3 : 0) + 1 + iAccumField4; iAccumField5 < i2; iAccumField5++) {
                cArr[i7] = ' ';
                i7++;
            }
        } else {
            i7 = 0;
        }
        cArr[i7] = c;
        int i12 = i7 + 1;
        boolean z2 = i2 != 0;
        int iPrintFieldLocked = printFieldLocked(cArr, i3, DateFormat.DATE, i12, false, 0);
        int iPrintFieldLocked2 = printFieldLocked(cArr, i4, DateFormat.HOUR, iPrintFieldLocked, iPrintFieldLocked != i12, z2 ? 2 : 0);
        int iPrintFieldLocked3 = printFieldLocked(cArr, i6, DateFormat.MINUTE, iPrintFieldLocked2, iPrintFieldLocked2 != i12, z2 ? 2 : 0);
        int iPrintFieldLocked4 = printFieldLocked(cArr, i5, 's', iPrintFieldLocked3, iPrintFieldLocked3 != i12, z2 ? 2 : 0);
        int iPrintFieldLocked5 = printFieldLocked(cArr, i10, DateFormat.MINUTE, iPrintFieldLocked4, true, (!z2 || iPrintFieldLocked4 == i12) ? 0 : 3);
        cArr[iPrintFieldLocked5] = 's';
        return iPrintFieldLocked5 + 1;
    }

    public static String formatForLogging(long j2) {
        return j2 <= 0 ? "unknown" : sLoggingFormat.format(new Date(j2));
    }

    public static String formatUptime(long j2) {
        long jUptimeMillis = j2 - SystemClock.uptimeMillis();
        if (jUptimeMillis > 0) {
            return j2 + " (in " + jUptimeMillis + " ms)";
        }
        if (jUptimeMillis < 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(j2);
            sb.append(" (");
            return m.k(sb, -jUptimeMillis, " ms ago)");
        }
        return j2 + " (now)";
    }

    private static TimeZone getIcuTimeZone(int i2, boolean z2, long j2, String str) {
        if (str == null) {
            return null;
        }
        return TimeZoneFinder.getInstance().lookupTimeZoneByCountryAndOffset(str, i2, z2, j2, TimeZone.getDefault());
    }

    private static List<TimeZone> getIcuTimeZones(String str) {
        if (str == null) {
            return Collections.emptyList();
        }
        List<TimeZone> listLookupTimeZonesByCountry = TimeZoneFinder.getInstance().lookupTimeZonesByCountry(str);
        return listLookupTimeZonesByCountry == null ? Collections.emptyList() : listLookupTimeZonesByCountry;
    }

    public static java.util.TimeZone getTimeZone(int i2, boolean z2, long j2, String str) {
        TimeZone icuTimeZone = getIcuTimeZone(i2, z2, j2, str);
        if (icuTimeZone != null) {
            return java.util.TimeZone.getTimeZone(icuTimeZone.getID());
        }
        return null;
    }

    public static String getTimeZoneDatabaseVersion() {
        return ZoneInfoDB.getInstance().getVersion();
    }

    public static List<String> getTimeZoneIdsWithUniqueOffsets(String str) {
        List<String> listExtractZoneIds;
        synchronized (sLastUniqueLockObj) {
            if (str != null) {
                if (str.equals(sLastUniqueCountry)) {
                    return sLastUniqueZoneOffsets;
                }
            }
            List<TimeZone> icuTimeZones = getIcuTimeZones(str);
            ArrayList arrayList = new ArrayList();
            Iterator<TimeZone> it = icuTimeZones.iterator();
            while (it.hasNext()) {
                TimeZone timeZoneN = b.n(it.next());
                boolean z2 = false;
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (b.n(arrayList.get(i2)).getRawOffset() == timeZoneN.getRawOffset()) {
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    arrayList.add(timeZoneN);
                }
            }
            synchronized (sLastUniqueLockObj) {
                listExtractZoneIds = extractZoneIds(arrayList);
                sLastUniqueZoneOffsets = listExtractZoneIds;
                sLastUniqueCountry = str;
            }
            return listExtractZoneIds;
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

    private static int printFieldLocked(char[] cArr, int i2, char c, int i3, boolean z2, int i4) {
        int i5;
        if (!z2 && i2 <= 0) {
            return i3;
        }
        if (i2 > 999) {
            int i6 = 0;
            while (i2 != 0) {
                char[] cArr2 = sTmpFormatStr;
                if (i6 >= cArr2.length) {
                    break;
                }
                cArr2[i6] = (char) ((i2 % 10) + 48);
                i6++;
                i2 /= 10;
            }
            while (true) {
                i6--;
                if (i6 < 0) {
                    break;
                }
                cArr[i3] = sTmpFormatStr[i6];
                i3++;
            }
        } else {
            if ((!z2 || i4 < 3) && i2 <= 99) {
                i5 = i3;
            } else {
                int i7 = i2 / 100;
                cArr[i3] = (char) (i7 + 48);
                i5 = i3 + 1;
                i2 -= i7 * 100;
            }
            if ((z2 && i4 >= 2) || i2 > 9 || i3 != i5) {
                int i8 = i2 / 10;
                cArr[i5] = (char) (i8 + 48);
                i5++;
                i2 -= i8 * 10;
            }
            cArr[i5] = (char) (i2 + 48);
            i3 = i5 + 1;
        }
        cArr[i3] = c;
        return i3 + 1;
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
