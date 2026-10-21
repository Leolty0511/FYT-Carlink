package android.app;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.IOException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class TaskThumbnail implements Parcelable {
    public static final Parcelable.Creator<TaskThumbnail> CREATOR = new Parcelable.Creator<TaskThumbnail>() { // from class: android.app.TaskThumbnail.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TaskThumbnail createFromParcel(Parcel parcel) {
            return new TaskThumbnail(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TaskThumbnail[] newArray(int i2) {
            return new TaskThumbnail[i2];
        }
    };
    public Bitmap mainThumbnail;
    public ParcelFileDescriptor thumbnailFileDescriptor;
    public TaskThumbnailInfo thumbnailInfo;

    public static class TaskThumbnailInfo implements Parcelable {
        private static final String ATTR_SCREEN_ORIENTATION = "task_thumbnailinfo_screen_orientation";
        private static final String ATTR_TASK_HEIGHT = "task_thumbnailinfo_task_height";
        public static final String ATTR_TASK_THUMBNAILINFO_PREFIX = "task_thumbnailinfo_";
        private static final String ATTR_TASK_WIDTH = "task_thumbnailinfo_task_width";
        public static final Parcelable.Creator<TaskThumbnailInfo> CREATOR = new Parcelable.Creator<TaskThumbnailInfo>() { // from class: android.app.TaskThumbnail.TaskThumbnailInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskThumbnailInfo createFromParcel(Parcel parcel) {
                return new TaskThumbnailInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TaskThumbnailInfo[] newArray(int i2) {
                return new TaskThumbnailInfo[i2];
            }
        };
        public int screenOrientation;
        public int taskHeight;
        public int taskWidth;

        public void copyFrom(TaskThumbnailInfo taskThumbnailInfo) {
            this.taskWidth = taskThumbnailInfo.taskWidth;
            this.taskHeight = taskThumbnailInfo.taskHeight;
            this.screenOrientation = taskThumbnailInfo.screenOrientation;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void readFromParcel(Parcel parcel) {
            this.taskWidth = parcel.readInt();
            this.taskHeight = parcel.readInt();
            this.screenOrientation = parcel.readInt();
        }

        public void reset() {
            this.taskWidth = 0;
            this.taskHeight = 0;
            this.screenOrientation = 0;
        }

        public void restoreFromXml(String str, String str2) {
            if (ATTR_TASK_WIDTH.equals(str)) {
                this.taskWidth = Integer.parseInt(str2);
            } else if (ATTR_TASK_HEIGHT.equals(str)) {
                this.taskHeight = Integer.parseInt(str2);
            } else if (ATTR_SCREEN_ORIENTATION.equals(str)) {
                this.screenOrientation = Integer.parseInt(str2);
            }
        }

        public void saveToXml(XmlSerializer xmlSerializer) throws IOException {
            xmlSerializer.attribute(null, ATTR_TASK_WIDTH, Integer.toString(this.taskWidth));
            xmlSerializer.attribute(null, ATTR_TASK_HEIGHT, Integer.toString(this.taskHeight));
            xmlSerializer.attribute(null, ATTR_SCREEN_ORIENTATION, Integer.toString(this.screenOrientation));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.taskWidth);
            parcel.writeInt(this.taskHeight);
            parcel.writeInt(this.screenOrientation);
        }

        public TaskThumbnailInfo() {
            this.screenOrientation = 0;
        }

        private TaskThumbnailInfo(Parcel parcel) {
            this.screenOrientation = 0;
            readFromParcel(parcel);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        ParcelFileDescriptor parcelFileDescriptor = this.thumbnailFileDescriptor;
        if (parcelFileDescriptor != null) {
            return parcelFileDescriptor.describeContents();
        }
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        if (parcel.readInt() != 0) {
            this.mainThumbnail = Bitmap.CREATOR.createFromParcel(parcel);
        } else {
            this.mainThumbnail = null;
        }
        if (parcel.readInt() != 0) {
            this.thumbnailFileDescriptor = ParcelFileDescriptor.CREATOR.createFromParcel(parcel);
        } else {
            this.thumbnailFileDescriptor = null;
        }
        if (parcel.readInt() != 0) {
            this.thumbnailInfo = TaskThumbnailInfo.CREATOR.createFromParcel(parcel);
        } else {
            this.thumbnailInfo = null;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mainThumbnail != null) {
            parcel.writeInt(1);
            this.mainThumbnail.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        if (this.thumbnailFileDescriptor != null) {
            parcel.writeInt(1);
            this.thumbnailFileDescriptor.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        if (this.thumbnailInfo == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.thumbnailInfo.writeToParcel(parcel, i2);
        }
    }

    public TaskThumbnail() {
    }

    private TaskThumbnail(Parcel parcel) {
        readFromParcel(parcel);
    }
}
