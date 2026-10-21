package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.Pair;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class OverlayFrame extends Overlay {
    private static final Paint sResizePaint = new Paint(2);
    private Bitmap mBitmap;
    private String mBitmapFileName;
    private String mFilename;
    private int mOFHeight;
    private int mOFWidth;
    private int mResizedRGBHeight;
    private int mResizedRGBWidth;

    private OverlayFrame() {
        this((MediaItem) null, (String) null, (String) null, 0L, 0L);
    }

    public void generateOverlayWithRenderingMode(MediaItem mediaItem, OverlayFrame overlayFrame, int i2, int i3) throws IOException {
        int width;
        int width2;
        int height;
        int i4;
        Rect rect;
        Rect rect2;
        int width3;
        int width4;
        int height2;
        int i5;
        int renderingMode = mediaItem.getRenderingMode();
        Bitmap bitmap = overlayFrame.getBitmap();
        int resizedRGBSizeHeight = overlayFrame.getResizedRGBSizeHeight();
        int resizedRGBSizeWidth = overlayFrame.getResizedRGBSizeWidth();
        if (resizedRGBSizeWidth == 0) {
            resizedRGBSizeWidth = bitmap.getWidth();
        }
        if (resizedRGBSizeHeight == 0) {
            resizedRGBSizeHeight = bitmap.getHeight();
        }
        if (resizedRGBSizeWidth == i3 && resizedRGBSizeHeight == i2 && new File(overlayFrame.getFilename()).exists()) {
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if (renderingMode == 0) {
            if (bitmap.getWidth() / bitmap.getHeight() > canvas.getWidth() / canvas.getHeight()) {
                int width5 = (canvas.getWidth() * bitmap.getHeight()) / bitmap.getWidth();
                int height3 = (canvas.getHeight() - width5) / 2;
                width2 = canvas.getWidth();
                height = width5 + height3;
                i4 = height3;
                width = 0;
            } else {
                int height4 = (canvas.getHeight() * bitmap.getWidth()) / bitmap.getHeight();
                width = (canvas.getWidth() - height4) / 2;
                width2 = width + height4;
                height = canvas.getHeight();
                i4 = 0;
            }
            Rect rect3 = new Rect(width, i4, width2, height);
            rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            rect2 = rect3;
        } else if (renderingMode == 1) {
            rect2 = new Rect(0, 0, canvas.getWidth(), canvas.getHeight());
            rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        } else {
            if (renderingMode != 2) {
                throw new IllegalStateException("Rendering mode: " + renderingMode);
            }
            if (bitmap.getWidth() / bitmap.getHeight() < canvas.getWidth() / canvas.getHeight()) {
                int width6 = (bitmap.getWidth() * canvas.getHeight()) / canvas.getWidth();
                int height5 = (bitmap.getHeight() - width6) / 2;
                width4 = bitmap.getWidth();
                height2 = width6 + height5;
                i5 = height5;
                width3 = 0;
            } else {
                int height6 = (bitmap.getHeight() * canvas.getWidth()) / canvas.getHeight();
                width3 = (bitmap.getWidth() - height6) / 2;
                width4 = width3 + height6;
                height2 = bitmap.getHeight();
                i5 = 0;
            }
            rect = new Rect(width3, i5, width4, height2);
            rect2 = new Rect(0, 0, canvas.getWidth(), canvas.getHeight());
        }
        canvas.drawBitmap(bitmap, rect, rect2, sResizePaint);
        canvas.setBitmap(null);
        String filename = overlayFrame.getFilename();
        if (filename != null) {
            new File(filename).delete();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(filename);
        DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
        int[] iArr = new int[i3];
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i3 * 4);
        byte[] bArrArray = byteBufferAllocate.array();
        int i6 = 0;
        while (i6 < i2) {
            byte[] bArr = bArrArray;
            bitmapCreateBitmap.getPixels(iArr, 0, i3, 0, i6, i3, 1);
            byteBufferAllocate.asIntBuffer().put(iArr, 0, i3);
            dataOutputStream.write(bArr);
            i6++;
            bArrArray = bArr;
        }
        fileOutputStream.flush();
        fileOutputStream.close();
        overlayFrame.setResizedRGBSize(i3, i2);
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public String getBitmapImageFileName() {
        return this.mBitmapFileName;
    }

    public String getFilename() {
        return this.mFilename;
    }

    public int getOverlayFrameHeight() {
        return this.mOFHeight;
    }

    public int getOverlayFrameWidth() {
        return this.mOFWidth;
    }

    public int getResizedRGBSizeHeight() {
        return this.mResizedRGBHeight;
    }

    public int getResizedRGBSizeWidth() {
        return this.mResizedRGBWidth;
    }

    public void invalidate() {
        Bitmap bitmap = this.mBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.mBitmap = null;
        }
        if (this.mFilename != null) {
            new File(this.mFilename).delete();
            this.mFilename = null;
        }
        if (this.mBitmapFileName != null) {
            new File(this.mBitmapFileName).delete();
            this.mBitmapFileName = null;
        }
    }

    public void invalidateGeneratedFiles() {
        if (this.mFilename != null) {
            new File(this.mFilename).delete();
            this.mFilename = null;
        }
        if (this.mBitmapFileName != null) {
            new File(this.mBitmapFileName).delete();
            this.mBitmapFileName = null;
        }
    }

    public String save(String str) {
        String str2 = this.mFilename;
        if (str2 != null) {
            return str2;
        }
        this.mBitmapFileName = str + "/Overlay" + getId() + ".png";
        if (!new File(this.mBitmapFileName).exists()) {
            FileOutputStream fileOutputStream = new FileOutputStream(this.mBitmapFileName);
            this.mBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        }
        this.mOFWidth = this.mBitmap.getWidth();
        this.mOFHeight = this.mBitmap.getHeight();
        this.mFilename = str + "/Overlay" + getId() + ".rgb";
        Pair<Integer, Integer>[] supportedResolutions = MediaProperties.getSupportedResolutions(super.getMediaItem().getNativeContext().nativeHelperGetAspectRatio());
        Pair<Integer, Integer> pair = supportedResolutions[supportedResolutions.length + (-1)];
        generateOverlayWithRenderingMode(super.getMediaItem(), this, pair.second.intValue(), pair.first.intValue());
        return this.mFilename;
    }

    public void setBitmap(Bitmap bitmap) {
        getMediaItem().getNativeContext().setGeneratePreview(true);
        invalidate();
        this.mBitmap = bitmap;
        if (this.mFilename != null) {
            new File(this.mFilename).delete();
            this.mFilename = null;
        }
        getMediaItem().invalidateTransitions(this.mStartTimeMs, this.mDurationMs);
    }

    public void setFilename(String str) {
        this.mFilename = str;
    }

    public void setOverlayFrameHeight(int i2) {
        this.mOFHeight = i2;
    }

    public void setOverlayFrameWidth(int i2) {
        this.mOFWidth = i2;
    }

    public void setResizedRGBSize(int i2, int i3) {
        this.mResizedRGBWidth = i2;
        this.mResizedRGBHeight = i3;
    }

    public OverlayFrame(MediaItem mediaItem, String str, Bitmap bitmap, long j2, long j3) {
        super(mediaItem, str, j2, j3);
        this.mBitmap = bitmap;
        this.mFilename = null;
        this.mBitmapFileName = null;
        this.mResizedRGBWidth = 0;
        this.mResizedRGBHeight = 0;
    }

    public OverlayFrame(MediaItem mediaItem, String str, String str2, long j2, long j3) {
        super(mediaItem, str, j2, j3);
        this.mBitmapFileName = str2;
        this.mBitmap = BitmapFactory.decodeFile(str2);
        this.mFilename = null;
        this.mResizedRGBWidth = 0;
        this.mResizedRGBHeight = 0;
    }
}
