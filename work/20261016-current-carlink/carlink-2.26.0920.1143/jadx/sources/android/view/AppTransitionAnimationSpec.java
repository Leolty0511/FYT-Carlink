package android.view;

import android.graphics.GraphicBuffer;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class AppTransitionAnimationSpec implements Parcelable {
    public static final Parcelable.Creator<AppTransitionAnimationSpec> CREATOR = new Parcelable.Creator<AppTransitionAnimationSpec>() { // from class: android.view.AppTransitionAnimationSpec.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppTransitionAnimationSpec createFromParcel(Parcel parcel) {
            return new AppTransitionAnimationSpec(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppTransitionAnimationSpec[] newArray(int i2) {
            return new AppTransitionAnimationSpec[i2];
        }
    };
    public final GraphicBuffer buffer;
    public final Rect rect;
    public final int taskId;

    public AppTransitionAnimationSpec(int i2, GraphicBuffer graphicBuffer, Rect rect) {
        this.taskId = i2;
        this.rect = rect;
        this.buffer = graphicBuffer;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "{taskId: " + this.taskId + ", buffer: " + this.buffer + ", rect: " + this.rect + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.taskId);
        parcel.writeParcelable(this.rect, 0);
        parcel.writeParcelable(this.buffer, 0);
    }

    public AppTransitionAnimationSpec(Parcel parcel) {
        this.taskId = parcel.readInt();
        this.rect = (Rect) parcel.readParcelable(null);
        this.buffer = (GraphicBuffer) parcel.readParcelable(null);
    }
}
