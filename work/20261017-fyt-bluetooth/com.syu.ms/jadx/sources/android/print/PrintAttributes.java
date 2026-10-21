package android.print;

import android.bluetooth.BluetoothHealth;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.hardware.Camera;
import android.media.AudioFormat;
import android.media.videoeditor.MediaArtistNativeHelper;
import android.net.ConnectivityManager;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class PrintAttributes implements Parcelable {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    public static final Parcelable.Creator<PrintAttributes> CREATOR = new Parcelable.Creator<PrintAttributes>() { // from class: android.print.PrintAttributes.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrintAttributes createFromParcel(Parcel parcel) {
            return new PrintAttributes(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrintAttributes[] newArray(int i2) {
            return new PrintAttributes[i2];
        }
    };
    private static final int VALID_COLOR_MODES = 3;
    private int mColorMode;
    private MediaSize mMediaSize;
    private Margins mMinMargins;
    private Resolution mResolution;

    public static final class Builder {
        private final PrintAttributes mAttributes = new PrintAttributes();

        public PrintAttributes build() {
            return this.mAttributes;
        }

        public Builder setColorMode(int i2) {
            if (Integer.bitCount(i2) > 1) {
                throw new IllegalArgumentException("can specify at most one colorMode bit.");
            }
            this.mAttributes.setColorMode(i2);
            return this;
        }

        public Builder setMediaSize(MediaSize mediaSize) {
            this.mAttributes.setMediaSize(mediaSize);
            return this;
        }

        public Builder setMinMargins(Margins margins) {
            this.mAttributes.setMinMargins(margins);
            return this;
        }

        public Builder setResolution(Resolution resolution) {
            this.mAttributes.setResolution(resolution);
            return this;
        }
    }

    public static final class Margins {
        public static final Margins NO_MARGINS = new Margins(0, 0, 0, 0);
        private final int mBottomMils;
        private final int mLeftMils;
        private final int mRightMils;
        private final int mTopMils;

        public Margins(int i2, int i3, int i4, int i5) {
            this.mTopMils = i3;
            this.mLeftMils = i2;
            this.mRightMils = i4;
            this.mBottomMils = i5;
        }

        public static Margins createFromParcel(Parcel parcel) {
            return new Margins(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Margins.class != obj.getClass()) {
                return false;
            }
            Margins margins = (Margins) obj;
            return this.mBottomMils == margins.mBottomMils && this.mLeftMils == margins.mLeftMils && this.mRightMils == margins.mRightMils && this.mTopMils == margins.mTopMils;
        }

        public int getBottomMils() {
            return this.mBottomMils;
        }

        public int getLeftMils() {
            return this.mLeftMils;
        }

        public int getRightMils() {
            return this.mRightMils;
        }

        public int getTopMils() {
            return this.mTopMils;
        }

        public int hashCode() {
            return ((((((this.mBottomMils + 31) * 31) + this.mLeftMils) * 31) + this.mRightMils) * 31) + this.mTopMils;
        }

        public String toString() {
            return "Margins{leftMils: " + this.mLeftMils + ", topMils: " + this.mTopMils + ", rightMils: " + this.mRightMils + ", bottomMils: " + this.mBottomMils + "}";
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.mLeftMils);
            parcel.writeInt(this.mTopMils);
            parcel.writeInt(this.mRightMils);
            parcel.writeInt(this.mBottomMils);
        }
    }

    public static final class Resolution {
        private final int mHorizontalDpi;
        private final String mId;
        private final String mLabel;
        private final int mVerticalDpi;

        public Resolution(String str, String str2, int i2, int i3) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("id cannot be empty.");
            }
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("label cannot be empty.");
            }
            if (i2 <= 0) {
                throw new IllegalArgumentException("horizontalDpi cannot be less than or equal to zero.");
            }
            if (i3 <= 0) {
                throw new IllegalArgumentException("verticalDpi cannot be less than or equal to zero.");
            }
            this.mId = str;
            this.mLabel = str2;
            this.mHorizontalDpi = i2;
            this.mVerticalDpi = i3;
        }

        public static Resolution createFromParcel(Parcel parcel) {
            return new Resolution(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Resolution.class != obj.getClass()) {
                return false;
            }
            Resolution resolution = (Resolution) obj;
            return this.mHorizontalDpi == resolution.mHorizontalDpi && this.mVerticalDpi == resolution.mVerticalDpi;
        }

        public int getHorizontalDpi() {
            return this.mHorizontalDpi;
        }

        public String getId() {
            return this.mId;
        }

        public String getLabel() {
            return this.mLabel;
        }

        public int getVerticalDpi() {
            return this.mVerticalDpi;
        }

        public int hashCode() {
            return ((this.mHorizontalDpi + 31) * 31) + this.mVerticalDpi;
        }

        public String toString() {
            return "Resolution{id: " + this.mId + ", label: " + this.mLabel + ", horizontalDpi: " + this.mHorizontalDpi + ", verticalDpi: " + this.mVerticalDpi + "}";
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeString(this.mId);
            parcel.writeString(this.mLabel);
            parcel.writeInt(this.mHorizontalDpi);
            parcel.writeInt(this.mVerticalDpi);
        }
    }

    public static String colorModeToString(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? "COLOR_MODE_UNKNOWN" : "COLOR_MODE_COLOR";
        }
        return "COLOR_MODE_MONOCHROME";
    }

    public static void enforceValidColorMode(int i2) {
        if ((i2 & 3) == 0 && Integer.bitCount(i2) == 1) {
            throw new IllegalArgumentException("invalid color mode: " + i2);
        }
    }

    public void clear() {
        this.mMediaSize = null;
        this.mResolution = null;
        this.mMinMargins = null;
        this.mColorMode = 0;
    }

    public void copyFrom(PrintAttributes printAttributes) {
        this.mMediaSize = printAttributes.mMediaSize;
        this.mResolution = printAttributes.mResolution;
        this.mMinMargins = printAttributes.mMinMargins;
        this.mColorMode = printAttributes.mColorMode;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PrintAttributes.class != obj.getClass()) {
            return false;
        }
        PrintAttributes printAttributes = (PrintAttributes) obj;
        if (this.mColorMode != printAttributes.mColorMode) {
            return false;
        }
        Margins margins = this.mMinMargins;
        if (margins == null) {
            if (printAttributes.mMinMargins != null) {
                return false;
            }
        } else if (!margins.equals(printAttributes.mMinMargins)) {
            return false;
        }
        MediaSize mediaSize = this.mMediaSize;
        if (mediaSize == null) {
            if (printAttributes.mMediaSize != null) {
                return false;
            }
        } else if (!mediaSize.equals(printAttributes.mMediaSize)) {
            return false;
        }
        Resolution resolution = this.mResolution;
        if (resolution == null) {
            if (printAttributes.mResolution != null) {
                return false;
            }
        } else if (!resolution.equals(printAttributes.mResolution)) {
            return false;
        }
        return true;
    }

    public int getColorMode() {
        return this.mColorMode;
    }

    public MediaSize getMediaSize() {
        return this.mMediaSize;
    }

    public Margins getMinMargins() {
        return this.mMinMargins;
    }

    public Resolution getResolution() {
        return this.mResolution;
    }

    public int hashCode() {
        int i2 = (this.mColorMode + 31) * 31;
        Margins margins = this.mMinMargins;
        int iHashCode = (i2 + (margins == null ? 0 : margins.hashCode())) * 31;
        MediaSize mediaSize = this.mMediaSize;
        int iHashCode2 = (iHashCode + (mediaSize == null ? 0 : mediaSize.hashCode())) * 31;
        Resolution resolution = this.mResolution;
        return iHashCode2 + (resolution != null ? resolution.hashCode() : 0);
    }

    public void setColorMode(int i2) {
        enforceValidColorMode(i2);
        this.mColorMode = i2;
    }

    public void setMediaSize(MediaSize mediaSize) {
        this.mMediaSize = mediaSize;
    }

    public void setMinMargins(Margins margins) {
        this.mMinMargins = margins;
    }

    public void setResolution(Resolution resolution) {
        this.mResolution = resolution;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("PrintAttributes{");
        sb.append("mediaSize: ");
        sb.append(this.mMediaSize);
        if (this.mMediaSize != null) {
            sb.append(", orientation: ");
            sb.append(this.mMediaSize.isPortrait() ? Camera.Parameters.SCENE_MODE_PORTRAIT : Camera.Parameters.SCENE_MODE_LANDSCAPE);
        } else {
            sb.append(", orientation: ");
            sb.append("null");
        }
        sb.append(", resolution: ");
        sb.append(this.mResolution);
        sb.append(", minMargins: ");
        sb.append(this.mMinMargins);
        sb.append(", colorMode: ");
        sb.append(colorModeToString(this.mColorMode));
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mMediaSize != null) {
            parcel.writeInt(1);
            this.mMediaSize.writeToParcel(parcel);
        } else {
            parcel.writeInt(0);
        }
        if (this.mResolution != null) {
            parcel.writeInt(1);
            this.mResolution.writeToParcel(parcel);
        } else {
            parcel.writeInt(0);
        }
        if (this.mMinMargins != null) {
            parcel.writeInt(1);
            this.mMinMargins.writeToParcel(parcel);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mColorMode);
    }

    public PrintAttributes() {
    }

    private PrintAttributes(Parcel parcel) {
        this.mMediaSize = parcel.readInt() == 1 ? MediaSize.createFromParcel(parcel) : null;
        this.mResolution = parcel.readInt() == 1 ? Resolution.createFromParcel(parcel) : null;
        this.mMinMargins = parcel.readInt() == 1 ? Margins.createFromParcel(parcel) : null;
        this.mColorMode = parcel.readInt();
    }

    public static final class MediaSize {
        private static final String LOG_TAG = "MediaSize";
        private final int mHeightMils;
        private final String mId;
        public final String mLabel;
        public final int mLabelResId;
        public final String mPackageName;
        private final int mWidthMils;
        private static final Map<String, MediaSize> sIdToMediaSizeMap = new ArrayMap();
        public static final MediaSize UNKNOWN_PORTRAIT = new MediaSize("UNKNOWN_PORTRAIT", "android", 17040861, 1, Integer.MAX_VALUE);
        public static final MediaSize UNKNOWN_LANDSCAPE = new MediaSize("UNKNOWN_LANDSCAPE", "android", 17040862, Integer.MAX_VALUE, 1);
        public static final MediaSize ISO_A0 = new MediaSize("ISO_A0", "android", 17040780, 33110, 46810);
        public static final MediaSize ISO_A1 = new MediaSize("ISO_A1", "android", 17040781, 23390, 33110);
        public static final MediaSize ISO_A2 = new MediaSize("ISO_A2", "android", 17040782, 16540, 23390);
        public static final MediaSize ISO_A3 = new MediaSize("ISO_A3", "android", 17040783, 11690, 16540);
        public static final MediaSize ISO_A4 = new MediaSize("ISO_A4", "android", 17040784, 8270, 11690);
        public static final MediaSize ISO_A5 = new MediaSize("ISO_A5", "android", 17040785, 5830, 8270);
        public static final MediaSize ISO_A6 = new MediaSize("ISO_A6", "android", 17040786, 4130, 5830);
        public static final MediaSize ISO_A7 = new MediaSize("ISO_A7", "android", 17040787, 2910, 4130);
        public static final MediaSize ISO_A8 = new MediaSize("ISO_A8", "android", 17040788, 2050, 2910);
        public static final MediaSize ISO_A9 = new MediaSize("ISO_A9", "android", 17040789, 1460, 2050);
        public static final MediaSize ISO_A10 = new MediaSize("ISO_A10", "android", 17040790, AudioFormat.CHANNEL_OUT_7POINT1, 1460);
        public static final MediaSize ISO_B0 = new MediaSize("ISO_B0", "android", 17040791, 39370, 55670);
        public static final MediaSize ISO_B1 = new MediaSize("ISO_B1", "android", 17040792, 27830, 39370);
        public static final MediaSize ISO_B2 = new MediaSize("ISO_B2", "android", 17040793, 19690, 27830);
        public static final MediaSize ISO_B3 = new MediaSize("ISO_B3", "android", 17040794, 13900, 19690);
        public static final MediaSize ISO_B4 = new MediaSize("ISO_B4", "android", 17040795, 9840, 13900);
        public static final MediaSize ISO_B5 = new MediaSize("ISO_B5", "android", 17040796, 6930, 9840);
        public static final MediaSize ISO_B6 = new MediaSize("ISO_B6", "android", 17040797, 4920, 6930);
        public static final MediaSize ISO_B7 = new MediaSize("ISO_B7", "android", 17040798, 3460, 4920);
        public static final MediaSize ISO_B8 = new MediaSize("ISO_B8", "android", 17040799, 2440, 3460);
        public static final MediaSize ISO_B9 = new MediaSize("ISO_B9", "android", 17040800, 1730, 2440);
        public static final MediaSize ISO_B10 = new MediaSize("ISO_B10", "android", 17040801, 1220, 1730);
        public static final MediaSize ISO_C0 = new MediaSize("ISO_C0", "android", 17040802, 36100, 51060);
        public static final MediaSize ISO_C1 = new MediaSize("ISO_C1", "android", 17040803, 25510, 36100);
        public static final MediaSize ISO_C2 = new MediaSize("ISO_C2", "android", 17040804, 18030, 25510);
        public static final MediaSize ISO_C3 = new MediaSize("ISO_C3", "android", 17040805, 12760, 18030);
        public static final MediaSize ISO_C4 = new MediaSize("ISO_C4", "android", 17040806, 9020, 12760);
        public static final MediaSize ISO_C5 = new MediaSize("ISO_C5", "android", 17040807, 6380, 9020);
        public static final MediaSize ISO_C6 = new MediaSize("ISO_C6", "android", 17040808, 4490, 6380);
        public static final MediaSize ISO_C7 = new MediaSize("ISO_C7", "android", 17040809, 3190, 4490);
        public static final MediaSize ISO_C8 = new MediaSize("ISO_C8", "android", 17040810, 2240, 3190);
        public static final MediaSize ISO_C9 = new MediaSize("ISO_C9", "android", 17040811, 1570, 2240);
        public static final MediaSize ISO_C10 = new MediaSize("ISO_C10", "android", 17040812, 1100, 1570);
        public static final MediaSize NA_LETTER = new MediaSize("NA_LETTER", "android", 17040813, 8500, 11000);
        public static final MediaSize NA_GOVT_LETTER = new MediaSize("NA_GOVT_LETTER", "android", 17040814, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 10500);
        public static final MediaSize NA_LEGAL = new MediaSize("NA_LEGAL", "android", 17040815, 8500, 14000);
        public static final MediaSize NA_JUNIOR_LEGAL = new MediaSize("NA_JUNIOR_LEGAL", "android", 17040816, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 5000);
        public static final MediaSize NA_LEDGER = new MediaSize("NA_LEDGER", "android", 17040817, 17000, 11000);
        public static final MediaSize NA_TABLOID = new MediaSize("NA_TABLOID", "android", 17040818, 11000, 17000);
        public static final MediaSize NA_INDEX_3X5 = new MediaSize("NA_INDEX_3X5", "android", 17040819, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 5000);
        public static final MediaSize NA_INDEX_4X6 = new MediaSize("NA_INDEX_4X6", "android", 17040820, 4000, BluetoothHealth.HEALTH_OPERATION_SUCCESS);
        public static final MediaSize NA_INDEX_5X8 = new MediaSize("NA_INDEX_5X8", "android", 17040821, 5000, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000);
        public static final MediaSize NA_MONARCH = new MediaSize("NA_MONARCH", "android", 17040822, 7250, 10500);
        public static final MediaSize NA_QUARTO = new MediaSize("NA_QUARTO", "android", 17040823, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 10000);
        public static final MediaSize NA_FOOLSCAP = new MediaSize("NA_FOOLSCAP", "android", 17040824, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 13000);
        public static final MediaSize ROC_8K = new MediaSize("ROC_8K", "android", 17040825, 10629, 15354);
        public static final MediaSize ROC_16K = new MediaSize("ROC_16K", "android", 17040826, 7677, 10629);
        public static final MediaSize PRC_1 = new MediaSize("PRC_1", "android", 17040827, 4015, 6496);
        public static final MediaSize PRC_2 = new MediaSize("PRC_2", "android", 17040828, 4015, 6929);
        public static final MediaSize PRC_3 = new MediaSize("PRC_3", "android", 17040829, 4921, 6929);
        public static final MediaSize PRC_4 = new MediaSize("PRC_4", "android", 17040830, 4330, 8189);
        public static final MediaSize PRC_5 = new MediaSize("PRC_5", "android", 17040831, 4330, 8661);
        public static final MediaSize PRC_6 = new MediaSize("PRC_6", "android", 17040832, 4724, 12599);
        public static final MediaSize PRC_7 = new MediaSize("PRC_7", "android", 17040833, 6299, 9055);
        public static final MediaSize PRC_8 = new MediaSize("PRC_8", "android", 17040834, 4724, 12165);
        public static final MediaSize PRC_9 = new MediaSize("PRC_9", "android", 17040835, 9016, 12756);
        public static final MediaSize PRC_10 = new MediaSize("PRC_10", "android", 17040836, 12756, 18032);
        public static final MediaSize PRC_16K = new MediaSize("PRC_16K", "android", 17040837, 5749, 8465);
        public static final MediaSize OM_PA_KAI = new MediaSize("OM_PA_KAI", "android", 17040838, 10512, 15315);
        public static final MediaSize OM_DAI_PA_KAI = new MediaSize("OM_DAI_PA_KAI", "android", 17040839, 10827, 15551);
        public static final MediaSize OM_JUURO_KU_KAI = new MediaSize("OM_JUURO_KU_KAI", "android", 17040840, 7796, 10827);
        public static final MediaSize JIS_B10 = new MediaSize("JIS_B10", "android", 17040841, 1259, 1772);
        public static final MediaSize JIS_B9 = new MediaSize("JIS_B9", "android", 17040842, 1772, 2520);
        public static final MediaSize JIS_B8 = new MediaSize("JIS_B8", "android", 17040843, 2520, 3583);
        public static final MediaSize JIS_B7 = new MediaSize("JIS_B7", "android", 17040844, 3583, 5049);
        public static final MediaSize JIS_B6 = new MediaSize("JIS_B6", "android", 17040845, 5049, 7165);
        public static final MediaSize JIS_B5 = new MediaSize("JIS_B5", "android", 17040846, 7165, 10118);
        public static final MediaSize JIS_B4 = new MediaSize("JIS_B4", "android", 17040847, 10118, 14331);
        public static final MediaSize JIS_B3 = new MediaSize("JIS_B3", "android", 17040848, 14331, 20276);
        public static final MediaSize JIS_B2 = new MediaSize("JIS_B2", "android", 17040849, 20276, 28661);
        public static final MediaSize JIS_B1 = new MediaSize("JIS_B1", "android", 17040850, 28661, 40551);
        public static final MediaSize JIS_B0 = new MediaSize("JIS_B0", "android", 17040851, 40551, 57323);
        public static final MediaSize JIS_EXEC = new MediaSize("JIS_EXEC", "android", 17040852, 8504, 12992);
        public static final MediaSize JPN_CHOU4 = new MediaSize("JPN_CHOU4", "android", 17040853, 3543, 8071);
        public static final MediaSize JPN_CHOU3 = new MediaSize("JPN_CHOU3", "android", 17040854, 4724, 9252);
        public static final MediaSize JPN_CHOU2 = new MediaSize("JPN_CHOU2", "android", 17040855, 4374, 5748);
        public static final MediaSize JPN_HAGAKI = new MediaSize("JPN_HAGAKI", "android", 17040856, 3937, 5827);
        public static final MediaSize JPN_OUFUKU = new MediaSize("JPN_OUFUKU", "android", 17040857, 5827, 7874);
        public static final MediaSize JPN_KAHU = new MediaSize("JPN_KAHU", "android", 17040858, 9449, 12681);
        public static final MediaSize JPN_KAKU2 = new MediaSize("JPN_KAKU2", "android", 17040859, 9449, 13071);
        public static final MediaSize JPN_YOU4 = new MediaSize("JPN_YOU4", "android", 17040860, 4134, 9252);

        public MediaSize(String str, String str2, int i2, int i3, int i4) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("id cannot be empty.");
            }
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("packageName cannot be empty.");
            }
            if (i2 <= 0) {
                throw new IllegalArgumentException("labelResId must be greater than zero.");
            }
            if (i3 <= 0) {
                throw new IllegalArgumentException("widthMils cannot be less than or equal to zero.");
            }
            if (i4 <= 0) {
                throw new IllegalArgumentException("heightMils cannot be less than or euqual to zero.");
            }
            this.mPackageName = str2;
            this.mId = str;
            this.mLabelResId = i2;
            this.mWidthMils = i3;
            this.mHeightMils = i4;
            this.mLabel = null;
            sIdToMediaSizeMap.put(str, this);
        }

        public static MediaSize createFromParcel(Parcel parcel) {
            return new MediaSize(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        public static MediaSize getStandardMediaSizeById(String str) {
            return sIdToMediaSizeMap.get(str);
        }

        public MediaSize asLandscape() {
            return !isPortrait() ? this : new MediaSize(this.mId, this.mLabel, this.mPackageName, Math.max(this.mWidthMils, this.mHeightMils), Math.min(this.mWidthMils, this.mHeightMils), this.mLabelResId);
        }

        public MediaSize asPortrait() {
            return isPortrait() ? this : new MediaSize(this.mId, this.mLabel, this.mPackageName, Math.min(this.mWidthMils, this.mHeightMils), Math.max(this.mWidthMils, this.mHeightMils), this.mLabelResId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || MediaSize.class != obj.getClass()) {
                return false;
            }
            MediaSize mediaSize = (MediaSize) obj;
            return this.mWidthMils == mediaSize.mWidthMils && this.mHeightMils == mediaSize.mHeightMils;
        }

        public int getHeightMils() {
            return this.mHeightMils;
        }

        public String getId() {
            return this.mId;
        }

        public String getLabel(PackageManager packageManager) {
            if (!TextUtils.isEmpty(this.mPackageName) && this.mLabelResId > 0) {
                try {
                    return packageManager.getResourcesForApplication(this.mPackageName).getString(this.mLabelResId);
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.w(LOG_TAG, "Could not load resouce" + this.mLabelResId + " from package " + this.mPackageName);
                } catch (Resources.NotFoundException unused2) {
                    Log.w(LOG_TAG, "Could not load resouce" + this.mLabelResId + " from package " + this.mPackageName);
                }
            }
            return this.mLabel;
        }

        public int getWidthMils() {
            return this.mWidthMils;
        }

        public int hashCode() {
            return ((this.mWidthMils + 31) * 31) + this.mHeightMils;
        }

        public boolean isPortrait() {
            return this.mHeightMils >= this.mWidthMils;
        }

        public String toString() {
            return "MediaSize{id: " + this.mId + ", label: " + this.mLabel + ", packageName: " + this.mPackageName + ", heightMils: " + this.mHeightMils + ", widthMils: " + this.mWidthMils + ", labelResId: " + this.mLabelResId + "}";
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeString(this.mId);
            parcel.writeString(this.mLabel);
            parcel.writeString(this.mPackageName);
            parcel.writeInt(this.mWidthMils);
            parcel.writeInt(this.mHeightMils);
            parcel.writeInt(this.mLabelResId);
        }

        public MediaSize(String str, String str2, int i2, int i3) {
            if (!TextUtils.isEmpty(str)) {
                if (TextUtils.isEmpty(str2)) {
                    throw new IllegalArgumentException("label cannot be empty.");
                }
                if (i2 <= 0) {
                    throw new IllegalArgumentException("widthMils cannot be less than or equal to zero.");
                }
                if (i3 > 0) {
                    this.mId = str;
                    this.mLabel = str2;
                    this.mWidthMils = i2;
                    this.mHeightMils = i3;
                    this.mLabelResId = 0;
                    this.mPackageName = null;
                    return;
                }
                throw new IllegalArgumentException("heightMils cannot be less than or euqual to zero.");
            }
            throw new IllegalArgumentException("id cannot be empty.");
        }

        public MediaSize(String str, String str2, String str3, int i2, int i3, int i4) {
            this.mPackageName = str3;
            this.mId = str;
            this.mLabelResId = i4;
            this.mWidthMils = i2;
            this.mHeightMils = i3;
            this.mLabel = str2;
        }
    }
}
