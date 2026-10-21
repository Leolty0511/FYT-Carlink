package android.media;

import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
class Cea708CaptionTrack extends SubtitleTrack {
    private final Cea708CCParser mCCParser;
    private final Cea708CCWidget mRenderingWidget;

    public Cea708CaptionTrack(Cea708CCWidget cea708CCWidget, MediaFormat mediaFormat) {
        super(mediaFormat);
        this.mRenderingWidget = cea708CCWidget;
        this.mCCParser = new Cea708CCParser(cea708CCWidget);
    }

    @Override // android.media.SubtitleTrack
    public SubtitleTrack.RenderingWidget getRenderingWidget() {
        return this.mRenderingWidget;
    }

    @Override // android.media.SubtitleTrack
    public void onData(byte[] bArr, boolean z2, long j2) {
        this.mCCParser.parse(bArr);
    }

    @Override // android.media.SubtitleTrack
    public void updateView(Vector<SubtitleTrack.Cue> vector) {
    }
}
