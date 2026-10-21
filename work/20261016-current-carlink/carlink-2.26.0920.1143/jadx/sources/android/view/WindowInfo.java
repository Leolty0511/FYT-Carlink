package android.view;

import android.graphics.Rect;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Pools;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class WindowInfo implements Parcelable {
    private static final int MAX_POOL_SIZE = 10;
    public IBinder activityToken;
    public List<IBinder> childTokens;
    public boolean focused;
    public boolean inPictureInPicture;
    public int layer;
    public IBinder parentToken;
    public CharSequence title;
    public IBinder token;
    public int type;
    private static final Pools.SynchronizedPool<WindowInfo> sPool = new Pools.SynchronizedPool<>(10);
    public static final Parcelable.Creator<WindowInfo> CREATOR = new Parcelable.Creator<WindowInfo>() { // from class: android.view.WindowInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WindowInfo createFromParcel(Parcel parcel) {
            WindowInfo windowInfoObtain = WindowInfo.obtain();
            windowInfoObtain.initFromParcel(parcel);
            return windowInfoObtain;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WindowInfo[] newArray(int i2) {
            return new WindowInfo[i2];
        }
    };
    public final Rect boundsInScreen = new Rect();
    public int accessibilityIdOfAnchor = -1;

    private WindowInfo() {
    }

    private void clear() {
        this.type = 0;
        this.layer = 0;
        this.token = null;
        this.parentToken = null;
        this.activityToken = null;
        this.focused = false;
        this.boundsInScreen.setEmpty();
        List<IBinder> list = this.childTokens;
        if (list != null) {
            list.clear();
        }
        this.inPictureInPicture = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initFromParcel(Parcel parcel) {
        this.type = parcel.readInt();
        this.layer = parcel.readInt();
        this.token = parcel.readStrongBinder();
        this.parentToken = parcel.readStrongBinder();
        this.activityToken = parcel.readStrongBinder();
        this.focused = parcel.readInt() == 1;
        this.boundsInScreen.readFromParcel(parcel);
        this.title = parcel.readCharSequence();
        this.accessibilityIdOfAnchor = parcel.readInt();
        this.inPictureInPicture = parcel.readInt() == 1;
        if (parcel.readInt() == 1) {
            if (this.childTokens == null) {
                this.childTokens = new ArrayList();
            }
            parcel.readBinderList(this.childTokens);
        }
    }

    public static WindowInfo obtain() {
        WindowInfo windowInfoAcquire = sPool.acquire();
        return windowInfoAcquire == null ? new WindowInfo() : windowInfoAcquire;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void recycle() {
        clear();
        sPool.release(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WindowInfo[title=");
        sb.append(this.title);
        sb.append(", type=");
        sb.append(this.type);
        sb.append(", layer=");
        sb.append(this.layer);
        sb.append(", token=");
        sb.append(this.token);
        sb.append(", bounds=");
        sb.append(this.boundsInScreen);
        sb.append(", parent=");
        sb.append(this.parentToken);
        sb.append(", focused=");
        sb.append(this.focused);
        sb.append(", children=");
        sb.append(this.childTokens);
        sb.append(", accessibility anchor=");
        return android.app.m.j(sb, this.accessibilityIdOfAnchor, ']');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.type);
        parcel.writeInt(this.layer);
        parcel.writeStrongBinder(this.token);
        parcel.writeStrongBinder(this.parentToken);
        parcel.writeStrongBinder(this.activityToken);
        parcel.writeInt(this.focused ? 1 : 0);
        this.boundsInScreen.writeToParcel(parcel, i2);
        parcel.writeCharSequence(this.title);
        parcel.writeInt(this.accessibilityIdOfAnchor);
        parcel.writeInt(this.inPictureInPicture ? 1 : 0);
        List<IBinder> list = this.childTokens;
        if (list == null || list.isEmpty()) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeBinderList(this.childTokens);
        }
    }

    public static WindowInfo obtain(WindowInfo windowInfo) {
        WindowInfo windowInfoObtain = obtain();
        windowInfoObtain.type = windowInfo.type;
        windowInfoObtain.layer = windowInfo.layer;
        windowInfoObtain.token = windowInfo.token;
        windowInfoObtain.parentToken = windowInfo.parentToken;
        windowInfoObtain.activityToken = windowInfo.activityToken;
        windowInfoObtain.focused = windowInfo.focused;
        windowInfoObtain.boundsInScreen.set(windowInfo.boundsInScreen);
        windowInfoObtain.title = windowInfo.title;
        windowInfoObtain.accessibilityIdOfAnchor = windowInfo.accessibilityIdOfAnchor;
        windowInfoObtain.inPictureInPicture = windowInfo.inPictureInPicture;
        List<IBinder> list = windowInfo.childTokens;
        if (list != null && !list.isEmpty()) {
            List<IBinder> list2 = windowInfoObtain.childTokens;
            if (list2 == null) {
                windowInfoObtain.childTokens = new ArrayList(windowInfo.childTokens);
            } else {
                list2.addAll(windowInfo.childTokens);
            }
        }
        return windowInfoObtain;
    }
}
