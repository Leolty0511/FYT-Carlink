package android.media;

import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
class UnstyledTextExtractor implements Tokenizer.OnTokenListener {
    public long mLastTimestamp;
    public StringBuilder mLine = new StringBuilder();
    public Vector<TextTrackCueSpan[]> mLines = new Vector<>();
    public Vector<TextTrackCueSpan> mCurrentLine = new Vector<>();

    public UnstyledTextExtractor() {
        init();
    }

    private void init() {
        StringBuilder sb = this.mLine;
        sb.delete(0, sb.length());
        this.mLines.clear();
        this.mCurrentLine.clear();
        this.mLastTimestamp = -1L;
    }

    public TextTrackCueSpan[][] getText() {
        if (this.mLine.length() > 0 || this.mCurrentLine.size() > 0) {
            onLineEnd();
        }
        TextTrackCueSpan[][] textTrackCueSpanArr = new TextTrackCueSpan[this.mLines.size()][];
        this.mLines.toArray(textTrackCueSpanArr);
        init();
        return textTrackCueSpanArr;
    }

    @Override // android.media.Tokenizer.OnTokenListener
    public void onData(String str) {
        this.mLine.append(str);
    }

    @Override // android.media.Tokenizer.OnTokenListener
    public void onEnd(String str) {
    }

    @Override // android.media.Tokenizer.OnTokenListener
    public void onLineEnd() {
        if (this.mLine.length() > 0) {
            this.mCurrentLine.add(new TextTrackCueSpan(this.mLine.toString(), this.mLastTimestamp));
            StringBuilder sb = this.mLine;
            sb.delete(0, sb.length());
        }
        TextTrackCueSpan[] textTrackCueSpanArr = new TextTrackCueSpan[this.mCurrentLine.size()];
        this.mCurrentLine.toArray(textTrackCueSpanArr);
        this.mCurrentLine.clear();
        this.mLines.add(textTrackCueSpanArr);
    }

    @Override // android.media.Tokenizer.OnTokenListener
    public void onStart(String str, String[] strArr, String str2) {
    }

    @Override // android.media.Tokenizer.OnTokenListener
    public void onTimeStamp(long j2) {
        if (this.mLine.length() > 0 && j2 != this.mLastTimestamp) {
            this.mCurrentLine.add(new TextTrackCueSpan(this.mLine.toString(), this.mLastTimestamp));
            StringBuilder sb = this.mLine;
            sb.delete(0, sb.length());
        }
        this.mLastTimestamp = j2;
    }
}
