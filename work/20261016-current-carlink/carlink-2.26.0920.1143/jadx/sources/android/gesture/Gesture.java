package android.gesture;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class Gesture implements Parcelable {
    private static final boolean BITMAP_RENDERING_ANTIALIAS = true;
    private static final boolean BITMAP_RENDERING_DITHER = true;
    private static final int BITMAP_RENDERING_WIDTH = 2;
    private static final long GESTURE_ID_BASE = System.currentTimeMillis();
    private static final AtomicInteger sGestureCount = new AtomicInteger(0);
    public static final Parcelable.Creator<Gesture> CREATOR = new Parcelable.Creator<Gesture>() { // from class: android.gesture.Gesture.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Gesture createFromParcel(Parcel parcel) {
            Gesture gestureDeserialize;
            long j2 = parcel.readLong();
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(parcel.createByteArray()));
            try {
                try {
                    gestureDeserialize = Gesture.deserialize(dataInputStream);
                    GestureUtils.closeStream(dataInputStream);
                } catch (IOException e2) {
                    Log.e(GestureConstants.LOG_TAG, "Error reading Gesture from parcel:", e2);
                    GestureUtils.closeStream(dataInputStream);
                    gestureDeserialize = null;
                }
                if (gestureDeserialize != null) {
                    gestureDeserialize.mGestureID = j2;
                }
                return gestureDeserialize;
            } catch (Throwable th) {
                GestureUtils.closeStream(dataInputStream);
                throw th;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Gesture[] newArray(int i2) {
            return new Gesture[i2];
        }
    };
    private final RectF mBoundingBox = new RectF();
    private final ArrayList<GestureStroke> mStrokes = new ArrayList<>();
    private long mGestureID = GESTURE_ID_BASE + ((long) sGestureCount.incrementAndGet());

    public static Gesture deserialize(DataInputStream dataInputStream) throws IOException {
        Gesture gesture = new Gesture();
        gesture.mGestureID = dataInputStream.readLong();
        int i2 = dataInputStream.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            gesture.addStroke(GestureStroke.deserialize(dataInputStream));
        }
        return gesture;
    }

    public void addStroke(GestureStroke gestureStroke) {
        this.mStrokes.add(gestureStroke);
        this.mBoundingBox.union(gestureStroke.boundingBox);
    }

    public Object clone() {
        Gesture gesture = new Gesture();
        RectF rectF = gesture.mBoundingBox;
        RectF rectF2 = this.mBoundingBox;
        rectF.set(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom);
        int size = this.mStrokes.size();
        for (int i2 = 0; i2 < size; i2++) {
            gesture.mStrokes.add((GestureStroke) this.mStrokes.get(i2).clone());
        }
        return gesture;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RectF getBoundingBox() {
        return this.mBoundingBox;
    }

    public long getID() {
        return this.mGestureID;
    }

    public float getLength() {
        ArrayList<GestureStroke> arrayList = this.mStrokes;
        int size = arrayList.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 = (int) (i2 + arrayList.get(i3).length);
        }
        return i2;
    }

    public ArrayList<GestureStroke> getStrokes() {
        return this.mStrokes;
    }

    public int getStrokesCount() {
        return this.mStrokes.size();
    }

    public void serialize(DataOutputStream dataOutputStream) throws IOException {
        ArrayList<GestureStroke> arrayList = this.mStrokes;
        int size = arrayList.size();
        dataOutputStream.writeLong(this.mGestureID);
        dataOutputStream.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).serialize(dataOutputStream);
        }
    }

    public void setID(long j2) {
        this.mGestureID = j2;
    }

    public Bitmap toBitmap(int i2, int i3, int i4, int i5, int i6) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f2 = i4;
        canvas.translate(f2, f2);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setColor(i6);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(2.0f);
        ArrayList<GestureStroke> arrayList = this.mStrokes;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            int i8 = i4 * 2;
            canvas.drawPath(arrayList.get(i7).toPath(i2 - i8, i3 - i8, i5), paint);
        }
        return bitmapCreateBitmap;
    }

    public Path toPath() {
        return toPath(null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        boolean z2;
        parcel.writeLong(this.mGestureID);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(32768);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            try {
                serialize(dataOutputStream);
                GestureUtils.closeStream(dataOutputStream);
                GestureUtils.closeStream(byteArrayOutputStream);
                z2 = true;
            } catch (IOException e2) {
                Log.e(GestureConstants.LOG_TAG, "Error writing Gesture to parcel:", e2);
                GestureUtils.closeStream(dataOutputStream);
                GestureUtils.closeStream(byteArrayOutputStream);
                z2 = false;
            }
            if (z2) {
                parcel.writeByteArray(byteArrayOutputStream.toByteArray());
            }
        } catch (Throwable th) {
            GestureUtils.closeStream(dataOutputStream);
            GestureUtils.closeStream(byteArrayOutputStream);
            throw th;
        }
    }

    public Path toPath(Path path) {
        if (path == null) {
            path = new Path();
        }
        ArrayList<GestureStroke> arrayList = this.mStrokes;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            path.addPath(arrayList.get(i2).getPath());
        }
        return path;
    }

    public Path toPath(int i2, int i3, int i4, int i5) {
        return toPath(null, i2, i3, i4, i5);
    }

    public Path toPath(Path path, int i2, int i3, int i4, int i5) {
        if (path == null) {
            path = new Path();
        }
        ArrayList<GestureStroke> arrayList = this.mStrokes;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            int i7 = i4 * 2;
            path.addPath(arrayList.get(i6).toPath(i2 - i7, i3 - i7, i5));
        }
        return path;
    }

    public Bitmap toBitmap(int i2, int i3, int i4, int i5) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setColor(i5);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(2.0f);
        Path path = toPath();
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        int i6 = i4 * 2;
        float fWidth = (i2 - i6) / rectF.width();
        float fHeight = (i3 - i6) / rectF.height();
        if (fWidth > fHeight) {
            fWidth = fHeight;
        }
        paint.setStrokeWidth(2.0f / fWidth);
        path.offset(((i2 - (rectF.width() * fWidth)) / 2.0f) + (-rectF.left), ((i3 - (rectF.height() * fWidth)) / 2.0f) + (-rectF.top));
        float f2 = i4;
        canvas.translate(f2, f2);
        canvas.scale(fWidth, fWidth);
        canvas.drawPath(path, paint);
        return bitmapCreateBitmap;
    }
}
