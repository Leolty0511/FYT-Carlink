package android.app;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class UserHabit {
    private static final String ATTR_LAST_FG_TIME = "lastFgTime";
    private static final String ATTR_LAST_USE_Time = "lastUseTime";
    private static final String ATTR_LAUNCH_COUNT = "launchCount";
    private static final String ATTR_PKG = "pkgName";
    private static final String ATTR_RECENT_LAUNCH_TIME = "recentLaunchTime";
    private static final String ATTR_TOTAL_FG_TIME = "totalForegroundTime";
    private static final String ATTR_USERID = "userid";
    private static final int RECENT_LAUNCH_TIME_COUNT = 10;
    private static final String TAG = "UserHabit";
    public long lastForegroundTime;
    public long lastUseTime;
    public long launchCount;
    private AppRelevance mAppRelevance;
    public int mLastEvent;
    private ArrayList<String> mLaunchTime;
    public Integer mUserId;
    public String packageName;
    public long totalForegroundTime;

    public UserHabit(String str, Integer num) {
        this.mLaunchTime = new ArrayList<>();
        this.packageName = str;
        this.launchCount = 0L;
        this.totalForegroundTime = 0L;
        this.mLastEvent = -1;
        this.lastForegroundTime = 0L;
        this.lastUseTime = 0L;
        this.mUserId = num;
        this.mAppRelevance = new AppRelevance(str);
    }

    public static UserHabit restoreFromFile(XmlPullParser xmlPullParser) {
        UserHabit userHabit = new UserHabit();
        int attributeCount = xmlPullParser.getAttributeCount();
        while (true) {
            attributeCount--;
            if (attributeCount < 0) {
                return userHabit;
            }
            String attributeName = xmlPullParser.getAttributeName(attributeCount);
            String attributeValue = xmlPullParser.getAttributeValue(attributeCount);
            if (ATTR_USERID.equals(attributeName)) {
                userHabit.mUserId = Integer.valueOf(attributeValue);
            } else if (ATTR_PKG.equals(attributeName)) {
                userHabit.packageName = attributeValue;
            } else if (ATTR_LAUNCH_COUNT.equals(attributeName)) {
                userHabit.launchCount = Long.valueOf(attributeValue).longValue();
            } else if (ATTR_TOTAL_FG_TIME.equals(attributeName)) {
                userHabit.totalForegroundTime = Long.valueOf(attributeValue).longValue();
            } else if (ATTR_LAST_FG_TIME.equals(attributeName)) {
                userHabit.lastForegroundTime = Long.valueOf(attributeValue).longValue();
            } else if (ATTR_LAST_USE_Time.equals(attributeName)) {
                userHabit.lastUseTime = Long.valueOf(attributeValue).longValue();
            } else if (ATTR_RECENT_LAUNCH_TIME.equals(attributeName)) {
                for (String str : attributeValue.split(";")) {
                    userHabit.mLaunchTime.add(str);
                }
            } else {
                m.r("error attr name....:", attributeName, TAG);
            }
        }
    }

    private void writeAppRelevanceToFile(XmlSerializer xmlSerializer) throws IOException {
        this.mAppRelevance.writeToFile(xmlSerializer);
    }

    public AppRelevance getAppRelevance() {
        return this.mAppRelevance;
    }

    public long getLastForegroundTime() {
        return this.lastForegroundTime;
    }

    public long getLastTimeUsed() {
        return this.lastUseTime;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public ArrayList<String> getRecentLaunchTime() {
        ArrayList<String> arrayList;
        synchronized (this.mLaunchTime) {
            arrayList = (ArrayList) this.mLaunchTime.clone();
        }
        return arrayList;
    }

    public long getTotalTimeInForeground() {
        return this.totalForegroundTime;
    }

    public void restoreAppRelevanceFromFile(XmlPullParser xmlPullParser) {
        this.mAppRelevance = AppRelevance.restoreFromFile(this.packageName, xmlPullParser);
    }

    public String toString() {
        String str = "";
        synchronized (this.mLaunchTime) {
            Iterator<String> it = this.mLaunchTime.iterator();
            while (it.hasNext()) {
                str = str + it.next() + ";";
            }
        }
        return "UID:" + this.mUserId + "|pkg:" + this.packageName + "|count:" + this.launchCount + "|LastUsed:" + this.lastUseTime + "|totalForegroundTime" + this.totalForegroundTime + "|launchTime:" + str;
    }

    public void updateLaunchTime(String str) {
        synchronized (this.mLaunchTime) {
            this.mLaunchTime.add(str);
            if (this.mLaunchTime.size() >= 10) {
                this.mLaunchTime.remove(0);
            }
        }
    }

    public void writeToFile(XmlSerializer xmlSerializer) throws IOException {
        xmlSerializer.attribute(null, ATTR_USERID, String.valueOf(this.mUserId));
        xmlSerializer.attribute(null, ATTR_PKG, this.packageName);
        xmlSerializer.attribute(null, ATTR_LAUNCH_COUNT, String.valueOf(this.launchCount));
        xmlSerializer.attribute(null, ATTR_TOTAL_FG_TIME, String.valueOf(this.totalForegroundTime));
        xmlSerializer.attribute(null, ATTR_LAST_FG_TIME, String.valueOf(this.lastForegroundTime));
        xmlSerializer.attribute(null, ATTR_LAST_USE_Time, String.valueOf(this.lastUseTime));
        String str = "";
        synchronized (this.mLaunchTime) {
            Iterator<String> it = this.mLaunchTime.iterator();
            while (it.hasNext()) {
                str = str + it.next() + ";";
            }
        }
        xmlSerializer.attribute(null, ATTR_RECENT_LAUNCH_TIME, str);
        writeAppRelevanceToFile(xmlSerializer);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public UserHabit m15clone() {
        UserHabit userHabit = new UserHabit();
        userHabit.packageName = this.packageName;
        userHabit.launchCount = this.launchCount;
        userHabit.totalForegroundTime = this.totalForegroundTime;
        userHabit.mLastEvent = this.mLastEvent;
        userHabit.lastForegroundTime = this.lastForegroundTime;
        userHabit.lastUseTime = this.lastUseTime;
        userHabit.mUserId = this.mUserId;
        userHabit.mLaunchTime = (ArrayList) this.mLaunchTime.clone();
        return userHabit;
    }

    public UserHabit(String str, int i2, long j2, long j3, long j4, int i3) {
        this.mLaunchTime = new ArrayList<>();
        this.packageName = str;
        this.launchCount = i2;
        this.totalForegroundTime = j2;
        this.mLastEvent = -1;
        this.lastForegroundTime = j3;
        this.lastUseTime = j4;
        this.mUserId = Integer.valueOf(i3);
        this.mAppRelevance = new AppRelevance(str);
    }

    public UserHabit() {
        this.mLaunchTime = new ArrayList<>();
        this.mLastEvent = -1;
    }
}
