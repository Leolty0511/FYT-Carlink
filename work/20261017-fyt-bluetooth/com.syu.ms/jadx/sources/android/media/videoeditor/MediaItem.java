package android.media.videoeditor;

import android.graphics.Bitmap;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaItem {
    public static final int END_OF_FILE = -1;
    public static final int RENDERING_MODE_BLACK_BORDER = 0;
    public static final int RENDERING_MODE_CROPPING = 2;
    public static final int RENDERING_MODE_STRETCH = 1;
    public Transition mBeginTransition;
    private final List<Effect> mEffects;
    public Transition mEndTransition;
    public final String mFilename;
    public String mGeneratedImageClip;
    private final MediaArtistNativeHelper mMANativeHelper;
    private final List<Overlay> mOverlays;
    private final String mProjectPath;
    public boolean mRegenerateClip;
    private int mRenderingMode;
    private final String mUniqueId;
    private boolean mBlankFrameGenerated = false;
    private String mBlankFrameFilename = null;

    public interface GetThumbnailListCallback {
        void onThumbnail(Bitmap bitmap, int i2);
    }

    public MediaItem(VideoEditor videoEditor, String str, String str2, int i2) throws IOException {
        if (str2 == null) {
            throw new IllegalArgumentException("MediaItem : filename is null");
        }
        File file = new File(str2);
        if (!file.exists()) {
            throw new IOException(str2 + " not found ! ");
        }
        if (VideoEditor.MAX_SUPPORTED_FILE_SIZE <= file.length()) {
            throw new IllegalArgumentException("File size is more than 2GB");
        }
        this.mUniqueId = str;
        this.mFilename = str2;
        this.mRenderingMode = i2;
        this.mEffects = new ArrayList();
        this.mOverlays = new ArrayList();
        this.mBeginTransition = null;
        this.mEndTransition = null;
        this.mMANativeHelper = ((VideoEditorImpl) videoEditor).getNativeContext();
        this.mProjectPath = videoEditor.getPath();
        this.mRegenerateClip = false;
        this.mGeneratedImageClip = null;
    }

    public void addEffect(Effect effect) {
        if (effect == null) {
            throw new IllegalArgumentException("NULL effect cannot be applied");
        }
        if (effect.getMediaItem() != this) {
            throw new IllegalArgumentException("Media item mismatch");
        }
        if (this.mEffects.contains(effect)) {
            throw new IllegalArgumentException("Effect already exists: " + effect.getId());
        }
        if (effect.getStartTime() + effect.getDuration() > getDuration()) {
            throw new IllegalArgumentException("Effect start time + effect duration > media clip duration");
        }
        this.mMANativeHelper.setGeneratePreview(true);
        this.mEffects.add(effect);
        invalidateTransitions(effect.getStartTime(), effect.getDuration());
        if (effect instanceof EffectKenBurns) {
            this.mRegenerateClip = true;
        }
    }

    public void addOverlay(Overlay overlay) {
        int scaledHeight;
        int width;
        if (overlay == null) {
            throw new IllegalArgumentException("NULL Overlay cannot be applied");
        }
        if (overlay.getMediaItem() != this) {
            throw new IllegalArgumentException("Media item mismatch");
        }
        if (this.mOverlays.contains(overlay)) {
            throw new IllegalArgumentException("Overlay already exists: " + overlay.getId());
        }
        if (overlay.getStartTime() + overlay.getDuration() > getDuration()) {
            throw new IllegalArgumentException("Overlay start time + overlay duration > media clip duration");
        }
        if (!(overlay instanceof OverlayFrame)) {
            throw new IllegalArgumentException("Overlay not supported");
        }
        OverlayFrame overlayFrame = (OverlayFrame) overlay;
        Bitmap bitmap = overlayFrame.getBitmap();
        if (bitmap == null) {
            throw new IllegalArgumentException("Overlay bitmap not specified");
        }
        if (this instanceof MediaVideoItem) {
            width = getWidth();
            scaledHeight = getHeight();
        } else {
            MediaImageItem mediaImageItem = (MediaImageItem) this;
            int scaledWidth = mediaImageItem.getScaledWidth();
            scaledHeight = mediaImageItem.getScaledHeight();
            width = scaledWidth;
        }
        if (bitmap.getWidth() != width || bitmap.getHeight() != scaledHeight) {
            throw new IllegalArgumentException("Bitmap dimensions must match media item dimensions");
        }
        this.mMANativeHelper.setGeneratePreview(true);
        overlayFrame.save(this.mProjectPath);
        this.mOverlays.add(overlay);
        invalidateTransitions(overlay.getStartTime(), overlay.getDuration());
    }

    public void adjustTransitions() {
        Transition transition = this.mBeginTransition;
        if (transition != null) {
            long maximumDuration = transition.getMaximumDuration();
            if (this.mBeginTransition.getDuration() > maximumDuration) {
                this.mBeginTransition.setDuration(maximumDuration);
            }
        }
        Transition transition2 = this.mEndTransition;
        if (transition2 != null) {
            long maximumDuration2 = transition2.getMaximumDuration();
            if (this.mEndTransition.getDuration() > maximumDuration2) {
                this.mEndTransition.setDuration(maximumDuration2);
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof MediaItem) {
            return this.mUniqueId.equals(((MediaItem) obj).mUniqueId);
        }
        return false;
    }

    public void generateBlankFrame(MediaArtistNativeHelper.ClipSettings clipSettings) {
        if (!this.mBlankFrameGenerated) {
            this.mBlankFrameFilename = String.format(this.mProjectPath + "/ghost.rgb", new Object[0]);
            FileOutputStream fileOutputStream = null;
            try {
                fileOutputStream = new FileOutputStream(this.mBlankFrameFilename);
            } catch (IOException unused) {
            }
            DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
            int[] iArr = new int[64];
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(256);
            byte[] bArrArray = byteBufferAllocate.array();
            for (int i2 = 0; i2 < 64; i2++) {
                byteBufferAllocate.asIntBuffer().put(iArr, 0, 64);
                try {
                    dataOutputStream.write(bArrArray);
                } catch (IOException unused2) {
                }
            }
            try {
                fileOutputStream.close();
            } catch (IOException unused3) {
            }
            this.mBlankFrameGenerated = true;
        }
        clipSettings.clipPath = this.mBlankFrameFilename;
        clipSettings.fileType = 5;
        clipSettings.beginCutTime = 0;
        clipSettings.endCutTime = 0;
        clipSettings.mediaRendering = 0;
        clipSettings.rgbWidth = 64;
        clipSettings.rgbHeight = 64;
    }

    public List<Effect> getAllEffects() {
        return this.mEffects;
    }

    public List<Overlay> getAllOverlays() {
        return this.mOverlays;
    }

    public abstract int getAspectRatio();

    public Transition getBeginTransition() {
        return this.mBeginTransition;
    }

    public MediaArtistNativeHelper.ClipSettings getClipSettings() {
        MediaArtistNativeHelper.ClipSettings clipSettings = new MediaArtistNativeHelper.ClipSettings();
        initClipSettings(clipSettings);
        if (!(this instanceof MediaVideoItem)) {
            return this instanceof MediaImageItem ? ((MediaImageItem) this).getImageClipProperties() : clipSettings;
        }
        MediaVideoItem mediaVideoItem = (MediaVideoItem) this;
        clipSettings.clipPath = mediaVideoItem.getFilename();
        clipSettings.fileType = this.mMANativeHelper.getMediaItemFileType(mediaVideoItem.getFileType());
        clipSettings.beginCutTime = (int) mediaVideoItem.getBoundaryBeginTime();
        clipSettings.endCutTime = (int) mediaVideoItem.getBoundaryEndTime();
        clipSettings.mediaRendering = this.mMANativeHelper.getMediaItemRenderingMode(mediaVideoItem.getRenderingMode());
        return clipSettings;
    }

    public abstract long getDuration();

    public Effect getEffect(String str) {
        for (Effect effect : this.mEffects) {
            if (effect.getId().equals(str)) {
                return effect;
            }
        }
        return null;
    }

    public Transition getEndTransition() {
        return this.mEndTransition;
    }

    public abstract int getFileType();

    public String getFilename() {
        return this.mFilename;
    }

    public String getGeneratedImageClip() {
        return this.mGeneratedImageClip;
    }

    public abstract int getHeight();

    public String getId() {
        return this.mUniqueId;
    }

    public MediaArtistNativeHelper getNativeContext() {
        return this.mMANativeHelper;
    }

    public Overlay getOverlay(String str) {
        for (Overlay overlay : this.mOverlays) {
            if (overlay.getId().equals(str)) {
                return overlay;
            }
        }
        return null;
    }

    public boolean getRegenerateClip() {
        return this.mRegenerateClip;
    }

    public int getRenderingMode() {
        return this.mRenderingMode;
    }

    public abstract Bitmap getThumbnail(int i2, int i3, long j2);

    public abstract void getThumbnailList(int i2, int i3, long j2, long j3, int i4, int[] iArr, GetThumbnailListCallback getThumbnailListCallback);

    public Bitmap[] getThumbnailList(int i2, int i3, long j2, long j3, int i4) {
        final Bitmap[] bitmapArr = new Bitmap[i4];
        int[] iArr = new int[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            iArr[i5] = i5;
        }
        getThumbnailList(i2, i3, j2, j3, i4, iArr, new GetThumbnailListCallback() { // from class: android.media.videoeditor.MediaItem.1
            @Override // android.media.videoeditor.MediaItem.GetThumbnailListCallback
            public void onThumbnail(Bitmap bitmap, int i6) {
                bitmapArr[i6] = bitmap;
            }
        });
        return bitmapArr;
    }

    public abstract long getTimelineDuration();

    public abstract int getWidth();

    public int hashCode() {
        return this.mUniqueId.hashCode();
    }

    public void initClipSettings(MediaArtistNativeHelper.ClipSettings clipSettings) {
        clipSettings.clipPath = null;
        clipSettings.clipDecodedPath = null;
        clipSettings.clipOriginalPath = null;
        clipSettings.fileType = 0;
        clipSettings.endCutTime = 0;
        clipSettings.beginCutTime = 0;
        clipSettings.beginCutPercent = 0;
        clipSettings.endCutPercent = 0;
        clipSettings.panZoomEnabled = false;
        clipSettings.panZoomPercentStart = 0;
        clipSettings.panZoomTopLeftXStart = 0;
        clipSettings.panZoomTopLeftYStart = 0;
        clipSettings.panZoomPercentEnd = 0;
        clipSettings.panZoomTopLeftXEnd = 0;
        clipSettings.panZoomTopLeftYEnd = 0;
        clipSettings.mediaRendering = 0;
        clipSettings.rgbWidth = 0;
        clipSettings.rgbHeight = 0;
    }

    public void invalidateBlankFrame() {
        if (this.mBlankFrameFilename == null || !new File(this.mBlankFrameFilename).exists()) {
            return;
        }
        new File(this.mBlankFrameFilename).delete();
        this.mBlankFrameFilename = null;
    }

    public abstract void invalidateTransitions(long j2, long j3);

    public abstract void invalidateTransitions(long j2, long j3, long j4, long j5);

    public boolean isOverlapping(long j2, long j3, long j4, long j5) {
        return j3 + j2 > j4 && j2 < j4 + j5;
    }

    public Effect removeEffect(String str) {
        for (Effect effect : this.mEffects) {
            if (effect.getId().equals(str)) {
                this.mMANativeHelper.setGeneratePreview(true);
                this.mEffects.remove(effect);
                invalidateTransitions(effect.getStartTime(), effect.getDuration());
                if (effect instanceof EffectKenBurns) {
                    if (this.mGeneratedImageClip != null) {
                        new File(this.mGeneratedImageClip).delete();
                        this.mGeneratedImageClip = null;
                    }
                    this.mRegenerateClip = false;
                }
                return effect;
            }
        }
        return null;
    }

    public Overlay removeOverlay(String str) {
        for (Overlay overlay : this.mOverlays) {
            if (overlay.getId().equals(str)) {
                this.mMANativeHelper.setGeneratePreview(true);
                this.mOverlays.remove(overlay);
                if (overlay instanceof OverlayFrame) {
                    ((OverlayFrame) overlay).invalidate();
                }
                invalidateTransitions(overlay.getStartTime(), overlay.getDuration());
                return overlay;
            }
        }
        return null;
    }

    public void setBeginTransition(Transition transition) {
        this.mBeginTransition = transition;
    }

    public void setEndTransition(Transition transition) {
        this.mEndTransition = transition;
    }

    public void setGeneratedImageClip(String str) {
        this.mGeneratedImageClip = str;
    }

    public void setRegenerateClip(boolean z2) {
        this.mRegenerateClip = z2;
    }

    public void setRenderingMode(int i2) {
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("Invalid Rendering Mode");
        }
        this.mMANativeHelper.setGeneratePreview(true);
        this.mRenderingMode = i2;
        Transition transition = this.mBeginTransition;
        if (transition != null) {
            transition.invalidate();
        }
        Transition transition2 = this.mEndTransition;
        if (transition2 != null) {
            transition2.invalidate();
        }
        Iterator<Overlay> it = this.mOverlays.iterator();
        while (it.hasNext()) {
            ((OverlayFrame) it.next()).invalidateGeneratedFiles();
        }
    }
}
