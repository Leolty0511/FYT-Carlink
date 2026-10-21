package android.media;

import android.net.wifi.WifiEnterpriseConfig;
import android.provider.Telephony;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class TextTrackCue extends SubtitleTrack.Cue {
    static final int ALIGNMENT_END = 202;
    static final int ALIGNMENT_LEFT = 203;
    static final int ALIGNMENT_MIDDLE = 200;
    static final int ALIGNMENT_RIGHT = 204;
    static final int ALIGNMENT_START = 201;
    private static final String TAG = "TTCue";
    static final int WRITING_DIRECTION_HORIZONTAL = 100;
    static final int WRITING_DIRECTION_VERTICAL_LR = 102;
    static final int WRITING_DIRECTION_VERTICAL_RL = 101;
    boolean mAutoLinePosition;
    String[] mStrings;
    String mId = "";
    boolean mPauseOnExit = false;
    int mWritingDirection = 100;
    String mRegionId = "";
    boolean mSnapToLines = true;
    Integer mLinePosition = null;
    int mTextPosition = 50;
    int mSize = 100;
    int mAlignment = 200;
    TextTrackCueSpan[][] mLines = null;
    TextTrackRegion mRegion = null;

    public StringBuilder appendLinesToBuilder(StringBuilder sb) {
        if (this.mLines == null) {
            sb.append("null");
        } else {
            sb.append("[");
            TextTrackCueSpan[][] textTrackCueSpanArr = this.mLines;
            int length = textTrackCueSpanArr.length;
            int i2 = 0;
            boolean z2 = true;
            while (i2 < length) {
                TextTrackCueSpan[] textTrackCueSpanArr2 = textTrackCueSpanArr[i2];
                if (!z2) {
                    sb.append(", ");
                }
                if (textTrackCueSpanArr2 == null) {
                    sb.append("null");
                } else {
                    sb.append("\"");
                    int length2 = textTrackCueSpanArr2.length;
                    long j2 = -1;
                    int i3 = 0;
                    boolean z3 = true;
                    while (i3 < length2) {
                        TextTrackCueSpan textTrackCueSpan = textTrackCueSpanArr2[i3];
                        if (!z3) {
                            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                        }
                        if (textTrackCueSpan.mTimestampMs != j2) {
                            sb.append("<");
                            sb.append(WebVttParser.timeToString(textTrackCueSpan.mTimestampMs));
                            sb.append(">");
                            j2 = textTrackCueSpan.mTimestampMs;
                        }
                        sb.append(textTrackCueSpan.mText);
                        i3++;
                        z3 = false;
                    }
                    sb.append("\"");
                }
                i2++;
                z2 = false;
            }
            sb.append("]");
        }
        return sb;
    }

    public StringBuilder appendStringsToBuilder(StringBuilder sb) {
        if (this.mStrings == null) {
            sb.append("null");
        } else {
            sb.append("[");
            String[] strArr = this.mStrings;
            int length = strArr.length;
            boolean z2 = true;
            int i2 = 0;
            while (i2 < length) {
                String str = strArr[i2];
                if (!z2) {
                    sb.append(", ");
                }
                if (str == null) {
                    sb.append("null");
                } else {
                    sb.append("\"");
                    sb.append(str);
                    sb.append("\"");
                }
                i2++;
                z2 = false;
            }
            sb.append("]");
        }
        return sb;
    }

    public boolean equals(Object obj) {
        boolean z2;
        Integer num;
        if (!(obj instanceof TextTrackCue)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        try {
            TextTrackCue textTrackCue = (TextTrackCue) obj;
            boolean z3 = this.mId.equals(textTrackCue.mId) && this.mPauseOnExit == textTrackCue.mPauseOnExit && this.mWritingDirection == textTrackCue.mWritingDirection && this.mRegionId.equals(textTrackCue.mRegionId) && this.mSnapToLines == textTrackCue.mSnapToLines && (z2 = this.mAutoLinePosition) == textTrackCue.mAutoLinePosition && (z2 || (((num = this.mLinePosition) != null && num.equals(textTrackCue.mLinePosition)) || (this.mLinePosition == null && textTrackCue.mLinePosition == null))) && this.mTextPosition == textTrackCue.mTextPosition && this.mSize == textTrackCue.mSize && this.mAlignment == textTrackCue.mAlignment && this.mLines.length == textTrackCue.mLines.length;
            if (z3) {
                int i2 = 0;
                while (true) {
                    TextTrackCueSpan[][] textTrackCueSpanArr = this.mLines;
                    if (i2 >= textTrackCueSpanArr.length) {
                        break;
                    }
                    if (!Arrays.equals(textTrackCueSpanArr[i2], textTrackCue.mLines[i2])) {
                        return false;
                    }
                    i2++;
                }
            }
            return z3;
        } catch (IncompatibleClassChangeError unused) {
            return false;
        }
    }

    public int hashCode() {
        return toString().hashCode();
    }

    @Override // android.media.SubtitleTrack.Cue
    public void onTime(long j2) {
        for (TextTrackCueSpan[] textTrackCueSpanArr : this.mLines) {
            for (TextTrackCueSpan textTrackCueSpan : textTrackCueSpanArr) {
                textTrackCueSpan.mEnabled = j2 >= textTrackCueSpan.mTimestampMs;
            }
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(WebVttParser.timeToString(this.mStartTimeMs));
        sb.append(" --> ");
        sb.append(WebVttParser.timeToString(this.mEndTimeMs));
        sb.append(" {id:\"");
        sb.append(this.mId);
        sb.append("\", pauseOnExit:");
        sb.append(this.mPauseOnExit);
        sb.append(", direction:");
        int i2 = this.mWritingDirection;
        String str2 = "INVALID";
        if (i2 == 100) {
            str = "horizontal";
        } else if (i2 == 102) {
            str = "vertical_lr";
        } else {
            str = i2 == 101 ? "vertical_rl" : "INVALID";
        }
        sb.append(str);
        sb.append(", regionId:\"");
        sb.append(this.mRegionId);
        sb.append("\", snapToLines:");
        sb.append(this.mSnapToLines);
        sb.append(", linePosition:");
        sb.append(this.mAutoLinePosition ? "auto" : this.mLinePosition);
        sb.append(", textPosition:");
        sb.append(this.mTextPosition);
        sb.append(", size:");
        sb.append(this.mSize);
        sb.append(", alignment:");
        int i3 = this.mAlignment;
        if (i3 == 202) {
            str2 = "end";
        } else if (i3 == 203) {
            str2 = "left";
        } else if (i3 == 200) {
            str2 = "middle";
        } else if (i3 == 204) {
            str2 = "right";
        } else if (i3 == 201) {
            str2 = Telephony.BaseMmsColumns.START;
        }
        sb.append(str2);
        sb.append(", text:");
        appendStringsToBuilder(sb).append("}");
        return sb.toString();
    }
}
