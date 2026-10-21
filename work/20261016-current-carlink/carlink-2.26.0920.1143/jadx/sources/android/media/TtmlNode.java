package android.media;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class TtmlNode {
    public final String mAttributes;
    public final List<TtmlNode> mChildren = new ArrayList();
    public final long mEndTimeMs;
    public final String mName;
    public final TtmlNode mParent;
    public final long mRunId;
    public final long mStartTimeMs;
    public final String mText;

    public TtmlNode(String str, String str2, String str3, long j2, long j3, TtmlNode ttmlNode, long j4) {
        this.mName = str;
        this.mAttributes = str2;
        this.mText = str3;
        this.mStartTimeMs = j2;
        this.mEndTimeMs = j3;
        this.mParent = ttmlNode;
        this.mRunId = j4;
    }

    public boolean isActive(long j2, long j3) {
        return this.mEndTimeMs > j2 && this.mStartTimeMs < j3;
    }
}
