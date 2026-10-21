package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MediaImageItem extends MediaItem {
    private static final String TAG = "MediaImageItem";
    private static final Paint sResizePaint = new Paint(2);
    private final int mAspectRatio;
    private String mDecodedFilename;
    private long mDurationMs;
    private String mFileName;
    private int mGeneratedClipHeight;
    private int mGeneratedClipWidth;
    private final int mHeight;
    private final MediaArtistNativeHelper mMANativeHelper;
    private String mScaledFilename;
    private int mScaledHeight;
    private int mScaledWidth;
    private final VideoEditorImpl mVideoEditor;
    private final int mWidth;

    private MediaImageItem() {
        this(null, null, null, 0L, 0);
    }

    private List<Effect> adjustEffects() {
        ArrayList arrayList = new ArrayList();
        for (Effect effect : getAllEffects()) {
            long startTime = effect.getStartTime() > getDuration() ? 0L : effect.getStartTime();
            long duration = effect.getDuration() + startTime > getDuration() ? getDuration() - startTime : effect.getDuration();
            if (startTime != effect.getStartTime() || duration != effect.getDuration()) {
                effect.setStartTimeAndDuration(startTime, duration);
                arrayList.add(effect);
            }
        }
        return arrayList;
    }

    private List<Overlay> adjustOverlays() {
        ArrayList arrayList = new ArrayList();
        for (Overlay overlay : getAllOverlays()) {
            long startTime = overlay.getStartTime() > getDuration() ? 0L : overlay.getStartTime();
            long duration = overlay.getDuration() + startTime > getDuration() ? getDuration() - startTime : overlay.getDuration();
            if (startTime != overlay.getStartTime() || duration != overlay.getDuration()) {
                overlay.setStartTimeAndDuration(startTime, duration);
                arrayList.add(overlay);
            }
        }
        return arrayList;
    }

    private MediaArtistNativeHelper.ClipSettings getKenBurns(EffectKenBurns effectKenBurns) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        MediaArtistNativeHelper.ClipSettings clipSettings = new MediaArtistNativeHelper.ClipSettings();
        effectKenBurns.getKenBurnsSettings(rect, rect2);
        int width = getWidth();
        int height = getHeight();
        int i9 = rect.left;
        if (i9 < 0 || i9 > width || (i2 = rect.right) < 0 || i2 > width || (i3 = rect.top) < 0 || i3 > height || (i4 = rect.bottom) < 0 || i4 > height || (i5 = rect2.left) < 0 || i5 > width || (i6 = rect2.right) < 0 || i6 > width || (i7 = rect2.top) < 0 || i7 > height || (i8 = rect2.bottom) < 0 || i8 > height) {
            throw new IllegalArgumentException("Illegal arguments for KebBurns");
        }
        if ((width - (i2 - i9) == 0 || height - (i4 - i3) == 0) && (width - (i6 - i5) == 0 || height - (i8 - i7) == 0)) {
            setRegenerateClip(false);
            clipSettings.clipPath = getDecodedImageFileName();
            clipSettings.fileType = 5;
            clipSettings.beginCutTime = 0;
            clipSettings.endCutTime = (int) getTimelineDuration();
            clipSettings.beginCutPercent = 0;
            clipSettings.endCutPercent = 0;
            clipSettings.panZoomEnabled = false;
            clipSettings.panZoomPercentStart = 0;
            clipSettings.panZoomTopLeftXStart = 0;
            clipSettings.panZoomTopLeftYStart = 0;
            clipSettings.panZoomPercentEnd = 0;
            clipSettings.panZoomTopLeftXEnd = 0;
            clipSettings.panZoomTopLeftYEnd = 0;
            clipSettings.mediaRendering = this.mMANativeHelper.getMediaItemRenderingMode(getRenderingMode());
            clipSettings.rgbWidth = getScaledWidth();
            clipSettings.rgbHeight = getScaledHeight();
            return clipSettings;
        }
        int iWidth = (rect.width() * 1000) / width;
        int iWidth2 = (rect2.width() * 1000) / width;
        clipSettings.clipPath = getDecodedImageFileName();
        clipSettings.fileType = this.mMANativeHelper.getMediaItemFileType(getFileType());
        clipSettings.beginCutTime = 0;
        clipSettings.endCutTime = (int) getTimelineDuration();
        clipSettings.beginCutPercent = 0;
        clipSettings.endCutPercent = 0;
        clipSettings.panZoomEnabled = true;
        clipSettings.panZoomPercentStart = iWidth;
        clipSettings.panZoomTopLeftXStart = (rect.left * 1000) / width;
        clipSettings.panZoomTopLeftYStart = (rect.top * 1000) / height;
        clipSettings.panZoomPercentEnd = iWidth2;
        clipSettings.panZoomTopLeftXEnd = (rect2.left * 1000) / width;
        clipSettings.panZoomTopLeftYEnd = (rect2.top * 1000) / height;
        clipSettings.mediaRendering = this.mMANativeHelper.getMediaItemRenderingMode(getRenderingMode());
        clipSettings.rgbWidth = getScaledWidth();
        clipSettings.rgbHeight = getScaledHeight();
        return clipSettings;
    }

    private int getWidthByAspectRatioAndHeight(int i2, int i3) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    int i4 = i3 == 480 ? 640 : 0;
                    if (i3 == 720) {
                        return 960;
                    }
                    return i4;
                }
                if (i2 != 4) {
                    if (i2 != 5) {
                        throw new IllegalArgumentException("Illegal arguments for aspectRatio");
                    }
                    if (i3 == 144) {
                        return 176;
                    }
                } else if (i3 == 480) {
                    return 800;
                }
            } else {
                if (i3 == 360) {
                    return DisplayMetrics.DENSITY_XXXHIGH;
                }
                if (i3 == 480) {
                    return 854;
                }
                if (i3 == 720) {
                    return 1280;
                }
                if (i3 == 1080) {
                    return 1920;
                }
            }
        } else {
            if (i3 == 480) {
                return MediaProperties.HEIGHT_720;
            }
            if (i3 == 720) {
                return 1080;
            }
        }
        return 0;
    }

    private void invalidateBeginTransition(List<Effect> list, List<Overlay> list2) {
        Transition transition = this.mBeginTransition;
        if (transition == null || !transition.isGenerated()) {
            return;
        }
        long duration = this.mBeginTransition.getDuration();
        Iterator<Effect> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getStartTime() < duration) {
                this.mBeginTransition.invalidate();
                break;
            }
        }
        if (this.mBeginTransition.isGenerated()) {
            Iterator<Overlay> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (it2.next().getStartTime() < duration) {
                    this.mBeginTransition.invalidate();
                    return;
                }
            }
        }
    }

    private void invalidateEndTransition() {
        Transition transition = this.mEndTransition;
        if (transition == null || !transition.isGenerated()) {
            return;
        }
        long duration = this.mEndTransition.getDuration();
        for (Effect effect : getAllEffects()) {
            if (effect.getStartTime() + effect.getDuration() > this.mDurationMs - duration) {
                this.mEndTransition.invalidate();
                break;
            }
        }
        if (this.mEndTransition.isGenerated()) {
            for (Overlay overlay : getAllOverlays()) {
                if (overlay.getStartTime() + overlay.getDuration() > this.mDurationMs - duration) {
                    this.mEndTransition.invalidate();
                    return;
                }
            }
        }
    }

    public static int nextPowerOf2(int i2) {
        int i3 = i2 - 1;
        int i4 = i3 | (i3 >>> 16);
        int i5 = i4 | (i4 >>> 8);
        int i6 = i5 | (i5 >>> 4);
        int i7 = i6 | (i6 >>> 2);
        return (i7 | (i7 >>> 1)) + 1;
    }

    private Bitmap scaleImage(String str, int i2, int i3) throws IOException {
        float fFloor;
        float fCeil;
        Bitmap bitmapDecodeFile;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i4 = options.outWidth;
        int i5 = options.outHeight;
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "generateThumbnail: Input: " + i4 + "x" + i5 + ", resize to: " + i2 + "x" + i3);
        }
        if (i4 > i2 || i5 > i3) {
            float f2 = i4;
            fFloor = i2;
            float f3 = f2 / fFloor;
            float f4 = i5;
            fCeil = i3;
            float f5 = f4 / fCeil;
            if (f3 > f5) {
                float f6 = f4 / f3;
                fCeil = (float) (f6 < fCeil ? Math.ceil(f6) : Math.floor(f6));
            } else {
                float f7 = f2 / f5;
                fFloor = (float) (f7 > fFloor ? Math.floor(f7) : Math.ceil(f7));
            }
            int iNextPowerOf2 = nextPowerOf2((int) Math.ceil(Math.max(f2 / fFloor, f4 / fCeil)));
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inSampleSize = iNextPowerOf2;
            bitmapDecodeFile = BitmapFactory.decodeFile(str, options2);
        } else {
            fFloor = i2;
            fCeil = i3;
            bitmapDecodeFile = BitmapFactory.decodeFile(str);
        }
        if (bitmapDecodeFile == null) {
            Log.e(TAG, "generateThumbnail: Cannot decode image bytes");
            throw new IOException("Cannot decode file: " + this.mFilename);
        }
        int i6 = (int) fFloor;
        int i7 = (int) fCeil;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i6, i7, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawBitmap(bitmapDecodeFile, new Rect(0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight()), new Rect(0, 0, i6, i7), sResizePaint);
        canvas.setBitmap(null);
        bitmapDecodeFile.recycle();
        return bitmapCreateBitmap;
    }

    public MediaArtistNativeHelper.ClipSettings generateKenburnsClip(EffectKenBurns effectKenBurns) {
        MediaArtistNativeHelper.EditSettings editSettings = new MediaArtistNativeHelper.EditSettings();
        editSettings.clipSettingsArray = new MediaArtistNativeHelper.ClipSettings[1];
        MediaArtistNativeHelper.ClipSettings clipSettings = new MediaArtistNativeHelper.ClipSettings();
        initClipSettings(clipSettings);
        editSettings.clipSettingsArray[0] = getKenBurns(effectKenBurns);
        if (getGeneratedImageClip() == null && getRegenerateClip()) {
            String strGenerateKenBurnsClip = this.mMANativeHelper.generateKenBurnsClip(editSettings, this);
            setGeneratedImageClip(strGenerateKenBurnsClip);
            setRegenerateClip(false);
            clipSettings.clipPath = strGenerateKenBurnsClip;
            clipSettings.fileType = 0;
            this.mGeneratedClipHeight = getScaledHeight();
            this.mGeneratedClipWidth = getWidthByAspectRatioAndHeight(this.mVideoEditor.getAspectRatio(), this.mGeneratedClipHeight);
        } else if (getGeneratedImageClip() == null) {
            clipSettings.clipPath = getDecodedImageFileName();
            clipSettings.fileType = 5;
            clipSettings.rgbWidth = getScaledWidth();
            clipSettings.rgbHeight = getScaledHeight();
        } else {
            clipSettings.clipPath = getGeneratedImageClip();
            clipSettings.fileType = 0;
        }
        clipSettings.mediaRendering = this.mMANativeHelper.getMediaItemRenderingMode(getRenderingMode());
        clipSettings.beginCutTime = 0;
        clipSettings.endCutTime = (int) getTimelineDuration();
        return clipSettings;
    }

    @Override // android.media.videoeditor.MediaItem
    public int getAspectRatio() {
        return this.mAspectRatio;
    }

    public String getDecodedImageFileName() {
        return this.mDecodedFilename;
    }

    @Override // android.media.videoeditor.MediaItem
    public long getDuration() {
        return this.mDurationMs;
    }

    @Override // android.media.videoeditor.MediaItem
    public int getFileType() {
        if (this.mFilename.endsWith(".jpg") || this.mFilename.endsWith(".jpeg") || this.mFilename.endsWith(".JPG") || this.mFilename.endsWith(".JPEG")) {
            return 5;
        }
        return (this.mFilename.endsWith(".png") || this.mFilename.endsWith(".PNG")) ? 8 : 255;
    }

    public int getGeneratedClipHeight() {
        return this.mGeneratedClipHeight;
    }

    public int getGeneratedClipWidth() {
        return this.mGeneratedClipWidth;
    }

    @Override // android.media.videoeditor.MediaItem
    public String getGeneratedImageClip() {
        return super.getGeneratedImageClip();
    }

    @Override // android.media.videoeditor.MediaItem
    public int getHeight() {
        return this.mHeight;
    }

    public MediaArtistNativeHelper.ClipSettings getImageClipProperties() {
        EffectKenBurns effectKenBurns;
        boolean z2;
        MediaArtistNativeHelper.ClipSettings clipSettings = new MediaArtistNativeHelper.ClipSettings();
        Iterator<Effect> it = getAllEffects().iterator();
        while (true) {
            if (!it.hasNext()) {
                effectKenBurns = null;
                z2 = false;
                break;
            }
            Effect next = it.next();
            if (next instanceof EffectKenBurns) {
                effectKenBurns = (EffectKenBurns) next;
                z2 = true;
                break;
            }
        }
        if (z2) {
            return generateKenburnsClip(effectKenBurns);
        }
        initClipSettings(clipSettings);
        clipSettings.clipPath = getDecodedImageFileName();
        clipSettings.fileType = 5;
        clipSettings.beginCutTime = 0;
        clipSettings.endCutTime = (int) getTimelineDuration();
        clipSettings.mediaRendering = this.mMANativeHelper.getMediaItemRenderingMode(getRenderingMode());
        clipSettings.rgbWidth = getScaledWidth();
        clipSettings.rgbHeight = getScaledHeight();
        return clipSettings;
    }

    public int getScaledHeight() {
        return this.mScaledHeight;
    }

    public String getScaledImageFileName() {
        return this.mScaledFilename;
    }

    public int getScaledWidth() {
        return this.mScaledWidth;
    }

    @Override // android.media.videoeditor.MediaItem
    public Bitmap getThumbnail(int i2, int i3, long j2) {
        return getGeneratedImageClip() != null ? this.mMANativeHelper.getPixels(getGeneratedImageClip(), i2, i3, j2, 0) : scaleImage(this.mFilename, i2, i3);
    }

    @Override // android.media.videoeditor.MediaItem
    public void getThumbnailList(int i2, int i3, long j2, long j3, int i4, int[] iArr, MediaItem.GetThumbnailListCallback getThumbnailListCallback) throws IOException {
        if (getGeneratedImageClip() == null) {
            Bitmap bitmapScaleImage = scaleImage(this.mFilename, i2, i3);
            for (int i5 : iArr) {
                getThumbnailListCallback.onThumbnail(bitmapScaleImage, i5);
            }
            return;
        }
        if (j2 > j3) {
            throw new IllegalArgumentException("Start time is greater than end time");
        }
        if (j3 > this.mDurationMs) {
            throw new IllegalArgumentException("End time is greater than file duration");
        }
        this.mMANativeHelper.getPixelsList(getGeneratedImageClip(), i2, i3, j2, j3, i4, iArr, getThumbnailListCallback, 0);
    }

    @Override // android.media.videoeditor.MediaItem
    public long getTimelineDuration() {
        return this.mDurationMs;
    }

    @Override // android.media.videoeditor.MediaItem
    public int getWidth() {
        return this.mWidth;
    }

    public void invalidate() {
        if (getGeneratedImageClip() != null) {
            new File(getGeneratedImageClip()).delete();
            setGeneratedImageClip(null);
            setRegenerateClip(true);
        }
        String str = this.mScaledFilename;
        if (str != null) {
            if (this.mFileName != str) {
                new File(this.mScaledFilename).delete();
            }
            this.mScaledFilename = null;
        }
        if (this.mDecodedFilename != null) {
            new File(this.mDecodedFilename).delete();
            this.mDecodedFilename = null;
        }
    }

    @Override // android.media.videoeditor.MediaItem
    public void invalidateTransitions(long j2, long j3) {
        Transition transition = this.mBeginTransition;
        if (transition != null && isOverlapping(j2, j3, 0L, transition.getDuration())) {
            this.mBeginTransition.invalidate();
        }
        Transition transition2 = this.mEndTransition;
        if (transition2 != null) {
            long duration = transition2.getDuration();
            if (isOverlapping(j2, j3, getDuration() - duration, duration)) {
                this.mEndTransition.invalidate();
            }
        }
    }

    public void setDuration(long j2) {
        if (j2 == this.mDurationMs) {
            return;
        }
        this.mMANativeHelper.setGeneratePreview(true);
        invalidateEndTransition();
        this.mDurationMs = j2;
        adjustTransitions();
        invalidateBeginTransition(adjustEffects(), adjustOverlays());
        invalidateEndTransition();
        if (getGeneratedImageClip() != null) {
            new File(getGeneratedImageClip()).delete();
            setGeneratedImageClip(null);
            super.setRegenerateClip(true);
        }
        this.mVideoEditor.updateTimelineDuration();
    }

    @Override // android.media.videoeditor.MediaItem
    public void setGeneratedImageClip(String str) {
        super.setGeneratedImageClip(str);
        this.mGeneratedClipHeight = getScaledHeight();
        this.mGeneratedClipWidth = getWidthByAspectRatioAndHeight(this.mVideoEditor.getAspectRatio(), this.mGeneratedClipHeight);
    }

    public MediaImageItem(VideoEditor videoEditor, String str, String str2, long j2, int i2) throws IOException {
        Bitmap bitmapScaleImage;
        super(videoEditor, str, str2, i2);
        VideoEditorImpl videoEditorImpl = (VideoEditorImpl) videoEditor;
        MediaArtistNativeHelper nativeContext = videoEditorImpl.getNativeContext();
        this.mMANativeHelper = nativeContext;
        this.mVideoEditor = videoEditorImpl;
        try {
            int fileType = nativeContext.getFileType(nativeContext.getMediaProperties(str2).fileType);
            if (fileType != 5 && fileType != 8) {
                throw new IllegalArgumentException("Unsupported Input File Type");
            }
            this.mFileName = str2;
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str2, options);
            int i3 = options.outWidth;
            this.mWidth = i3;
            int i4 = options.outHeight;
            this.mHeight = i4;
            this.mDurationMs = j2;
            this.mDecodedFilename = String.format(nativeContext.getProjectPath() + "/decoded" + getId() + ".rgb", new Object[0]);
            try {
                int aspectRatio = nativeContext.getAspectRatio(i3, i4);
                this.mAspectRatio = aspectRatio;
                this.mGeneratedClipHeight = 0;
                this.mGeneratedClipWidth = 0;
                Pair<Integer, Integer>[] supportedResolutions = MediaProperties.getSupportedResolutions(aspectRatio);
                Pair<Integer, Integer> pair = supportedResolutions[supportedResolutions.length - 1];
                if (i3 > pair.first.intValue() || i4 > pair.second.intValue()) {
                    bitmapScaleImage = scaleImage(str2, pair.first.intValue(), pair.second.intValue());
                    this.mScaledFilename = String.format(nativeContext.getProjectPath() + "/scaled" + getId() + ".JPG", new Object[0]);
                    if (!new File(this.mScaledFilename).exists()) {
                        this.mRegenerateClip = true;
                        FileOutputStream fileOutputStream = new FileOutputStream(this.mScaledFilename);
                        bitmapScaleImage.compress(Bitmap.CompressFormat.JPEG, 50, fileOutputStream);
                        fileOutputStream.close();
                    }
                    this.mScaledWidth = (bitmapScaleImage.getWidth() >> 1) << 1;
                    this.mScaledHeight = (bitmapScaleImage.getHeight() >> 1) << 1;
                } else {
                    this.mScaledFilename = str2;
                    this.mScaledWidth = (i3 >> 1) << 1;
                    this.mScaledHeight = (i4 >> 1) << 1;
                    bitmapScaleImage = BitmapFactory.decodeFile(str2);
                }
                int i5 = this.mScaledWidth;
                int i6 = this.mScaledHeight;
                if (!new File(this.mDecodedFilename).exists()) {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(this.mDecodedFilename);
                    DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream2);
                    int[] iArr = new int[i5];
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i5 * 4);
                    byte[] bArrArray = byteBufferAllocate.array();
                    int i7 = 0;
                    while (i7 < i6) {
                        byte[] bArr = bArrArray;
                        bitmapScaleImage.getPixels(iArr, 0, this.mScaledWidth, 0, i7, i5, 1);
                        byteBufferAllocate.asIntBuffer().put(iArr, 0, i5);
                        dataOutputStream.write(bArr);
                        i7++;
                        bArrArray = bArr;
                    }
                    fileOutputStream2.close();
                }
                bitmapScaleImage.recycle();
            } catch (IllegalArgumentException unused) {
                throw new IllegalArgumentException("Null width and height");
            }
        } catch (Exception unused2) {
            throw new IllegalArgumentException("Unsupported file or file not found: " + str2);
        }
    }

    @Override // android.media.videoeditor.MediaItem
    public void invalidateTransitions(long j2, long j3, long j4, long j5) {
        Transition transition = this.mBeginTransition;
        if (transition != null) {
            long duration = transition.getDuration();
            boolean zIsOverlapping = isOverlapping(j2, j3, 0L, duration);
            boolean zIsOverlapping2 = isOverlapping(j4, j5, 0L, duration);
            if (zIsOverlapping2 != zIsOverlapping) {
                this.mBeginTransition.invalidate();
            } else if (zIsOverlapping2 && (j2 != j4 || j2 + j3 <= duration || j4 + j5 <= duration)) {
                this.mBeginTransition.invalidate();
            }
        }
        Transition transition2 = this.mEndTransition;
        if (transition2 != null) {
            long duration2 = transition2.getDuration();
            boolean zIsOverlapping3 = isOverlapping(j2, j3, this.mDurationMs - duration2, duration2);
            boolean zIsOverlapping4 = isOverlapping(j4, j5, this.mDurationMs - duration2, duration2);
            if (zIsOverlapping4 != zIsOverlapping3) {
                this.mEndTransition.invalidate();
                return;
            }
            if (zIsOverlapping4) {
                if (j2 + j3 == j4 + j5) {
                    long j6 = this.mDurationMs;
                    if (j2 <= j6 - duration2 && j4 <= j6 - duration2) {
                        return;
                    }
                }
                this.mEndTransition.invalidate();
            }
        }
    }
}
