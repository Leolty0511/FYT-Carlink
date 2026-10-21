package android.media;

import android.util.Log;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.TreeSet;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
class TtmlTrack extends SubtitleTrack implements TtmlNodeListener {
    private static final String TAG = "TtmlTrack";
    private Long mCurrentRunID;
    private final TtmlParser mParser;
    private String mParsingData;
    private final TtmlRenderingWidget mRenderingWidget;
    private TtmlNode mRootNode;
    private final TreeSet<Long> mTimeEvents;
    private final LinkedList<TtmlNode> mTtmlNodes;

    public TtmlTrack(TtmlRenderingWidget ttmlRenderingWidget, MediaFormat mediaFormat) {
        super(mediaFormat);
        this.mParser = new TtmlParser(this);
        this.mTtmlNodes = new LinkedList<>();
        this.mTimeEvents = new TreeSet<>();
        this.mRenderingWidget = ttmlRenderingWidget;
        this.mParsingData = "";
    }

    private void addTimeEvents(TtmlNode ttmlNode) {
        this.mTimeEvents.add(Long.valueOf(ttmlNode.mStartTimeMs));
        this.mTimeEvents.add(Long.valueOf(ttmlNode.mEndTimeMs));
        for (int i2 = 0; i2 < ttmlNode.mChildren.size(); i2++) {
            addTimeEvents(ttmlNode.mChildren.get(i2));
        }
    }

    private List<TtmlNode> getActiveNodes(long j2, long j3) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < this.mTtmlNodes.size(); i2++) {
            TtmlNode ttmlNode = this.mTtmlNodes.get(i2);
            if (ttmlNode.isActive(j2, j3)) {
                arrayList.add(ttmlNode);
            }
        }
        return arrayList;
    }

    public TtmlCue getNextResult() {
        while (this.mTimeEvents.size() >= 2) {
            long jLongValue = this.mTimeEvents.pollFirst().longValue();
            long jLongValue2 = this.mTimeEvents.first().longValue();
            if (!getActiveNodes(jLongValue, jLongValue2).isEmpty()) {
                return new TtmlCue(jLongValue, jLongValue2, TtmlUtils.applySpacePolicy(TtmlUtils.extractText(this.mRootNode, jLongValue, jLongValue2), false), TtmlUtils.extractTtmlFragment(this.mRootNode, jLongValue, jLongValue2));
            }
        }
        return null;
    }

    @Override // android.media.SubtitleTrack
    public void onData(byte[] bArr, boolean z2, long j2) {
        try {
            String str = new String(bArr, "UTF-8");
            synchronized (this.mParser) {
                Long l2 = this.mCurrentRunID;
                if (l2 != null && j2 != l2.longValue()) {
                    throw new IllegalStateException("Run #" + this.mCurrentRunID + " in progress.  Cannot process run #" + j2);
                }
                this.mCurrentRunID = Long.valueOf(j2);
                String str2 = this.mParsingData + str;
                this.mParsingData = str2;
                if (z2) {
                    try {
                        try {
                            this.mParser.parse(str2, this.mCurrentRunID.longValue());
                        } catch (XmlPullParserException e2) {
                            e2.printStackTrace();
                        }
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    finishedRun(j2);
                    this.mParsingData = "";
                    this.mCurrentRunID = null;
                }
            }
        } catch (UnsupportedEncodingException e4) {
            Log.w(TAG, "subtitle data is not UTF-8 encoded: " + e4);
        }
    }

    @Override // android.media.TtmlNodeListener
    public void onRootNodeParsed(TtmlNode ttmlNode) {
        this.mRootNode = ttmlNode;
        while (true) {
            TtmlCue nextResult = getNextResult();
            if (nextResult == null) {
                this.mRootNode = null;
                this.mTtmlNodes.clear();
                this.mTimeEvents.clear();
                return;
            }
            addCue(nextResult);
        }
    }

    @Override // android.media.TtmlNodeListener
    public void onTtmlNodeParsed(TtmlNode ttmlNode) {
        this.mTtmlNodes.addLast(ttmlNode);
        addTimeEvents(ttmlNode);
    }

    @Override // android.media.SubtitleTrack
    public void updateView(Vector<SubtitleTrack.Cue> vector) {
        if (this.mVisible) {
            if (this.DEBUG && this.mTimeProvider != null) {
                try {
                    Log.d(TAG, "at " + (this.mTimeProvider.getCurrentTimeUs(false, true) / 1000) + " ms the active cues are:");
                } catch (IllegalStateException unused) {
                    Log.d(TAG, "at (illegal state) the active cues are:");
                }
            }
            this.mRenderingWidget.setActiveCues(vector);
        }
    }

    @Override // android.media.SubtitleTrack
    public TtmlRenderingWidget getRenderingWidget() {
        return this.mRenderingWidget;
    }
}
