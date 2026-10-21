package android.telecom.Logging;

import android.os.Parcel;
import android.os.Parcelable;
import android.telecom.Log;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Session {
    public static final String CONTINUE_SUBSESSION = "CONTINUE_SUBSESSION";
    public static final String CREATE_SUBSESSION = "CREATE_SUBSESSION";
    public static final String END_SESSION = "END_SESSION";
    public static final String END_SUBSESSION = "END_SUBSESSION";
    public static final String EXTERNAL_INDICATOR = "E-";
    public static final String SESSION_SEPARATION_CHAR_CHILD = "_";
    public static final String START_EXTERNAL_SESSION = "START_EXTERNAL_SESSION";
    public static final String START_SESSION = "START_SESSION";
    public static final String SUBSESSION_SEPARATION_CHAR = "->";
    public static final String TRUNCATE_STRING = "...";
    public static final int UNDEFINED = -1;
    private ArrayList<Session> mChildSessions;
    private long mExecutionStartTimeMs;
    private String mFullMethodPathCache;
    private boolean mIsStartedFromActiveSession;
    private String mOwnerInfo;
    private Session mParentSession;
    private String mSessionId;
    private String mShortMethodName;
    private long mExecutionEndTimeMs = -1;
    private boolean mIsCompleted = false;
    private boolean mIsExternal = false;
    private int mChildCounter = 0;

    public static class Info implements Parcelable {
        public static final Parcelable.Creator<Info> CREATOR = new Parcelable.Creator<Info>() { // from class: android.telecom.Logging.Session.Info.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Info createFromParcel(Parcel parcel) {
                return new Info(parcel.readString(), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Info[] newArray(int i2) {
                return new Info[i2];
            }
        };
        public final String methodPath;
        public final String sessionId;

        public static Info getInfo(Session session) {
            return new Info(session.getFullSessionId(), session.getFullMethodPath(!Log.DEBUG && session.isSessionExternal()));
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.sessionId);
            parcel.writeString(this.methodPath);
        }

        private Info(String str, String str2) {
            this.sessionId = str;
            this.methodPath = str2;
        }
    }

    public Session(String str, String str2, long j2, boolean z2, String str3) {
        this.mIsStartedFromActiveSession = false;
        setSessionId(str);
        setShortMethodName(str2);
        this.mExecutionStartTimeMs = j2;
        this.mParentSession = null;
        this.mChildSessions = new ArrayList<>(5);
        this.mIsStartedFromActiveSession = z2;
        this.mOwnerInfo = str3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getFullSessionId() {
        Session session = this.mParentSession;
        if (session == null) {
            return this.mSessionId;
        }
        if (!Log.VERBOSE) {
            return session.getFullSessionId();
        }
        return session.getFullSessionId() + SESSION_SEPARATION_CHAR_CHILD + this.mSessionId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSessionExternal() {
        return getParentSession() == null ? isExternal() : getParentSession().isSessionExternal();
    }

    public void addChild(Session session) {
        if (session != null) {
            this.mChildSessions.add(session);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Session session = (Session) obj;
        if (this.mExecutionStartTimeMs != session.mExecutionStartTimeMs || this.mExecutionEndTimeMs != session.mExecutionEndTimeMs || this.mIsCompleted != session.mIsCompleted || this.mChildCounter != session.mChildCounter || this.mIsStartedFromActiveSession != session.mIsStartedFromActiveSession) {
            return false;
        }
        String str = this.mSessionId;
        if (str == null ? session.mSessionId != null : !str.equals(session.mSessionId)) {
            return false;
        }
        String str2 = this.mShortMethodName;
        if (str2 == null ? session.mShortMethodName != null : !str2.equals(session.mShortMethodName)) {
            return false;
        }
        Session session2 = this.mParentSession;
        if (session2 == null ? session.mParentSession != null : !session2.equals(session.mParentSession)) {
            return false;
        }
        ArrayList<Session> arrayList = this.mChildSessions;
        if (arrayList == null ? session.mChildSessions != null : !arrayList.equals(session.mChildSessions)) {
            return false;
        }
        String str3 = this.mOwnerInfo;
        String str4 = session.mOwnerInfo;
        if (str3 != null) {
            return str3.equals(str4);
        }
        return str4 == null;
    }

    public ArrayList<Session> getChildSessions() {
        return this.mChildSessions;
    }

    public long getExecutionStartTimeMilliseconds() {
        return this.mExecutionStartTimeMs;
    }

    public String getFullMethodPath(boolean z2) {
        StringBuilder sb = new StringBuilder();
        getFullMethodPath(sb, z2);
        return sb.toString();
    }

    public Info getInfo() {
        return Info.getInfo(this);
    }

    public long getLocalExecutionTime() {
        long j2 = this.mExecutionEndTimeMs;
        if (j2 == -1) {
            return -1L;
        }
        return j2 - this.mExecutionStartTimeMs;
    }

    public synchronized String getNextChildId() {
        int i2;
        i2 = this.mChildCounter;
        this.mChildCounter = i2 + 1;
        return String.valueOf(i2);
    }

    public Session getParentSession() {
        return this.mParentSession;
    }

    public String getSessionId() {
        return this.mSessionId;
    }

    public String getShortMethodName() {
        return this.mShortMethodName;
    }

    public int hashCode() {
        String str = this.mSessionId;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.mShortMethodName;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        long j2 = this.mExecutionStartTimeMs;
        int i2 = (iHashCode2 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.mExecutionEndTimeMs;
        int i3 = (i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        Session session = this.mParentSession;
        int iHashCode3 = (i3 + (session != null ? session.hashCode() : 0)) * 31;
        ArrayList<Session> arrayList = this.mChildSessions;
        int iHashCode4 = (((((((iHashCode3 + (arrayList != null ? arrayList.hashCode() : 0)) * 31) + (this.mIsCompleted ? 1 : 0)) * 31) + this.mChildCounter) * 31) + (this.mIsStartedFromActiveSession ? 1 : 0)) * 31;
        String str3 = this.mOwnerInfo;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public boolean isExternal() {
        return this.mIsExternal;
    }

    public boolean isSessionCompleted() {
        return this.mIsCompleted;
    }

    public boolean isStartedFromActiveSession() {
        return this.mIsStartedFromActiveSession;
    }

    public void markSessionCompleted(long j2) {
        this.mExecutionEndTimeMs = j2;
        this.mIsCompleted = true;
    }

    public String printFullSessionTree() {
        Session parentSession = this;
        while (parentSession.getParentSession() != null) {
            parentSession = parentSession.getParentSession();
        }
        return parentSession.printSessionTree();
    }

    public String printSessionTree() {
        StringBuilder sb = new StringBuilder();
        printSessionTree(0, sb);
        return sb.toString();
    }

    public void removeChild(Session session) {
        if (session != null) {
            this.mChildSessions.remove(session);
        }
    }

    public void setExecutionStartTimeMs(long j2) {
        this.mExecutionStartTimeMs = j2;
    }

    public void setIsExternal(boolean z2) {
        this.mIsExternal = z2;
    }

    public void setParentSession(Session session) {
        this.mParentSession = session;
    }

    public void setSessionId(String str) {
        if (str == null) {
            this.mSessionId = "?";
        }
        this.mSessionId = str;
    }

    public void setShortMethodName(String str) {
        if (str == null) {
            str = "";
        }
        this.mShortMethodName = str;
    }

    public String toString() {
        Session session = this.mParentSession;
        if (session != null && this.mIsStartedFromActiveSession) {
            return session.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getFullMethodPath(false));
        String str = this.mOwnerInfo;
        if (str != null && !str.isEmpty()) {
            sb.append("(InCall package: ");
            sb.append(this.mOwnerInfo);
            sb.append(")");
        }
        return sb.toString() + "@" + getFullSessionId();
    }

    private synchronized void getFullMethodPath(StringBuilder sb, boolean z2) {
        if (!TextUtils.isEmpty(this.mFullMethodPathCache) && !z2) {
            sb.append(this.mFullMethodPathCache);
            return;
        }
        Session parentSession = getParentSession();
        boolean z3 = false;
        if (parentSession != null) {
            z3 = this.mShortMethodName.equals(parentSession.mShortMethodName) ? false : true;
            parentSession.getFullMethodPath(sb, z2);
            sb.append(SUBSESSION_SEPARATION_CHAR);
        }
        if (!isExternal()) {
            sb.append(this.mShortMethodName);
        } else if (z2) {
            sb.append(TRUNCATE_STRING);
        } else {
            sb.append("(");
            sb.append(this.mShortMethodName);
            sb.append(")");
        }
        if (z3 && !z2) {
            this.mFullMethodPathCache = sb.toString();
        }
    }

    private void printSessionTree(int i2, StringBuilder sb) {
        sb.append(toString());
        for (Session session : this.mChildSessions) {
            sb.append("\n");
            for (int i3 = 0; i3 <= i2; i3++) {
                sb.append("\t");
            }
            session.printSessionTree(i2 + 1, sb);
        }
    }
}
