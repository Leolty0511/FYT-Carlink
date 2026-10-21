package android.media;

import android.accessibilityservice.c;
import android.app.m;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.mtp.MtpConstants;
import android.opengl.GLES30;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.format.Time;
import android.util.Log;
import android.util.Pair;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.telephony.gsm.SmsCbConstants;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import libcore.io.IoUtils;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes.dex */
public class ExifInterface {
    private static final Charset ASCII;
    private static final short BYTE_ALIGN_II = 18761;
    private static final short BYTE_ALIGN_MM = 19789;
    private static final int DATA_DEFLATE_ZIP = 8;
    private static final int DATA_HUFFMAN_COMPRESSED = 2;
    private static final int DATA_JPEG = 6;
    private static final int DATA_JPEG_COMPRESSED = 7;
    private static final int DATA_LOSSY_JPEG = 34892;
    private static final int DATA_PACK_BITS_COMPRESSED = 32773;
    private static final int DATA_UNCOMPRESSED = 1;
    private static final boolean DEBUG = false;
    private static final ExifTag[] EXIF_POINTER_TAGS;
    private static final ExifTag[][] EXIF_TAGS;
    private static final byte[] IDENTIFIER_EXIF_APP1;
    private static final ExifTag[] IFD_EXIF_TAGS;
    private static final int IFD_FORMAT_BYTE = 1;
    private static final int IFD_FORMAT_DOUBLE = 12;
    private static final int IFD_FORMAT_IFD = 13;
    private static final int IFD_FORMAT_SBYTE = 6;
    private static final int IFD_FORMAT_SINGLE = 11;
    private static final int IFD_FORMAT_SLONG = 9;
    private static final int IFD_FORMAT_SRATIONAL = 10;
    private static final int IFD_FORMAT_SSHORT = 8;
    private static final int IFD_FORMAT_STRING = 2;
    private static final int IFD_FORMAT_ULONG = 4;
    private static final int IFD_FORMAT_UNDEFINED = 7;
    private static final int IFD_FORMAT_URATIONAL = 5;
    private static final int IFD_FORMAT_USHORT = 3;
    private static final ExifTag[] IFD_GPS_TAGS;
    private static final ExifTag[] IFD_INTEROPERABILITY_TAGS;
    private static final int IFD_OFFSET = 8;
    private static final ExifTag[] IFD_THUMBNAIL_TAGS;
    private static final ExifTag[] IFD_TIFF_TAGS;
    private static final int IFD_TYPE_EXIF = 1;
    private static final int IFD_TYPE_GPS = 2;
    private static final int IFD_TYPE_INTEROPERABILITY = 3;
    private static final int IFD_TYPE_ORF_CAMERA_SETTINGS = 7;
    private static final int IFD_TYPE_ORF_IMAGE_PROCESSING = 8;
    private static final int IFD_TYPE_ORF_MAKER_NOTE = 6;
    private static final int IFD_TYPE_PEF = 9;
    private static final int IFD_TYPE_PREVIEW = 5;
    private static final int IFD_TYPE_PRIMARY = 0;
    private static final int IFD_TYPE_THUMBNAIL = 4;
    private static final int IMAGE_TYPE_ARW = 1;
    private static final int IMAGE_TYPE_CR2 = 2;
    private static final int IMAGE_TYPE_DNG = 3;
    private static final int IMAGE_TYPE_HEIF = 12;
    private static final int IMAGE_TYPE_JPEG = 4;
    private static final int IMAGE_TYPE_NEF = 5;
    private static final int IMAGE_TYPE_NRW = 6;
    private static final int IMAGE_TYPE_ORF = 7;
    private static final int IMAGE_TYPE_PEF = 8;
    private static final int IMAGE_TYPE_RAF = 9;
    private static final int IMAGE_TYPE_RW2 = 10;
    private static final int IMAGE_TYPE_SRW = 11;
    private static final int IMAGE_TYPE_UNKNOWN = 0;
    private static final ExifTag JPEG_INTERCHANGE_FORMAT_LENGTH_TAG;
    private static final ExifTag JPEG_INTERCHANGE_FORMAT_TAG;
    private static final byte MARKER = -1;
    private static final byte MARKER_APP1 = -31;
    private static final byte MARKER_COM = -2;
    private static final byte MARKER_EOI = -39;
    private static final byte MARKER_SOF0 = -64;
    private static final byte MARKER_SOF1 = -63;
    private static final byte MARKER_SOF10 = -54;
    private static final byte MARKER_SOF11 = -53;
    private static final byte MARKER_SOF13 = -51;
    private static final byte MARKER_SOF14 = -50;
    private static final byte MARKER_SOF15 = -49;
    private static final byte MARKER_SOF2 = -62;
    private static final byte MARKER_SOF3 = -61;
    private static final byte MARKER_SOF5 = -59;
    private static final byte MARKER_SOF6 = -58;
    private static final byte MARKER_SOF7 = -57;
    private static final byte MARKER_SOF9 = -55;
    private static final byte MARKER_SOS = -38;
    private static final int MAX_THUMBNAIL_SIZE = 512;
    private static final ExifTag[] ORF_CAMERA_SETTINGS_TAGS;
    private static final ExifTag[] ORF_IMAGE_PROCESSING_TAGS;
    private static final int ORF_MAKER_NOTE_HEADER_1_SIZE = 8;
    private static final int ORF_MAKER_NOTE_HEADER_2_SIZE = 12;
    private static final ExifTag[] ORF_MAKER_NOTE_TAGS;
    private static final short ORF_SIGNATURE_1 = 20306;
    private static final short ORF_SIGNATURE_2 = 21330;
    public static final int ORIENTATION_FLIP_HORIZONTAL = 2;
    public static final int ORIENTATION_FLIP_VERTICAL = 4;
    public static final int ORIENTATION_NORMAL = 1;
    public static final int ORIENTATION_ROTATE_180 = 3;
    public static final int ORIENTATION_ROTATE_270 = 8;
    public static final int ORIENTATION_ROTATE_90 = 6;
    public static final int ORIENTATION_TRANSPOSE = 5;
    public static final int ORIENTATION_TRANSVERSE = 7;
    public static final int ORIENTATION_UNDEFINED = 0;
    private static final int ORIGINAL_RESOLUTION_IMAGE = 0;
    private static final int PEF_MAKER_NOTE_SKIP_SIZE = 6;
    private static final String PEF_SIGNATURE = "PENTAX";
    private static final ExifTag[] PEF_TAGS;
    private static final int PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO = 1;
    private static final int PHOTOMETRIC_INTERPRETATION_RGB = 2;
    private static final int PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO = 0;
    private static final int PHOTOMETRIC_INTERPRETATION_YCBCR = 6;
    private static final int RAF_INFO_SIZE = 160;
    private static final int RAF_JPEG_LENGTH_VALUE_SIZE = 4;
    private static final int RAF_OFFSET_TO_JPEG_IMAGE_OFFSET = 84;
    private static final String RAF_SIGNATURE = "FUJIFILMCCD-RAW";
    private static final int REDUCED_RESOLUTION_IMAGE = 1;
    private static final short RW2_SIGNATURE = 85;
    private static final int SIGNATURE_CHECK_SIZE = 5000;
    private static final byte START_CODE = 42;
    private static final String TAG = "ExifInterface";

    @Deprecated
    public static final String TAG_APERTURE = "FNumber";
    public static final String TAG_APERTURE_VALUE = "ApertureValue";
    public static final String TAG_ARTIST = "Artist";
    public static final String TAG_BITS_PER_SAMPLE = "BitsPerSample";
    public static final String TAG_BRIGHTNESS_VALUE = "BrightnessValue";
    public static final String TAG_CAMERA_TYPE = "CameraType";
    public static final String TAG_CFA_PATTERN = "CFAPattern";
    public static final String TAG_COLOR_SPACE = "ColorSpace";
    public static final String TAG_COMPONENTS_CONFIGURATION = "ComponentsConfiguration";
    public static final String TAG_COMPRESSED_BITS_PER_PIXEL = "CompressedBitsPerPixel";
    public static final String TAG_COMPRESSION = "Compression";
    public static final String TAG_CONTRAST = "Contrast";
    public static final String TAG_COPYRIGHT = "Copyright";
    public static final String TAG_CUSTOM_RENDERED = "CustomRendered";
    public static final String TAG_DATETIME = "DateTime";
    public static final String TAG_DATETIME_DIGITIZED = "DateTimeDigitized";
    public static final String TAG_DATETIME_ORIGINAL = "DateTimeOriginal";
    public static final String TAG_DEFAULT_CROP_SIZE = "DefaultCropSize";
    public static final String TAG_DEVICE_SETTING_DESCRIPTION = "DeviceSettingDescription";
    public static final String TAG_DIGITAL_ZOOM_RATIO = "DigitalZoomRatio";
    public static final String TAG_DNG_VERSION = "DNGVersion";
    private static final String TAG_EXIF_IFD_POINTER = "ExifIFDPointer";
    public static final String TAG_EXIF_VERSION = "ExifVersion";
    public static final String TAG_EXPOSURE_BIAS_VALUE = "ExposureBiasValue";
    public static final String TAG_EXPOSURE_INDEX = "ExposureIndex";
    public static final String TAG_EXPOSURE_MODE = "ExposureMode";
    public static final String TAG_EXPOSURE_PROGRAM = "ExposureProgram";
    public static final String TAG_EXPOSURE_TIME = "ExposureTime";
    public static final String TAG_FILE_SOURCE = "FileSource";
    public static final String TAG_FLASH = "Flash";
    public static final String TAG_FLASHPIX_VERSION = "FlashpixVersion";
    public static final String TAG_FLASH_ENERGY = "FlashEnergy";
    public static final String TAG_FOCAL_LENGTH = "FocalLength";
    public static final String TAG_FOCAL_LENGTH_IN_35MM_FILM = "FocalLengthIn35mmFilm";
    public static final String TAG_FOCAL_PLANE_RESOLUTION_UNIT = "FocalPlaneResolutionUnit";
    public static final String TAG_FOCAL_PLANE_X_RESOLUTION = "FocalPlaneXResolution";
    public static final String TAG_FOCAL_PLANE_Y_RESOLUTION = "FocalPlaneYResolution";
    public static final String TAG_F_NUMBER = "FNumber";
    public static final String TAG_GAIN_CONTROL = "GainControl";
    public static final String TAG_GPS_ALTITUDE = "GPSAltitude";
    public static final String TAG_GPS_ALTITUDE_REF = "GPSAltitudeRef";
    public static final String TAG_GPS_AREA_INFORMATION = "GPSAreaInformation";
    public static final String TAG_GPS_DATESTAMP = "GPSDateStamp";
    public static final String TAG_GPS_DEST_BEARING = "GPSDestBearing";
    public static final String TAG_GPS_DEST_BEARING_REF = "GPSDestBearingRef";
    public static final String TAG_GPS_DEST_DISTANCE = "GPSDestDistance";
    public static final String TAG_GPS_DEST_DISTANCE_REF = "GPSDestDistanceRef";
    public static final String TAG_GPS_DEST_LATITUDE = "GPSDestLatitude";
    public static final String TAG_GPS_DEST_LATITUDE_REF = "GPSDestLatitudeRef";
    public static final String TAG_GPS_DEST_LONGITUDE = "GPSDestLongitude";
    public static final String TAG_GPS_DEST_LONGITUDE_REF = "GPSDestLongitudeRef";
    public static final String TAG_GPS_DIFFERENTIAL = "GPSDifferential";
    public static final String TAG_GPS_DOP = "GPSDOP";
    public static final String TAG_GPS_IMG_DIRECTION = "GPSImgDirection";
    public static final String TAG_GPS_IMG_DIRECTION_REF = "GPSImgDirectionRef";
    private static final String TAG_GPS_INFO_IFD_POINTER = "GPSInfoIFDPointer";
    public static final String TAG_GPS_LATITUDE = "GPSLatitude";
    public static final String TAG_GPS_LATITUDE_REF = "GPSLatitudeRef";
    public static final String TAG_GPS_LONGITUDE = "GPSLongitude";
    public static final String TAG_GPS_LONGITUDE_REF = "GPSLongitudeRef";
    public static final String TAG_GPS_MAP_DATUM = "GPSMapDatum";
    public static final String TAG_GPS_MEASURE_MODE = "GPSMeasureMode";
    public static final String TAG_GPS_PROCESSING_METHOD = "GPSProcessingMethod";
    public static final String TAG_GPS_SATELLITES = "GPSSatellites";
    public static final String TAG_GPS_SPEED = "GPSSpeed";
    public static final String TAG_GPS_SPEED_REF = "GPSSpeedRef";
    public static final String TAG_GPS_STATUS = "GPSStatus";
    public static final String TAG_GPS_TIMESTAMP = "GPSTimeStamp";
    public static final String TAG_GPS_TRACK = "GPSTrack";
    public static final String TAG_GPS_TRACK_REF = "GPSTrackRef";
    public static final String TAG_GPS_VERSION_ID = "GPSVersionID";
    private static final String TAG_HAS_THUMBNAIL = "HasThumbnail";
    public static final String TAG_IMAGE_DESCRIPTION = "ImageDescription";
    public static final String TAG_IMAGE_LENGTH = "ImageLength";
    public static final String TAG_IMAGE_UNIQUE_ID = "ImageUniqueID";
    public static final String TAG_IMAGE_WIDTH = "ImageWidth";
    private static final String TAG_INTEROPERABILITY_IFD_POINTER = "InteroperabilityIFDPointer";
    public static final String TAG_INTEROPERABILITY_INDEX = "InteroperabilityIndex";

