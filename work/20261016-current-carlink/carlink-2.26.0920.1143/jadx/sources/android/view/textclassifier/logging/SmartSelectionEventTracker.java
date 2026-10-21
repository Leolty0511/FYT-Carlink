package android.view.textclassifier.logging;

import android.content.Context;
import android.metrics.LogMaker;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextSelection;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class SmartSelectionEventTracker {
    private static final boolean DEBUG_LOG_ENABLED = false;
    private static final String EDITTEXT = "edittext";
    private static final String EDIT_WEBVIEW = "edit-webview";
    private static final int EVENT_INDICES = 1122;
    private static final int INDEX = 1120;
    private static final String LOG_TAG = "SmartSelectEventTracker";
    private static final int PREV_EVENT_DELTA = 1118;
    private static final int SESSION_ID = 1119;
    private static final int SMART_INDICES = 1123;
    private static final int START_EVENT_DELTA = 1117;
    private static final String TEXTVIEW = "textview";
    private static final String UNKNOWN = "unknown";
    private static final int VERSION_TAG = 1121;
    private static final String WEBVIEW = "webview";
    private static final String ZERO = "0";
    private final Context mContext;
    private int mIndex;
    private long mLastEventTime;
    private int mOrigStart;
    private String mSessionId;
    private long mSessionStartTime;
    private boolean mSmartSelectionTriggered;
    private String mVersionTag;
    private final int mWidgetType;
    private final MetricsLogger mMetricsLogger = new MetricsLogger();
    private final int[] mSmartIndices = new int[2];
    private final int[] mPrevIndices = new int[2];

    public static final class SelectionEvent {
        private static final String NO_VERSION_TAG = "";
        public static final int OUT_OF_BOUNDS = 32767;
        public static final int OUT_OF_BOUNDS_NEGATIVE = -32768;
        private final int mEnd;
        private final String mEntityType;
        private int mEventType;
        private final int mStart;
        private final String mVersionTag;

        @Retention(RetentionPolicy.SOURCE)
        public @interface ActionType {
            public static final int ABANDON = 107;
            public static final int COPY = 101;
            public static final int CUT = 103;
            public static final int DRAG = 106;
            public static final int OTHER = 108;
            public static final int OVERTYPE = 100;
            public static final int PASTE = 102;
            public static final int RESET = 201;
            public static final int SELECT_ALL = 200;
            public static final int SHARE = 104;
            public static final int SMART_SHARE = 105;
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface EventType {
            public static final int AUTO_SELECTION = 5;
            public static final int SELECTION_MODIFIED = 2;
            public static final int SELECTION_STARTED = 1;
            public static final int SMART_SELECTION_MULTI = 4;
            public static final int SMART_SELECTION_SINGLE = 3;
        }

        private SelectionEvent(int i2, int i3, int i4, String str, String str2) {
            Preconditions.checkArgument(i3 >= i2, "end cannot be less than start");
            this.mStart = i2;
            this.mEnd = i3;
            this.mEventType = i4;
            this.mEntityType = (String) Preconditions.checkNotNull(str);
            this.mVersionTag = (String) Preconditions.checkNotNull(str2);
        }

        private boolean isActionType() {
            int i2 = this.mEventType;
            if (i2 == 200 || i2 == 201) {
                return true;
            }
            switch (i2) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                case 107:
                    return true;
                default:
                    return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isTerminal() {
            switch (this.mEventType) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                case 107:
                case 108:
                    return true;
                default:
                    return false;
            }
        }

        public static SelectionEvent selectionAction(int i2, int i3, int i4) {
            return new SelectionEvent(i2, i3, i4, "", "");
        }

        public static SelectionEvent selectionModified(int i2, int i3) {
            return new SelectionEvent(i2, i3, 2, "", "");
        }

        public static SelectionEvent selectionStarted(int i2) {
            return new SelectionEvent(i2, i2 + 1, 1, "", "");
        }

        public static SelectionEvent selectionAction(int i2, int i3, int i4, TextClassification textClassification) {
            return new SelectionEvent(i2, i3, i4, textClassification.getEntityCount() > 0 ? textClassification.getEntity(0) : "", textClassification.getVersionInfo());
        }

        public static SelectionEvent selectionModified(int i2, int i3, TextClassification textClassification) {
            return new SelectionEvent(i2, i3, 2, textClassification.getEntityCount() > 0 ? textClassification.getEntity(0) : "", textClassification.getVersionInfo());
        }

        public static SelectionEvent selectionModified(int i2, int i3, TextSelection textSelection) {
            int i4;
            if (textSelection.getSourceClassifier().equals(TextClassifier.DEFAULT_LOG_TAG)) {
                i4 = i3 - i2 > 1 ? 4 : 3;
            } else {
                i4 = 5;
            }
            return new SelectionEvent(i2, i3, i4, textSelection.getEntityCount() > 0 ? textSelection.getEntity(0) : "", textSelection.getVersionInfo());
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface WidgetType {
        public static final int EDITTEXT = 3;
        public static final int EDIT_WEBVIEW = 4;
        public static final int TEXTVIEW = 1;
        public static final int UNSPECIFIED = 0;
        public static final int WEBVIEW = 2;
    }

    public SmartSelectionEventTracker(Context context, int i2) {
        this.mWidgetType = i2;
        this.mContext = (Context) Preconditions.checkNotNull(context);
    }

    private static int clamp(int i2) {
        return Math.max(Math.min(i2, SelectionEvent.OUT_OF_BOUNDS), SelectionEvent.OUT_OF_BOUNDS_NEGATIVE);
    }

    private static String createSessionId() {
        return UUID.randomUUID().toString();
    }

    private static void debugLog(LogMaker logMaker) {
    }

    private void endSession() {
        this.mOrigStart = 0;
        int[] iArr = this.mSmartIndices;
        iArr[1] = 0;
        iArr[0] = 0;
        int[] iArr2 = this.mPrevIndices;
        iArr2[1] = 0;
        iArr2[0] = 0;
        this.mIndex = 0;
        this.mSessionStartTime = 0L;
        this.mLastEventTime = 0L;
        this.mSmartSelectionTriggered = false;
        this.mVersionTag = getVersionTag(null);
        this.mSessionId = null;
    }

    private int getEventDelta(SelectionEvent selectionEvent) {
        return (clamp(selectionEvent.mEnd - this.mOrigStart) & 65535) | (clamp(selectionEvent.mStart - this.mOrigStart) << 16);
    }

    private static int getLogSubType(SelectionEvent selectionEvent) {
        String str = selectionEvent.mEntityType;
        str.getClass();
        switch (str) {
            case "address":
                return 5;
            case "url":
                return 6;
            case "email":
                return 3;
            case "other":
                return 2;
            case "phone":
                return 4;
            default:
                return 1;
        }
    }

    private static String getLogSubTypeString(int i2) {
        if (i2 == 2) {
            return "other";
        }
        if (i2 == 3) {
            return "email";
        }
        if (i2 == 4) {
            return "phone";
        }
        if (i2 != 5) {
            return i2 != 6 ? "" : "url";
        }
        return "address";
    }

    private static int getLogType(SelectionEvent selectionEvent) {
        int i2 = selectionEvent.mEventType;
        if (i2 == 1) {
            return 1101;
        }
        if (i2 == 2) {
            return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_MODIFY;
        }
        if (i2 == 3) {
            return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_SMART_SINGLE;
        }
        if (i2 == 4) {
            return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_SMART_MULTI;
        }
        if (i2 == 5) {
            return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_AUTO;
        }
        if (i2 == 200) {
            return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_SELECT_ALL;
        }
        if (i2 == 201) {
            return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_RESET;
        }
        switch (i2) {
            case 100:
                return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_OVERTYPE;
            case 101:
                return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_COPY;
            case 102:
                return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_PASTE;
            case 103:
                return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_CUT;
            case 104:
                return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_SHARE;
            case 105:
                return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_SMART_SHARE;
            case 106:
                return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_DRAG;
            case 107:
                return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_ABANDON;
            case 108:
                return MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_OTHER;
            default:
                return 0;
        }
    }

    private static String getLogTypeString(int i2) {
        switch (i2) {
            case 1101:
                return "SELECTION_STARTED";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_MODIFY /* 1102 */:
                return "SELECTION_MODIFIED";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_SELECT_ALL /* 1103 */:
                return "SELECT_ALL";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_RESET /* 1104 */:
                return "RESET";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_SMART_SINGLE /* 1105 */:
                return "SMART_SELECTION_SINGLE";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_SMART_MULTI /* 1106 */:
                return "SMART_SELECTION_MULTI";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_AUTO /* 1107 */:
                return "AUTO_SELECTION";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_OVERTYPE /* 1108 */:
                return "OVERTYPE";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_COPY /* 1109 */:
                return "COPY";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_PASTE /* 1110 */:
                return "PASTE";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_CUT /* 1111 */:
                return "CUT";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_SHARE /* 1112 */:
                return "SHARE";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_SMART_SHARE /* 1113 */:
                return "SMART_SHARE";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_DRAG /* 1114 */:
                return "DRAG";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_ABANDON /* 1115 */:
                return "ABANDON";
            case MetricsProto.MetricsEvent.ACTION_TEXT_SELECTION_OTHER /* 1116 */:
                return "OTHER";
            default:
                return "unknown";
        }
    }

    private int getSmartDelta() {
        if (this.mSmartSelectionTriggered) {
            return (clamp(this.mSmartIndices[0] - this.mOrigStart) << 16) | (clamp(this.mSmartIndices[1] - this.mOrigStart) & 65535);
        }
        return 0;
    }

    private String getVersionTag(SelectionEvent selectionEvent) {
        String str;
        int i2 = this.mWidgetType;
        if (i2 == 1) {
            str = TEXTVIEW;
        } else if (i2 == 2) {
            str = WEBVIEW;
        } else if (i2 != 3) {
            str = i2 != 4 ? "unknown" : EDIT_WEBVIEW;
        } else {
            str = EDITTEXT;
        }
        return String.format("%s/%s", str, selectionEvent != null ? Objects.toString(selectionEvent.mVersionTag, "") : "");
    }

    private String startNewSession() {
        endSession();
        String strCreateSessionId = createSessionId();
        this.mSessionId = strCreateSessionId;
        return strCreateSessionId;
    }

    private void writeEvent(SelectionEvent selectionEvent, long j2) {
        long j3 = this.mLastEventTime;
        LogMaker logMakerAddTaggedData = new LogMaker(1100).setType(getLogType(selectionEvent)).setSubtype(getLogSubType(selectionEvent)).setPackageName(this.mContext.getPackageName()).setTimestamp(j2).addTaggedData(1117, Long.valueOf(j2 - this.mSessionStartTime)).addTaggedData(1118, Long.valueOf(j3 != 0 ? j2 - j3 : 0L)).addTaggedData(1120, Integer.valueOf(this.mIndex)).addTaggedData(1121, this.mVersionTag).addTaggedData(1123, Integer.valueOf(getSmartDelta())).addTaggedData(1122, Integer.valueOf(getEventDelta(selectionEvent))).addTaggedData(1119, this.mSessionId);
        this.mMetricsLogger.write(logMakerAddTaggedData);
        debugLog(logMakerAddTaggedData);
        this.mLastEventTime = j2;
        this.mPrevIndices[0] = selectionEvent.mStart;
        this.mPrevIndices[1] = selectionEvent.mEnd;
        this.mIndex++;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0038  */
    public void logEvent(SelectionEvent selectionEvent) {
        Preconditions.checkNotNull(selectionEvent);
        int unused = selectionEvent.mEventType;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i2 = selectionEvent.mEventType;
        if (i2 == 1) {
            this.mSessionId = startNewSession();
            Preconditions.checkArgument(selectionEvent.mEnd == selectionEvent.mStart + 1);
            this.mOrigStart = selectionEvent.mStart;
            this.mSessionStartTime = jCurrentTimeMillis;
        } else if (i2 == 2) {
            if (this.mPrevIndices[0] == selectionEvent.mStart && this.mPrevIndices[1] == selectionEvent.mEnd) {
                return;
            }
        } else if (i2 == 3 || i2 == 4) {
            this.mSmartSelectionTriggered = true;
            this.mVersionTag = getVersionTag(selectionEvent);
            this.mSmartIndices[0] = selectionEvent.mStart;
            this.mSmartIndices[1] = selectionEvent.mEnd;
        } else if (i2 == 5) {
            if (this.mPrevIndices[0] == selectionEvent.mStart) {
                return;
            }
        }
        writeEvent(selectionEvent, jCurrentTimeMillis);
        if (selectionEvent.isTerminal()) {
            endSession();
        }
    }
}
