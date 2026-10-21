package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.SurfaceHolder;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface VideoEditor {
    public static final int DURATION_OF_STORYBOARD = -1;
    public static final long MAX_SUPPORTED_FILE_SIZE = 2147483648L;
    public static final String THUMBNAIL_FILENAME = "thumbnail.jpg";

    public interface ExportProgressListener {
        void onProgress(VideoEditor videoEditor, String str, int i2);
    }

    public interface MediaProcessingProgressListener {
        public static final int ACTION_DECODE = 2;
        public static final int ACTION_ENCODE = 1;

        void onProgress(Object obj, int i2, int i3);
    }

    public static final class OverlayData {
        private static final Paint sResizePaint = new Paint(2);
        private Bitmap mOverlayBitmap = null;
        private int mRenderingMode = 2;
        private boolean mClear = false;

        public boolean needsRendering() {
            return this.mClear || this.mOverlayBitmap != null;
        }

        public void release() {
            Bitmap bitmap = this.mOverlayBitmap;
            if (bitmap != null) {
                bitmap.recycle();
                this.mOverlayBitmap = null;
            }
        }

        public void renderOverlay(Bitmap bitmap) {
            Rect rect;
            Rect rect2;
            int width;
            int height;
            int width2;
            int i2;
            int width3;
            int height2;
            int width4;
            int i3;
            if (this.mClear) {
                bitmap.eraseColor(0);
                return;
            }
            if (this.mOverlayBitmap != null) {
                Canvas canvas = new Canvas(bitmap);
                int i4 = this.mRenderingMode;
                if (i4 == 0) {
                    rect = new Rect(0, 0, canvas.getWidth(), canvas.getHeight());
                    rect2 = new Rect(0, 0, this.mOverlayBitmap.getWidth(), this.mOverlayBitmap.getHeight());
                } else if (i4 == 1) {
                    if (this.mOverlayBitmap.getWidth() / this.mOverlayBitmap.getHeight() < canvas.getWidth() / canvas.getHeight()) {
                        int width5 = (this.mOverlayBitmap.getWidth() * canvas.getHeight()) / canvas.getWidth();
                        int height3 = (this.mOverlayBitmap.getHeight() - width5) / 2;
                        height = width5 + height3;
                        width2 = this.mOverlayBitmap.getWidth();
                        i2 = height3;
                        width = 0;
                    } else {
                        int height4 = (this.mOverlayBitmap.getHeight() * canvas.getWidth()) / canvas.getHeight();
                        width = (this.mOverlayBitmap.getWidth() - height4) / 2;
                        int i5 = width + height4;
                        height = this.mOverlayBitmap.getHeight();
                        width2 = i5;
                        i2 = 0;
                    }
                    Rect rect3 = new Rect(width, i2, width2, height);
                    rect = new Rect(0, 0, canvas.getWidth(), canvas.getHeight());
                    rect2 = rect3;
                } else {
                    if (i4 != 2) {
                        throw new IllegalStateException("Rendering mode: " + this.mRenderingMode);
                    }
                    if (this.mOverlayBitmap.getWidth() / this.mOverlayBitmap.getHeight() > canvas.getWidth() / canvas.getHeight()) {
                        int width6 = (canvas.getWidth() * this.mOverlayBitmap.getHeight()) / this.mOverlayBitmap.getWidth();
                        int height5 = (canvas.getHeight() - width6) / 2;
                        height2 = width6 + height5;
                        width4 = canvas.getWidth();
                        i3 = height5;
                        width3 = 0;
                    } else {
                        int height6 = (canvas.getHeight() * this.mOverlayBitmap.getWidth()) / this.mOverlayBitmap.getHeight();
                        width3 = (canvas.getWidth() - height6) / 2;
                        int i6 = width3 + height6;
                        height2 = canvas.getHeight();
                        width4 = i6;
                        i3 = 0;
                    }
                    rect = new Rect(width3, i3, width4, height2);
                    rect2 = new Rect(0, 0, this.mOverlayBitmap.getWidth(), this.mOverlayBitmap.getHeight());
                }
                bitmap.eraseColor(0);
                canvas.drawBitmap(this.mOverlayBitmap, rect2, rect, sResizePaint);
                this.mOverlayBitmap.recycle();
            }
        }

        public void set(Bitmap bitmap, int i2) {
            this.mOverlayBitmap = bitmap;
            this.mRenderingMode = i2;
            this.mClear = false;
        }

        public void setClear() {
            this.mClear = true;
        }
    }

    public interface PreviewProgressListener {
        void onError(VideoEditor videoEditor, int i2);

        void onProgress(VideoEditor videoEditor, long j2, OverlayData overlayData);

        void onStart(VideoEditor videoEditor);

        void onStop(VideoEditor videoEditor);
    }

    void addAudioTrack(AudioTrack audioTrack);

    void addMediaItem(MediaItem mediaItem);

    void addTransition(Transition transition);

    void cancelExport(String str);

    void clearSurface(SurfaceHolder surfaceHolder);

    void export(String str, int i2, int i3, int i4, int i5, ExportProgressListener exportProgressListener);

    void export(String str, int i2, int i3, ExportProgressListener exportProgressListener);

    void generatePreview(MediaProcessingProgressListener mediaProcessingProgressListener);

    List<AudioTrack> getAllAudioTracks();

    List<MediaItem> getAllMediaItems();

    List<Transition> getAllTransitions();

    int getAspectRatio();

    AudioTrack getAudioTrack(String str);

    long getDuration();

    MediaItem getMediaItem(String str);

    String getPath();

    Transition getTransition(String str);

    void insertAudioTrack(AudioTrack audioTrack, String str);

    void insertMediaItem(MediaItem mediaItem, String str);

    void moveAudioTrack(String str, String str2);

    void moveMediaItem(String str, String str2);

    void release();

    void removeAllMediaItems();

    AudioTrack removeAudioTrack(String str);

    MediaItem removeMediaItem(String str);

    Transition removeTransition(String str);

    long renderPreviewFrame(SurfaceHolder surfaceHolder, long j2, OverlayData overlayData);

    void save();

    void setAspectRatio(int i2);

    void startPreview(SurfaceHolder surfaceHolder, long j2, long j3, boolean z2, int i2, PreviewProgressListener previewProgressListener);

    long stopPreview();
}
