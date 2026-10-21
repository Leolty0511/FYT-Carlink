package android.graphics.drawable;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.service.notification.ZenModeConfig;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.IccCardConstants;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Icon implements Parcelable {
    public static final int MIN_ASHMEM_ICON_SIZE = 131072;
    private static final String TAG = "Icon";
    public static final int TYPE_ADAPTIVE_BITMAP = 5;
    public static final int TYPE_BITMAP = 1;
    public static final int TYPE_DATA = 3;
    public static final int TYPE_RESOURCE = 2;
    public static final int TYPE_URI = 4;
    private static final int VERSION_STREAM_SERIALIZER = 1;
    private int mInt1;
    private int mInt2;
    private Object mObj1;
    private String mString1;
    private ColorStateList mTintList;
    private PorterDuff.Mode mTintMode;
    private final int mType;
    static final PorterDuff.Mode DEFAULT_TINT_MODE = Drawable.DEFAULT_TINT_MODE;
    public static final Parcelable.Creator<Icon> CREATOR = new Parcelable.Creator<Icon>() { // from class: android.graphics.drawable.Icon.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Icon createFromParcel(Parcel parcel) {
            return new Icon(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Icon[] newArray(int i2) {
            return new Icon[i2];
        }
    };

    public interface OnDrawableLoadedListener {
        void onDrawableLoaded(Drawable drawable);
    }

    public static Icon createFromStream(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        if (dataInputStream.readInt() < 1) {
            return null;
        }
        byte b2 = dataInputStream.readByte();
        if (b2 == 1) {
            return createWithBitmap(BitmapFactory.decodeStream(dataInputStream));
        }
        if (b2 == 2) {
            return createWithResource(dataInputStream.readUTF(), dataInputStream.readInt());
        }
        if (b2 == 3) {
            int i2 = dataInputStream.readInt();
            byte[] bArr = new byte[i2];
            dataInputStream.read(bArr, 0, i2);
            return createWithData(bArr, 0, i2);
        }
        if (b2 == 4) {
            return createWithContentUri(dataInputStream.readUTF());
        }
        if (b2 != 5) {
            return null;
        }
        return createWithAdaptiveBitmap(BitmapFactory.decodeStream(dataInputStream));
    }

    public static Icon createWithAdaptiveBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            throw new IllegalArgumentException("Bitmap must not be null.");
        }
        Icon icon = new Icon(5);
        icon.setBitmap(bitmap);
        return icon;
    }

    public static Icon createWithBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            throw new IllegalArgumentException("Bitmap must not be null.");
        }
        Icon icon = new Icon(1);
        icon.setBitmap(bitmap);
        return icon;
    }

    public static Icon createWithContentUri(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Uri must not be null.");
        }
        Icon icon = new Icon(4);
        icon.mString1 = str;
        return icon;
    }

    public static Icon createWithData(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            throw new IllegalArgumentException("Data must not be null.");
        }
        Icon icon = new Icon(3);
        icon.mObj1 = bArr;
        icon.mInt1 = i3;
        icon.mInt2 = i2;
        return icon;
    }

    public static Icon createWithFilePath(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Path must not be null.");
        }
        Icon icon = new Icon(4);
        icon.mString1 = str;
        return icon;
    }

    public static Icon createWithResource(Context context, int i2) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null.");
        }
        Icon icon = new Icon(2);
        icon.mInt1 = i2;
        icon.mString1 = context.getPackageName();
        return icon;
    }

    private Drawable loadDrawableInner(Context context) throws Throwable {
        InputStream inputStreamOpenInputStream;
        int i2 = this.mType;
        if (i2 == 1) {
            return new BitmapDrawable(context.getResources(), getBitmap());
        }
        if (i2 == 2) {
            if (getResources() == null) {
                String resPackage = getResPackage();
                if (TextUtils.isEmpty(resPackage)) {
                    resPackage = context.getPackageName();
                }
                if (ZenModeConfig.SYSTEM_AUTHORITY.equals(resPackage)) {
                    this.mObj1 = Resources.getSystem();
                } else {
                    PackageManager packageManager = context.getPackageManager();
                    try {
                        ApplicationInfo applicationInfo = packageManager.getApplicationInfo(resPackage, 8192);
                        if (applicationInfo != null) {
                            this.mObj1 = packageManager.getResourcesForApplication(applicationInfo);
                        }
                    } catch (PackageManager.NameNotFoundException e2) {
                        Log.e(TAG, String.format("Unable to find pkg=%s for icon %s", resPackage, this), e2);
                    }
                }
            }
            try {
                return getResources().getDrawable(getResId(), context.getTheme());
            } catch (RuntimeException e3) {
                Log.e(TAG, String.format("Unable to load resource 0x%08x from pkg=%s", Integer.valueOf(getResId()), getResPackage()), e3);
            }
        } else {
            if (i2 == 3) {
                return new BitmapDrawable(context.getResources(), BitmapFactory.decodeByteArray(getDataBytes(), getDataOffset(), getDataLength()));
            }
            if (i2 == 4) {
                Uri uri = getUri();
                String scheme = uri.getScheme();
                if ("content".equals(scheme) || ContentResolver.SCHEME_FILE.equals(scheme)) {
                    try {
                        inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                    } catch (Exception e4) {
                        Log.w(TAG, "Unable to load image from URI: " + uri, e4);
                        inputStreamOpenInputStream = null;
                    }
                } else {
                    try {
                        inputStreamOpenInputStream = new FileInputStream(new File(this.mString1));
                    } catch (FileNotFoundException e5) {
                        Log.w(TAG, "Unable to load image from path: " + uri, e5);
                        inputStreamOpenInputStream = null;
                    }
                }
                if (inputStreamOpenInputStream != null) {
                    return new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(inputStreamOpenInputStream));
                }
            } else if (i2 == 5) {
                return new AdaptiveIconDrawable((Drawable) null, new BitmapDrawable(context.getResources(), getBitmap()));
            }
        }
        return null;
    }

    public static Bitmap scaleDownIfNecessary(Bitmap bitmap, int i2, int i3) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= i2 && height <= i3) {
            return bitmap;
        }
        float f2 = width;
        float f3 = height;
        float fMin = Math.min(i2 / f2, i3 / f3);
        return Bitmap.createScaledBitmap(bitmap, (int) (f2 * fMin), (int) (fMin * f3), true);
    }

    private void setBitmap(Bitmap bitmap) {
        this.mObj1 = bitmap;
    }

    private static final String typeToString(int i2) {
        if (i2 == 1) {
            return "BITMAP";
        }
        if (i2 == 2) {
            return "RESOURCE";
        }
        if (i2 == 3) {
            return "DATA";
        }
        if (i2 != 4) {
            return i2 != 5 ? IccCardConstants.INTENT_VALUE_ICC_UNKNOWN : "BITMAP_MASKABLE";
        }
        return "URI";
    }

    public void convertToAshmem() {
        int i2 = this.mType;
        if ((i2 == 1 || i2 == 5) && getBitmap().isMutable() && getBitmap().getAllocationByteCount() >= 131072) {
            setBitmap(getBitmap().createAshmemBitmap());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        int i2 = this.mType;
        return (i2 == 1 || i2 == 5 || i2 == 3) ? 1 : 0;
    }

    public Bitmap getBitmap() {
        int i2 = this.mType;
        if (i2 == 1 || i2 == 5) {
            return (Bitmap) this.mObj1;
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    public byte[] getDataBytes() {
        byte[] bArr;
        if (this.mType == 3) {
            synchronized (this) {
                bArr = (byte[]) this.mObj1;
            }
            return bArr;
        }
        throw new IllegalStateException("called getDataBytes() on " + this);
    }

    public int getDataLength() {
        int i2;
        if (this.mType == 3) {
            synchronized (this) {
                i2 = this.mInt1;
            }
            return i2;
        }
        throw new IllegalStateException("called getDataLength() on " + this);
    }

    public int getDataOffset() {
        int i2;
        if (this.mType == 3) {
            synchronized (this) {
                i2 = this.mInt2;
            }
            return i2;
        }
        throw new IllegalStateException("called getDataOffset() on " + this);
    }

    public int getResId() {
        if (this.mType == 2) {
            return this.mInt1;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public String getResPackage() {
        if (this.mType == 2) {
            return this.mString1;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public Resources getResources() {
        if (this.mType == 2) {
            return (Resources) this.mObj1;
        }
        throw new IllegalStateException("called getResources() on " + this);
    }

    public int getType() {
        return this.mType;
    }

    public Uri getUri() {
        return Uri.parse(getUriString());
    }

    public String getUriString() {
        if (this.mType == 4) {
            return this.mString1;
        }
        throw new IllegalStateException("called getUriString() on " + this);
    }

    public boolean hasTint() {
        return (this.mTintList == null && this.mTintMode == DEFAULT_TINT_MODE) ? false : true;
    }

    public Drawable loadDrawable(Context context) throws Throwable {
        Drawable drawableLoadDrawableInner = loadDrawableInner(context);
        if (drawableLoadDrawableInner != null && (this.mTintList != null || this.mTintMode != DEFAULT_TINT_MODE)) {
            drawableLoadDrawableInner.mutate();
            drawableLoadDrawableInner.setTintList(this.mTintList);
            drawableLoadDrawableInner.setTintMode(this.mTintMode);
        }
        return drawableLoadDrawableInner;
    }

    public Drawable loadDrawableAsUser(Context context, int i2) {
        if (this.mType == 2) {
            String resPackage = getResPackage();
            if (TextUtils.isEmpty(resPackage)) {
                resPackage = context.getPackageName();
            }
            if (getResources() == null && !getResPackage().equals(ZenModeConfig.SYSTEM_AUTHORITY)) {
                try {
                    this.mObj1 = context.getPackageManager().getResourcesForApplicationAsUser(resPackage, i2);
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.e(TAG, String.format("Unable to find pkg=%s user=%d", getResPackage(), Integer.valueOf(i2)), e2);
                }
            }
        }
        return loadDrawable(context);
    }

    public void loadDrawableAsync(Context context, Message message) {
        if (message.getTarget() == null) {
            throw new IllegalArgumentException("callback message must have a target handler");
        }
        new LoadDrawableTask(context, message).runAsync();
    }

    public boolean sameAs(Icon icon) {
        if (icon == this) {
            return true;
        }
        if (this.mType != icon.getType()) {
            return false;
        }
        int i2 = this.mType;
        if (i2 != 1) {
            if (i2 == 2) {
                return getResId() == icon.getResId() && Objects.equals(getResPackage(), icon.getResPackage());
            }
            if (i2 == 3) {
                return getDataLength() == icon.getDataLength() && getDataOffset() == icon.getDataOffset() && Arrays.equals(getDataBytes(), icon.getDataBytes());
            }
            if (i2 == 4) {
                return Objects.equals(getUriString(), icon.getUriString());
            }
            if (i2 != 5) {
                return false;
            }
        }
        return getBitmap() == icon.getBitmap();
    }

    public Icon setTint(int i2) {
        return setTintList(ColorStateList.valueOf(i2));
    }

    public Icon setTintList(ColorStateList colorStateList) {
        this.mTintList = colorStateList;
        return this;
    }

    public Icon setTintMode(PorterDuff.Mode mode) {
        this.mTintMode = mode;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0076  */
    public String toString() {
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(typeToString(this.mType));
        int i2 = this.mType;
        if (i2 == 1) {
            sb.append(" size=");
            sb.append(getBitmap().getWidth());
            sb.append("x");
            sb.append(getBitmap().getHeight());
        } else if (i2 == 2) {
            sb.append(" pkg=");
            sb.append(getResPackage());
            sb.append(" id=");
            sb.append(String.format("0x%08x", Integer.valueOf(getResId())));
        } else if (i2 == 3) {
            sb.append(" len=");
            sb.append(getDataLength());
            if (getDataOffset() != 0) {
                sb.append(" off=");
                sb.append(getDataOffset());
            }
        } else if (i2 == 4) {
            sb.append(" uri=");
            sb.append(getUriString());
        } else if (i2 == 5) {
            sb.append(" size=");
            sb.append(getBitmap().getWidth());
            sb.append("x");
            sb.append(getBitmap().getHeight());
        }
        if (this.mTintList != null) {
            sb.append(" tint=");
            int[] colors = this.mTintList.getColors();
            int length = colors.length;
            String str = "";
            int i3 = 0;
            while (i3 < length) {
                sb.append(String.format("%s0x%08x", str, Integer.valueOf(colors[i3])));
                i3++;
                str = "|";
            }
        }
        if (this.mTintMode != DEFAULT_TINT_MODE) {
            sb.append(" mode=");
            sb.append(this.mTintMode);
        }
        sb.append(")");
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mType);
        int i3 = this.mType;
        if (i3 == 1) {
            getBitmap();
            getBitmap().writeToParcel(parcel, i2);
        } else if (i3 == 2) {
            parcel.writeString(getResPackage());
            parcel.writeInt(getResId());
        } else if (i3 == 3) {
            parcel.writeInt(getDataLength());
            parcel.writeBlob(getDataBytes(), getDataOffset(), getDataLength());
        } else if (i3 == 4) {
            parcel.writeString(getUriString());
        } else if (i3 == 5) {
            getBitmap();
            getBitmap().writeToParcel(parcel, i2);
        }
        if (this.mTintList == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.mTintList.writeToParcel(parcel, i2);
        }
        parcel.writeInt(PorterDuff.modeToInt(this.mTintMode));
    }

    public void writeToStream(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeInt(1);
        dataOutputStream.writeByte(this.mType);
        int i2 = this.mType;
        if (i2 != 1) {
            if (i2 == 2) {
                dataOutputStream.writeUTF(getResPackage());
                dataOutputStream.writeInt(getResId());
                return;
            } else if (i2 == 3) {
                dataOutputStream.writeInt(getDataLength());
                dataOutputStream.write(getDataBytes(), getDataOffset(), getDataLength());
                return;
            } else if (i2 == 4) {
                dataOutputStream.writeUTF(getUriString());
                return;
            } else if (i2 != 5) {
                return;
            }
        }
        getBitmap().compress(Bitmap.CompressFormat.PNG, 100, dataOutputStream);
    }

    private Icon(int i2) {
        this.mTintMode = DEFAULT_TINT_MODE;
        this.mType = i2;
    }

    public class LoadDrawableTask implements Runnable {
        final Context mContext;
        final Message mMessage;

        public LoadDrawableTask(Context context, Handler handler, final OnDrawableLoadedListener onDrawableLoadedListener) {
            this.mContext = context;
            this.mMessage = Message.obtain(handler, new Runnable() { // from class: android.graphics.drawable.Icon.LoadDrawableTask.1
                @Override // java.lang.Runnable
                public void run() {
                    onDrawableLoadedListener.onDrawableLoaded((Drawable) LoadDrawableTask.this.mMessage.obj);
                }
            });
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mMessage.obj = Icon.this.loadDrawable(this.mContext);
            this.mMessage.sendToTarget();
        }

        public void runAsync() {
            AsyncTask.THREAD_POOL_EXECUTOR.execute(this);
        }

        public LoadDrawableTask(Context context, Message message) {
            this.mContext = context;
            this.mMessage = message;
        }
    }

    public static Icon createWithContentUri(Uri uri) {
        if (uri != null) {
            Icon icon = new Icon(4);
            icon.mString1 = uri.toString();
            return icon;
        }
        throw new IllegalArgumentException("Uri must not be null.");
    }

    public void loadDrawableAsync(Context context, OnDrawableLoadedListener onDrawableLoadedListener, Handler handler) {
        new LoadDrawableTask(context, handler, onDrawableLoadedListener).runAsync();
    }

    private Icon(Parcel parcel) {
        this(parcel.readInt());
        int i2 = this.mType;
        if (i2 == 1) {
            this.mObj1 = Bitmap.CREATOR.createFromParcel(parcel);
        } else if (i2 == 2) {
            String string = parcel.readString();
            int i3 = parcel.readInt();
            this.mString1 = string;
            this.mInt1 = i3;
        } else if (i2 == 3) {
            int i4 = parcel.readInt();
            byte[] blob = parcel.readBlob();
            if (i4 == blob.length) {
                this.mInt1 = i4;
                this.mObj1 = blob;
            } else {
                throw new RuntimeException("internal unparceling error: blob length (" + blob.length + ") != expected length (" + i4 + ")");
            }
        } else if (i2 == 4) {
            this.mString1 = parcel.readString();
        } else {
            if (i2 != 5) {
                throw new RuntimeException("invalid Icon type in parcel: " + this.mType);
            }
            this.mObj1 = Bitmap.CREATOR.createFromParcel(parcel);
        }
        if (parcel.readInt() == 1) {
            this.mTintList = ColorStateList.CREATOR.createFromParcel(parcel);
        }
        this.mTintMode = PorterDuff.intToMode(parcel.readInt());
    }

    public static Icon createWithResource(Resources resources, int i2) {
        if (resources != null) {
            Icon icon = new Icon(2);
            icon.mInt1 = i2;
            icon.mString1 = resources.getResourcePackageName(i2);
            return icon;
        }
        throw new IllegalArgumentException("Resource must not be null.");
    }

    public void scaleDownIfNecessary(int i2, int i3) {
        int i4 = this.mType;
        if (i4 == 1 || i4 == 5) {
            setBitmap(scaleDownIfNecessary(getBitmap(), i2, i3));
        }
    }

    public static Icon createWithResource(String str, int i2) {
        if (str != null) {
            Icon icon = new Icon(2);
            icon.mInt1 = i2;
            icon.mString1 = str;
            return icon;
        }
        throw new IllegalArgumentException("Resource package name must not be null.");
    }
}
