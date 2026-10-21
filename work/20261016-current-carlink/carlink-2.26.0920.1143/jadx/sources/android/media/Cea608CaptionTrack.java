package android.media;

import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
class Cea608CaptionTrack extends SubtitleTrack {
    private final Cea608CCParser mCCParser;
    private final Cea608CCWidget mRenderingWidget;

    public Cea608CaptionTrack(Cea608CCWidget cea608CCWidget, MediaFormat mediaFormat) {
        super(mediaFormat);
        this.mRenderingWidget = cea608CCWidget;
        this.mCCParser = new Cea608CCParser(cea608CCWidget);
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
