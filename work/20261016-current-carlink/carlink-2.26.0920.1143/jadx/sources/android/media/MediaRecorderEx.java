package android.media;

/* JADX INFO: loaded from: classes.dex */
public class MediaRecorderEx extends MediaRecorder {
    public void setParam64BitFileOffset(boolean z2) {
        if (z2) {
            setParameter("param-use-64bit-offset=1");
        } else {
            setParameter("param-use-64bit-offset=0");
        }
    }
}
