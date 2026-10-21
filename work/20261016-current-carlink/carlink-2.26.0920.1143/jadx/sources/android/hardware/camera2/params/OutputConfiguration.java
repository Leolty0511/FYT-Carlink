package android.hardware.camera2.params;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.utils.HashCodeHelpers;
import android.hardware.camera2.utils.SurfaceUtils;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.Size;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class OutputConfiguration implements Parcelable {
    public static final Parcelable.Creator<OutputConfiguration> CREATOR = new Parcelable.Creator<OutputConfiguration>() { // from class: android.hardware.camera2.params.OutputConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OutputConfiguration createFromParcel(Parcel parcel) {
            try {
                return new OutputConfiguration(parcel);
            } catch (Exception e2) {
                Log.e(OutputConfiguration.TAG, "Exception creating OutputConfiguration from parcel", e2);
                return null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OutputConfiguration[] newArray(int i2) {
            return new OutputConfiguration[i2];
        }
    };
    private static final int MAX_SURFACES_COUNT = 2;
    public static final int ROTATION_0 = 0;
    public static final int ROTATION_180 = 2;
    public static final int ROTATION_270 = 3;
    public static final int ROTATION_90 = 1;
    public static final int SURFACE_GROUP_ID_NONE = -1;
    private static final String TAG = "OutputConfiguration";
    private final int SURFACE_TYPE_SURFACE_TEXTURE;
    private final int SURFACE_TYPE_SURFACE_VIEW;
    private final int SURFACE_TYPE_UNKNOWN;
    private final int mConfiguredDataspace;
    private final int mConfiguredFormat;
    private final int mConfiguredGenerationId;
    private final Size mConfiguredSize;
    private final boolean mIsDeferredConfig;
    private boolean mIsShared;
    private boolean mIsSprd;
    private final int mRotation;
    private final int mSurfaceGroupId;
    private final int mSurfaceType;
    private ArrayList<Surface> mSurfaces;

    public void addSurface(Surface surface) {
        Preconditions.checkNotNull(surface, "Surface must not be null");
        if (this.mSurfaces.contains(surface)) {
            throw new IllegalStateException("Surface is already added!");
        }
        if (this.mSurfaces.size() == 1 && !this.mIsShared) {
            throw new IllegalStateException("Cannot have 2 surfaces for a non-sharing configuration");
        }
        if (this.mSurfaces.size() + 1 > 2) {
            throw new IllegalArgumentException("Exceeds maximum number of surfaces");
        }
        Size surfaceSize = SurfaceUtils.getSurfaceSize(surface);
        if (!surfaceSize.equals(this.mConfiguredSize)) {
            Log.w(TAG, "Added surface size " + surfaceSize + " is different than pre-configured size " + this.mConfiguredSize + ", the pre-configured size will be used.");
        }
        if (this.mConfiguredFormat != SurfaceUtils.getSurfaceFormat(surface)) {
            throw new IllegalArgumentException("The format of added surface format doesn't match");
        }
        if (this.mConfiguredFormat != 34 && this.mConfiguredDataspace != SurfaceUtils.getSurfaceDataspace(surface)) {
            throw new IllegalArgumentException("The dataspace of added surface doesn't match");
        }
        this.mSurfaces.add(surface);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void enableSprd() {
        this.mIsSprd = true;
    }

    public void enableSurfaceSharing() {
        this.mIsShared = true;
    }

    public boolean equals(Object obj) {
        int i2;
        int i3;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof OutputConfiguration) {
            OutputConfiguration outputConfiguration = (OutputConfiguration) obj;
            if (this.mRotation == outputConfiguration.mRotation && this.mConfiguredSize.equals(outputConfiguration.mConfiguredSize) && (i2 = this.mConfiguredFormat) == (i3 = outputConfiguration.mConfiguredFormat) && this.mSurfaceGroupId == outputConfiguration.mSurfaceGroupId && this.mSurfaceType == outputConfiguration.mSurfaceType && this.mIsDeferredConfig == outputConfiguration.mIsDeferredConfig && this.mIsShared == outputConfiguration.mIsShared && i2 == i3 && this.mConfiguredDataspace == outputConfiguration.mConfiguredDataspace && this.mConfiguredGenerationId == outputConfiguration.mConfiguredGenerationId) {
                int iMin = Math.min(this.mSurfaces.size(), outputConfiguration.mSurfaces.size());
                for (int i4 = 0; i4 < iMin; i4++) {
                    if (this.mSurfaces.get(i4) != outputConfiguration.mSurfaces.get(i4)) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public int getRotation() {
        return this.mRotation;
    }

    public Surface getSurface() {
        if (this.mSurfaces.size() == 0) {
            return null;
        }
        return this.mSurfaces.get(0);
    }

    public int getSurfaceGroupId() {
        return this.mSurfaceGroupId;
    }

    public List<Surface> getSurfaces() {
        return Collections.unmodifiableList(this.mSurfaces);
    }

    public int hashCode() {
        return this.mIsDeferredConfig ? HashCodeHelpers.hashCode(this.mRotation, this.mConfiguredSize.hashCode(), this.mConfiguredFormat, this.mConfiguredDataspace, this.mSurfaceGroupId, this.mSurfaceType, this.mIsShared ? 1 : 0) : HashCodeHelpers.hashCode(this.mRotation, this.mSurfaces.hashCode(), this.mConfiguredGenerationId, this.mConfiguredSize.hashCode(), this.mConfiguredFormat, this.mConfiguredDataspace, this.mSurfaceGroupId, this.mIsShared ? 1 : 0);
    }

    public boolean isDeferredConfiguration() {
        return this.mIsDeferredConfig;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (parcel == null) {
            throw new IllegalArgumentException("dest must not be null");
        }
        parcel.writeInt(this.mRotation);
        parcel.writeInt(this.mSurfaceGroupId);
        parcel.writeInt(this.mSurfaceType);
        parcel.writeInt(this.mConfiguredSize.getWidth());
        parcel.writeInt(this.mConfiguredSize.getHeight());
        parcel.writeInt(this.mIsDeferredConfig ? 1 : 0);
        parcel.writeInt(this.mIsShared ? 1 : 0);
        parcel.writeInt(this.mIsSprd ? 1 : 0);
        parcel.writeTypedList(this.mSurfaces);
    }

    public OutputConfiguration(Surface surface) {
        this(-1, surface, 0);
    }

    public OutputConfiguration(int i2, Surface surface) {
        this(i2, surface, 0);
    }

    public OutputConfiguration(Surface surface, int i2) {
        this(-1, surface, i2);
    }

    public OutputConfiguration(int i2, Surface surface, int i3) {
        this.SURFACE_TYPE_UNKNOWN = -1;
        this.SURFACE_TYPE_SURFACE_VIEW = 0;
        this.SURFACE_TYPE_SURFACE_TEXTURE = 1;
        this.mIsSprd = false;
        Preconditions.checkNotNull(surface, "Surface must not be null");
        Preconditions.checkArgumentInRange(i3, 0, 3, "Rotation constant");
        this.mSurfaceGroupId = i2;
        this.mSurfaceType = -1;
        ArrayList<Surface> arrayList = new ArrayList<>();
        this.mSurfaces = arrayList;
        arrayList.add(surface);
        this.mRotation = i3;
        this.mConfiguredSize = SurfaceUtils.getSurfaceSize(surface);
        this.mConfiguredFormat = SurfaceUtils.getSurfaceFormat(surface);
        this.mConfiguredDataspace = SurfaceUtils.getSurfaceDataspace(surface);
        this.mConfiguredGenerationId = surface.getGenerationId();
        this.mIsDeferredConfig = false;
        this.mIsShared = false;
    }

    public <T> OutputConfiguration(Size size, Class<T> cls) {
        this.SURFACE_TYPE_UNKNOWN = -1;
        this.SURFACE_TYPE_SURFACE_VIEW = 0;
        this.SURFACE_TYPE_SURFACE_TEXTURE = 1;
        this.mIsSprd = false;
        Preconditions.checkNotNull(cls, "surfaceSize must not be null");
        Preconditions.checkNotNull(cls, "klass must not be null");
        if (cls == SurfaceHolder.class) {
            this.mSurfaceType = 0;
        } else if (cls == SurfaceTexture.class) {
            this.mSurfaceType = 1;
        } else {
            this.mSurfaceType = -1;
            throw new IllegalArgumentException("Unknow surface source class type");
        }
        if (size.getWidth() != 0 && size.getHeight() != 0) {
            this.mSurfaceGroupId = -1;
            this.mSurfaces = new ArrayList<>();
            this.mRotation = 0;
            this.mConfiguredSize = size;
            this.mConfiguredFormat = StreamConfigurationMap.imageFormatToInternal(34);
            this.mConfiguredDataspace = StreamConfigurationMap.imageFormatToDataspace(34);
            this.mConfiguredGenerationId = 0;
            this.mIsDeferredConfig = true;
            this.mIsShared = false;
            return;
        }
        throw new IllegalArgumentException("Surface size needs to be non-zero");
    }

    public OutputConfiguration(OutputConfiguration outputConfiguration) {
        this.SURFACE_TYPE_UNKNOWN = -1;
        this.SURFACE_TYPE_SURFACE_VIEW = 0;
        this.SURFACE_TYPE_SURFACE_TEXTURE = 1;
        this.mIsSprd = false;
        if (outputConfiguration != null) {
            this.mSurfaces = outputConfiguration.mSurfaces;
            this.mRotation = outputConfiguration.mRotation;
            this.mSurfaceGroupId = outputConfiguration.mSurfaceGroupId;
            this.mSurfaceType = outputConfiguration.mSurfaceType;
            this.mConfiguredDataspace = outputConfiguration.mConfiguredDataspace;
            this.mConfiguredFormat = outputConfiguration.mConfiguredFormat;
            this.mConfiguredSize = outputConfiguration.mConfiguredSize;
            this.mConfiguredGenerationId = outputConfiguration.mConfiguredGenerationId;
            this.mIsDeferredConfig = outputConfiguration.mIsDeferredConfig;
            this.mIsShared = outputConfiguration.mIsShared;
            return;
        }
        throw new IllegalArgumentException("OutputConfiguration shouldn't be null");
    }

    private OutputConfiguration(Parcel parcel) {
        this.SURFACE_TYPE_UNKNOWN = -1;
        this.SURFACE_TYPE_SURFACE_VIEW = 0;
        this.SURFACE_TYPE_SURFACE_TEXTURE = 1;
        this.mIsSprd = false;
        int i2 = parcel.readInt();
        int i3 = parcel.readInt();
        int i4 = parcel.readInt();
        int i5 = parcel.readInt();
        int i6 = parcel.readInt();
        boolean z2 = parcel.readInt() == 1;
        boolean z3 = parcel.readInt() == 1;
        parcel.readInt();
        ArrayList<Surface> arrayList = new ArrayList<>();
        parcel.readTypedList(arrayList, Surface.CREATOR);
        Preconditions.checkArgumentInRange(i2, 0, 3, "Rotation constant");
        this.mSurfaceGroupId = i3;
        this.mRotation = i2;
        this.mSurfaces = arrayList;
        this.mConfiguredSize = new Size(i5, i6);
        this.mIsDeferredConfig = z2;
        this.mIsShared = z3;
        this.mSurfaces = arrayList;
        if (arrayList.size() > 0) {
            this.mSurfaceType = -1;
            this.mConfiguredFormat = SurfaceUtils.getSurfaceFormat(this.mSurfaces.get(0));
            this.mConfiguredDataspace = SurfaceUtils.getSurfaceDataspace(this.mSurfaces.get(0));
            this.mConfiguredGenerationId = this.mSurfaces.get(0).getGenerationId();
            return;
        }
        this.mSurfaceType = i4;
        this.mConfiguredFormat = StreamConfigurationMap.imageFormatToInternal(34);
        this.mConfiguredDataspace = StreamConfigurationMap.imageFormatToDataspace(34);
        this.mConfiguredGenerationId = 0;
    }
}
