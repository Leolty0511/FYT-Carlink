package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class TransitionAlpha extends Transition {
    private final int mBlendingPercent;
    private int mHeight;
    private final boolean mIsInvert;
    private final String mMaskFilename;
    private String mRGBMaskFile;
    private int mWidth;

    private TransitionAlpha() {
        this(null, null, null, 0L, 0, null, 0, false);
    }

    @Override // android.media.videoeditor.Transition
    public void generate() {
        super.generate();
    }

    public int getBlendingPercent() {
        return this.mBlendingPercent;
    }

    public String getMaskFilename() {
        return this.mMaskFilename;
    }

    public String getPNGMaskFilename() {
        return this.mRGBMaskFile;
    }

    public int getRGBFileHeight() {
        return this.mHeight;
    }

    public int getRGBFileWidth() {
        return this.mWidth;
    }

    public boolean isInvert() {
        return this.mIsInvert;
    }

    public TransitionAlpha(String str, MediaItem mediaItem, MediaItem mediaItem2, long j2, int i2, String str2, int i3, boolean z2) {
        super(str, mediaItem, mediaItem2, j2, i2);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        if (!new File(str2).exists()) {
            throw new IllegalArgumentException("File not Found " + str2);
        }
        BitmapFactory.decodeFile(str2, options);
        this.mWidth = options.outWidth;
        this.mHeight = options.outHeight;
        this.mRGBMaskFile = String.format(this.mNativeHelper.getProjectPath() + "/mask" + str + ".rgb", new Object[0]);
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream(this.mRGBMaskFile);
        } catch (IOException unused) {
        }
        DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
        if (fileOutputStream != null) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str2);
            int i4 = this.mWidth;
            int[] iArr = new int[i4];
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i4 * 4);
            byte[] bArrArray = byteBufferAllocate.array();
            int i5 = 0;
            while (i5 < this.mHeight) {
                int i6 = this.mWidth;
                int i7 = i5;
                byte[] bArr = bArrArray;
                bitmapDecodeFile.getPixels(iArr, 0, i6, 0, i5, i6, 1);
                byteBufferAllocate.asIntBuffer().put(iArr, 0, this.mWidth);
                try {
                    dataOutputStream.write(bArr);
                } catch (IOException unused2) {
                }
                i5 = i7 + 1;
                bArrArray = bArr;
            }
            bitmapDecodeFile.recycle();
            try {
                fileOutputStream.close();
            } catch (IOException unused3) {
            }
        }
        this.mMaskFilename = str2;
        this.mBlendingPercent = i3;
        this.mIsInvert = z2;
    }
}