    @Deprecated
    public static final String TAG_ISO = "ISOSpeedRatings";
    public static final String TAG_ISO_SPEED_RATINGS = "ISOSpeedRatings";
    public static final String TAG_JPEG_INTERCHANGE_FORMAT = "JPEGInterchangeFormat";
    public static final String TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = "JPEGInterchangeFormatLength";
    public static final String TAG_LIGHT_SOURCE = "LightSource";
    public static final String TAG_MAKE = "Make";
    public static final String TAG_MAKER_NOTE = "MakerNote";
    public static final String TAG_MAX_APERTURE_VALUE = "MaxApertureValue";
    public static final String TAG_METERING_MODE = "MeteringMode";
    public static final String TAG_MODEL = "Model";
    public static final String TAG_NEW_SUBFILE_TYPE = "NewSubfileType";
    public static final String TAG_OECF = "OECF";
    public static final String TAG_ORF_ASPECT_FRAME = "AspectFrame";
    private static final String TAG_ORF_CAMERA_SETTINGS_IFD_POINTER = "CameraSettingsIFDPointer";
    private static final String TAG_ORF_IMAGE_PROCESSING_IFD_POINTER = "ImageProcessingIFDPointer";
    public static final String TAG_ORF_PREVIEW_IMAGE_LENGTH = "PreviewImageLength";
    public static final String TAG_ORF_PREVIEW_IMAGE_START = "PreviewImageStart";
    public static final String TAG_ORF_THUMBNAIL_IMAGE = "ThumbnailImage";
    public static final String TAG_ORIENTATION = "Orientation";
    public static final String TAG_PHOTOMETRIC_INTERPRETATION = "PhotometricInterpretation";
    public static final String TAG_PIXEL_X_DIMENSION = "PixelXDimension";
    public static final String TAG_PIXEL_Y_DIMENSION = "PixelYDimension";
    public static final String TAG_PLANAR_CONFIGURATION = "PlanarConfiguration";
    public static final String TAG_PRIMARY_CHROMATICITIES = "PrimaryChromaticities";
    private static final ExifTag TAG_RAF_IMAGE_SIZE;
    public static final String TAG_REFERENCE_BLACK_WHITE = "ReferenceBlackWhite";
    public static final String TAG_RELATED_SOUND_FILE = "RelatedSoundFile";
    public static final String TAG_RESOLUTION_UNIT = "ResolutionUnit";
    public static final String TAG_ROWS_PER_STRIP = "RowsPerStrip";
    public static final String TAG_RW2_ISO = "ISO";
    public static final String TAG_RW2_JPG_FROM_RAW = "JpgFromRaw";
    public static final String TAG_RW2_SENSOR_BOTTOM_BORDER = "SensorBottomBorder";
    public static final String TAG_RW2_SENSOR_LEFT_BORDER = "SensorLeftBorder";
    public static final String TAG_RW2_SENSOR_RIGHT_BORDER = "SensorRightBorder";
    public static final String TAG_RW2_SENSOR_TOP_BORDER = "SensorTopBorder";
    public static final String TAG_SAMPLES_PER_PIXEL = "SamplesPerPixel";
    public static final String TAG_SATURATION = "Saturation";
    public static final String TAG_SCENE_CAPTURE_TYPE = "SceneCaptureType";
    public static final String TAG_SCENE_TYPE = "SceneType";
    public static final String TAG_SENSING_METHOD = "SensingMethod";
    public static final String TAG_SHARPNESS = "Sharpness";
    public static final String TAG_SHUTTER_SPEED_VALUE = "ShutterSpeedValue";
    public static final String TAG_SOFTWARE = "Software";
    public static final String TAG_SPATIAL_FREQUENCY_RESPONSE = "SpatialFrequencyResponse";
    public static final String TAG_SPECTRAL_SENSITIVITY = "SpectralSensitivity";
    public static final String TAG_STRIP_BYTE_COUNTS = "StripByteCounts";
    public static final String TAG_STRIP_OFFSETS = "StripOffsets";
    public static final String TAG_SUBFILE_TYPE = "SubfileType";
    public static final String TAG_SUBJECT_AREA = "SubjectArea";
    public static final String TAG_SUBJECT_DISTANCE = "SubjectDistance";
    public static final String TAG_SUBJECT_DISTANCE_RANGE = "SubjectDistanceRange";
    public static final String TAG_SUBJECT_LOCATION = "SubjectLocation";
    public static final String TAG_SUBSEC_TIME = "SubSecTime";
    public static final String TAG_SUBSEC_TIME_DIG = "SubSecTimeDigitized";
    public static final String TAG_SUBSEC_TIME_DIGITIZED = "SubSecTimeDigitized";
    public static final String TAG_SUBSEC_TIME_ORIG = "SubSecTimeOriginal";
    public static final String TAG_SUBSEC_TIME_ORIGINAL = "SubSecTimeOriginal";
    private static final String TAG_SUB_IFD_POINTER = "SubIFDPointer";
    private static final String TAG_THUMBNAIL_DATA = "ThumbnailData";
    public static final String TAG_THUMBNAIL_IMAGE_LENGTH = "ThumbnailImageLength";
    public static final String TAG_THUMBNAIL_IMAGE_WIDTH = "ThumbnailImageWidth";
    private static final String TAG_THUMBNAIL_LENGTH = "ThumbnailLength";
    private static final String TAG_THUMBNAIL_OFFSET = "ThumbnailOffset";
    public static final String TAG_TRANSFER_FUNCTION = "TransferFunction";
    public static final String TAG_USER_COMMENT = "UserComment";
    public static final String TAG_WHITE_BALANCE = "WhiteBalance";
    public static final String TAG_WHITE_POINT = "WhitePoint";
    public static final String TAG_X_RESOLUTION = "XResolution";
    public static final String TAG_Y_CB_CR_COEFFICIENTS = "YCbCrCoefficients";
    public static final String TAG_Y_CB_CR_POSITIONING = "YCbCrPositioning";
    public static final String TAG_Y_CB_CR_SUB_SAMPLING = "YCbCrSubSampling";
    public static final String TAG_Y_RESOLUTION = "YResolution";
    public static final int WHITEBALANCE_AUTO = 0;
    public static final int WHITEBALANCE_MANUAL = 1;
    private static final HashMap sExifPointerTagMap;
    private static final HashMap[] sExifTagMapsForReading;
    private static final HashMap[] sExifTagMapsForWriting;
    private static SimpleDateFormat sFormatter;
    private static final Pattern sGpsTimestampPattern;
    private static final Pattern sNonZeroTimePattern;
    private static final HashSet<String> sTagSetForCompatibility;
    private final AssetManager.AssetInputStream mAssetInputStream;
    private final HashMap[] mAttributes;
    private ByteOrder mExifByteOrder;
    private int mExifOffset;
    private final String mFilename;
    private boolean mHasThumbnail;
    private final boolean mIsInputStream;
    private boolean mIsSupportedFile;
    private int mMimeType;
    private int mOrfMakerNoteOffset;
    private int mOrfThumbnailLength;
    private int mOrfThumbnailOffset;
    private int mRw2JpgFromRawOffset;
    private final FileDescriptor mSeekableFileDescriptor;
    private byte[] mThumbnailBytes;
    private int mThumbnailCompression;
    private int mThumbnailLength;
    private int mThumbnailOffset;
    private static final byte MARKER_SOI = -40;
    private static final byte[] JPEG_SIGNATURE = {-1, MARKER_SOI, -1};
    private static final byte[] HEIF_TYPE_FTYP = {102, 116, 121, 112};
    private static final byte[] HEIF_BRAND_MIF1 = {109, 105, 102, 49};
    private static final byte[] HEIF_BRAND_HEIC = {104, 101, 105, 99};
    private static final byte[] ORF_MAKER_NOTE_HEADER_1 = {79, 76, 89, 77, 80, 0};
    private static final byte[] ORF_MAKER_NOTE_HEADER_2 = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    private static final String[] IFD_FORMAT_NAMES = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};
    private static final int[] IFD_FORMAT_BYTES_PER_FORMAT = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    private static final byte[] EXIF_ASCII_PREFIX = {65, 83, 67, 73, 73, 0, 0, 0};
    private static final int[] BITS_PER_SAMPLE_RGB = {8, 8, 8};
    private static final int[] BITS_PER_SAMPLE_GREYSCALE_1 = {4};
    private static final int[] BITS_PER_SAMPLE_GREYSCALE_2 = {8};

    public static class ByteOrderedDataOutputStream extends FilterOutputStream {
        private ByteOrder mByteOrder;
        private final OutputStream mOutputStream;

        public ByteOrderedDataOutputStream(OutputStream outputStream, ByteOrder byteOrder) {
            super(outputStream);
            this.mOutputStream = outputStream;
            this.mByteOrder = byteOrder;
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.mOutputStream.write(bArr);
        }

        public void writeByte(int i2) throws IOException {
            this.mOutputStream.write(i2);
        }

        public void writeInt(int i2) throws IOException {
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.mOutputStream.write((i2 >>> 0) & 255);
                this.mOutputStream.write((i2 >>> 8) & 255);
                this.mOutputStream.write((i2 >>> 16) & 255);
                this.mOutputStream.write((i2 >>> 24) & 255);
                return;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.mOutputStream.write((i2 >>> 24) & 255);
                this.mOutputStream.write((i2 >>> 16) & 255);
                this.mOutputStream.write((i2 >>> 8) & 255);
                this.mOutputStream.write((i2 >>> 0) & 255);
            }
        }

        public void writeShort(short s2) throws IOException {
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.mOutputStream.write((s2 >>> 0) & 255);
                this.mOutputStream.write((s2 >>> 8) & 255);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.mOutputStream.write((s2 >>> 8) & 255);
                this.mOutputStream.write((s2 >>> 0) & 255);
            }
        }

        public void writeUnsignedInt(long j2) throws IOException {
            writeInt((int) j2);
        }

        public void writeUnsignedShort(int i2) throws IOException {
            writeShort((short) i2);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) throws IOException {
            this.mOutputStream.write(bArr, i2, i3);
        }
    }

    public static class ExifAttribute {
        public final byte[] bytes;
        public final int format;
        public final int numberOfComponents;

        public static ExifAttribute createByte(String str) {
            if (str.length() == 1 && str.charAt(0) >= '0' && str.charAt(0) <= '1') {
                return new ExifAttribute(1, 1, new byte[]{(byte) (str.charAt(0) - '0')});
            }
            byte[] bytes = str.getBytes(ExifInterface.ASCII);
            return new ExifAttribute(1, bytes.length, bytes);
        }

        public static ExifAttribute createDouble(double[] dArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[12] * dArr.length]);
            byteBufferWrap.order(byteOrder);
            for (double d2 : dArr) {
                byteBufferWrap.putDouble(d2);
            }
            return new ExifAttribute(12, dArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute createSLong(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[9] * iArr.length]);
            byteBufferWrap.order(byteOrder);
            for (int i2 : iArr) {
                byteBufferWrap.putInt(i2);
            }
            return new ExifAttribute(9, iArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute createSRational(Rational[] rationalArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[10] * rationalArr.length]);
            byteBufferWrap.order(byteOrder);
            for (Rational rational : rationalArr) {
                byteBufferWrap.putInt((int) rational.numerator);
                byteBufferWrap.putInt((int) rational.denominator);
            }
            return new ExifAttribute(10, rationalArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute createString(String str) {
            byte[] bytes = (str + (char) 0).getBytes(ExifInterface.ASCII);
            return new ExifAttribute(2, bytes.length, bytes);
        }

        public static ExifAttribute createULong(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[4] * jArr.length]);
            byteBufferWrap.order(byteOrder);
            for (long j2 : jArr) {
                byteBufferWrap.putInt((int) j2);
            }
            return new ExifAttribute(4, jArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute createURational(Rational[] rationalArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[5] * rationalArr.length]);
            byteBufferWrap.order(byteOrder);
            for (Rational rational : rationalArr) {
                byteBufferWrap.putInt((int) rational.numerator);
                byteBufferWrap.putInt((int) rational.denominator);
            }
            return new ExifAttribute(5, rationalArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute createUShort(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[3] * iArr.length]);
            byteBufferWrap.order(byteOrder);
            for (int i2 : iArr) {
                byteBufferWrap.putShort((short) i2);
            }
            return new ExifAttribute(3, iArr.length, byteBufferWrap.array());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:56:0x00e0 A[Catch: IOException -> 0x012d, TryCatch #0 {IOException -> 0x012d, blocks: (B:3:0x0001, B:4:0x000f, B:6:0x0013, B:7:0x0017, B:9:0x001b, B:11:0x0025, B:12:0x0029, B:14:0x002d, B:16:0x0038, B:17:0x003c, B:19:0x0040, B:21:0x0057, B:22:0x005b, B:24:0x005f, B:26:0x0069, B:27:0x006d, B:29:0x0071, B:31:0x007b, B:32:0x007f, B:34:0x0083, B:36:0x0098, B:37:0x009c, B:39:0x00a0, B:41:0x00aa, B:42:0x00ae, B:44:0x00b2, B:46:0x00bc, B:49:0x00c6, B:51:0x00cd, B:54:0x00db, B:56:0x00e0, B:57:0x00e5, B:58:0x00ea, B:60:0x00ee, B:65:0x00f9, B:67:0x0103, B:66:0x00fe, B:68:0x0106, B:70:0x010b, B:72:0x0110, B:75:0x0116, B:77:0x0123), top: B:82:0x0001 }] */
        public Object getValue(ByteOrder byteOrder) {
            byte b2;
            byte b3;
            try {
                ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(this.bytes);
                byteOrderedDataInputStream.setByteOrder(byteOrder);
                int length = 0;
                boolean z2 = true;
                switch (this.format) {
                    case 1:
                    case 6:
                        byte[] bArr = this.bytes;
                        return (bArr.length != 1 || (b2 = bArr[0]) < 0 || b2 > 1) ? new String(bArr, ExifInterface.ASCII) : new String(new char[]{(char) (b2 + 48)});
                    case 2:
                    case 7:
                        if (this.numberOfComponents >= ExifInterface.EXIF_ASCII_PREFIX.length) {
                            for (int i2 = 0; i2 < ExifInterface.EXIF_ASCII_PREFIX.length; i2++) {
                                if (this.bytes[i2] != ExifInterface.EXIF_ASCII_PREFIX[i2]) {
                                    z2 = false;
                                    if (z2) {
                                        length = ExifInterface.EXIF_ASCII_PREFIX.length;
                                    }
                                }
                            }
                            if (z2) {
                                length = ExifInterface.EXIF_ASCII_PREFIX.length;
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        while (length < this.numberOfComponents && (b3 = this.bytes[length]) != 0) {
                            if (b3 >= 32) {
                                sb.append((char) b3);
                            } else {
                                sb.append('?');
                            }
                            length++;
                        }
                        return sb.toString();
                    case 3:
                        int[] iArr = new int[this.numberOfComponents];
                        while (length < this.numberOfComponents) {
                            iArr[length] = byteOrderedDataInputStream.readUnsignedShort();
                            length++;
                        }
                        return iArr;
                    case 4:
                        long[] jArr = new long[this.numberOfComponents];
                        while (length < this.numberOfComponents) {
                            jArr[length] = byteOrderedDataInputStream.readUnsignedInt();
                            length++;
                        }
                        return jArr;
                    case 5:
                        Rational[] rationalArr = new Rational[this.numberOfComponents];
                        while (length < this.numberOfComponents) {
                            rationalArr[length] = new Rational(byteOrderedDataInputStream.readUnsignedInt(), byteOrderedDataInputStream.readUnsignedInt());
                            length++;
                        }
                        return rationalArr;
                    case 8:
                        int[] iArr2 = new int[this.numberOfComponents];
                        while (length < this.numberOfComponents) {
                            iArr2[length] = byteOrderedDataInputStream.readShort();
                            length++;
                        }
                        return iArr2;
                    case 9:
                        int[] iArr3 = new int[this.numberOfComponents];
                        while (length < this.numberOfComponents) {
                            iArr3[length] = byteOrderedDataInputStream.readInt();
                            length++;
                        }
                        return iArr3;
                    case 10:
                        Rational[] rationalArr2 = new Rational[this.numberOfComponents];
                        while (length < this.numberOfComponents) {
                            rationalArr2[length] = new Rational(byteOrderedDataInputStream.readInt(), byteOrderedDataInputStream.readInt());
                            length++;
                        }
                        return rationalArr2;
                    case 11:
                        double[] dArr = new double[this.numberOfComponents];
                        while (length < this.numberOfComponents) {
                            dArr[length] = byteOrderedDataInputStream.readFloat();
                            length++;
                        }
                        return dArr;
                    case 12:
                        double[] dArr2 = new double[this.numberOfComponents];
                        while (length < this.numberOfComponents) {
                            dArr2[length] = byteOrderedDataInputStream.readDouble();
                            length++;
                        }
                        return dArr2;
                    default:
                        return null;
                }
            } catch (IOException e2) {
                Log.w(ExifInterface.TAG, "IOException occurred during reading a value", e2);
                return null;
            }
        }

        public double getDoubleValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            }
            if (value instanceof String) {
                return Double.parseDouble((String) value);
            }
            if (value instanceof long[]) {
                long[] jArr = (long[]) value;
                if (jArr.length == 1) {
                    return jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (value instanceof int[]) {
                int[] iArr = (int[]) value;
                if (iArr.length == 1) {
                    return iArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (value instanceof double[]) {
                double[] dArr = (double[]) value;
                if (dArr.length == 1) {
                    return dArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(value instanceof Rational[])) {
                throw new NumberFormatException("Couldn't find a double value");
            }
            Rational[] rationalArr = (Rational[]) value;
            if (rationalArr.length == 1) {
                return rationalArr[0].calculate();
            }
            throw new NumberFormatException("There are more than one component");
        }

        public int getIntValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            }
            if (value instanceof String) {
                return Integer.parseInt((String) value);
            }
            if (value instanceof long[]) {
                long[] jArr = (long[]) value;
                if (jArr.length == 1) {
                    return (int) jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(value instanceof int[])) {
                throw new NumberFormatException("Couldn't find a integer value");
            }
            int[] iArr = (int[]) value;
            if (iArr.length == 1) {
                return iArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }

        public String getStringValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value == null) {
                return null;
            }
            if (value instanceof String) {
                return (String) value;
            }
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            if (value instanceof long[]) {
                long[] jArr = (long[]) value;
                while (i2 < jArr.length) {
                    sb.append(jArr[i2]);
                    i2++;
                    if (i2 != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (value instanceof int[]) {
                int[] iArr = (int[]) value;
                while (i2 < iArr.length) {
                    sb.append(iArr[i2]);
                    i2++;
                    if (i2 != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (value instanceof double[]) {
                double[] dArr = (double[]) value;
                while (i2 < dArr.length) {
                    sb.append(dArr[i2]);
                    i2++;
                    if (i2 != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (!(value instanceof Rational[])) {
                return null;
            }
            Rational[] rationalArr = (Rational[]) value;
            while (i2 < rationalArr.length) {
                sb.append(rationalArr[i2].numerator);
                sb.append('/');
                sb.append(rationalArr[i2].denominator);
                i2++;
                if (i2 != rationalArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }

        public int size() {
            return ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[this.format] * this.numberOfComponents;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("(");
            sb.append(ExifInterface.IFD_FORMAT_NAMES[this.format]);
            sb.append(", data length:");
            return c.m(sb, this.bytes.length, ")");
        }

        private ExifAttribute(int i2, int i3, byte[] bArr) {
            this.format = i2;
            this.numberOfComponents = i3;
            this.bytes = bArr;
        }

        public static ExifAttribute createDouble(double d2, ByteOrder byteOrder) {
            return createDouble(new double[]{d2}, byteOrder);
        }

        public static ExifAttribute createSLong(int i2, ByteOrder byteOrder) {
            return createSLong(new int[]{i2}, byteOrder);
        }

        public static ExifAttribute createULong(long j2, ByteOrder byteOrder) {
            return createULong(new long[]{j2}, byteOrder);
        }

        public static ExifAttribute createUShort(int i2, ByteOrder byteOrder) {
            return createUShort(new int[]{i2}, byteOrder);
        }

        public static ExifAttribute createSRational(Rational rational, ByteOrder byteOrder) {
            return createSRational(new Rational[]{rational}, byteOrder);
        }

        public static ExifAttribute createURational(Rational rational, ByteOrder byteOrder) {
            return createURational(new Rational[]{rational}, byteOrder);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IfdType {
    }

    public static class Rational {
        public final long denominator;
        public final long numerator;

        public double calculate() {
            return this.numerator / this.denominator;
        }

        public String toString() {
            return this.numerator + "/" + this.denominator;
        }

        private Rational(long j2, long j3) {
            if (j3 == 0) {
                this.numerator = 0L;
                this.denominator = 1L;
            } else {
                this.numerator = j2;
                this.denominator = j3;
            }
        }
    }

    static {
        int i2 = 3;
        int i3 = 4;
        int i4 = 6;
        int i5 = 1;
        int i6 = 3;
        int i7 = 4;
        int i8 = 2;
        int i9 = 5;
        int i10 = 7;
        int i11 = 3;
        int i12 = 4;
        ExifTag[] exifTagArr = {new ExifTag(TAG_NEW_SUBFILE_TYPE, 254, i3), new ExifTag(TAG_SUBFILE_TYPE, 255, i3), new ExifTag(TAG_IMAGE_WIDTH, 256, i6, i7), new ExifTag(TAG_IMAGE_LENGTH, 257, i6, i7), new ExifTag(TAG_BITS_PER_SAMPLE, 258, i2), new ExifTag(TAG_COMPRESSION, 259, i2), new ExifTag(TAG_PHOTOMETRIC_INTERPRETATION, 262, i2), new ExifTag(TAG_IMAGE_DESCRIPTION, 270, i8), new ExifTag(TAG_MAKE, 271, i8), new ExifTag(TAG_MODEL, 272, i8), new ExifTag(TAG_STRIP_OFFSETS, 273, 3, 4), new ExifTag(TAG_ORIENTATION, 274, i2), new ExifTag(TAG_SAMPLES_PER_PIXEL, 277, i2), new ExifTag(TAG_ROWS_PER_STRIP, 278, i11, i12), new ExifTag(TAG_STRIP_BYTE_COUNTS, 279, i11, i12), new ExifTag(TAG_X_RESOLUTION, 282, i9), new ExifTag(TAG_Y_RESOLUTION, 283, i9), new ExifTag(TAG_PLANAR_CONFIGURATION, 284, i2), new ExifTag(TAG_RESOLUTION_UNIT, 296, i2), new ExifTag(TAG_TRANSFER_FUNCTION, 301, i2), new ExifTag(TAG_SOFTWARE, 305, i8), new ExifTag(TAG_DATETIME, 306, i8), new ExifTag(TAG_ARTIST, 315, i8), new ExifTag(TAG_WHITE_POINT, 318, i9), new ExifTag(TAG_PRIMARY_CHROMATICITIES, 319, i9), new ExifTag(TAG_SUB_IFD_POINTER, 330, i3), new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT, 513, i3), new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, 514, i3), new ExifTag(TAG_Y_CB_CR_COEFFICIENTS, MetricsProto.MetricsEvent.DIALOG_CUSTOM_LIST_CONFIRMATION, i9), new ExifTag(TAG_Y_CB_CR_SUB_SAMPLING, MetricsProto.MetricsEvent.DIALOG_APN_EDITOR_ERROR, i2), new ExifTag(TAG_Y_CB_CR_POSITIONING, MetricsProto.MetricsEvent.DIALOG_OWNER_INFO_SETTINGS, i2), new ExifTag(TAG_REFERENCE_BLACK_WHITE, 532, i9), new ExifTag(TAG_COPYRIGHT, 33432, i8), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, i3), new ExifTag(TAG_GPS_INFO_IFD_POINTER, GLES30.GL_DRAW_BUFFER0, i3), new ExifTag(TAG_RW2_SENSOR_TOP_BORDER, i3, i3), new ExifTag(TAG_RW2_SENSOR_LEFT_BORDER, i9, i3), new ExifTag(TAG_RW2_SENSOR_BOTTOM_BORDER, i4, i3), new ExifTag(TAG_RW2_SENSOR_RIGHT_BORDER, i10, i3), new ExifTag(TAG_RW2_ISO, 23, i2), new ExifTag(TAG_RW2_JPG_FROM_RAW, 46, i10)};
        IFD_TIFF_TAGS = exifTagArr;
        int i13 = 10;
        int i14 = 3;
        int i15 = 4;
        ExifTag[] exifTagArr2 = {new ExifTag(TAG_EXPOSURE_TIME, 33434, i9), new ExifTag("FNumber", 33437, i9), new ExifTag(TAG_EXPOSURE_PROGRAM, 34850, i2), new ExifTag(TAG_SPECTRAL_SENSITIVITY, GLES30.GL_MAX_DRAW_BUFFERS, i8), new ExifTag("ISOSpeedRatings", GLES30.GL_DRAW_BUFFER2, i2), new ExifTag(TAG_OECF, GLES30.GL_DRAW_BUFFER3, i10), new ExifTag(TAG_EXIF_VERSION, 36864, i8), new ExifTag(TAG_DATETIME_ORIGINAL, 36867, i8), new ExifTag(TAG_DATETIME_DIGITIZED, 36868, i8), new ExifTag(TAG_COMPONENTS_CONFIGURATION, 37121, i10), new ExifTag(TAG_COMPRESSED_BITS_PER_PIXEL, 37122, i9), new ExifTag(TAG_SHUTTER_SPEED_VALUE, 37377, i13), new ExifTag(TAG_APERTURE_VALUE, 37378, i9), new ExifTag(TAG_BRIGHTNESS_VALUE, 37379, i13), new ExifTag(TAG_EXPOSURE_BIAS_VALUE, 37380, i13), new ExifTag(TAG_MAX_APERTURE_VALUE, 37381, i9), new ExifTag(TAG_SUBJECT_DISTANCE, 37382, i9), new ExifTag(TAG_METERING_MODE, 37383, i2), new ExifTag(TAG_LIGHT_SOURCE, 37384, i2), new ExifTag(TAG_FLASH, 37385, i2), new ExifTag(TAG_FOCAL_LENGTH, 37386, i9), new ExifTag(TAG_SUBJECT_AREA, 37396, i2), new ExifTag(TAG_MAKER_NOTE, 37500, i10), new ExifTag(TAG_USER_COMMENT, 37510, i10), new ExifTag(TAG_SUBSEC_TIME, 37520, i8), new ExifTag("SubSecTimeOriginal", 37521, i8), new ExifTag("SubSecTimeDigitized", 37522, i8), new ExifTag(TAG_FLASHPIX_VERSION, 40960, i10), new ExifTag(TAG_COLOR_SPACE, 40961, i2), new ExifTag(TAG_PIXEL_X_DIMENSION, 40962, i14, i15), new ExifTag(TAG_PIXEL_Y_DIMENSION, 40963, i14, i15), new ExifTag(TAG_RELATED_SOUND_FILE, 40964, i8), new ExifTag(TAG_INTEROPERABILITY_IFD_POINTER, 40965, i3), new ExifTag(TAG_FLASH_ENERGY, 41483, i9), new ExifTag(TAG_SPATIAL_FREQUENCY_RESPONSE, 41484, i10), new ExifTag(TAG_FOCAL_PLANE_X_RESOLUTION, 41486, i9), new ExifTag(TAG_FOCAL_PLANE_Y_RESOLUTION, 41487, i9), new ExifTag(TAG_FOCAL_PLANE_RESOLUTION_UNIT, 41488, i2), new ExifTag(TAG_SUBJECT_LOCATION, 41492, i2), new ExifTag(TAG_EXPOSURE_INDEX, 41493, i9), new ExifTag(TAG_SENSING_METHOD, 41495, i2), new ExifTag(TAG_FILE_SOURCE, 41728, i10), new ExifTag(TAG_SCENE_TYPE, 41729, i10), new ExifTag(TAG_CFA_PATTERN, 41730, i10), new ExifTag(TAG_CUSTOM_RENDERED, 41985, i2), new ExifTag(TAG_EXPOSURE_MODE, 41986, i2), new ExifTag(TAG_WHITE_BALANCE, 41987, i2), new ExifTag(TAG_DIGITAL_ZOOM_RATIO, 41988, i9), new ExifTag(TAG_FOCAL_LENGTH_IN_35MM_FILM, 41989, i2), new ExifTag(TAG_SCENE_CAPTURE_TYPE, 41990, i2), new ExifTag(TAG_GAIN_CONTROL, 41991, i2), new ExifTag(TAG_CONTRAST, 41992, i2), new ExifTag(TAG_SATURATION, 41993, i2), new ExifTag(TAG_SHARPNESS, 41994, i2), new ExifTag(TAG_DEVICE_SETTING_DESCRIPTION, 41995, i10), new ExifTag(TAG_SUBJECT_DISTANCE_RANGE, 41996, i2), new ExifTag(TAG_IMAGE_UNIQUE_ID, 42016, i8), new ExifTag(TAG_DNG_VERSION, 50706, i5), new ExifTag(TAG_DEFAULT_CROP_SIZE, 50720, i14, i15), new ExifTag(TAG_CAMERA_TYPE, 40966, i3)};
        IFD_EXIF_TAGS = exifTagArr2;
        ExifTag[] exifTagArr3 = {new ExifTag(TAG_GPS_VERSION_ID, 0, i5), new ExifTag(TAG_GPS_LATITUDE_REF, i5, i8), new ExifTag(TAG_GPS_LATITUDE, i8, i9), new ExifTag(TAG_GPS_LONGITUDE_REF, i2, i8), new ExifTag(TAG_GPS_LONGITUDE, i3, i9), new ExifTag(TAG_GPS_ALTITUDE_REF, i9, i5), new ExifTag(TAG_GPS_ALTITUDE, i4, i9), new ExifTag(TAG_GPS_TIMESTAMP, i10, i9), new ExifTag(TAG_GPS_SATELLITES, 8, i8), new ExifTag(TAG_GPS_STATUS, 9, i8), new ExifTag(TAG_GPS_MEASURE_MODE, 10, i8), new ExifTag(TAG_GPS_DOP, 11, i9), new ExifTag(TAG_GPS_SPEED_REF, 12, i8), new ExifTag(TAG_GPS_SPEED, 13, i9), new ExifTag(TAG_GPS_TRACK_REF, 14, i8), new ExifTag(TAG_GPS_TRACK, 15, i9), new ExifTag(TAG_GPS_IMG_DIRECTION_REF, 16, i8), new ExifTag(TAG_GPS_IMG_DIRECTION, 17, i9), new ExifTag(TAG_GPS_MAP_DATUM, 18, i8), new ExifTag(TAG_GPS_DEST_LATITUDE_REF, 19, i8), new ExifTag(TAG_GPS_DEST_LATITUDE, 20, i9), new ExifTag(TAG_GPS_DEST_LONGITUDE_REF, 21, i8), new ExifTag(TAG_GPS_DEST_LONGITUDE, 22, i9), new ExifTag(TAG_GPS_DEST_BEARING_REF, 23, i8), new ExifTag(TAG_GPS_DEST_BEARING, 24, i9), new ExifTag(TAG_GPS_DEST_DISTANCE_REF, 25, i8), new ExifTag(TAG_GPS_DEST_DISTANCE, 26, i9), new ExifTag(TAG_GPS_PROCESSING_METHOD, 27, i10), new ExifTag(TAG_GPS_AREA_INFORMATION, 28, i10), new ExifTag(TAG_GPS_DATESTAMP, 29, i8), new ExifTag(TAG_GPS_DIFFERENTIAL, 30, i2)};
        IFD_GPS_TAGS = exifTagArr3;
        ExifTag[] exifTagArr4 = {new ExifTag(TAG_INTEROPERABILITY_INDEX, i5, i8)};
        IFD_INTEROPERABILITY_TAGS = exifTagArr4;
        int i16 = 3;
        int i17 = 4;
        ExifTag[] exifTagArr5 = {new ExifTag(TAG_NEW_SUBFILE_TYPE, 254, i3), new ExifTag(TAG_SUBFILE_TYPE, 255, i3), new ExifTag(TAG_THUMBNAIL_IMAGE_WIDTH, 256, i16, i17), new ExifTag(TAG_THUMBNAIL_IMAGE_LENGTH, 257, 3, 4), new ExifTag(TAG_BITS_PER_SAMPLE, 258, i2), new ExifTag(TAG_COMPRESSION, 259, i2), new ExifTag(TAG_PHOTOMETRIC_INTERPRETATION, 262, i2), new ExifTag(TAG_IMAGE_DESCRIPTION, 270, i8), new ExifTag(TAG_MAKE, 271, i8), new ExifTag(TAG_MODEL, 272, i8), new ExifTag(TAG_STRIP_OFFSETS, 273, i16, i17), new ExifTag(TAG_ORIENTATION, 274, i2), new ExifTag(TAG_SAMPLES_PER_PIXEL, 277, i2), new ExifTag(TAG_ROWS_PER_STRIP, 278, i16, i17), new ExifTag(TAG_STRIP_BYTE_COUNTS, 279, i16, i17), new ExifTag(TAG_X_RESOLUTION, 282, i9), new ExifTag(TAG_Y_RESOLUTION, 283, i9), new ExifTag(TAG_PLANAR_CONFIGURATION, 284, i2), new ExifTag(TAG_RESOLUTION_UNIT, 296, i2), new ExifTag(TAG_TRANSFER_FUNCTION, 301, i2), new ExifTag(TAG_SOFTWARE, 305, i8), new ExifTag(TAG_DATETIME, 306, i8), new ExifTag(TAG_ARTIST, 315, i8), new ExifTag(TAG_WHITE_POINT, 318, i9), new ExifTag(TAG_PRIMARY_CHROMATICITIES, 319, i9), new ExifTag(TAG_SUB_IFD_POINTER, 330, i3), new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT, 513, i3), new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, 514, i3), new ExifTag(TAG_Y_CB_CR_COEFFICIENTS, MetricsProto.MetricsEvent.DIALOG_CUSTOM_LIST_CONFIRMATION, i9), new ExifTag(TAG_Y_CB_CR_SUB_SAMPLING, MetricsProto.MetricsEvent.DIALOG_APN_EDITOR_ERROR, i2), new ExifTag(TAG_Y_CB_CR_POSITIONING, MetricsProto.MetricsEvent.DIALOG_OWNER_INFO_SETTINGS, i2), new ExifTag(TAG_REFERENCE_BLACK_WHITE, 532, i9), new ExifTag(TAG_COPYRIGHT, 33432, i8), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, i3), new ExifTag(TAG_GPS_INFO_IFD_POINTER, GLES30.GL_DRAW_BUFFER0, i3), new ExifTag(TAG_DNG_VERSION, 50706, i5), new ExifTag(TAG_DEFAULT_CROP_SIZE, 50720, 3, 4)};
        IFD_THUMBNAIL_TAGS = exifTagArr5;
        TAG_RAF_IMAGE_SIZE = new ExifTag(TAG_STRIP_OFFSETS, 273, i2);
        ExifTag[] exifTagArr6 = {new ExifTag(TAG_ORF_THUMBNAIL_IMAGE, 256, 7), new ExifTag(TAG_ORF_CAMERA_SETTINGS_IFD_POINTER, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, i3), new ExifTag(TAG_ORF_IMAGE_PROCESSING_IFD_POINTER, 8256, i3)};
        ORF_MAKER_NOTE_TAGS = exifTagArr6;
        ExifTag[] exifTagArr7 = {new ExifTag(TAG_ORF_PREVIEW_IMAGE_START, 257, i3), new ExifTag(TAG_ORF_PREVIEW_IMAGE_LENGTH, 258, i3)};
        ORF_CAMERA_SETTINGS_TAGS = exifTagArr7;
        ExifTag[] exifTagArr8 = {new ExifTag(TAG_ORF_ASPECT_FRAME, SmsCbConstants.MESSAGE_ID_CMAS_ALERT_EXTREME_IMMEDIATE_OBSERVED, i2)};
        ORF_IMAGE_PROCESSING_TAGS = exifTagArr8;
        ExifTag[] exifTagArr9 = {new ExifTag(TAG_COLOR_SPACE, 55, i2)};
        PEF_TAGS = exifTagArr9;
        int i18 = 4;
        ExifTag[][] exifTagArr10 = {exifTagArr, exifTagArr2, exifTagArr3, exifTagArr4, exifTagArr5, exifTagArr, exifTagArr6, exifTagArr7, exifTagArr8, exifTagArr9};
        EXIF_TAGS = exifTagArr10;
        EXIF_POINTER_TAGS = new ExifTag[]{new ExifTag(TAG_SUB_IFD_POINTER, 330, i18), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, i18), new ExifTag(TAG_GPS_INFO_IFD_POINTER, GLES30.GL_DRAW_BUFFER0, i18), new ExifTag(TAG_INTEROPERABILITY_IFD_POINTER, 40965, i18), new ExifTag(TAG_ORF_CAMERA_SETTINGS_IFD_POINTER, MtpConstants.RESPONSE_SPECIFICATION_OF_DESTINATION_UNSUPPORTED, i5), new ExifTag(TAG_ORF_IMAGE_PROCESSING_IFD_POINTER, 8256, i5)};
        JPEG_INTERCHANGE_FORMAT_TAG = new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT, 513, i18);
        JPEG_INTERCHANGE_FORMAT_LENGTH_TAG = new ExifTag(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, 514, i18);
        sExifTagMapsForReading = new HashMap[exifTagArr10.length];
        sExifTagMapsForWriting = new HashMap[exifTagArr10.length];
        sTagSetForCompatibility = new HashSet<>(Arrays.asList("FNumber", TAG_DIGITAL_ZOOM_RATIO, TAG_EXPOSURE_TIME, TAG_SUBJECT_DISTANCE, TAG_GPS_TIMESTAMP));
        sExifPointerTagMap = new HashMap();
        Charset charsetForName = Charset.forName("US-ASCII");
        ASCII = charsetForName;
        IDENTIFIER_EXIF_APP1 = "Exif\u0000\u0000".getBytes(charsetForName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        sFormatter = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(Time.TIMEZONE_UTC));
        int i19 = 0;
        while (true) {
            ExifTag[][] exifTagArr11 = EXIF_TAGS;
            if (i19 >= exifTagArr11.length) {
                HashMap map = sExifPointerTagMap;
                ExifTag[] exifTagArr12 = EXIF_POINTER_TAGS;
                map.put(Integer.valueOf(exifTagArr12[0].number), 5);
                map.put(Integer.valueOf(exifTagArr12[1].number), 1);
                map.put(Integer.valueOf(exifTagArr12[2].number), 2);
                map.put(Integer.valueOf(exifTagArr12[3].number), 3);
                map.put(Integer.valueOf(exifTagArr12[4].number), 7);
                map.put(Integer.valueOf(exifTagArr12[5].number), 8);
                sNonZeroTimePattern = Pattern.compile(".*[1-9].*");
                sGpsTimestampPattern = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
            sExifTagMapsForReading[i19] = new HashMap();
            sExifTagMapsForWriting[i19] = new HashMap();
            for (ExifTag exifTag : exifTagArr11[i19]) {
                sExifTagMapsForReading[i19].put(Integer.valueOf(exifTag.number), exifTag);
                sExifTagMapsForWriting[i19].put(exifTag.name, exifTag);
            }
            i19++;
        }
    }

    public ExifInterface(String str) throws Throwable {
        this.mAttributes = new HashMap[EXIF_TAGS.length];
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (str == null) {
            throw new IllegalArgumentException("filename cannot be null");
        }
        FileInputStream fileInputStream = null;
        this.mAssetInputStream = null;
        this.mFilename = str;
        this.mIsInputStream = false;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                if (isSeekableFD(fileInputStream2.getFD())) {
                    this.mSeekableFileDescriptor = fileInputStream2.getFD();
                } else {
                    this.mSeekableFileDescriptor = null;
                }
                loadAttributes(fileInputStream2);
                IoUtils.closeQuietly(fileInputStream2);
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                IoUtils.closeQuietly(fileInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void addDefaultValuesForCompatibility() {
        String attribute = getAttribute(TAG_DATETIME_ORIGINAL);
        if (attribute != null && getAttribute(TAG_DATETIME) == null) {
            this.mAttributes[0].put(TAG_DATETIME, ExifAttribute.createString(attribute));
        }
        if (getAttribute(TAG_IMAGE_WIDTH) == null) {
            this.mAttributes[0].put(TAG_IMAGE_WIDTH, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute(TAG_IMAGE_LENGTH) == null) {
            this.mAttributes[0].put(TAG_IMAGE_LENGTH, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute(TAG_ORIENTATION) == null) {
            this.mAttributes[0].put(TAG_ORIENTATION, ExifAttribute.createUShort(0, this.mExifByteOrder));
        }
        if (getAttribute(TAG_LIGHT_SOURCE) == null) {
            this.mAttributes[1].put(TAG_LIGHT_SOURCE, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
    }

    private boolean containsMatch(byte[] bArr, byte[] bArr2) {
        for (int i2 = 0; i2 < bArr.length - bArr2.length; i2++) {
            for (int i3 = 0; i3 < bArr2.length && bArr[i2 + i3] == bArr2[i3]; i3++) {
                if (i3 == bArr2.length - 1) {
                    return true;
                }
            }
        }
        return false;
    }

    private static float convertRationalLatLonToFloat(String str, String str2) {
        try {
            String[] strArrSplit = str.split(",");
            String[] strArrSplit2 = strArrSplit[0].split("/");
            double d2 = Double.parseDouble(strArrSplit2[0].trim()) / Double.parseDouble(strArrSplit2[1].trim());
            String[] strArrSplit3 = strArrSplit[1].split("/");
            double d3 = Double.parseDouble(strArrSplit3[0].trim()) / Double.parseDouble(strArrSplit3[1].trim());
            String[] strArrSplit4 = strArrSplit[2].split("/");
            double d4 = ((Double.parseDouble(strArrSplit4[0].trim()) / Double.parseDouble(strArrSplit4[1].trim())) / 3600.0d) + (d3 / 60.0d) + d2;
            return (str2.equals("S") || str2.equals("W")) ? (float) (-d4) : (float) d4;
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException unused) {
            throw new IllegalArgumentException();
        }
    }

    private ExifAttribute getExifAttribute(String str) {
        for (int i2 = 0; i2 < EXIF_TAGS.length; i2++) {
            Object obj = this.mAttributes[i2].get(str);
            if (obj != null) {
                return (ExifAttribute) obj;
            }
        }
        return null;
    }

    private void getHeifAttributes(final ByteOrderedDataInputStream byteOrderedDataInputStream) {
        int i2;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            FileDescriptor fileDescriptor = this.mSeekableFileDescriptor;
            if (fileDescriptor != null) {
                mediaMetadataRetriever.setDataSource(fileDescriptor);
            } else {
                mediaMetadataRetriever.setDataSource(new MediaDataSource() { // from class: android.media.ExifInterface.1
                    long mPosition;

                    @Override // java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                    }

                    @Override // android.media.MediaDataSource
                    public long getSize() {
                        return -1L;
                    }

                    @Override // android.media.MediaDataSource
                    public int readAt(long j2, byte[] bArr, int i3, int i4) throws IOException {
                        if (i4 == 0) {
                            return 0;
                        }
                        if (j2 < 0) {
                            return -1;
                        }
                        if (this.mPosition != j2) {
                            byteOrderedDataInputStream.seek(j2);
                            this.mPosition = j2;
                        }
                        int i5 = byteOrderedDataInputStream.read(bArr, i3, i4);
                        if (i5 < 0) {
                            this.mPosition = -1L;
                            return -1;
                        }
                        this.mPosition += (long) i5;
                        return i5;
                    }
                });
            }
            if ("yes".equals(mediaMetadataRetriever.extractMetadata(17))) {
                String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                if (strExtractMetadata != null) {
                    this.mAttributes[0].put(TAG_IMAGE_WIDTH, ExifAttribute.createUShort(Integer.parseInt(strExtractMetadata), this.mExifByteOrder));
                }
                if (strExtractMetadata2 != null) {
                    this.mAttributes[0].put(TAG_IMAGE_LENGTH, ExifAttribute.createUShort(Integer.parseInt(strExtractMetadata2), this.mExifByteOrder));
                }
                String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(24);
                if (strExtractMetadata3 != null) {
                    int i3 = Integer.parseInt(strExtractMetadata3);
                    if (i3 == 90) {
                        i2 = 6;
                    } else if (i3 != 180) {
                        i2 = i3 != 270 ? 1 : 8;
                    } else {
                        i2 = 3;
                    }
                    this.mAttributes[0].put(TAG_ORIENTATION, ExifAttribute.createUShort(i2, this.mExifByteOrder));
                }
            }
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0057 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:27:0x005d  */
    /* JADX WARN: Code duplicated, block: B:78:0x0088 A[SYNTHETIC] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private void getJpegAttributes(android.media.ExifInterface.ByteOrderedDataInputStream r10, int r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.media.ExifInterface.getJpegAttributes(android.media.ExifInterface$ByteOrderedDataInputStream, int, int):void");
    }

    private int getMimeType(BufferedInputStream bufferedInputStream) throws IOException {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (isJpegFormat(bArr)) {
            return 4;
        }
        if (isRafFormat(bArr)) {
            return 9;
        }
        if (isHeifFormat(bArr)) {
            return 12;
        }
        if (isOrfFormat(bArr)) {
            return 7;
        }
        return isRw2Format(bArr) ? 10 : 0;
    }

    private void getOrfAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        int[] iArr;
        int i2;
        int i3;
        int i4;
        int i5;
        getRawAttributes(byteOrderedDataInputStream);
        ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[1].get(TAG_MAKER_NOTE);
        if (exifAttribute != null) {
            ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(exifAttribute.bytes);
            byteOrderedDataInputStream2.setByteOrder(this.mExifByteOrder);
            byte[] bArr = ORF_MAKER_NOTE_HEADER_1;
            byte[] bArr2 = new byte[bArr.length];
            byteOrderedDataInputStream2.readFully(bArr2);
            byteOrderedDataInputStream2.seek(0L);
            byte[] bArr3 = ORF_MAKER_NOTE_HEADER_2;
            byte[] bArr4 = new byte[bArr3.length];
            byteOrderedDataInputStream2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                byteOrderedDataInputStream2.seek(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                byteOrderedDataInputStream2.seek(12L);
            }
            readImageFileDirectory(byteOrderedDataInputStream2, 6);
            ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[7].get(TAG_ORF_PREVIEW_IMAGE_START);
            ExifAttribute exifAttribute3 = (ExifAttribute) this.mAttributes[7].get(TAG_ORF_PREVIEW_IMAGE_LENGTH);
            if (exifAttribute2 != null && exifAttribute3 != null) {
                this.mAttributes[5].put(TAG_JPEG_INTERCHANGE_FORMAT, exifAttribute2);
                this.mAttributes[5].put(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, exifAttribute3);
            }
            ExifAttribute exifAttribute4 = (ExifAttribute) this.mAttributes[8].get(TAG_ORF_ASPECT_FRAME);
            if (exifAttribute4 == null || (i2 = (iArr = (int[]) exifAttribute4.getValue(this.mExifByteOrder))[2]) <= (i3 = iArr[0]) || (i4 = iArr[3]) <= (i5 = iArr[1])) {
                return;
            }
            int i6 = (i2 - i3) + 1;
            int i7 = (i4 - i5) + 1;
            if (i6 < i7) {
                int i8 = i6 + i7;
                i7 = i8 - i7;
                i6 = i8 - i7;
            }
            ExifAttribute exifAttributeCreateUShort = ExifAttribute.createUShort(i6, this.mExifByteOrder);
            ExifAttribute exifAttributeCreateUShort2 = ExifAttribute.createUShort(i7, this.mExifByteOrder);
            this.mAttributes[0].put(TAG_IMAGE_WIDTH, exifAttributeCreateUShort);
            this.mAttributes[0].put(TAG_IMAGE_LENGTH, exifAttributeCreateUShort2);
        }
    }

    private void getRafAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        byteOrderedDataInputStream.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byteOrderedDataInputStream.read(bArr);
        byteOrderedDataInputStream.skipBytes(4);
        byteOrderedDataInputStream.read(bArr2);
        int i2 = ByteBuffer.wrap(bArr).getInt();
        int i3 = ByteBuffer.wrap(bArr2).getInt();
        getJpegAttributes(byteOrderedDataInputStream, i2, 5);
        byteOrderedDataInputStream.seek(i3);
        byteOrderedDataInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        int i4 = byteOrderedDataInputStream.readInt();
        for (int i5 = 0; i5 < i4; i5++) {
            int unsignedShort = byteOrderedDataInputStream.readUnsignedShort();
            int unsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            if (unsignedShort == TAG_RAF_IMAGE_SIZE.number) {
                short s2 = byteOrderedDataInputStream.readShort();
                short s3 = byteOrderedDataInputStream.readShort();
                ExifAttribute exifAttributeCreateUShort = ExifAttribute.createUShort(s2, this.mExifByteOrder);
                ExifAttribute exifAttributeCreateUShort2 = ExifAttribute.createUShort(s3, this.mExifByteOrder);
                this.mAttributes[0].put(TAG_IMAGE_LENGTH, exifAttributeCreateUShort);
                this.mAttributes[0].put(TAG_IMAGE_WIDTH, exifAttributeCreateUShort2);
                return;
            }
            byteOrderedDataInputStream.skipBytes(unsignedShort2);
        }
    }

    private void getRawAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        ExifAttribute exifAttribute;
        parseTiffHeaders(byteOrderedDataInputStream, byteOrderedDataInputStream.available());
        readImageFileDirectory(byteOrderedDataInputStream, 0);
        updateImageSizeValues(byteOrderedDataInputStream, 0);
        updateImageSizeValues(byteOrderedDataInputStream, 5);
        updateImageSizeValues(byteOrderedDataInputStream, 4);
        validateImages(byteOrderedDataInputStream);
        if (this.mMimeType != 8 || (exifAttribute = (ExifAttribute) this.mAttributes[1].get(TAG_MAKER_NOTE)) == null) {
            return;
        }
        ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(exifAttribute.bytes);
        byteOrderedDataInputStream2.setByteOrder(this.mExifByteOrder);
        byteOrderedDataInputStream2.seek(6L);
        readImageFileDirectory(byteOrderedDataInputStream2, 9);
        ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[9].get(TAG_COLOR_SPACE);
        if (exifAttribute2 != null) {
            this.mAttributes[1].put(TAG_COLOR_SPACE, exifAttribute2);
        }
    }

    private void getRw2Attributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        getRawAttributes(byteOrderedDataInputStream);
        if (((ExifAttribute) this.mAttributes[0].get(TAG_RW2_JPG_FROM_RAW)) != null) {
            getJpegAttributes(byteOrderedDataInputStream, this.mRw2JpgFromRawOffset, 5);
        }
        ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[0].get(TAG_RW2_ISO);
        ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[1].get("ISOSpeedRatings");
        if (exifAttribute == null || exifAttribute2 != null) {
            return;
        }
        this.mAttributes[1].put("ISOSpeedRatings", exifAttribute);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0060  */
    private static Pair<Integer, Integer> guessDataFormat(String str) {
        int iIntValue;
        if (!str.contains(",")) {
            if (!str.contains("/")) {
                try {
                    try {
                        Long lValueOf = Long.valueOf(Long.parseLong(str));
                        if (lValueOf.longValue() < 0 || lValueOf.longValue() > 65535) {
                            return lValueOf.longValue() < 0 ? new Pair<>(9, -1) : new Pair<>(4, -1);
                        }
                        return new Pair<>(3, 4);
                    } catch (NumberFormatException unused) {
                        return new Pair<>(2, -1);
                    }
                } catch (NumberFormatException unused2) {
                    Double.parseDouble(str);
                    return new Pair<>(12, -1);
                }
            }
            String[] strArrSplit = str.split("/");
            if (strArrSplit.length == 2) {
                try {
                    long j2 = (long) Double.parseDouble(strArrSplit[0]);
                    long j3 = (long) Double.parseDouble(strArrSplit[1]);
                    if (j2 >= 0 && j3 >= 0) {
                        if (j2 <= 2147483647L && j3 <= 2147483647L) {
                            return new Pair<>(10, 5);
                        }
                        return new Pair<>(5, -1);
                    }
                    return new Pair<>(10, -1);
                } catch (NumberFormatException unused3) {
                }
            }
            return new Pair<>(2, -1);
        }
        String[] strArrSplit2 = str.split(",");
        Pair<Integer, Integer> pairGuessDataFormat = guessDataFormat(strArrSplit2[0]);
        if (pairGuessDataFormat.first.intValue() == 2) {
            return pairGuessDataFormat;
        }
        for (int i2 = 1; i2 < strArrSplit2.length; i2++) {
            Pair<Integer, Integer> pairGuessDataFormat2 = guessDataFormat(strArrSplit2[i2]);
            Integer num = pairGuessDataFormat2.first;
            Integer num2 = pairGuessDataFormat.first;
            int iIntValue2 = (num == num2 || pairGuessDataFormat2.second == num2) ? num2.intValue() : -1;
            if (pairGuessDataFormat.second.intValue() != -1) {
                Integer num3 = pairGuessDataFormat2.first;
                Integer num4 = pairGuessDataFormat.second;
                if (num3 == num4 || pairGuessDataFormat2.second == num4) {
                    iIntValue = num4.intValue();
                } else {
                    iIntValue = -1;
                }
            } else {
                iIntValue = -1;
            }
            if (iIntValue2 == -1 && iIntValue == -1) {
                return new Pair<>(2, -1);
            }
            if (iIntValue2 == -1) {
                pairGuessDataFormat = new Pair<>(Integer.valueOf(iIntValue), -1);
            } else if (iIntValue == -1) {
                pairGuessDataFormat = new Pair<>(Integer.valueOf(iIntValue2), -1);
            }
        }
        return pairGuessDataFormat;
    }

    private void handleThumbnailFromJfif(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap map) throws IOException {
        int i2;
        ExifAttribute exifAttribute = (ExifAttribute) map.get(TAG_JPEG_INTERCHANGE_FORMAT);
        ExifAttribute exifAttribute2 = (ExifAttribute) map.get(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
        if (exifAttribute == null || exifAttribute2 == null) {
            return;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        int iMin = Math.min(exifAttribute2.getIntValue(this.mExifByteOrder), byteOrderedDataInputStream.available() - intValue);
        int i3 = this.mMimeType;
        if (i3 != 4 && i3 != 9 && i3 != 10) {
            if (i3 == 7) {
                i2 = this.mOrfMakerNoteOffset;
            }
            if (intValue > 0 || iMin <= 0) {
            }
            this.mHasThumbnail = true;
            this.mThumbnailOffset = intValue;
            this.mThumbnailLength = iMin;
            this.mThumbnailCompression = 6;
            if (this.mFilename == null && this.mAssetInputStream == null && this.mSeekableFileDescriptor == null) {
                byte[] bArr = new byte[iMin];
                byteOrderedDataInputStream.seek(intValue);
                byteOrderedDataInputStream.readFully(bArr);
                this.mThumbnailBytes = bArr;
                return;
            }
            return;
        }
        i2 = this.mExifOffset;
        intValue += i2;
        if (intValue > 0) {
        }
    }

    private void handleThumbnailFromStrips(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap map) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) map.get(TAG_STRIP_OFFSETS);
        ExifAttribute exifAttribute2 = (ExifAttribute) map.get(TAG_STRIP_BYTE_COUNTS);
        if (exifAttribute == null || exifAttribute2 == null) {
            return;
        }
        long[] jArr = (long[]) exifAttribute.getValue(this.mExifByteOrder);
        long[] jArr2 = (long[]) exifAttribute2.getValue(this.mExifByteOrder);
        int iSum = (int) Arrays.stream(jArr2).sum();
        byte[] bArr = new byte[iSum];
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < jArr.length; i4++) {
            int i5 = (int) jArr[i4];
            int i6 = (int) jArr2[i4];
            int i7 = i5 - i2;
            if (i7 < 0) {
                Log.d(TAG, "Invalid strip offset value");
            }
            byteOrderedDataInputStream.seek(i7);
            int i8 = i2 + i7;
            byte[] bArr2 = new byte[i6];
            byteOrderedDataInputStream.read(bArr2);
            i2 = i8 + i6;
            System.arraycopy(bArr2, 0, bArr, i3, i6);
            i3 += i6;
        }
        this.mHasThumbnail = true;
        this.mThumbnailBytes = bArr;
        this.mThumbnailLength = iSum;
    }

    private boolean isHeifFormat(byte[] bArr) throws Throwable {
        long j2;
        ByteOrderedDataInputStream byteOrderedDataInputStream = null;
        try {
            ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(bArr);
            try {
                byteOrderedDataInputStream2.setByteOrder(ByteOrder.BIG_ENDIAN);
                long length = byteOrderedDataInputStream2.readInt();
                byte[] bArr2 = new byte[4];
                byteOrderedDataInputStream2.read(bArr2);
                if (!Arrays.equals(bArr2, HEIF_TYPE_FTYP)) {
                    byteOrderedDataInputStream2.close();
                    return false;
                }
                if (length == 1) {
                    length = byteOrderedDataInputStream2.readLong();
                    j2 = 16;
                    if (length < 16) {
                        byteOrderedDataInputStream2.close();
                        return false;
                    }
                } else {
                    j2 = 8;
                }
                if (length > bArr.length) {
                    length = bArr.length;
                }
                long j3 = length - j2;
                if (j3 < 8) {
                    byteOrderedDataInputStream2.close();
                    return false;
                }
                byte[] bArr3 = new byte[4];
                boolean z2 = false;
                boolean z3 = false;
                for (long j4 = 0; j4 < j3 / 4; j4++) {
                    if (byteOrderedDataInputStream2.read(bArr3) != 4) {
                        byteOrderedDataInputStream2.close();
                        return false;
                    }
                    if (j4 != 1) {
                        if (Arrays.equals(bArr3, HEIF_BRAND_MIF1)) {
                            z2 = true;
                        } else if (Arrays.equals(bArr3, HEIF_BRAND_HEIC)) {
                            z3 = true;
                        }
                        if (z2 && z3) {
                            byteOrderedDataInputStream2.close();
                            return true;
                        }
                    }
                }
                byteOrderedDataInputStream2.close();
            } catch (Exception unused) {
                byteOrderedDataInputStream = byteOrderedDataInputStream2;
                if (byteOrderedDataInputStream != null) {
                    byteOrderedDataInputStream.close();
                }
            } catch (Throwable th) {
                th = th;
                byteOrderedDataInputStream = byteOrderedDataInputStream2;
                if (byteOrderedDataInputStream != null) {
                    byteOrderedDataInputStream.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
        return false;
    }

    private static boolean isJpegFormat(byte[] bArr) {
        int i2 = 0;
        while (true) {
            byte[] bArr2 = JPEG_SIGNATURE;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    private boolean isOrfFormat(byte[] bArr) throws IOException {
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
        ByteOrder byteOrder = readByteOrder(byteOrderedDataInputStream);
        this.mExifByteOrder = byteOrder;
        byteOrderedDataInputStream.setByteOrder(byteOrder);
        short s2 = byteOrderedDataInputStream.readShort();
        return s2 == 20306 || s2 == 21330;
    }

    private boolean isRafFormat(byte[] bArr) {
        byte[] bytes = RAF_SIGNATURE.getBytes();
        for (int i2 = 0; i2 < bytes.length; i2++) {
            if (bArr[i2] != bytes[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean isRw2Format(byte[] bArr) throws IOException {
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
        ByteOrder byteOrder = readByteOrder(byteOrderedDataInputStream);
        this.mExifByteOrder = byteOrder;
        byteOrderedDataInputStream.setByteOrder(byteOrder);
        return byteOrderedDataInputStream.readShort() == 85;
    }

    private static boolean isSeekableFD(FileDescriptor fileDescriptor) {
        try {
            Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
            return true;
        } catch (ErrnoException unused) {
            return false;
        }
    }

    private boolean isSupportedDataType(HashMap map) {
        ExifAttribute exifAttribute;
        ExifAttribute exifAttribute2 = (ExifAttribute) map.get(TAG_BITS_PER_SAMPLE);
        if (exifAttribute2 == null) {
            return false;
        }
        int[] iArr = (int[]) exifAttribute2.getValue(this.mExifByteOrder);
        int[] iArr2 = BITS_PER_SAMPLE_RGB;
        if (Arrays.equals(iArr2, iArr)) {
            return true;
        }
        if (this.mMimeType != 3 || (exifAttribute = (ExifAttribute) map.get(TAG_PHOTOMETRIC_INTERPRETATION)) == null) {
            return false;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        return (intValue == 1 && Arrays.equals(iArr, BITS_PER_SAMPLE_GREYSCALE_2)) || (intValue == 6 && Arrays.equals(iArr, iArr2));
    }

    private boolean isThumbnail(HashMap map) {
        ExifAttribute exifAttribute = (ExifAttribute) map.get(TAG_IMAGE_LENGTH);
        ExifAttribute exifAttribute2 = (ExifAttribute) map.get(TAG_IMAGE_WIDTH);
        if (exifAttribute == null || exifAttribute2 == null) {
            return false;
        }
        return exifAttribute.getIntValue(this.mExifByteOrder) <= 512 && exifAttribute2.getIntValue(this.mExifByteOrder) <= 512;
    }

    private void loadAttributes(InputStream inputStream) {
        for (int i2 = 0; i2 < EXIF_TAGS.length; i2++) {
            try {
                try {
                    this.mAttributes[i2] = new HashMap();
                } catch (IOException unused) {
                    this.mIsSupportedFile = false;
                }
            } catch (Throwable th) {
                addDefaultValuesForCompatibility();
                throw th;
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
        this.mMimeType = getMimeType(bufferedInputStream);
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bufferedInputStream);
        switch (this.mMimeType) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
                getRawAttributes(byteOrderedDataInputStream);
                break;
            case 4:
                getJpegAttributes(byteOrderedDataInputStream, 0, 0);
                break;
            case 7:
                getOrfAttributes(byteOrderedDataInputStream);
                break;
            case 9:
                getRafAttributes(byteOrderedDataInputStream);
                break;
            case 10:
                getRw2Attributes(byteOrderedDataInputStream);
                break;
            case 12:
                getHeifAttributes(byteOrderedDataInputStream);
                break;
        }
        setThumbnailData(byteOrderedDataInputStream);
        this.mIsSupportedFile = true;
        addDefaultValuesForCompatibility();
    }

    private void parseTiffHeaders(ByteOrderedDataInputStream byteOrderedDataInputStream, int i2) throws IOException {
        ByteOrder byteOrder = readByteOrder(byteOrderedDataInputStream);
        this.mExifByteOrder = byteOrder;
        byteOrderedDataInputStream.setByteOrder(byteOrder);
        int unsignedShort = byteOrderedDataInputStream.readUnsignedShort();
        int i3 = this.mMimeType;
        if (i3 != 7 && i3 != 10 && unsignedShort != 42) {
            throw new IOException(m.d(unsignedShort, new StringBuilder("Invalid start code: ")));
        }
        int i4 = byteOrderedDataInputStream.readInt();
        if (i4 < 8 || i4 >= i2) {
            throw new IOException(c.d("Invalid first Ifd offset: ", i4));
        }
        int i5 = i4 - 8;
        if (i5 > 0 && byteOrderedDataInputStream.skipBytes(i5) != i5) {
            throw new IOException(c.d("Couldn't jump to first Ifd: ", i5));
        }
    }

    private void printAttributes() {
        for (int i2 = 0; i2 < this.mAttributes.length; i2++) {
            StringBuilder sbS = c.s("The size of tag group[", i2, "]: ");
            sbS.append(this.mAttributes[i2].size());
            Log.d(TAG, sbS.toString());
            for (Map.Entry entry : this.mAttributes[i2].entrySet()) {
                ExifAttribute exifAttribute = (ExifAttribute) entry.getValue();
                Log.d(TAG, "tagName: " + entry.getKey() + ", tagType: " + exifAttribute.toString() + ", tagValue: '" + exifAttribute.getStringValue(this.mExifByteOrder) + "'");
            }
        }
    }

    private ByteOrder readByteOrder(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        short s2 = byteOrderedDataInputStream.readShort();
        if (s2 == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s2 == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException(m.d(s2, new StringBuilder("Invalid byte order: ")));
    }

    private void readExifSegment(byte[] bArr, int i2) throws IOException {
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
        parseTiffHeaders(byteOrderedDataInputStream, bArr.length);
        readImageFileDirectory(byteOrderedDataInputStream, i2);
    }

    /* JADX WARN: Code duplicated, block: B:112:0x01f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x008a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0091  */
    /* JADX WARN: Code duplicated, block: B:30:0x0099  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:34:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:41:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:48:0x0119  */
    /* JADX WARN: Code duplicated, block: B:49:0x011f  */
    /* JADX WARN: Code duplicated, block: B:50:0x012b  */
    /* JADX WARN: Code duplicated, block: B:53:0x0141  */
    /* JADX WARN: Code duplicated, block: B:55:0x0145  */
    /* JADX WARN: Code duplicated, block: B:57:0x0148  */
    /* JADX WARN: Code duplicated, block: B:59:0x014c  */
    /* JADX WARN: Code duplicated, block: B:65:0x015c  */
    /* JADX WARN: Code duplicated, block: B:66:0x0161  */
    /* JADX WARN: Code duplicated, block: B:67:0x0166  */
    /* JADX WARN: Code duplicated, block: B:71:0x0171  */
    /* JADX WARN: Code duplicated, block: B:74:0x0187  */
    /* JADX WARN: Code duplicated, block: B:76:0x019c  */
    /* JADX WARN: Code duplicated, block: B:78:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:92:0x01f1  */
    /* JADX WARN: Instruction removed from duplicated block: B:74:0x0187, please report this as an issue */
    private void readImageFileDirectory(ByteOrderedDataInputStream byteOrderedDataInputStream, int i2) throws IOException {
        int i3;
        long j2;
        boolean z2;
        int i4;
        int i5;
        long j3;
        short s2;
        Object obj;
        long j4;
        String str;
        int i6;
        int unsignedShort;
        long unsignedInt;
        int i7;
        int i8;
        long j5;
        long j6;
        String str2;
        if (byteOrderedDataInputStream.mPosition + 2 > byteOrderedDataInputStream.mLength) {
            return;
        }
        short s3 = byteOrderedDataInputStream.readShort();
        if ((s3 * 12) + byteOrderedDataInputStream.mPosition > byteOrderedDataInputStream.mLength) {
            return;
        }
        short s4 = 0;
        while (s4 < s3) {
            int unsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            int unsignedShort3 = byteOrderedDataInputStream.readUnsignedShort();
            int i9 = byteOrderedDataInputStream.readInt();
            long jPeek = byteOrderedDataInputStream.peek() + 4;
            ExifTag exifTag = (ExifTag) sExifTagMapsForReading[i2].get(Integer.valueOf(unsignedShort2));
            if (exifTag == null) {
                m.A("Skip the tag entry since tag number is not defined: ", unsignedShort2, TAG);
            } else {
                if (unsignedShort3 > 0) {
                    int[] iArr = IFD_FORMAT_BYTES_PER_FORMAT;
                    if (unsignedShort3 < iArr.length) {
                        s3 = s3;
                        s4 = s4;
                        j2 = ((long) i9) * ((long) iArr[unsignedShort3]);
                        if (j2 < 0 || j2 > 2147483647L) {
                            m.A("Skip the tag entry since the number of components is invalid: ", i9, TAG);
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                    }
                    if (z2) {
                        if (j2 > 4) {
                            i7 = byteOrderedDataInputStream.readInt();
                            i8 = this.mMimeType;
                            s2 = s3;
                            if (i8 == 7) {
                                str2 = exifTag.name;
                                if (str2 == TAG_MAKER_NOTE) {
                                    this.mOrfMakerNoteOffset = i7;
                                } else if (i2 != 6 && str2 == TAG_ORF_THUMBNAIL_IMAGE) {
                                    this.mOrfThumbnailOffset = i7;
                                    this.mOrfThumbnailLength = i9;
                                    ExifAttribute exifAttributeCreateUShort = ExifAttribute.createUShort(6, this.mExifByteOrder);
                                    i4 = unsignedShort3;
                                    i5 = i9;
                                    ExifAttribute exifAttributeCreateULong = ExifAttribute.createULong(this.mOrfThumbnailOffset, this.mExifByteOrder);
                                    j5 = jPeek;
                                    ExifAttribute exifAttributeCreateULong2 = ExifAttribute.createULong(this.mOrfThumbnailLength, this.mExifByteOrder);
                                    this.mAttributes[4].put(TAG_COMPRESSION, exifAttributeCreateUShort);
                                    this.mAttributes[4].put(TAG_JPEG_INTERCHANGE_FORMAT, exifAttributeCreateULong);
                                    this.mAttributes[4].put(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, exifAttributeCreateULong2);
                                }
                                i4 = unsignedShort3;
                                i5 = i9;
                                j5 = jPeek;
                            } else {
                                i4 = unsignedShort3;
                                i5 = i9;
                                j5 = jPeek;
                                if (i8 == 10 && exifTag.name == TAG_RW2_JPG_FROM_RAW) {
                                    this.mRw2JpgFromRawOffset = i7;
                                }
                            }
                            j6 = i7;
                            if (j6 + j2 <= byteOrderedDataInputStream.mLength) {
                                byteOrderedDataInputStream.seek(j6);
                                j3 = j5;
                            } else {
                                m.A("Skip the tag entry since data offset is invalid: ", i7, TAG);
                                byteOrderedDataInputStream.seek(j5);
                            }
                        } else {
                            i4 = unsignedShort3;
                            i5 = i9;
                            j3 = jPeek;
                            s2 = s3;
                        }
                        obj = sExifPointerTagMap.get(Integer.valueOf(unsignedShort2));
                        if (obj != null) {
                            i6 = i4;
                            if (i6 != 3) {
                                if (i6 != 4) {
                                    unsignedInt = byteOrderedDataInputStream.readUnsignedInt();
                                } else if (i6 == 8) {
                                    unsignedShort = byteOrderedDataInputStream.readShort();
                                } else if (i6 != 9 || i6 == 13) {
                                    unsignedShort = byteOrderedDataInputStream.readInt();
                                } else {
                                    unsignedInt = -1;
                                }
                                if (unsignedInt > 0 || unsignedInt >= byteOrderedDataInputStream.mLength) {
                                    Log.w(TAG, "Skip jump into the IFD since its offset is invalid: " + unsignedInt);
                                } else {
                                    byteOrderedDataInputStream.seek(unsignedInt);
                                    readImageFileDirectory(byteOrderedDataInputStream, ((Integer) obj).intValue());
                                }
                                byteOrderedDataInputStream.seek(j3);
                            } else {
                                unsignedShort = byteOrderedDataInputStream.readUnsignedShort();
                            }
                            unsignedInt = unsignedShort;
                            if (unsignedInt > 0) {
                                Log.w(TAG, "Skip jump into the IFD since its offset is invalid: " + unsignedInt);
                            } else {
                                Log.w(TAG, "Skip jump into the IFD since its offset is invalid: " + unsignedInt);
                            }
                            byteOrderedDataInputStream.seek(j3);
                        } else {
                            byte[] bArr = new byte[(int) j4];
                            byteOrderedDataInputStream.readFully(bArr);
                            ExifAttribute exifAttribute = new ExifAttribute(i4, i5, bArr);
                            this.mAttributes[i2].put(exifTag.name, exifAttribute);
                            str = exifTag.name;
                            if (str == TAG_DNG_VERSION) {
                                j4 = j2;
                                this.mMimeType = 3;
                            }
                            j4 = j2;
                            if (((str != TAG_MAKE || str == TAG_MODEL) && exifAttribute.getStringValue(this.mExifByteOrder).contains(PEF_SIGNATURE)) || (exifTag.name == TAG_COMPRESSION && exifAttribute.getIntValue(this.mExifByteOrder) == 65535)) {
                                this.mMimeType = 8;
                            }
                            if (byteOrderedDataInputStream.peek() != j3) {
                                byteOrderedDataInputStream.seek(j3);
                            }
                        }
                    } else {
                        byteOrderedDataInputStream.seek(jPeek);
                        s2 = s3;
                    }
                    s4 = (short) (s4 + 1);
                    s3 = s2;
                }
                m.A("Skip the tag entry since data format is invalid: ", unsignedShort3, TAG);
            }
            z2 = false;
            j2 = 0;
            if (z2) {
                byteOrderedDataInputStream.seek(jPeek);
                s2 = s3;
            } else {
                if (j2 > 4) {
                    i7 = byteOrderedDataInputStream.readInt();
                    i8 = this.mMimeType;
                    s2 = s3;
                    if (i8 == 7) {
                        str2 = exifTag.name;
                        if (str2 == TAG_MAKER_NOTE) {
                            this.mOrfMakerNoteOffset = i7;
                        } else if (i2 != 6) {
                        }
                        i4 = unsignedShort3;
                        i5 = i9;
                        j5 = jPeek;
                    } else {
                        i4 = unsignedShort3;
                        i5 = i9;
                        j5 = jPeek;
                        if (i8 == 10) {
                            this.mRw2JpgFromRawOffset = i7;
                        }
                    }
                    j6 = i7;
                    if (j6 + j2 <= byteOrderedDataInputStream.mLength) {
                        byteOrderedDataInputStream.seek(j6);
                        j3 = j5;
                    } else {
                        m.A("Skip the tag entry since data offset is invalid: ", i7, TAG);
                        byteOrderedDataInputStream.seek(j5);
                    }
                } else {
                    i4 = unsignedShort3;
                    i5 = i9;
                    j3 = jPeek;
                    s2 = s3;
                }
                obj = sExifPointerTagMap.get(Integer.valueOf(unsignedShort2));
                if (obj != null) {
                    i6 = i4;
                    if (i6 != 3) {
                        if (i6 != 4) {
                            unsignedInt = byteOrderedDataInputStream.readUnsignedInt();
                        } else if (i6 == 8) {
                            if (i6 != 9) {
                            }
                            unsignedShort = byteOrderedDataInputStream.readInt();
                        } else {
                            unsignedShort = byteOrderedDataInputStream.readShort();
                        }
                        if (unsignedInt > 0) {
                            Log.w(TAG, "Skip jump into the IFD since its offset is invalid: " + unsignedInt);
                        } else {
                            Log.w(TAG, "Skip jump into the IFD since its offset is invalid: " + unsignedInt);
                        }
                        byteOrderedDataInputStream.seek(j3);
                    } else {
                        unsignedShort = byteOrderedDataInputStream.readUnsignedShort();
                    }
                    unsignedInt = unsignedShort;
                    if (unsignedInt > 0) {
                        Log.w(TAG, "Skip jump into the IFD since its offset is invalid: " + unsignedInt);
                    } else {
                        Log.w(TAG, "Skip jump into the IFD since its offset is invalid: " + unsignedInt);
                    }
                    byteOrderedDataInputStream.seek(j3);
                } else {
                    byte[] bArr2 = new byte[(int) j4];
                    byteOrderedDataInputStream.readFully(bArr2);
                    ExifAttribute exifAttribute2 = new ExifAttribute(i4, i5, bArr2);
                    this.mAttributes[i2].put(exifTag.name, exifAttribute2);
                    str = exifTag.name;
                    if (str == TAG_DNG_VERSION) {
                        j4 = j2;
                        this.mMimeType = 3;
                    }
                    j4 = j2;
                    if (str != TAG_MAKE) {
                    }
                    this.mMimeType = 8;
                    if (byteOrderedDataInputStream.peek() != j3) {
                        byteOrderedDataInputStream.seek(j3);
                    }
                }
            }
            s4 = (short) (s4 + 1);
            s3 = s2;
        }
        if (byteOrderedDataInputStream.peek() + 4 > byteOrderedDataInputStream.mLength || (i3 = byteOrderedDataInputStream.readInt()) <= 8 || i3 >= byteOrderedDataInputStream.mLength) {
            return;
        }
        byteOrderedDataInputStream.seek(i3);
        if (this.mAttributes[4].isEmpty()) {
            readImageFileDirectory(byteOrderedDataInputStream, 4);
        } else if (this.mAttributes[5].isEmpty()) {
            readImageFileDirectory(byteOrderedDataInputStream, 5);
        }
    }

    private void removeAttribute(String str) {
        for (int i2 = 0; i2 < EXIF_TAGS.length; i2++) {
            this.mAttributes[i2].remove(str);
        }
    }

    private void retrieveJpegImageSize(ByteOrderedDataInputStream byteOrderedDataInputStream, int i2) throws IOException {
        ExifAttribute exifAttribute;
        ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[i2].get(TAG_IMAGE_LENGTH);
        ExifAttribute exifAttribute3 = (ExifAttribute) this.mAttributes[i2].get(TAG_IMAGE_WIDTH);
        if ((exifAttribute2 == null || exifAttribute3 == null) && (exifAttribute = (ExifAttribute) this.mAttributes[i2].get(TAG_JPEG_INTERCHANGE_FORMAT)) != null) {
            getJpegAttributes(byteOrderedDataInputStream, exifAttribute.getIntValue(this.mExifByteOrder), i2);
        }
    }

    private void saveJpegAttributes(InputStream inputStream, OutputStream outputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        ByteOrderedDataOutputStream byteOrderedDataOutputStream = new ByteOrderedDataOutputStream(outputStream, ByteOrder.BIG_ENDIAN);
        if (dataInputStream.readByte() != -1) {
            throw new IOException("Invalid marker");
        }
        byteOrderedDataOutputStream.writeByte(-1);
        if (dataInputStream.readByte() != -40) {
            throw new IOException("Invalid marker");
        }
        byteOrderedDataOutputStream.writeByte(-40);
        byteOrderedDataOutputStream.writeByte(-1);
        byteOrderedDataOutputStream.writeByte(-31);
        writeExifSegment(byteOrderedDataOutputStream, 6);
        byte[] bArr = new byte[4096];
        while (dataInputStream.readByte() == -1) {
            byte b2 = dataInputStream.readByte();
            if (b2 == -39 || b2 == -38) {
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(b2);
                Streams.copy(dataInputStream, byteOrderedDataOutputStream);
                return;
            }
            if (b2 != -31) {
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(b2);
                int unsignedShort = dataInputStream.readUnsignedShort();
                byteOrderedDataOutputStream.writeUnsignedShort(unsignedShort);
                int i2 = unsignedShort - 2;
                if (i2 < 0) {
                    throw new IOException("Invalid length");
                }
                while (i2 > 0) {
                    int i3 = dataInputStream.read(bArr, 0, Math.min(i2, 4096));
                    if (i3 < 0) {
                        break;
                    }
                    byteOrderedDataOutputStream.write(bArr, 0, i3);
                    i2 -= i3;
                }
            } else {
                int unsignedShort2 = dataInputStream.readUnsignedShort() - 2;
                if (unsignedShort2 < 0) {
                    throw new IOException("Invalid length");
                }
                byte[] bArr2 = new byte[6];
                if (unsignedShort2 >= 6) {
                    if (dataInputStream.read(bArr2) != 6) {
                        throw new IOException("Invalid exif");
                    }
                    if (Arrays.equals(bArr2, IDENTIFIER_EXIF_APP1)) {
                        int i4 = unsignedShort2 - 6;
                        if (dataInputStream.skipBytes(i4) != i4) {
                            throw new IOException("Invalid length");
                        }
                    }
                }
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(b2);
                byteOrderedDataOutputStream.writeUnsignedShort(unsignedShort2 + 2);
                if (unsignedShort2 >= 6) {
                    unsignedShort2 -= 6;
                    byteOrderedDataOutputStream.write(bArr2);
                }
                while (unsignedShort2 > 0) {
                    int i5 = dataInputStream.read(bArr, 0, Math.min(unsignedShort2, 4096));
                    if (i5 < 0) {
                        break;
                    }
                    byteOrderedDataOutputStream.write(bArr, 0, i5);
                    unsignedShort2 -= i5;
                }
            }
        }
        throw new IOException("Invalid marker");
    }

    private void setThumbnailData(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        HashMap map = this.mAttributes[4];
        ExifAttribute exifAttribute = (ExifAttribute) map.get(TAG_COMPRESSION);
        if (exifAttribute == null) {
            handleThumbnailFromJfif(byteOrderedDataInputStream, map);
            return;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        this.mThumbnailCompression = intValue;
        if (intValue != 1) {
            if (intValue == 6) {
                handleThumbnailFromJfif(byteOrderedDataInputStream, map);
                return;
            } else if (intValue != 7) {
                return;
            }
        }
        if (isSupportedDataType(map)) {
            handleThumbnailFromStrips(byteOrderedDataInputStream, map);
        }
    }

    private void swapBasedOnImageSize(int i2, int i3) {
        if (this.mAttributes[i2].isEmpty() || this.mAttributes[i3].isEmpty()) {
            return;
        }
        ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[i2].get(TAG_IMAGE_LENGTH);
        ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[i2].get(TAG_IMAGE_WIDTH);
        ExifAttribute exifAttribute3 = (ExifAttribute) this.mAttributes[i3].get(TAG_IMAGE_LENGTH);
        ExifAttribute exifAttribute4 = (ExifAttribute) this.mAttributes[i3].get(TAG_IMAGE_WIDTH);
        if (exifAttribute == null || exifAttribute2 == null || exifAttribute3 == null || exifAttribute4 == null) {
            return;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        int intValue2 = exifAttribute2.getIntValue(this.mExifByteOrder);
        int intValue3 = exifAttribute3.getIntValue(this.mExifByteOrder);
        int intValue4 = exifAttribute4.getIntValue(this.mExifByteOrder);
        if (intValue >= intValue3 || intValue2 >= intValue4) {
            return;
        }
        HashMap[] mapArr = this.mAttributes;
        HashMap map = mapArr[i2];
        mapArr[i2] = mapArr[i3];
        mapArr[i3] = map;
    }

    private boolean updateAttribute(String str, ExifAttribute exifAttribute) {
        boolean z2 = false;
        for (int i2 = 0; i2 < EXIF_TAGS.length; i2++) {
            if (this.mAttributes[i2].containsKey(str)) {
                this.mAttributes[i2].put(str, exifAttribute);
                z2 = true;
            }
        }
        return z2;
    }

    private void updateImageSizeValues(ByteOrderedDataInputStream byteOrderedDataInputStream, int i2) throws IOException {
        ExifAttribute exifAttributeCreateUShort;
        ExifAttribute exifAttributeCreateUShort2;
        ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[i2].get(TAG_DEFAULT_CROP_SIZE);
        ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[i2].get(TAG_RW2_SENSOR_TOP_BORDER);
        ExifAttribute exifAttribute3 = (ExifAttribute) this.mAttributes[i2].get(TAG_RW2_SENSOR_LEFT_BORDER);
        ExifAttribute exifAttribute4 = (ExifAttribute) this.mAttributes[i2].get(TAG_RW2_SENSOR_BOTTOM_BORDER);
        ExifAttribute exifAttribute5 = (ExifAttribute) this.mAttributes[i2].get(TAG_RW2_SENSOR_RIGHT_BORDER);
        if (exifAttribute != null) {
            if (exifAttribute.format == 5) {
                Rational[] rationalArr = (Rational[]) exifAttribute.getValue(this.mExifByteOrder);
                exifAttributeCreateUShort = ExifAttribute.createURational(rationalArr[0], this.mExifByteOrder);
                exifAttributeCreateUShort2 = ExifAttribute.createURational(rationalArr[1], this.mExifByteOrder);
            } else {
                int[] iArr = (int[]) exifAttribute.getValue(this.mExifByteOrder);
                exifAttributeCreateUShort = ExifAttribute.createUShort(iArr[0], this.mExifByteOrder);
                exifAttributeCreateUShort2 = ExifAttribute.createUShort(iArr[1], this.mExifByteOrder);
            }
            this.mAttributes[i2].put(TAG_IMAGE_WIDTH, exifAttributeCreateUShort);
            this.mAttributes[i2].put(TAG_IMAGE_LENGTH, exifAttributeCreateUShort2);
            return;
        }
        if (exifAttribute2 == null || exifAttribute3 == null || exifAttribute4 == null || exifAttribute5 == null) {
            retrieveJpegImageSize(byteOrderedDataInputStream, i2);
            return;
        }
        int intValue = exifAttribute2.getIntValue(this.mExifByteOrder);
        int intValue2 = exifAttribute4.getIntValue(this.mExifByteOrder);
        int intValue3 = exifAttribute5.getIntValue(this.mExifByteOrder);
        int intValue4 = exifAttribute3.getIntValue(this.mExifByteOrder);
        if (intValue2 <= intValue || intValue3 <= intValue4) {
            return;
        }
        ExifAttribute exifAttributeCreateUShort3 = ExifAttribute.createUShort(intValue2 - intValue, this.mExifByteOrder);
        ExifAttribute exifAttributeCreateUShort4 = ExifAttribute.createUShort(intValue3 - intValue4, this.mExifByteOrder);
        this.mAttributes[i2].put(TAG_IMAGE_LENGTH, exifAttributeCreateUShort3);
        this.mAttributes[i2].put(TAG_IMAGE_WIDTH, exifAttributeCreateUShort4);
    }

    private void validateImages(InputStream inputStream) {
        swapBasedOnImageSize(0, 5);
        swapBasedOnImageSize(0, 4);
        swapBasedOnImageSize(5, 4);
        ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[1].get(TAG_PIXEL_X_DIMENSION);
        ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[1].get(TAG_PIXEL_Y_DIMENSION);
        if (exifAttribute != null && exifAttribute2 != null) {
            this.mAttributes[0].put(TAG_IMAGE_WIDTH, exifAttribute);
            this.mAttributes[0].put(TAG_IMAGE_LENGTH, exifAttribute2);
        }
        if (this.mAttributes[4].isEmpty() && isThumbnail(this.mAttributes[5])) {
            HashMap[] mapArr = this.mAttributes;
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap();
        }
        if (isThumbnail(this.mAttributes[4])) {
            return;
        }
        Log.d(TAG, "No image meets the size requirements of a thumbnail image.");
    }

    private int writeExifSegment(ByteOrderedDataOutputStream byteOrderedDataOutputStream, int i2) throws IOException {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        int[] iArr = new int[exifTagArr.length];
        int[] iArr2 = new int[exifTagArr.length];
        for (ExifTag exifTag : EXIF_POINTER_TAGS) {
            removeAttribute(exifTag.name);
        }
        removeAttribute(JPEG_INTERCHANGE_FORMAT_TAG.name);
        removeAttribute(JPEG_INTERCHANGE_FORMAT_LENGTH_TAG.name);
        for (int i3 = 0; i3 < EXIF_TAGS.length; i3++) {
            for (Object obj : this.mAttributes[i3].entrySet().toArray()) {
                Map.Entry entry = (Map.Entry) obj;
                if (entry.getValue() == null) {
                    this.mAttributes[i3].remove(entry.getKey());
                }
            }
        }
        if (!this.mAttributes[1].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[1].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (!this.mAttributes[2].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[2].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (!this.mAttributes[3].isEmpty()) {
            this.mAttributes[1].put(EXIF_POINTER_TAGS[3].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (this.mHasThumbnail) {
            this.mAttributes[4].put(JPEG_INTERCHANGE_FORMAT_TAG.name, ExifAttribute.createULong(0L, this.mExifByteOrder));
            this.mAttributes[4].put(JPEG_INTERCHANGE_FORMAT_LENGTH_TAG.name, ExifAttribute.createULong(this.mThumbnailLength, this.mExifByteOrder));
        }
        for (int i4 = 0; i4 < EXIF_TAGS.length; i4++) {
            Iterator it = this.mAttributes[i4].entrySet().iterator();
            int i5 = 0;
            while (it.hasNext()) {
                int size = ((ExifAttribute) ((Map.Entry) it.next()).getValue()).size();
                if (size > 4) {
                    i5 += size;
                }
            }
            iArr2[i4] = iArr2[i4] + i5;
        }
        int size2 = 8;
        for (int i6 = 0; i6 < EXIF_TAGS.length; i6++) {
            if (!this.mAttributes[i6].isEmpty()) {
                iArr[i6] = size2;
                size2 += (this.mAttributes[i6].size() * 12) + 2 + 4 + iArr2[i6];
            }
        }
        if (this.mHasThumbnail) {
            this.mAttributes[4].put(JPEG_INTERCHANGE_FORMAT_TAG.name, ExifAttribute.createULong(size2, this.mExifByteOrder));
            this.mThumbnailOffset = i2 + size2;
            size2 += this.mThumbnailLength;
        }
        int i7 = size2 + 8;
        if (!this.mAttributes[1].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[1].name, ExifAttribute.createULong(iArr[1], this.mExifByteOrder));
        }
        if (!this.mAttributes[2].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[2].name, ExifAttribute.createULong(iArr[2], this.mExifByteOrder));
        }
        if (!this.mAttributes[3].isEmpty()) {
            this.mAttributes[1].put(EXIF_POINTER_TAGS[3].name, ExifAttribute.createULong(iArr[3], this.mExifByteOrder));
        }
        byteOrderedDataOutputStream.writeUnsignedShort(i7);
        byteOrderedDataOutputStream.write(IDENTIFIER_EXIF_APP1);
        byteOrderedDataOutputStream.writeShort(this.mExifByteOrder == ByteOrder.BIG_ENDIAN ? BYTE_ALIGN_MM : BYTE_ALIGN_II);
        byteOrderedDataOutputStream.setByteOrder(this.mExifByteOrder);
        byteOrderedDataOutputStream.writeUnsignedShort(42);
        byteOrderedDataOutputStream.writeUnsignedInt(8L);
        for (int i8 = 0; i8 < EXIF_TAGS.length; i8++) {
            if (!this.mAttributes[i8].isEmpty()) {
                byteOrderedDataOutputStream.writeUnsignedShort(this.mAttributes[i8].size());
                int size3 = (this.mAttributes[i8].size() * 12) + iArr[i8] + 2 + 4;
                for (Map.Entry entry2 : this.mAttributes[i8].entrySet()) {
                    int i9 = ((ExifTag) sExifTagMapsForWriting[i8].get(entry2.getKey())).number;
                    ExifAttribute exifAttribute = (ExifAttribute) entry2.getValue();
                    int size4 = exifAttribute.size();
                    byteOrderedDataOutputStream.writeUnsignedShort(i9);
                    byteOrderedDataOutputStream.writeUnsignedShort(exifAttribute.format);
                    byteOrderedDataOutputStream.writeInt(exifAttribute.numberOfComponents);
                    if (size4 > 4) {
                        byteOrderedDataOutputStream.writeUnsignedInt(size3);
                        size3 += size4;
                    } else {
                        byteOrderedDataOutputStream.write(exifAttribute.bytes);
                        if (size4 < 4) {
                            while (size4 < 4) {
                                byteOrderedDataOutputStream.writeByte(0);
                                size4++;
                            }
                        }
                    }
                }
                if (i8 != 0 || this.mAttributes[4].isEmpty()) {
                    byteOrderedDataOutputStream.writeUnsignedInt(0L);
                } else {
                    byteOrderedDataOutputStream.writeUnsignedInt(iArr[4]);
                }
                Iterator it2 = this.mAttributes[i8].entrySet().iterator();
                while (it2.hasNext()) {
                    byte[] bArr = ((ExifAttribute) ((Map.Entry) it2.next()).getValue()).bytes;
                    if (bArr.length > 4) {
                        byteOrderedDataOutputStream.write(bArr, 0, bArr.length);
                    }
                }
            }
        }
        if (this.mHasThumbnail) {
            byteOrderedDataOutputStream.write(getThumbnailBytes());
        }
        byteOrderedDataOutputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        return i7;
    }

    public double getAltitude(double d2) {
        double attributeDouble = getAttributeDouble(TAG_GPS_ALTITUDE, -1.0d);
        int attributeInt = getAttributeInt(TAG_GPS_ALTITUDE_REF, -1);
        if (attributeDouble < 0.0d || attributeInt < 0) {
            return d2;
        }
        return attributeDouble * ((double) (attributeInt != 1 ? 1 : -1));
    }

    public String getAttribute(String str) {
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute != null) {
            if (!sTagSetForCompatibility.contains(str)) {
                return exifAttribute.getStringValue(this.mExifByteOrder);
            }
            if (str.equals(TAG_GPS_TIMESTAMP)) {
                int i2 = exifAttribute.format;
                if (i2 != 5 && i2 != 10) {
                    return null;
                }
                Rational[] rationalArr = (Rational[]) exifAttribute.getValue(this.mExifByteOrder);
                if (rationalArr.length != 3) {
                    return null;
                }
                Rational rational = rationalArr[0];
                Rational rational2 = rationalArr[1];
                Rational rational3 = rationalArr[2];
                return String.format("%02d:%02d:%02d", Integer.valueOf((int) (rational.numerator / rational.denominator)), Integer.valueOf((int) (rational2.numerator / rational2.denominator)), Integer.valueOf((int) (rational3.numerator / rational3.denominator)));
            }
            try {
                return Double.toString(exifAttribute.getDoubleValue(this.mExifByteOrder));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public double getAttributeDouble(String str, double d2) {
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute == null) {
            return d2;
        }
        try {
            return exifAttribute.getDoubleValue(this.mExifByteOrder);
        } catch (NumberFormatException unused) {
            return d2;
        }
    }

    public int getAttributeInt(String str, int i2) {
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute == null) {
            return i2;
        }
        try {
            return exifAttribute.getIntValue(this.mExifByteOrder);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public long getDateTime() {
        String attribute = getAttribute(TAG_DATETIME);
        if (attribute != null && sNonZeroTimePattern.matcher(attribute).matches()) {
            try {
                Date date = sFormatter.parse(attribute, new ParsePosition(0));
                if (date == null) {
                    return -1L;
                }
                long time = date.getTime();
                String attribute2 = getAttribute(TAG_SUBSEC_TIME);
                if (attribute2 == null) {
                    return time;
                }
                try {
                    long j2 = Long.parseLong(attribute2);
                    while (j2 > 1000) {
                        j2 /= 10;
                    }
                    return time + j2;
                } catch (NumberFormatException unused) {
                    return time;
                }
            } catch (IllegalArgumentException unused2) {
            }
        }
        return -1L;
    }

    public long getGpsDateTime() {
        String attribute = getAttribute(TAG_GPS_DATESTAMP);
        String attribute2 = getAttribute(TAG_GPS_TIMESTAMP);
        if (attribute != null && attribute2 != null) {
            Pattern pattern = sNonZeroTimePattern;
            if (pattern.matcher(attribute).matches() || pattern.matcher(attribute2).matches()) {
                try {
                    Date date = sFormatter.parse(attribute + ' ' + attribute2, new ParsePosition(0));
                    if (date == null) {
                        return -1L;
                    }
                    return date.getTime();
                } catch (IllegalArgumentException unused) {
                }
            }
        }
        return -1L;
    }

    public boolean getLatLong(float[] fArr) {
        String attribute = getAttribute(TAG_GPS_LATITUDE);
        String attribute2 = getAttribute(TAG_GPS_LATITUDE_REF);
        String attribute3 = getAttribute(TAG_GPS_LONGITUDE);
        String attribute4 = getAttribute(TAG_GPS_LONGITUDE_REF);
        if (attribute != null && attribute2 != null && attribute3 != null && attribute4 != null) {
            try {
                fArr[0] = convertRationalLatLonToFloat(attribute, attribute2);
                fArr[1] = convertRationalLatLonToFloat(attribute3, attribute4);
                return true;
            } catch (IllegalArgumentException unused) {
            }
        }
        return false;
    }

    public byte[] getThumbnail() {
        int i2 = this.mThumbnailCompression;
        if (i2 == 6 || i2 == 7) {
            return getThumbnailBytes();
        }
        return null;
    }

    public Bitmap getThumbnailBitmap() {
        if (!this.mHasThumbnail) {
            return null;
        }
        if (this.mThumbnailBytes == null) {
            this.mThumbnailBytes = getThumbnailBytes();
        }
        int i2 = this.mThumbnailCompression;
        if (i2 == 6 || i2 == 7) {
            return BitmapFactory.decodeByteArray(this.mThumbnailBytes, 0, this.mThumbnailLength);
        }
        if (i2 == 1) {
            int length = this.mThumbnailBytes.length / 3;
            int[] iArr = new int[length];
            for (int i3 = 0; i3 < length; i3++) {
                byte[] bArr = this.mThumbnailBytes;
                int i4 = i3 * 3;
                iArr[i3] = (bArr[i4] << 16) + 0 + (bArr[i4 + 1] << 8) + bArr[i4 + 2];
            }
            ExifAttribute exifAttribute = (ExifAttribute) this.mAttributes[4].get(TAG_IMAGE_LENGTH);
            ExifAttribute exifAttribute2 = (ExifAttribute) this.mAttributes[4].get(TAG_IMAGE_WIDTH);
            if (exifAttribute != null && exifAttribute2 != null) {
                return Bitmap.createBitmap(iArr, exifAttribute2.getIntValue(this.mExifByteOrder), exifAttribute.getIntValue(this.mExifByteOrder), Bitmap.Config.ARGB_8888);
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.AutoCloseable] */
    public byte[] getThumbnailBytes() throws Throwable {
        InputStream fileInputStream;
        ?? r2 = 0;
        if (!this.mHasThumbnail) {
            return null;
        }
        byte[] bArr = this.mThumbnailBytes;
        try {
            if (bArr != null) {
                return bArr;
            }
            try {
                fileInputStream = this.mAssetInputStream;
                if (fileInputStream != null) {
                    try {
                        if (!fileInputStream.markSupported()) {
                            Log.d(TAG, "Cannot read thumbnail from inputstream without mark/reset support");
                            IoUtils.closeQuietly(fileInputStream);
                            return null;
                        }
                        fileInputStream.reset();
                    } catch (ErrnoException e2) {
                        e = e2;
                        Log.d(TAG, "Encountered exception while getting thumbnail", e);
                        IoUtils.closeQuietly(fileInputStream);
                        return null;
                    } catch (IOException e3) {
                        e = e3;
                        Log.d(TAG, "Encountered exception while getting thumbnail", e);
                        IoUtils.closeQuietly(fileInputStream);
                        return null;
                    }
                } else if (this.mFilename != null) {
                    fileInputStream = new FileInputStream(this.mFilename);
                } else {
                    FileDescriptor fileDescriptor = this.mSeekableFileDescriptor;
                    if (fileDescriptor != null) {
                        FileDescriptor fileDescriptorDup = Os.dup(fileDescriptor);
                        Os.lseek(fileDescriptorDup, 0L, OsConstants.SEEK_SET);
                        fileInputStream = new FileInputStream(fileDescriptorDup);
                    } else {
                        fileInputStream = null;
                    }
                }
                if (fileInputStream == null) {
                    throw new FileNotFoundException();
                }
                if (fileInputStream.skip(this.mThumbnailOffset) != this.mThumbnailOffset) {
                    throw new IOException("Corrupted image");
                }
                byte[] bArr2 = new byte[this.mThumbnailLength];
                if (fileInputStream.read(bArr2) != this.mThumbnailLength) {
                    throw new IOException("Corrupted image");
                }
                this.mThumbnailBytes = bArr2;
                IoUtils.closeQuietly(fileInputStream);
                return bArr2;
            } catch (ErrnoException e4) {
                e = e4;
                fileInputStream = null;
                Log.d(TAG, "Encountered exception while getting thumbnail", e);
                IoUtils.closeQuietly(fileInputStream);
                return null;
            } catch (IOException e5) {
                e = e5;
                fileInputStream = null;
                Log.d(TAG, "Encountered exception while getting thumbnail", e);
                IoUtils.closeQuietly(fileInputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                IoUtils.closeQuietly((AutoCloseable) r2);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            r2 = bArr;
        }
    }

    public long[] getThumbnailRange() {
        if (this.mHasThumbnail) {
            return new long[]{this.mThumbnailOffset, this.mThumbnailLength};
        }
        return null;
    }

    public boolean hasThumbnail() {
        return this.mHasThumbnail;
    }

    public boolean isThumbnailCompressed() {
        if (!this.mHasThumbnail) {
            return false;
        }
        int i2 = this.mThumbnailCompression;
        return i2 == 6 || i2 == 7;
    }

    public void saveAttributes() throws Throwable {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        File fileCreateTempFile;
        Throwable th;
        FileOutputStream fileOutputStream2;
        ErrnoException errnoException;
        if (!this.mIsSupportedFile || this.mMimeType != 4) {
            throw new IOException("ExifInterface only supports saving attributes on JPEG formats.");
        }
        if (this.mIsInputStream || (this.mSeekableFileDescriptor == null && this.mFilename == null)) {
            throw new IOException("ExifInterface does not support saving attributes for the current input.");
        }
        this.mThumbnailBytes = getThumbnail();
        FileInputStream fileInputStream2 = null;
        try {
            if (this.mFilename != null) {
                fileCreateTempFile = new File(this.mFilename + ".tmp");
                if (!new File(this.mFilename).renameTo(fileCreateTempFile)) {
                    throw new IOException("Could'nt rename to " + fileCreateTempFile.getAbsolutePath());
                }
                fileInputStream = null;
                fileOutputStream = null;
            } else if (this.mSeekableFileDescriptor != null) {
                fileCreateTempFile = File.createTempFile("temp", "jpg");
                Os.lseek(this.mSeekableFileDescriptor, 0L, OsConstants.SEEK_SET);
                fileInputStream = new FileInputStream(this.mSeekableFileDescriptor);
                try {
                    fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    try {
                        Streams.copy(fileInputStream, fileOutputStream);
                    } catch (ErrnoException e2) {
                        fileInputStream2 = fileInputStream;
                        e = e2;
                        try {
                            throw e.rethrowAsIOException();
                        } catch (Throwable th2) {
                            th = th2;
                            IoUtils.closeQuietly(fileInputStream2);
                            IoUtils.closeQuietly(fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        fileInputStream2 = fileInputStream;
                        th = th3;
                        IoUtils.closeQuietly(fileInputStream2);
                        IoUtils.closeQuietly(fileOutputStream);
                        throw th;
                    }
                } catch (ErrnoException e3) {
                    fileOutputStream = null;
                    fileInputStream2 = fileInputStream;
                    e = e3;
                } catch (Throwable th4) {
                    fileOutputStream = null;
                    fileInputStream2 = fileInputStream;
                    th = th4;
                }
            } else {
                fileInputStream = null;
                fileCreateTempFile = null;
                fileOutputStream = null;
            }
            IoUtils.closeQuietly(fileInputStream);
            IoUtils.closeQuietly(fileOutputStream);
            try {
                FileInputStream fileInputStream3 = new FileInputStream(fileCreateTempFile);
                try {
                    if (this.mFilename != null) {
                        fileOutputStream2 = new FileOutputStream(this.mFilename);
                    } else {
                        FileDescriptor fileDescriptor = this.mSeekableFileDescriptor;
                        if (fileDescriptor != null) {
                            Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_SET);
                            fileOutputStream2 = new FileOutputStream(this.mSeekableFileDescriptor);
                        } else {
                            fileOutputStream2 = null;
                        }
                    }
                    try {
                        saveJpegAttributes(fileInputStream3, fileOutputStream2);
                        IoUtils.closeQuietly(fileInputStream3);
                        IoUtils.closeQuietly(fileOutputStream2);
                        fileCreateTempFile.delete();
                        this.mThumbnailBytes = null;
                    } catch (ErrnoException e4) {
                        fileInputStream2 = fileInputStream3;
                        errnoException = e4;
                        try {
                            throw errnoException.rethrowAsIOException();
                        } catch (Throwable th5) {
                            th = th5;
                            IoUtils.closeQuietly(fileInputStream2);
                            IoUtils.closeQuietly(fileOutputStream2);
                            fileCreateTempFile.delete();
                            throw th;
                        }
                    } catch (Throwable th6) {
                        fileInputStream2 = fileInputStream3;
                        th = th6;
                        IoUtils.closeQuietly(fileInputStream2);
                        IoUtils.closeQuietly(fileOutputStream2);
                        fileCreateTempFile.delete();
                        throw th;
                    }
                } catch (ErrnoException e5) {
                    fileInputStream2 = fileInputStream3;
                    errnoException = e5;
                    fileOutputStream2 = null;
                } catch (Throwable th7) {
                    fileInputStream2 = fileInputStream3;
                    th = th7;
                    fileOutputStream2 = null;
                }
            } catch (ErrnoException e6) {
                errnoException = e6;
                fileOutputStream2 = null;
            } catch (Throwable th8) {
                th = th8;
                fileOutputStream2 = null;
            }
        } catch (ErrnoException e7) {
            e = e7;
            fileOutputStream = null;
        } catch (Throwable th9) {
            th = th9;
            fileOutputStream = null;
        }
    }

    public void setAttribute(String str, String str2) {
        Object obj;
        int i2;
        String str3 = str2;
        if (str3 != null && sTagSetForCompatibility.contains(str)) {
            if (str.equals(TAG_GPS_TIMESTAMP)) {
                Matcher matcher = sGpsTimestampPattern.matcher(str3);
                if (!matcher.find()) {
                    Log.w(TAG, "Invalid value for " + str + " : " + str3);
                    return;
                }
                str3 = Integer.parseInt(matcher.group(1)) + "/1," + Integer.parseInt(matcher.group(2)) + "/1," + Integer.parseInt(matcher.group(3)) + "/1";
            } else {
                try {
                    str3 = ((long) (Double.parseDouble(str2) * 10000.0d)) + "/10000";
                } catch (NumberFormatException unused) {
                    Log.w(TAG, "Invalid value for " + str + " : " + str3);
                    return;
                }
            }
        }
        for (int i3 = 0; i3 < EXIF_TAGS.length; i3++) {
            if ((i3 != 4 || this.mHasThumbnail) && (obj = sExifTagMapsForWriting[i3].get(str)) != null) {
                if (str3 != null) {
                    ExifTag exifTag = (ExifTag) obj;
                    Pair<Integer, Integer> pairGuessDataFormat = guessDataFormat(str3);
                    if (exifTag.primaryFormat == pairGuessDataFormat.first.intValue() || exifTag.primaryFormat == pairGuessDataFormat.second.intValue()) {
                        i2 = exifTag.primaryFormat;
                    } else {
                        int i4 = exifTag.secondaryFormat;
                        if (i4 == -1 || !(i4 == pairGuessDataFormat.first.intValue() || exifTag.secondaryFormat == pairGuessDataFormat.second.intValue())) {
                            int i5 = exifTag.primaryFormat;
                            if (i5 == 1 || i5 == 7 || i5 == 2) {
                                i2 = i5;
                            } else {
                                StringBuilder sbV = c.v("Given tag (", str, ") value didn't match with one of expected formats: ");
                                String[] strArr = IFD_FORMAT_NAMES;
                                sbV.append(strArr[exifTag.primaryFormat]);
                                sbV.append(exifTag.secondaryFormat == -1 ? "" : ", " + strArr[exifTag.secondaryFormat]);
                                sbV.append(" (guess: ");
                                sbV.append(strArr[pairGuessDataFormat.first.intValue()]);
                                sbV.append(pairGuessDataFormat.second.intValue() != -1 ? ", " + strArr[pairGuessDataFormat.second.intValue()] : "");
                                sbV.append(")");
                                Log.w(TAG, sbV.toString());
                            }
                        } else {
                            i2 = exifTag.secondaryFormat;
                        }
                    }
                    switch (i2) {
                        case 1:
                            this.mAttributes[i3].put(str, ExifAttribute.createByte(str3));
                            break;
                        case 2:
                        case 7:
                            this.mAttributes[i3].put(str, ExifAttribute.createString(str3));
                            break;
                        case 3:
                            String[] strArrSplit = str3.split(",");
                            int[] iArr = new int[strArrSplit.length];
                            for (int i6 = 0; i6 < strArrSplit.length; i6++) {
                                iArr[i6] = Integer.parseInt(strArrSplit[i6]);
                            }
                            this.mAttributes[i3].put(str, ExifAttribute.createUShort(iArr, this.mExifByteOrder));
                            break;
                        case 4:
                            String[] strArrSplit2 = str3.split(",");
                            long[] jArr = new long[strArrSplit2.length];
                            for (int i7 = 0; i7 < strArrSplit2.length; i7++) {
                                jArr[i7] = Long.parseLong(strArrSplit2[i7]);
                            }
                            this.mAttributes[i3].put(str, ExifAttribute.createULong(jArr, this.mExifByteOrder));
                            break;
                        case 5:
                            String[] strArrSplit3 = str3.split(",");
                            Rational[] rationalArr = new Rational[strArrSplit3.length];
                            for (int i8 = 0; i8 < strArrSplit3.length; i8++) {
                                String[] strArrSplit4 = strArrSplit3[i8].split("/");
                                rationalArr[i8] = new Rational((long) Double.parseDouble(strArrSplit4[0]), (long) Double.parseDouble(strArrSplit4[1]));
                            }
                            this.mAttributes[i3].put(str, ExifAttribute.createURational(rationalArr, this.mExifByteOrder));
                            break;
                        case 6:
                        case 8:
                        case 11:
                        default:
                            m.A("Data format isn't one of expected formats: ", i2, TAG);
                            break;
                        case 9:
                            String[] strArrSplit5 = str3.split(",");
                            int[] iArr2 = new int[strArrSplit5.length];
                            for (int i9 = 0; i9 < strArrSplit5.length; i9++) {
                                iArr2[i9] = Integer.parseInt(strArrSplit5[i9]);
                            }
                            this.mAttributes[i3].put(str, ExifAttribute.createSLong(iArr2, this.mExifByteOrder));
                            break;
                        case 10:
                            String[] strArrSplit6 = str3.split(",");
                            Rational[] rationalArr2 = new Rational[strArrSplit6.length];
                            for (int i10 = 0; i10 < strArrSplit6.length; i10++) {
                                String[] strArrSplit7 = strArrSplit6[i10].split("/");
                                rationalArr2[i10] = new Rational((long) Double.parseDouble(strArrSplit7[0]), (long) Double.parseDouble(strArrSplit7[1]));
                            }
                            this.mAttributes[i3].put(str, ExifAttribute.createSRational(rationalArr2, this.mExifByteOrder));
                            break;
                        case 12:
                            String[] strArrSplit8 = str3.split(",");
                            double[] dArr = new double[strArrSplit8.length];
                            for (int i11 = 0; i11 < strArrSplit8.length; i11++) {
                                dArr[i11] = Double.parseDouble(strArrSplit8[i11]);
                            }
                            this.mAttributes[i3].put(str, ExifAttribute.createDouble(dArr, this.mExifByteOrder));
                            break;
                    }
                } else {
                    this.mAttributes[i3].remove(str);
                }
            }
        }
    }

    public static class ExifTag {
        public final String name;
        public final int number;
        public final int primaryFormat;
        public final int secondaryFormat;

        private ExifTag(String str, int i2, int i3) {
            this.name = str;
            this.number = i2;
            this.primaryFormat = i3;
            this.secondaryFormat = -1;
        }

        private ExifTag(String str, int i2, int i3, int i4) {
            this.name = str;
            this.number = i2;
            this.primaryFormat = i3;
            this.secondaryFormat = i4;
        }
    }

    public static class ByteOrderedDataInputStream extends InputStream implements DataInput {
        private ByteOrder mByteOrder;
        private DataInputStream mDataInputStream;
        private InputStream mInputStream;
        private final int mLength;
        private int mPosition;
        private static final ByteOrder LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;
        private static final ByteOrder BIG_ENDIAN = ByteOrder.BIG_ENDIAN;

        public ByteOrderedDataInputStream(InputStream inputStream) throws IOException {
            this.mByteOrder = ByteOrder.BIG_ENDIAN;
            this.mInputStream = inputStream;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.mDataInputStream = dataInputStream;
            int iAvailable = dataInputStream.available();
            this.mLength = iAvailable;
            this.mPosition = 0;
            this.mDataInputStream.mark(iAvailable);
        }

        @Override // java.io.InputStream
        public int available() {
            return this.mDataInputStream.available();
        }

        public int peek() {
            return this.mPosition;
        }

        @Override // java.io.InputStream
        public int read() {
            this.mPosition++;
            return this.mDataInputStream.read();
        }

        @Override // java.io.DataInput
        public boolean readBoolean() {
            this.mPosition++;
            return this.mDataInputStream.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            int i2 = this.mPosition + 1;
            this.mPosition = i2;
            if (i2 > this.mLength) {
                throw new EOFException();
            }
            int i3 = this.mDataInputStream.read();
            if (i3 >= 0) {
                return (byte) i3;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() {
            this.mPosition += 2;
            return this.mDataInputStream.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i2, int i3) throws IOException {
            int i4 = this.mPosition + i3;
            this.mPosition = i4;
            if (i4 > this.mLength) {
                throw new EOFException();
            }
            if (this.mDataInputStream.read(bArr, i2, i3) != i3) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            int i2 = this.mPosition + 4;
            this.mPosition = i2;
            if (i2 > this.mLength) {
                throw new EOFException();
            }
            int i3 = this.mDataInputStream.read();
            int i4 = this.mDataInputStream.read();
            int i5 = this.mDataInputStream.read();
            int i6 = this.mDataInputStream.read();
            if ((i3 | i4 | i5 | i6) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == LITTLE_ENDIAN) {
                return (i6 << 24) + (i5 << 16) + (i4 << 8) + i3;
            }
            if (byteOrder == BIG_ENDIAN) {
                return (i3 << 24) + (i4 << 16) + (i5 << 8) + i6;
            }
            throw new IOException("Invalid byte order: " + this.mByteOrder);
        }

        @Override // java.io.DataInput
        public String readLine() {
            Log.d(ExifInterface.TAG, "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            int i2 = this.mPosition + 8;
            this.mPosition = i2;
            if (i2 > this.mLength) {
                throw new EOFException();
            }
            int i3 = this.mDataInputStream.read();
            int i4 = this.mDataInputStream.read();
            int i5 = this.mDataInputStream.read();
            int i6 = this.mDataInputStream.read();
            int i7 = this.mDataInputStream.read();
            int i8 = this.mDataInputStream.read();
            int i9 = this.mDataInputStream.read();
            int i10 = this.mDataInputStream.read();
            if ((i3 | i4 | i5 | i6 | i7 | i8 | i9 | i10) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == LITTLE_ENDIAN) {
                return (((long) i10) << 56) + (((long) i9) << 48) + (((long) i8) << 40) + (((long) i7) << 32) + (((long) i6) << 24) + (((long) i5) << 16) + (((long) i4) << 8) + ((long) i3);
            }
            if (byteOrder == BIG_ENDIAN) {
                return (((long) i3) << 56) + (((long) i4) << 48) + (((long) i5) << 40) + (((long) i6) << 32) + (((long) i7) << 24) + (((long) i8) << 16) + (((long) i9) << 8) + ((long) i10);
            }
            throw new IOException("Invalid byte order: " + this.mByteOrder);
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            int i2 = this.mPosition + 2;
            this.mPosition = i2;
            if (i2 > this.mLength) {
                throw new EOFException();
            }
            int i3 = this.mDataInputStream.read();
            int i4 = this.mDataInputStream.read();
            if ((i3 | i4) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == LITTLE_ENDIAN) {
                return (short) ((i4 << 8) + i3);
            }
            if (byteOrder == BIG_ENDIAN) {
                return (short) ((i3 << 8) + i4);
            }
            throw new IOException("Invalid byte order: " + this.mByteOrder);
        }

        @Override // java.io.DataInput
        public String readUTF() {
            this.mPosition += 2;
            return this.mDataInputStream.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() {
            this.mPosition++;
            return this.mDataInputStream.readUnsignedByte();
        }

        public long readUnsignedInt() {
            return ((long) readInt()) & 4294967295L;
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            int i2 = this.mPosition + 2;
            this.mPosition = i2;
            if (i2 > this.mLength) {
                throw new EOFException();
            }
            int i3 = this.mDataInputStream.read();
            int i4 = this.mDataInputStream.read();
            if ((i3 | i4) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == LITTLE_ENDIAN) {
                return (i4 << 8) + i3;
            }
            if (byteOrder == BIG_ENDIAN) {
                return (i3 << 8) + i4;
            }
            throw new IOException("Invalid byte order: " + this.mByteOrder);
        }

        public void seek(long j2) throws IOException {
            int i2 = this.mPosition;
            if (i2 > j2) {
                this.mPosition = 0;
                this.mDataInputStream.reset();
                this.mDataInputStream.mark(this.mLength);
            } else {
                j2 -= (long) i2;
            }
            int i3 = (int) j2;
            if (skipBytes(i3) != i3) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        @Override // java.io.DataInput
        public int skipBytes(int i2) {
            int iMin = Math.min(i2, this.mLength - this.mPosition);
            int iSkipBytes = 0;
            while (iSkipBytes < iMin) {
                iSkipBytes += this.mDataInputStream.skipBytes(iMin - iSkipBytes);
            }
            this.mPosition += iSkipBytes;
            return iSkipBytes;
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            int length = this.mPosition + bArr.length;
            this.mPosition = length;
            if (length <= this.mLength) {
                if (this.mDataInputStream.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        public ByteOrderedDataInputStream(byte[] bArr) {
            this(new ByteArrayInputStream(bArr));
        }
    }

    public ExifInterface(FileDescriptor fileDescriptor) throws Throwable {
        this.mAttributes = new HashMap[EXIF_TAGS.length];
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (fileDescriptor != null) {
            FileInputStream fileInputStream = null;
            this.mAssetInputStream = null;
            this.mFilename = null;
            if (isSeekableFD(fileDescriptor)) {
                this.mSeekableFileDescriptor = fileDescriptor;
                try {
                    fileDescriptor = Os.dup(fileDescriptor);
                } catch (ErrnoException e2) {
                    throw e2.rethrowAsIOException();
                }
            } else {
                this.mSeekableFileDescriptor = null;
            }
            this.mIsInputStream = false;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(fileDescriptor);
                try {
                    loadAttributes(fileInputStream2);
                    IoUtils.closeQuietly(fileInputStream2);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    IoUtils.closeQuietly(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            throw new IllegalArgumentException("fileDescriptor cannot be null");
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0039  */
    public ExifInterface(InputStream inputStream) {
        this.mAttributes = new HashMap[EXIF_TAGS.length];
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (inputStream != null) {
            this.mFilename = null;
            if (inputStream instanceof AssetManager.AssetInputStream) {
                this.mAssetInputStream = (AssetManager.AssetInputStream) inputStream;
                this.mSeekableFileDescriptor = null;
            } else if (inputStream instanceof FileInputStream) {
                FileInputStream fileInputStream = (FileInputStream) inputStream;
                if (isSeekableFD(fileInputStream.getFD())) {
                    this.mAssetInputStream = null;
                    this.mSeekableFileDescriptor = fileInputStream.getFD();
                } else {
                    this.mAssetInputStream = null;
                    this.mSeekableFileDescriptor = null;
                }
            } else {
                this.mAssetInputStream = null;
                this.mSeekableFileDescriptor = null;
            }
            this.mIsInputStream = true;
            loadAttributes(inputStream);
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null");
    }
}
