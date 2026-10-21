package android.media;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
class WebVttTrack extends SubtitleTrack implements WebVttCueListener {
    private static final String TAG = "WebVttTrack";
    private Long mCurrentRunID;
    private final UnstyledTextExtractor mExtractor;
    private final WebVttParser mParser;
    private final Map<String, TextTrackRegion> mRegions;
    private final WebVttRenderingWidget mRenderingWidget;
    private final Vector<Long> mTimestamps;
    private final Tokenizer mTokenizer;

    public WebVttTrack(WebVttRenderingWidget webVttRenderingWidget, MediaFormat mediaFormat) {
        super(mediaFormat);
        this.mParser = new WebVttParser(this);
        UnstyledTextExtractor unstyledTextExtractor = new UnstyledTextExtractor();
        this.mExtractor = unstyledTextExtractor;
        this.mTokenizer = new Tokenizer(unstyledTextExtractor);
        this.mTimestamps = new Vector<>();
        this.mRegions = new HashMap();
        this.mRenderingWidget = webVttRenderingWidget;
    }

    @Override // android.media.WebVttCueListener
    public void onCueParsed(TextTrackCue textTrackCue) {
        synchronized (this.mParser) {
            if (textTrackCue.mRegionId.length() != 0) {
                textTrackCue.mRegion = this.mRegions.get(textTrackCue.mRegionId);
            }
            if (this.DEBUG) {
                Log.v(TAG, "adding cue " + textTrackCue);
            }
            this.mTokenizer.reset();
            for (String str : textTrackCue.mStrings) {
                this.mTokenizer.tokenize(str);
            }
            textTrackCue.mLines = this.mExtractor.getText();
            if (this.DEBUG) {
                StringBuilder sbAppendStringsToBuilder = textTrackCue.appendStringsToBuilder(new StringBuilder());
                sbAppendStringsToBuilder.append(" simplified to: ");
                Log.v(TAG, textTrackCue.appendLinesToBuilder(sbAppendStringsToBuilder).toString());
            }
            for (TextTrackCueSpan[] textTrackCueSpanArr : textTrackCue.mLines) {
                for (TextTrackCueSpan textTrackCueSpan : textTrackCueSpanArr) {
                    long j2 = textTrackCueSpan.mTimestampMs;
                    if (j2 > textTrackCue.mStartTimeMs && j2 < textTrackCue.mEndTimeMs && !this.mTimestamps.contains(Long.valueOf(j2))) {
                        this.mTimestamps.add(Long.valueOf(textTrackCueSpan.mTimestampMs));
                    }
                }
            }
            if (this.mTimestamps.size() > 0) {
                textTrackCue.mInnerTimesMs = new long[this.mTimestamps.size()];
                for (int i2 = 0; i2 < this.mTimestamps.size(); i2++) {
                    textTrackCue.mInnerTimesMs[i2] = this.mTimestamps.get(i2).longValue();
                }
                this.mTimestamps.clear();
            } else {
                textTrackCue.mInnerTimesMs = null;
            }
            textTrackCue.mRunID = this.mCurrentRunID.longValue();
        }
        addCue(textTrackCue);
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
                this.mParser.parse(str);
                if (z2) {
                    finishedRun(j2);
                    this.mParser.eos();
                    this.mRegions.clear();
                    this.mCurrentRunID = null;
                }
            }
        } catch (UnsupportedEncodingException e2) {
            Log.w(TAG, "subtitle data is not UTF-8 encoded: " + e2);
        }
    }

    @Override // android.media.WebVttCueListener
    public void onRegionParsed(TextTrackRegion textTrackRegion) {
        synchronized (this.mParser) {
            this.mRegions.put(textTrackRegion.mId, textTrackRegion);
        }
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
            WebVttRenderingWidget webVttRenderingWidget = this.mRenderingWidget;
            if (webVttRenderingWidget != null) {
                webVttRenderingWidget.setActiveCues(vector);
            }
        }
    }

    @Override // android.media.SubtitleTrack
    public WebVttRenderingWidget getRenderingWidget() {
        return this.mRenderingWidget;
    }
}
