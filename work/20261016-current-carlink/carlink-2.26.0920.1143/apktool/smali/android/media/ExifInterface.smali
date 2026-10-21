.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroid/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/media/ExifInterface$IfdType;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final BITS_PER_SAMPLE_RGB:[I

.field private static final BYTE_ALIGN_II:S = 0x4949s

.field private static final BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final DATA_DEFLATE_ZIP:I = 0x8

.field private static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field private static final DATA_JPEG:I = 0x6

.field private static final DATA_JPEG_COMPRESSED:I = 0x7

.field private static final DATA_LOSSY_JPEG:I = 0x884c

.field private static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field private static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field private static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field private static final IFD_TYPE_PREVIEW:I = 0x5

.field private static final IFD_TYPE_PRIMARY:I = 0x0

.field private static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_HEIF:I = 0xc

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_SIGNATURE:[B

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field private static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field private static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field private static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final RAF_INFO_SIZE:I = 0xa0

.field private static final RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field private static final RW2_SIGNATURE:S = 0x55s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final START_CODE:B = 0x2at

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CAMERA_TYPE:Ljava/lang/String; = "CameraType"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static final sExifPointerTagMap:Ljava/util/HashMap;

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private final mIsInputStream:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method public static constructor <clinit>()V
    .locals 38

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v2, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 16
    .line 17
    new-array v2, v1, [B

    .line 18
    .line 19
    fill-array-data v2, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 23
    .line 24
    new-array v2, v1, [B

    .line 25
    .line 26
    fill-array-data v2, :array_3

    .line 27
    .line 28
    .line 29
    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    new-array v3, v2, [B

    .line 33
    .line 34
    fill-array-data v3, :array_4

    .line 35
    .line 36
    .line 37
    sput-object v3, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 38
    .line 39
    const/16 v3, 0xa

    .line 40
    .line 41
    new-array v4, v3, [B

    .line 42
    .line 43
    fill-array-data v4, :array_5

    .line 44
    .line 45
    .line 46
    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 47
    .line 48
    const-string v5, ""

    .line 49
    .line 50
    const-string v6, "BYTE"

    .line 51
    .line 52
    const-string v7, "STRING"

    .line 53
    .line 54
    const-string v8, "USHORT"

    .line 55
    .line 56
    const-string v9, "ULONG"

    .line 57
    .line 58
    const-string v10, "URATIONAL"

    .line 59
    .line 60
    const-string v11, "SBYTE"

    .line 61
    .line 62
    const-string v12, "UNDEFINED"

    .line 63
    .line 64
    const-string v13, "SSHORT"

    .line 65
    .line 66
    const-string v14, "SLONG"

    .line 67
    .line 68
    const-string v15, "SRATIONAL"

    .line 69
    .line 70
    const-string v16, "SINGLE"

    .line 71
    .line 72
    const-string v17, "DOUBLE"

    .line 73
    .line 74
    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    sput-object v4, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 79
    .line 80
    const/16 v4, 0xe

    .line 81
    .line 82
    new-array v5, v4, [I

    .line 83
    .line 84
    fill-array-data v5, :array_6

    .line 85
    .line 86
    .line 87
    sput-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 88
    .line 89
    const/16 v5, 0x8

    .line 90
    .line 91
    new-array v6, v5, [B

    .line 92
    .line 93
    fill-array-data v6, :array_7

    .line 94
    .line 95
    .line 96
    sput-object v6, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 97
    .line 98
    new-array v6, v0, [I

    .line 99
    .line 100
    fill-array-data v6, :array_8

    .line 101
    .line 102
    .line 103
    sput-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 104
    .line 105
    const/4 v6, 0x1

    .line 106
    new-array v7, v6, [I

    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    aput v1, v7, v8

    .line 110
    .line 111
    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 112
    .line 113
    new-array v7, v6, [I

    .line 114
    .line 115
    aput v5, v7, v8

    .line 116
    .line 117
    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 118
    .line 119
    const/16 v7, 0x29

    .line 120
    .line 121
    new-array v7, v7, [Landroid/media/ExifInterface$ExifTag;

    .line 122
    .line 123
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 124
    .line 125
    const-string v10, "NewSubfileType"

    .line 126
    .line 127
    const/16 v11, 0xfe

    .line 128
    .line 129
    const/4 v12, 0x0

    .line 130
    invoke-direct {v9, v10, v11, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 131
    .line 132
    .line 133
    aput-object v9, v7, v8

    .line 134
    .line 135
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 136
    .line 137
    const-string v10, "SubfileType"

    .line 138
    .line 139
    const/16 v11, 0xff

    .line 140
    .line 141
    invoke-direct {v9, v10, v11, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 142
    .line 143
    .line 144
    aput-object v9, v7, v6

    .line 145
    .line 146
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 147
    .line 148
    const-string v14, "ImageWidth"

    .line 149
    .line 150
    const/16 v15, 0x100

    .line 151
    .line 152
    const/16 v16, 0x3

    .line 153
    .line 154
    const/16 v17, 0x4

    .line 155
    .line 156
    const/16 v18, 0x0

    .line 157
    .line 158
    move-object v13, v9

    .line 159
    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 160
    .line 161
    .line 162
    const/4 v10, 0x2

    .line 163
    aput-object v9, v7, v10

    .line 164
    .line 165
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 166
    .line 167
    const-string v14, "ImageLength"

    .line 168
    .line 169
    const/16 v15, 0x101

    .line 170
    .line 171
    move-object v13, v9

    .line 172
    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 173
    .line 174
    .line 175
    aput-object v9, v7, v0

    .line 176
    .line 177
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 178
    .line 179
    const-string v11, "BitsPerSample"

    .line 180
    .line 181
    const/16 v13, 0x102

    .line 182
    .line 183
    invoke-direct {v9, v11, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 184
    .line 185
    .line 186
    aput-object v9, v7, v1

    .line 187
    .line 188
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 189
    .line 190
    const-string v11, "Compression"

    .line 191
    .line 192
    const/16 v13, 0x103

    .line 193
    .line 194
    invoke-direct {v9, v11, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 195
    .line 196
    .line 197
    const/4 v11, 0x5

    .line 198
    aput-object v9, v7, v11

    .line 199
    .line 200
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 201
    .line 202
    const-string v13, "PhotometricInterpretation"

    .line 203
    .line 204
    const/16 v14, 0x106

    .line 205
    .line 206
    invoke-direct {v9, v13, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 207
    .line 208
    .line 209
    aput-object v9, v7, v2

    .line 210
    .line 211
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 212
    .line 213
    const-string v13, "ImageDescription"

    .line 214
    .line 215
    const/16 v14, 0x10e

    .line 216
    .line 217
    invoke-direct {v9, v13, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 218
    .line 219
    .line 220
    const/4 v13, 0x7

    .line 221
    aput-object v9, v7, v13

    .line 222
    .line 223
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 224
    .line 225
    const-string v14, "Make"

    .line 226
    .line 227
    const/16 v15, 0x10f

    .line 228
    .line 229
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 230
    .line 231
    .line 232
    aput-object v9, v7, v5

    .line 233
    .line 234
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 235
    .line 236
    const-string v14, "Model"

    .line 237
    .line 238
    const/16 v15, 0x110

    .line 239
    .line 240
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 241
    .line 242
    .line 243
    const/16 v14, 0x9

    .line 244
    .line 245
    aput-object v9, v7, v14

    .line 246
    .line 247
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 248
    .line 249
    const-string v16, "StripOffsets"

    .line 250
    .line 251
    const/16 v17, 0x111

    .line 252
    .line 253
    const/16 v18, 0x3

    .line 254
    .line 255
    const/16 v19, 0x4

    .line 256
    .line 257
    const/16 v20, 0x0

    .line 258
    .line 259
    move-object v15, v9

    .line 260
    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 261
    .line 262
    .line 263
    aput-object v9, v7, v3

    .line 264
    .line 265
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 266
    .line 267
    const-string v15, "Orientation"

    .line 268
    .line 269
    const/16 v3, 0x112

    .line 270
    .line 271
    invoke-direct {v9, v15, v3, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 272
    .line 273
    .line 274
    const/16 v3, 0xb

    .line 275
    .line 276
    aput-object v9, v7, v3

    .line 277
    .line 278
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 279
    .line 280
    const-string v15, "SamplesPerPixel"

    .line 281
    .line 282
    const/16 v3, 0x115

    .line 283
    .line 284
    invoke-direct {v9, v15, v3, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 285
    .line 286
    .line 287
    const/16 v3, 0xc

    .line 288
    .line 289
    aput-object v9, v7, v3

    .line 290
    .line 291
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 292
    .line 293
    const-string v19, "RowsPerStrip"

    .line 294
    .line 295
    const/16 v20, 0x116

    .line 296
    .line 297
    const/16 v21, 0x3

    .line 298
    .line 299
    const/16 v22, 0x4

    .line 300
    .line 301
    const/16 v23, 0x0

    .line 302
    .line 303
    move-object/from16 v18, v9

    .line 304
    .line 305
    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 306
    .line 307
    .line 308
    const/16 v15, 0xd

    .line 309
    .line 310
    aput-object v9, v7, v15

    .line 311
    .line 312
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 313
    .line 314
    const-string v19, "StripByteCounts"

    .line 315
    .line 316
    const/16 v20, 0x117

    .line 317
    .line 318
    move-object/from16 v18, v9

    .line 319
    .line 320
    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 321
    .line 322
    .line 323
    aput-object v9, v7, v4

    .line 324
    .line 325
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 326
    .line 327
    const-string v4, "XResolution"

    .line 328
    .line 329
    const/16 v15, 0x11a

    .line 330
    .line 331
    invoke-direct {v9, v4, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 332
    .line 333
    .line 334
    const/16 v4, 0xf

    .line 335
    .line 336
    aput-object v9, v7, v4

    .line 337
    .line 338
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 339
    .line 340
    const-string v15, "YResolution"

    .line 341
    .line 342
    const/16 v4, 0x11b

    .line 343
    .line 344
    invoke-direct {v9, v15, v4, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 345
    .line 346
    .line 347
    const/16 v4, 0x10

    .line 348
    .line 349
    aput-object v9, v7, v4

    .line 350
    .line 351
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 352
    .line 353
    const-string v15, "PlanarConfiguration"

    .line 354
    .line 355
    const/16 v4, 0x11c

    .line 356
    .line 357
    invoke-direct {v9, v15, v4, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 358
    .line 359
    .line 360
    const/16 v4, 0x11

    .line 361
    .line 362
    aput-object v9, v7, v4

    .line 363
    .line 364
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 365
    .line 366
    const-string v15, "ResolutionUnit"

    .line 367
    .line 368
    const/16 v4, 0x128

    .line 369
    .line 370
    invoke-direct {v9, v15, v4, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 371
    .line 372
    .line 373
    const/16 v4, 0x12

    .line 374
    .line 375
    aput-object v9, v7, v4

    .line 376
    .line 377
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 378
    .line 379
    const-string v15, "TransferFunction"

    .line 380
    .line 381
    const/16 v4, 0x12d

    .line 382
    .line 383
    invoke-direct {v9, v15, v4, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 384
    .line 385
    .line 386
    const/16 v4, 0x13

    .line 387
    .line 388
    aput-object v9, v7, v4

    .line 389
    .line 390
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 391
    .line 392
    const-string v15, "Software"

    .line 393
    .line 394
    const/16 v4, 0x131

    .line 395
    .line 396
    invoke-direct {v9, v15, v4, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 397
    .line 398
    .line 399
    const/16 v4, 0x14

    .line 400
    .line 401
    aput-object v9, v7, v4

    .line 402
    .line 403
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 404
    .line 405
    const-string v9, "DateTime"

    .line 406
    .line 407
    const/16 v15, 0x132

    .line 408
    .line 409
    invoke-direct {v4, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 410
    .line 411
    .line 412
    const/16 v9, 0x15

    .line 413
    .line 414
    aput-object v4, v7, v9

    .line 415
    .line 416
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 417
    .line 418
    const-string v9, "Artist"

    .line 419
    .line 420
    const/16 v15, 0x13b

    .line 421
    .line 422
    invoke-direct {v4, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 423
    .line 424
    .line 425
    const/16 v9, 0x16

    .line 426
    .line 427
    aput-object v4, v7, v9

    .line 428
    .line 429
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 430
    .line 431
    const-string v9, "WhitePoint"

    .line 432
    .line 433
    const/16 v15, 0x13e

    .line 434
    .line 435
    invoke-direct {v4, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 436
    .line 437
    .line 438
    const/16 v9, 0x17

    .line 439
    .line 440
    aput-object v4, v7, v9

    .line 441
    .line 442
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 443
    .line 444
    const-string v15, "PrimaryChromaticities"

    .line 445
    .line 446
    const/16 v3, 0x13f

    .line 447
    .line 448
    invoke-direct {v4, v15, v3, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 449
    .line 450
    .line 451
    const/16 v3, 0x18

    .line 452
    .line 453
    aput-object v4, v7, v3

    .line 454
    .line 455
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 456
    .line 457
    const-string v4, "SubIFDPointer"

    .line 458
    .line 459
    const/16 v15, 0x14a

    .line 460
    .line 461
    invoke-direct {v3, v4, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 462
    .line 463
    .line 464
    const/16 v4, 0x19

    .line 465
    .line 466
    aput-object v3, v7, v4

    .line 467
    .line 468
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 469
    .line 470
    const-string v4, "JPEGInterchangeFormat"

    .line 471
    .line 472
    const/16 v15, 0x201

    .line 473
    .line 474
    invoke-direct {v3, v4, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 475
    .line 476
    .line 477
    const/16 v4, 0x1a

    .line 478
    .line 479
    aput-object v3, v7, v4

    .line 480
    .line 481
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 482
    .line 483
    const-string v4, "JPEGInterchangeFormatLength"

    .line 484
    .line 485
    const/16 v15, 0x202

    .line 486
    .line 487
    invoke-direct {v3, v4, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 488
    .line 489
    .line 490
    const/16 v4, 0x1b

    .line 491
    .line 492
    aput-object v3, v7, v4

    .line 493
    .line 494
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 495
    .line 496
    const-string v4, "YCbCrCoefficients"

    .line 497
    .line 498
    const/16 v15, 0x211

    .line 499
    .line 500
    invoke-direct {v3, v4, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 501
    .line 502
    .line 503
    const/16 v4, 0x1c

    .line 504
    .line 505
    aput-object v3, v7, v4

    .line 506
    .line 507
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 508
    .line 509
    const-string v4, "YCbCrSubSampling"

    .line 510
    .line 511
    const/16 v15, 0x212

    .line 512
    .line 513
    invoke-direct {v3, v4, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 514
    .line 515
    .line 516
    const/16 v4, 0x1d

    .line 517
    .line 518
    aput-object v3, v7, v4

    .line 519
    .line 520
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 521
    .line 522
    const-string v4, "YCbCrPositioning"

    .line 523
    .line 524
    const/16 v15, 0x213

    .line 525
    .line 526
    invoke-direct {v3, v4, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 527
    .line 528
    .line 529
    const/16 v4, 0x1e

    .line 530
    .line 531
    aput-object v3, v7, v4

    .line 532
    .line 533
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 534
    .line 535
    const-string v4, "ReferenceBlackWhite"

    .line 536
    .line 537
    const/16 v15, 0x214

    .line 538
    .line 539
    invoke-direct {v3, v4, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 540
    .line 541
    .line 542
    const/16 v4, 0x1f

    .line 543
    .line 544
    aput-object v3, v7, v4

    .line 545
    .line 546
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 547
    .line 548
    const-string v4, "Copyright"

    .line 549
    .line 550
    const v15, 0x8298

    .line 551
    .line 552
    .line 553
    invoke-direct {v3, v4, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 554
    .line 555
    .line 556
    const/16 v4, 0x20

    .line 557
    .line 558
    aput-object v3, v7, v4

    .line 559
    .line 560
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 561
    .line 562
    const-string v4, "ExifIFDPointer"

    .line 563
    .line 564
    const v15, 0x8769

    .line 565
    .line 566
    .line 567
    invoke-direct {v3, v4, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 568
    .line 569
    .line 570
    const/16 v4, 0x21

    .line 571
    .line 572
    aput-object v3, v7, v4

    .line 573
    .line 574
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 575
    .line 576
    const-string v4, "GPSInfoIFDPointer"

    .line 577
    .line 578
    const v15, 0x8825

    .line 579
    .line 580
    .line 581
    invoke-direct {v3, v4, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 582
    .line 583
    .line 584
    const/16 v4, 0x22

    .line 585
    .line 586
    aput-object v3, v7, v4

    .line 587
    .line 588
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 589
    .line 590
    const-string v4, "SensorTopBorder"

    .line 591
    .line 592
    invoke-direct {v3, v4, v1, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 593
    .line 594
    .line 595
    const/16 v4, 0x23

    .line 596
    .line 597
    aput-object v3, v7, v4

    .line 598
    .line 599
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 600
    .line 601
    const-string v4, "SensorLeftBorder"

    .line 602
    .line 603
    invoke-direct {v3, v4, v11, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 604
    .line 605
    .line 606
    const/16 v4, 0x24

    .line 607
    .line 608
    aput-object v3, v7, v4

    .line 609
    .line 610
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 611
    .line 612
    const-string v4, "SensorBottomBorder"

    .line 613
    .line 614
    invoke-direct {v3, v4, v2, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 615
    .line 616
    .line 617
    const/16 v4, 0x25

    .line 618
    .line 619
    aput-object v3, v7, v4

    .line 620
    .line 621
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 622
    .line 623
    const-string v4, "SensorRightBorder"

    .line 624
    .line 625
    invoke-direct {v3, v4, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 626
    .line 627
    .line 628
    const/16 v4, 0x26

    .line 629
    .line 630
    aput-object v3, v7, v4

    .line 631
    .line 632
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 633
    .line 634
    const-string v4, "ISO"

    .line 635
    .line 636
    invoke-direct {v3, v4, v9, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 637
    .line 638
    .line 639
    const/16 v4, 0x27

    .line 640
    .line 641
    aput-object v3, v7, v4

    .line 642
    .line 643
    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    .line 644
    .line 645
    const-string v4, "JpgFromRaw"

    .line 646
    .line 647
    const/16 v15, 0x2e

    .line 648
    .line 649
    invoke-direct {v3, v4, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 650
    .line 651
    .line 652
    const/16 v4, 0x28

    .line 653
    .line 654
    aput-object v3, v7, v4

    .line 655
    .line 656
    sput-object v7, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 657
    .line 658
    const/16 v3, 0x3c

    .line 659
    .line 660
    new-array v3, v3, [Landroid/media/ExifInterface$ExifTag;

    .line 661
    .line 662
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 663
    .line 664
    const-string v15, "ExposureTime"

    .line 665
    .line 666
    const v9, 0x829a

    .line 667
    .line 668
    .line 669
    invoke-direct {v4, v15, v9, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 670
    .line 671
    .line 672
    aput-object v4, v3, v8

    .line 673
    .line 674
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 675
    .line 676
    const-string v9, "FNumber"

    .line 677
    .line 678
    const v15, 0x829d

    .line 679
    .line 680
    .line 681
    invoke-direct {v4, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 682
    .line 683
    .line 684
    aput-object v4, v3, v6

    .line 685
    .line 686
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 687
    .line 688
    const-string v9, "ExposureProgram"

    .line 689
    .line 690
    const v15, 0x8822

    .line 691
    .line 692
    .line 693
    invoke-direct {v4, v9, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 694
    .line 695
    .line 696
    aput-object v4, v3, v10

    .line 697
    .line 698
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 699
    .line 700
    const-string v9, "SpectralSensitivity"

    .line 701
    .line 702
    const v15, 0x8824

    .line 703
    .line 704
    .line 705
    invoke-direct {v4, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 706
    .line 707
    .line 708
    aput-object v4, v3, v0

    .line 709
    .line 710
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 711
    .line 712
    const-string v9, "ISOSpeedRatings"

    .line 713
    .line 714
    const v15, 0x8827

    .line 715
    .line 716
    .line 717
    invoke-direct {v4, v9, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 718
    .line 719
    .line 720
    aput-object v4, v3, v1

    .line 721
    .line 722
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 723
    .line 724
    const-string v9, "OECF"

    .line 725
    .line 726
    const v15, 0x8828

    .line 727
    .line 728
    .line 729
    invoke-direct {v4, v9, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 730
    .line 731
    .line 732
    aput-object v4, v3, v11

    .line 733
    .line 734
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 735
    .line 736
    const-string v9, "ExifVersion"

    .line 737
    .line 738
    const v15, 0x9000

    .line 739
    .line 740
    .line 741
    invoke-direct {v4, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 742
    .line 743
    .line 744
    aput-object v4, v3, v2

    .line 745
    .line 746
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 747
    .line 748
    const-string v9, "DateTimeOriginal"

    .line 749
    .line 750
    const v15, 0x9003

    .line 751
    .line 752
    .line 753
    invoke-direct {v4, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 754
    .line 755
    .line 756
    aput-object v4, v3, v13

    .line 757
    .line 758
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 759
    .line 760
    const-string v9, "DateTimeDigitized"

    .line 761
    .line 762
    const v15, 0x9004

    .line 763
    .line 764
    .line 765
    invoke-direct {v4, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 766
    .line 767
    .line 768
    aput-object v4, v3, v5

    .line 769
    .line 770
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 771
    .line 772
    const-string v9, "ComponentsConfiguration"

    .line 773
    .line 774
    const v15, 0x9101

    .line 775
    .line 776
    .line 777
    invoke-direct {v4, v9, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 778
    .line 779
    .line 780
    aput-object v4, v3, v14

    .line 781
    .line 782
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 783
    .line 784
    const-string v9, "CompressedBitsPerPixel"

    .line 785
    .line 786
    const v15, 0x9102

    .line 787
    .line 788
    .line 789
    invoke-direct {v4, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 790
    .line 791
    .line 792
    const/16 v9, 0xa

    .line 793
    .line 794
    aput-object v4, v3, v9

    .line 795
    .line 796
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 797
    .line 798
    const-string v15, "ShutterSpeedValue"

    .line 799
    .line 800
    const v14, 0x9201

    .line 801
    .line 802
    .line 803
    invoke-direct {v4, v15, v14, v9, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 804
    .line 805
    .line 806
    const/16 v14, 0xb

    .line 807
    .line 808
    aput-object v4, v3, v14

    .line 809
    .line 810
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 811
    .line 812
    const-string v14, "ApertureValue"

    .line 813
    .line 814
    const v15, 0x9202

    .line 815
    .line 816
    .line 817
    invoke-direct {v4, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 818
    .line 819
    .line 820
    const/16 v14, 0xc

    .line 821
    .line 822
    aput-object v4, v3, v14

    .line 823
    .line 824
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 825
    .line 826
    const-string v14, "BrightnessValue"

    .line 827
    .line 828
    const v15, 0x9203

    .line 829
    .line 830
    .line 831
    invoke-direct {v4, v14, v15, v9, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 832
    .line 833
    .line 834
    const/16 v14, 0xd

    .line 835
    .line 836
    aput-object v4, v3, v14

    .line 837
    .line 838
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 839
    .line 840
    const-string v14, "ExposureBiasValue"

    .line 841
    .line 842
    const v15, 0x9204

    .line 843
    .line 844
    .line 845
    invoke-direct {v4, v14, v15, v9, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 846
    .line 847
    .line 848
    const/16 v9, 0xe

    .line 849
    .line 850
    aput-object v4, v3, v9

    .line 851
    .line 852
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 853
    .line 854
    const-string v9, "MaxApertureValue"

    .line 855
    .line 856
    const v14, 0x9205

    .line 857
    .line 858
    .line 859
    invoke-direct {v4, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 860
    .line 861
    .line 862
    const/16 v9, 0xf

    .line 863
    .line 864
    aput-object v4, v3, v9

    .line 865
    .line 866
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 867
    .line 868
    const-string v9, "SubjectDistance"

    .line 869
    .line 870
    const v14, 0x9206

    .line 871
    .line 872
    .line 873
    invoke-direct {v4, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 874
    .line 875
    .line 876
    const/16 v9, 0x10

    .line 877
    .line 878
    aput-object v4, v3, v9

    .line 879
    .line 880
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 881
    .line 882
    const-string v9, "MeteringMode"

    .line 883
    .line 884
    const v14, 0x9207

    .line 885
    .line 886
    .line 887
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 888
    .line 889
    .line 890
    const/16 v9, 0x11

    .line 891
    .line 892
    aput-object v4, v3, v9

    .line 893
    .line 894
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 895
    .line 896
    const-string v9, "LightSource"

    .line 897
    .line 898
    const v14, 0x9208

    .line 899
    .line 900
    .line 901
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 902
    .line 903
    .line 904
    const/16 v9, 0x12

    .line 905
    .line 906
    aput-object v4, v3, v9

    .line 907
    .line 908
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 909
    .line 910
    const-string v9, "Flash"

    .line 911
    .line 912
    const v14, 0x9209

    .line 913
    .line 914
    .line 915
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 916
    .line 917
    .line 918
    const/16 v9, 0x13

    .line 919
    .line 920
    aput-object v4, v3, v9

    .line 921
    .line 922
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 923
    .line 924
    const-string v9, "FocalLength"

    .line 925
    .line 926
    const v14, 0x920a

    .line 927
    .line 928
    .line 929
    invoke-direct {v4, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 930
    .line 931
    .line 932
    const/16 v9, 0x14

    .line 933
    .line 934
    aput-object v4, v3, v9

    .line 935
    .line 936
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 937
    .line 938
    const-string v9, "SubjectArea"

    .line 939
    .line 940
    const v14, 0x9214

    .line 941
    .line 942
    .line 943
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 944
    .line 945
    .line 946
    const/16 v9, 0x15

    .line 947
    .line 948
    aput-object v4, v3, v9

    .line 949
    .line 950
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 951
    .line 952
    const-string v9, "MakerNote"

    .line 953
    .line 954
    const v14, 0x927c

    .line 955
    .line 956
    .line 957
    invoke-direct {v4, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 958
    .line 959
    .line 960
    const/16 v9, 0x16

    .line 961
    .line 962
    aput-object v4, v3, v9

    .line 963
    .line 964
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 965
    .line 966
    const-string v9, "UserComment"

    .line 967
    .line 968
    const v14, 0x9286

    .line 969
    .line 970
    .line 971
    invoke-direct {v4, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 972
    .line 973
    .line 974
    const/16 v9, 0x17

    .line 975
    .line 976
    aput-object v4, v3, v9

    .line 977
    .line 978
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 979
    .line 980
    const-string v9, "SubSecTime"

    .line 981
    .line 982
    const v14, 0x9290

    .line 983
    .line 984
    .line 985
    invoke-direct {v4, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 986
    .line 987
    .line 988
    const/16 v9, 0x18

    .line 989
    .line 990
    aput-object v4, v3, v9

    .line 991
    .line 992
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 993
    .line 994
    const-string v9, "SubSecTimeOriginal"

    .line 995
    .line 996
    const v14, 0x9291

    .line 997
    .line 998
    .line 999
    invoke-direct {v4, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1000
    .line 1001
    .line 1002
    const/16 v9, 0x19

    .line 1003
    .line 1004
    aput-object v4, v3, v9

    .line 1005
    .line 1006
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1007
    .line 1008
    const-string v9, "SubSecTimeDigitized"

    .line 1009
    .line 1010
    const v14, 0x9292

    .line 1011
    .line 1012
    .line 1013
    invoke-direct {v4, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1014
    .line 1015
    .line 1016
    const/16 v9, 0x1a

    .line 1017
    .line 1018
    aput-object v4, v3, v9

    .line 1019
    .line 1020
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1021
    .line 1022
    const-string v9, "FlashpixVersion"

    .line 1023
    .line 1024
    const v14, 0xa000

    .line 1025
    .line 1026
    .line 1027
    invoke-direct {v4, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1028
    .line 1029
    .line 1030
    const/16 v9, 0x1b

    .line 1031
    .line 1032
    aput-object v4, v3, v9

    .line 1033
    .line 1034
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1035
    .line 1036
    const-string v9, "ColorSpace"

    .line 1037
    .line 1038
    const v14, 0xa001

    .line 1039
    .line 1040
    .line 1041
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1042
    .line 1043
    .line 1044
    const/16 v9, 0x1c

    .line 1045
    .line 1046
    aput-object v4, v3, v9

    .line 1047
    .line 1048
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1049
    .line 1050
    const-string v25, "PixelXDimension"

    .line 1051
    .line 1052
    const v26, 0xa002

    .line 1053
    .line 1054
    .line 1055
    const/16 v27, 0x3

    .line 1056
    .line 1057
    const/16 v28, 0x4

    .line 1058
    .line 1059
    const/16 v29, 0x0

    .line 1060
    .line 1061
    move-object/from16 v24, v4

    .line 1062
    .line 1063
    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 1064
    .line 1065
    .line 1066
    const/16 v9, 0x1d

    .line 1067
    .line 1068
    aput-object v4, v3, v9

    .line 1069
    .line 1070
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1071
    .line 1072
    const-string v25, "PixelYDimension"

    .line 1073
    .line 1074
    const v26, 0xa003

    .line 1075
    .line 1076
    .line 1077
    move-object/from16 v24, v4

    .line 1078
    .line 1079
    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 1080
    .line 1081
    .line 1082
    const/16 v9, 0x1e

    .line 1083
    .line 1084
    aput-object v4, v3, v9

    .line 1085
    .line 1086
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1087
    .line 1088
    const-string v9, "RelatedSoundFile"

    .line 1089
    .line 1090
    const v14, 0xa004

    .line 1091
    .line 1092
    .line 1093
    invoke-direct {v4, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1094
    .line 1095
    .line 1096
    const/16 v9, 0x1f

    .line 1097
    .line 1098
    aput-object v4, v3, v9

    .line 1099
    .line 1100
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1101
    .line 1102
    const-string v9, "InteroperabilityIFDPointer"

    .line 1103
    .line 1104
    const v14, 0xa005

    .line 1105
    .line 1106
    .line 1107
    invoke-direct {v4, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1108
    .line 1109
    .line 1110
    const/16 v9, 0x20

    .line 1111
    .line 1112
    aput-object v4, v3, v9

    .line 1113
    .line 1114
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1115
    .line 1116
    const-string v9, "FlashEnergy"

    .line 1117
    .line 1118
    const v14, 0xa20b

    .line 1119
    .line 1120
    .line 1121
    invoke-direct {v4, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1122
    .line 1123
    .line 1124
    const/16 v9, 0x21

    .line 1125
    .line 1126
    aput-object v4, v3, v9

    .line 1127
    .line 1128
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1129
    .line 1130
    const-string v9, "SpatialFrequencyResponse"

    .line 1131
    .line 1132
    const v14, 0xa20c

    .line 1133
    .line 1134
    .line 1135
    invoke-direct {v4, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1136
    .line 1137
    .line 1138
    const/16 v9, 0x22

    .line 1139
    .line 1140
    aput-object v4, v3, v9

    .line 1141
    .line 1142
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1143
    .line 1144
    const-string v9, "FocalPlaneXResolution"

    .line 1145
    .line 1146
    const v14, 0xa20e

    .line 1147
    .line 1148
    .line 1149
    invoke-direct {v4, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1150
    .line 1151
    .line 1152
    const/16 v9, 0x23

    .line 1153
    .line 1154
    aput-object v4, v3, v9

    .line 1155
    .line 1156
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1157
    .line 1158
    const-string v9, "FocalPlaneYResolution"

    .line 1159
    .line 1160
    const v14, 0xa20f

    .line 1161
    .line 1162
    .line 1163
    invoke-direct {v4, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1164
    .line 1165
    .line 1166
    const/16 v9, 0x24

    .line 1167
    .line 1168
    aput-object v4, v3, v9

    .line 1169
    .line 1170
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1171
    .line 1172
    const-string v9, "FocalPlaneResolutionUnit"

    .line 1173
    .line 1174
    const v14, 0xa210

    .line 1175
    .line 1176
    .line 1177
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1178
    .line 1179
    .line 1180
    const/16 v9, 0x25

    .line 1181
    .line 1182
    aput-object v4, v3, v9

    .line 1183
    .line 1184
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1185
    .line 1186
    const-string v9, "SubjectLocation"

    .line 1187
    .line 1188
    const v14, 0xa214

    .line 1189
    .line 1190
    .line 1191
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1192
    .line 1193
    .line 1194
    const/16 v9, 0x26

    .line 1195
    .line 1196
    aput-object v4, v3, v9

    .line 1197
    .line 1198
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1199
    .line 1200
    const-string v9, "ExposureIndex"

    .line 1201
    .line 1202
    const v14, 0xa215

    .line 1203
    .line 1204
    .line 1205
    invoke-direct {v4, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1206
    .line 1207
    .line 1208
    const/16 v9, 0x27

    .line 1209
    .line 1210
    aput-object v4, v3, v9

    .line 1211
    .line 1212
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1213
    .line 1214
    const-string v9, "SensingMethod"

    .line 1215
    .line 1216
    const v14, 0xa217

    .line 1217
    .line 1218
    .line 1219
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1220
    .line 1221
    .line 1222
    const/16 v9, 0x28

    .line 1223
    .line 1224
    aput-object v4, v3, v9

    .line 1225
    .line 1226
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1227
    .line 1228
    const-string v9, "FileSource"

    .line 1229
    .line 1230
    const v14, 0xa300

    .line 1231
    .line 1232
    .line 1233
    invoke-direct {v4, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1234
    .line 1235
    .line 1236
    const/16 v9, 0x29

    .line 1237
    .line 1238
    aput-object v4, v3, v9

    .line 1239
    .line 1240
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1241
    .line 1242
    const-string v9, "SceneType"

    .line 1243
    .line 1244
    const v14, 0xa301

    .line 1245
    .line 1246
    .line 1247
    invoke-direct {v4, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1248
    .line 1249
    .line 1250
    const/16 v9, 0x2a

    .line 1251
    .line 1252
    aput-object v4, v3, v9

    .line 1253
    .line 1254
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1255
    .line 1256
    const-string v9, "CFAPattern"

    .line 1257
    .line 1258
    const v14, 0xa302

    .line 1259
    .line 1260
    .line 1261
    invoke-direct {v4, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1262
    .line 1263
    .line 1264
    const/16 v9, 0x2b

    .line 1265
    .line 1266
    aput-object v4, v3, v9

    .line 1267
    .line 1268
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1269
    .line 1270
    const-string v9, "CustomRendered"

    .line 1271
    .line 1272
    const v14, 0xa401

    .line 1273
    .line 1274
    .line 1275
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1276
    .line 1277
    .line 1278
    const/16 v9, 0x2c

    .line 1279
    .line 1280
    aput-object v4, v3, v9

    .line 1281
    .line 1282
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1283
    .line 1284
    const-string v9, "ExposureMode"

    .line 1285
    .line 1286
    const v14, 0xa402

    .line 1287
    .line 1288
    .line 1289
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1290
    .line 1291
    .line 1292
    const/16 v9, 0x2d

    .line 1293
    .line 1294
    aput-object v4, v3, v9

    .line 1295
    .line 1296
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1297
    .line 1298
    const-string v9, "WhiteBalance"

    .line 1299
    .line 1300
    const v14, 0xa403

    .line 1301
    .line 1302
    .line 1303
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1304
    .line 1305
    .line 1306
    const/16 v9, 0x2e

    .line 1307
    .line 1308
    aput-object v4, v3, v9

    .line 1309
    .line 1310
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1311
    .line 1312
    const-string v9, "DigitalZoomRatio"

    .line 1313
    .line 1314
    const v14, 0xa404

    .line 1315
    .line 1316
    .line 1317
    invoke-direct {v4, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1318
    .line 1319
    .line 1320
    const/16 v9, 0x2f

    .line 1321
    .line 1322
    aput-object v4, v3, v9

    .line 1323
    .line 1324
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1325
    .line 1326
    const-string v9, "FocalLengthIn35mmFilm"

    .line 1327
    .line 1328
    const v14, 0xa405

    .line 1329
    .line 1330
    .line 1331
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1332
    .line 1333
    .line 1334
    const/16 v9, 0x30

    .line 1335
    .line 1336
    aput-object v4, v3, v9

    .line 1337
    .line 1338
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1339
    .line 1340
    const-string v9, "SceneCaptureType"

    .line 1341
    .line 1342
    const v14, 0xa406

    .line 1343
    .line 1344
    .line 1345
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1346
    .line 1347
    .line 1348
    const/16 v9, 0x31

    .line 1349
    .line 1350
    aput-object v4, v3, v9

    .line 1351
    .line 1352
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1353
    .line 1354
    const-string v9, "GainControl"

    .line 1355
    .line 1356
    const v14, 0xa407

    .line 1357
    .line 1358
    .line 1359
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1360
    .line 1361
    .line 1362
    const/16 v9, 0x32

    .line 1363
    .line 1364
    aput-object v4, v3, v9

    .line 1365
    .line 1366
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1367
    .line 1368
    const-string v9, "Contrast"

    .line 1369
    .line 1370
    const v14, 0xa408

    .line 1371
    .line 1372
    .line 1373
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1374
    .line 1375
    .line 1376
    const/16 v9, 0x33

    .line 1377
    .line 1378
    aput-object v4, v3, v9

    .line 1379
    .line 1380
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1381
    .line 1382
    const-string v9, "Saturation"

    .line 1383
    .line 1384
    const v14, 0xa409

    .line 1385
    .line 1386
    .line 1387
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1388
    .line 1389
    .line 1390
    const/16 v9, 0x34

    .line 1391
    .line 1392
    aput-object v4, v3, v9

    .line 1393
    .line 1394
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1395
    .line 1396
    const-string v9, "Sharpness"

    .line 1397
    .line 1398
    const v14, 0xa40a

    .line 1399
    .line 1400
    .line 1401
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1402
    .line 1403
    .line 1404
    const/16 v9, 0x35

    .line 1405
    .line 1406
    aput-object v4, v3, v9

    .line 1407
    .line 1408
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1409
    .line 1410
    const-string v9, "DeviceSettingDescription"

    .line 1411
    .line 1412
    const v14, 0xa40b

    .line 1413
    .line 1414
    .line 1415
    invoke-direct {v4, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1416
    .line 1417
    .line 1418
    const/16 v9, 0x36

    .line 1419
    .line 1420
    aput-object v4, v3, v9

    .line 1421
    .line 1422
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1423
    .line 1424
    const-string v9, "SubjectDistanceRange"

    .line 1425
    .line 1426
    const v14, 0xa40c

    .line 1427
    .line 1428
    .line 1429
    invoke-direct {v4, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1430
    .line 1431
    .line 1432
    const/16 v9, 0x37

    .line 1433
    .line 1434
    aput-object v4, v3, v9

    .line 1435
    .line 1436
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1437
    .line 1438
    const-string v9, "ImageUniqueID"

    .line 1439
    .line 1440
    const v14, 0xa420

    .line 1441
    .line 1442
    .line 1443
    invoke-direct {v4, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1444
    .line 1445
    .line 1446
    const/16 v9, 0x38

    .line 1447
    .line 1448
    aput-object v4, v3, v9

    .line 1449
    .line 1450
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1451
    .line 1452
    const-string v9, "DNGVersion"

    .line 1453
    .line 1454
    const v14, 0xc612

    .line 1455
    .line 1456
    .line 1457
    invoke-direct {v4, v9, v14, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1458
    .line 1459
    .line 1460
    const/16 v9, 0x39

    .line 1461
    .line 1462
    aput-object v4, v3, v9

    .line 1463
    .line 1464
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1465
    .line 1466
    const-string v25, "DefaultCropSize"

    .line 1467
    .line 1468
    const v26, 0xc620

    .line 1469
    .line 1470
    .line 1471
    move-object/from16 v24, v4

    .line 1472
    .line 1473
    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 1474
    .line 1475
    .line 1476
    const/16 v9, 0x3a

    .line 1477
    .line 1478
    aput-object v4, v3, v9

    .line 1479
    .line 1480
    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    .line 1481
    .line 1482
    const-string v9, "CameraType"

    .line 1483
    .line 1484
    const v14, 0xa006

    .line 1485
    .line 1486
    .line 1487
    invoke-direct {v4, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1488
    .line 1489
    .line 1490
    const/16 v9, 0x3b

    .line 1491
    .line 1492
    aput-object v4, v3, v9

    .line 1493
    .line 1494
    sput-object v3, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1495
    .line 1496
    const/16 v4, 0x1f

    .line 1497
    .line 1498
    new-array v4, v4, [Landroid/media/ExifInterface$ExifTag;

    .line 1499
    .line 1500
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1501
    .line 1502
    const-string v14, "GPSVersionID"

    .line 1503
    .line 1504
    invoke-direct {v9, v14, v8, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1505
    .line 1506
    .line 1507
    aput-object v9, v4, v8

    .line 1508
    .line 1509
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1510
    .line 1511
    const-string v14, "GPSLatitudeRef"

    .line 1512
    .line 1513
    invoke-direct {v9, v14, v6, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1514
    .line 1515
    .line 1516
    aput-object v9, v4, v6

    .line 1517
    .line 1518
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1519
    .line 1520
    const-string v14, "GPSLatitude"

    .line 1521
    .line 1522
    invoke-direct {v9, v14, v10, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1523
    .line 1524
    .line 1525
    aput-object v9, v4, v10

    .line 1526
    .line 1527
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1528
    .line 1529
    const-string v14, "GPSLongitudeRef"

    .line 1530
    .line 1531
    invoke-direct {v9, v14, v0, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1532
    .line 1533
    .line 1534
    aput-object v9, v4, v0

    .line 1535
    .line 1536
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1537
    .line 1538
    const-string v14, "GPSLongitude"

    .line 1539
    .line 1540
    invoke-direct {v9, v14, v1, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1541
    .line 1542
    .line 1543
    aput-object v9, v4, v1

    .line 1544
    .line 1545
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1546
    .line 1547
    const-string v14, "GPSAltitudeRef"

    .line 1548
    .line 1549
    invoke-direct {v9, v14, v11, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1550
    .line 1551
    .line 1552
    aput-object v9, v4, v11

    .line 1553
    .line 1554
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1555
    .line 1556
    const-string v14, "GPSAltitude"

    .line 1557
    .line 1558
    invoke-direct {v9, v14, v2, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1559
    .line 1560
    .line 1561
    aput-object v9, v4, v2

    .line 1562
    .line 1563
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1564
    .line 1565
    const-string v14, "GPSTimeStamp"

    .line 1566
    .line 1567
    invoke-direct {v9, v14, v13, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1568
    .line 1569
    .line 1570
    aput-object v9, v4, v13

    .line 1571
    .line 1572
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1573
    .line 1574
    const-string v14, "GPSSatellites"

    .line 1575
    .line 1576
    invoke-direct {v9, v14, v5, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1577
    .line 1578
    .line 1579
    aput-object v9, v4, v5

    .line 1580
    .line 1581
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1582
    .line 1583
    const-string v14, "GPSStatus"

    .line 1584
    .line 1585
    const/16 v15, 0x9

    .line 1586
    .line 1587
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1588
    .line 1589
    .line 1590
    aput-object v9, v4, v15

    .line 1591
    .line 1592
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1593
    .line 1594
    const-string v14, "GPSMeasureMode"

    .line 1595
    .line 1596
    const/16 v15, 0xa

    .line 1597
    .line 1598
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1599
    .line 1600
    .line 1601
    aput-object v9, v4, v15

    .line 1602
    .line 1603
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1604
    .line 1605
    const-string v14, "GPSDOP"

    .line 1606
    .line 1607
    const/16 v15, 0xb

    .line 1608
    .line 1609
    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1610
    .line 1611
    .line 1612
    aput-object v9, v4, v15

    .line 1613
    .line 1614
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1615
    .line 1616
    const-string v14, "GPSSpeedRef"

    .line 1617
    .line 1618
    const/16 v15, 0xc

    .line 1619
    .line 1620
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1621
    .line 1622
    .line 1623
    aput-object v9, v4, v15

    .line 1624
    .line 1625
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1626
    .line 1627
    const-string v14, "GPSSpeed"

    .line 1628
    .line 1629
    const/16 v15, 0xd

    .line 1630
    .line 1631
    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1632
    .line 1633
    .line 1634
    aput-object v9, v4, v15

    .line 1635
    .line 1636
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1637
    .line 1638
    const-string v14, "GPSTrackRef"

    .line 1639
    .line 1640
    const/16 v15, 0xe

    .line 1641
    .line 1642
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1643
    .line 1644
    .line 1645
    aput-object v9, v4, v15

    .line 1646
    .line 1647
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1648
    .line 1649
    const-string v14, "GPSTrack"

    .line 1650
    .line 1651
    const/16 v15, 0xf

    .line 1652
    .line 1653
    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1654
    .line 1655
    .line 1656
    aput-object v9, v4, v15

    .line 1657
    .line 1658
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1659
    .line 1660
    const-string v14, "GPSImgDirectionRef"

    .line 1661
    .line 1662
    const/16 v15, 0x10

    .line 1663
    .line 1664
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1665
    .line 1666
    .line 1667
    aput-object v9, v4, v15

    .line 1668
    .line 1669
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1670
    .line 1671
    const-string v14, "GPSImgDirection"

    .line 1672
    .line 1673
    const/16 v15, 0x11

    .line 1674
    .line 1675
    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1676
    .line 1677
    .line 1678
    aput-object v9, v4, v15

    .line 1679
    .line 1680
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1681
    .line 1682
    const-string v14, "GPSMapDatum"

    .line 1683
    .line 1684
    const/16 v15, 0x12

    .line 1685
    .line 1686
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1687
    .line 1688
    .line 1689
    aput-object v9, v4, v15

    .line 1690
    .line 1691
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1692
    .line 1693
    const-string v14, "GPSDestLatitudeRef"

    .line 1694
    .line 1695
    const/16 v15, 0x13

    .line 1696
    .line 1697
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1698
    .line 1699
    .line 1700
    aput-object v9, v4, v15

    .line 1701
    .line 1702
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1703
    .line 1704
    const-string v14, "GPSDestLatitude"

    .line 1705
    .line 1706
    const/16 v15, 0x14

    .line 1707
    .line 1708
    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1709
    .line 1710
    .line 1711
    const/16 v14, 0x14

    .line 1712
    .line 1713
    aput-object v9, v4, v14

    .line 1714
    .line 1715
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1716
    .line 1717
    const-string v14, "GPSDestLongitudeRef"

    .line 1718
    .line 1719
    const/16 v15, 0x15

    .line 1720
    .line 1721
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1722
    .line 1723
    .line 1724
    const/16 v14, 0x15

    .line 1725
    .line 1726
    aput-object v9, v4, v14

    .line 1727
    .line 1728
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1729
    .line 1730
    const-string v14, "GPSDestLongitude"

    .line 1731
    .line 1732
    const/16 v15, 0x16

    .line 1733
    .line 1734
    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1735
    .line 1736
    .line 1737
    const/16 v14, 0x16

    .line 1738
    .line 1739
    aput-object v9, v4, v14

    .line 1740
    .line 1741
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1742
    .line 1743
    const-string v14, "GPSDestBearingRef"

    .line 1744
    .line 1745
    const/16 v15, 0x17

    .line 1746
    .line 1747
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1748
    .line 1749
    .line 1750
    aput-object v9, v4, v15

    .line 1751
    .line 1752
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1753
    .line 1754
    const-string v14, "GPSDestBearing"

    .line 1755
    .line 1756
    const/16 v15, 0x18

    .line 1757
    .line 1758
    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1759
    .line 1760
    .line 1761
    const/16 v14, 0x18

    .line 1762
    .line 1763
    aput-object v9, v4, v14

    .line 1764
    .line 1765
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1766
    .line 1767
    const-string v14, "GPSDestDistanceRef"

    .line 1768
    .line 1769
    const/16 v15, 0x19

    .line 1770
    .line 1771
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1772
    .line 1773
    .line 1774
    const/16 v14, 0x19

    .line 1775
    .line 1776
    aput-object v9, v4, v14

    .line 1777
    .line 1778
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1779
    .line 1780
    const-string v14, "GPSDestDistance"

    .line 1781
    .line 1782
    const/16 v15, 0x1a

    .line 1783
    .line 1784
    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1785
    .line 1786
    .line 1787
    const/16 v14, 0x1a

    .line 1788
    .line 1789
    aput-object v9, v4, v14

    .line 1790
    .line 1791
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1792
    .line 1793
    const-string v14, "GPSProcessingMethod"

    .line 1794
    .line 1795
    const/16 v15, 0x1b

    .line 1796
    .line 1797
    invoke-direct {v9, v14, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1798
    .line 1799
    .line 1800
    const/16 v14, 0x1b

    .line 1801
    .line 1802
    aput-object v9, v4, v14

    .line 1803
    .line 1804
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1805
    .line 1806
    const-string v14, "GPSAreaInformation"

    .line 1807
    .line 1808
    const/16 v15, 0x1c

    .line 1809
    .line 1810
    invoke-direct {v9, v14, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1811
    .line 1812
    .line 1813
    const/16 v14, 0x1c

    .line 1814
    .line 1815
    aput-object v9, v4, v14

    .line 1816
    .line 1817
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1818
    .line 1819
    const-string v14, "GPSDateStamp"

    .line 1820
    .line 1821
    const/16 v15, 0x1d

    .line 1822
    .line 1823
    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1824
    .line 1825
    .line 1826
    const/16 v14, 0x1d

    .line 1827
    .line 1828
    aput-object v9, v4, v14

    .line 1829
    .line 1830
    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    .line 1831
    .line 1832
    const-string v14, "GPSDifferential"

    .line 1833
    .line 1834
    const/16 v15, 0x1e

    .line 1835
    .line 1836
    invoke-direct {v9, v14, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1837
    .line 1838
    .line 1839
    const/16 v14, 0x1e

    .line 1840
    .line 1841
    aput-object v9, v4, v14

    .line 1842
    .line 1843
    sput-object v4, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1844
    .line 1845
    new-array v9, v6, [Landroid/media/ExifInterface$ExifTag;

    .line 1846
    .line 1847
    new-instance v14, Landroid/media/ExifInterface$ExifTag;

    .line 1848
    .line 1849
    const-string v15, "InteroperabilityIndex"

    .line 1850
    .line 1851
    invoke-direct {v14, v15, v6, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1852
    .line 1853
    .line 1854
    aput-object v14, v9, v8

    .line 1855
    .line 1856
    sput-object v9, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 1857
    .line 1858
    const/16 v14, 0x25

    .line 1859
    .line 1860
    new-array v14, v14, [Landroid/media/ExifInterface$ExifTag;

    .line 1861
    .line 1862
    new-instance v15, Landroid/media/ExifInterface$ExifTag;

    .line 1863
    .line 1864
    const-string v5, "NewSubfileType"

    .line 1865
    .line 1866
    const/16 v13, 0xfe

    .line 1867
    .line 1868
    invoke-direct {v15, v5, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1869
    .line 1870
    .line 1871
    aput-object v15, v14, v8

    .line 1872
    .line 1873
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 1874
    .line 1875
    const-string v13, "SubfileType"

    .line 1876
    .line 1877
    const/16 v15, 0xff

    .line 1878
    .line 1879
    invoke-direct {v5, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1880
    .line 1881
    .line 1882
    aput-object v5, v14, v6

    .line 1883
    .line 1884
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 1885
    .line 1886
    const-string v27, "ThumbnailImageWidth"

    .line 1887
    .line 1888
    const/16 v28, 0x100

    .line 1889
    .line 1890
    const/16 v29, 0x3

    .line 1891
    .line 1892
    const/16 v30, 0x4

    .line 1893
    .line 1894
    const/16 v31, 0x0

    .line 1895
    .line 1896
    move-object/from16 v26, v5

    .line 1897
    .line 1898
    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 1899
    .line 1900
    .line 1901
    aput-object v5, v14, v10

    .line 1902
    .line 1903
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 1904
    .line 1905
    const-string v33, "ThumbnailImageLength"

    .line 1906
    .line 1907
    const/16 v34, 0x101

    .line 1908
    .line 1909
    const/16 v35, 0x3

    .line 1910
    .line 1911
    const/16 v36, 0x4

    .line 1912
    .line 1913
    const/16 v37, 0x0

    .line 1914
    .line 1915
    move-object/from16 v32, v5

    .line 1916
    .line 1917
    invoke-direct/range {v32 .. v37}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 1918
    .line 1919
    .line 1920
    aput-object v5, v14, v0

    .line 1921
    .line 1922
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 1923
    .line 1924
    const-string v13, "BitsPerSample"

    .line 1925
    .line 1926
    const/16 v15, 0x102

    .line 1927
    .line 1928
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1929
    .line 1930
    .line 1931
    aput-object v5, v14, v1

    .line 1932
    .line 1933
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 1934
    .line 1935
    const-string v13, "Compression"

    .line 1936
    .line 1937
    const/16 v15, 0x103

    .line 1938
    .line 1939
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1940
    .line 1941
    .line 1942
    aput-object v5, v14, v11

    .line 1943
    .line 1944
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 1945
    .line 1946
    const-string v13, "PhotometricInterpretation"

    .line 1947
    .line 1948
    const/16 v15, 0x106

    .line 1949
    .line 1950
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1951
    .line 1952
    .line 1953
    aput-object v5, v14, v2

    .line 1954
    .line 1955
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 1956
    .line 1957
    const-string v13, "ImageDescription"

    .line 1958
    .line 1959
    const/16 v15, 0x10e

    .line 1960
    .line 1961
    invoke-direct {v5, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1962
    .line 1963
    .line 1964
    const/4 v13, 0x7

    .line 1965
    aput-object v5, v14, v13

    .line 1966
    .line 1967
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 1968
    .line 1969
    const-string v13, "Make"

    .line 1970
    .line 1971
    const/16 v15, 0x10f

    .line 1972
    .line 1973
    invoke-direct {v5, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1974
    .line 1975
    .line 1976
    const/16 v13, 0x8

    .line 1977
    .line 1978
    aput-object v5, v14, v13

    .line 1979
    .line 1980
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 1981
    .line 1982
    const-string v13, "Model"

    .line 1983
    .line 1984
    const/16 v15, 0x110

    .line 1985
    .line 1986
    invoke-direct {v5, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 1987
    .line 1988
    .line 1989
    const/16 v13, 0x9

    .line 1990
    .line 1991
    aput-object v5, v14, v13

    .line 1992
    .line 1993
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 1994
    .line 1995
    const-string v27, "StripOffsets"

    .line 1996
    .line 1997
    const/16 v28, 0x111

    .line 1998
    .line 1999
    move-object/from16 v26, v5

    .line 2000
    .line 2001
    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 2002
    .line 2003
    .line 2004
    const/16 v13, 0xa

    .line 2005
    .line 2006
    aput-object v5, v14, v13

    .line 2007
    .line 2008
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2009
    .line 2010
    const-string v13, "Orientation"

    .line 2011
    .line 2012
    const/16 v15, 0x112

    .line 2013
    .line 2014
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2015
    .line 2016
    .line 2017
    const/16 v13, 0xb

    .line 2018
    .line 2019
    aput-object v5, v14, v13

    .line 2020
    .line 2021
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2022
    .line 2023
    const-string v13, "SamplesPerPixel"

    .line 2024
    .line 2025
    const/16 v15, 0x115

    .line 2026
    .line 2027
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2028
    .line 2029
    .line 2030
    const/16 v13, 0xc

    .line 2031
    .line 2032
    aput-object v5, v14, v13

    .line 2033
    .line 2034
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2035
    .line 2036
    const-string v27, "RowsPerStrip"

    .line 2037
    .line 2038
    const/16 v28, 0x116

    .line 2039
    .line 2040
    move-object/from16 v26, v5

    .line 2041
    .line 2042
    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 2043
    .line 2044
    .line 2045
    const/16 v13, 0xd

    .line 2046
    .line 2047
    aput-object v5, v14, v13

    .line 2048
    .line 2049
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2050
    .line 2051
    const-string v27, "StripByteCounts"

    .line 2052
    .line 2053
    const/16 v28, 0x117

    .line 2054
    .line 2055
    move-object/from16 v26, v5

    .line 2056
    .line 2057
    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 2058
    .line 2059
    .line 2060
    const/16 v13, 0xe

    .line 2061
    .line 2062
    aput-object v5, v14, v13

    .line 2063
    .line 2064
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2065
    .line 2066
    const-string v13, "XResolution"

    .line 2067
    .line 2068
    const/16 v15, 0x11a

    .line 2069
    .line 2070
    invoke-direct {v5, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2071
    .line 2072
    .line 2073
    const/16 v13, 0xf

    .line 2074
    .line 2075
    aput-object v5, v14, v13

    .line 2076
    .line 2077
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2078
    .line 2079
    const-string v13, "YResolution"

    .line 2080
    .line 2081
    const/16 v15, 0x11b

    .line 2082
    .line 2083
    invoke-direct {v5, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2084
    .line 2085
    .line 2086
    const/16 v13, 0x10

    .line 2087
    .line 2088
    aput-object v5, v14, v13

    .line 2089
    .line 2090
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2091
    .line 2092
    const-string v13, "PlanarConfiguration"

    .line 2093
    .line 2094
    const/16 v15, 0x11c

    .line 2095
    .line 2096
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2097
    .line 2098
    .line 2099
    const/16 v13, 0x11

    .line 2100
    .line 2101
    aput-object v5, v14, v13

    .line 2102
    .line 2103
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2104
    .line 2105
    const-string v13, "ResolutionUnit"

    .line 2106
    .line 2107
    const/16 v15, 0x128

    .line 2108
    .line 2109
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2110
    .line 2111
    .line 2112
    const/16 v13, 0x12

    .line 2113
    .line 2114
    aput-object v5, v14, v13

    .line 2115
    .line 2116
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2117
    .line 2118
    const-string v13, "TransferFunction"

    .line 2119
    .line 2120
    const/16 v15, 0x12d

    .line 2121
    .line 2122
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2123
    .line 2124
    .line 2125
    const/16 v13, 0x13

    .line 2126
    .line 2127
    aput-object v5, v14, v13

    .line 2128
    .line 2129
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2130
    .line 2131
    const-string v13, "Software"

    .line 2132
    .line 2133
    const/16 v15, 0x131

    .line 2134
    .line 2135
    invoke-direct {v5, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2136
    .line 2137
    .line 2138
    const/16 v13, 0x14

    .line 2139
    .line 2140
    aput-object v5, v14, v13

    .line 2141
    .line 2142
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2143
    .line 2144
    const-string v13, "DateTime"

    .line 2145
    .line 2146
    const/16 v15, 0x132

    .line 2147
    .line 2148
    invoke-direct {v5, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2149
    .line 2150
    .line 2151
    const/16 v13, 0x15

    .line 2152
    .line 2153
    aput-object v5, v14, v13

    .line 2154
    .line 2155
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2156
    .line 2157
    const-string v13, "Artist"

    .line 2158
    .line 2159
    const/16 v15, 0x13b

    .line 2160
    .line 2161
    invoke-direct {v5, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2162
    .line 2163
    .line 2164
    const/16 v13, 0x16

    .line 2165
    .line 2166
    aput-object v5, v14, v13

    .line 2167
    .line 2168
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2169
    .line 2170
    const-string v13, "WhitePoint"

    .line 2171
    .line 2172
    const/16 v15, 0x13e

    .line 2173
    .line 2174
    invoke-direct {v5, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2175
    .line 2176
    .line 2177
    const/16 v13, 0x17

    .line 2178
    .line 2179
    aput-object v5, v14, v13

    .line 2180
    .line 2181
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2182
    .line 2183
    const-string v13, "PrimaryChromaticities"

    .line 2184
    .line 2185
    const/16 v15, 0x13f

    .line 2186
    .line 2187
    invoke-direct {v5, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2188
    .line 2189
    .line 2190
    const/16 v13, 0x18

    .line 2191
    .line 2192
    aput-object v5, v14, v13

    .line 2193
    .line 2194
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2195
    .line 2196
    const-string v13, "SubIFDPointer"

    .line 2197
    .line 2198
    const/16 v15, 0x14a

    .line 2199
    .line 2200
    invoke-direct {v5, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2201
    .line 2202
    .line 2203
    const/16 v13, 0x19

    .line 2204
    .line 2205
    aput-object v5, v14, v13

    .line 2206
    .line 2207
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2208
    .line 2209
    const-string v13, "JPEGInterchangeFormat"

    .line 2210
    .line 2211
    const/16 v15, 0x201

    .line 2212
    .line 2213
    invoke-direct {v5, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2214
    .line 2215
    .line 2216
    const/16 v13, 0x1a

    .line 2217
    .line 2218
    aput-object v5, v14, v13

    .line 2219
    .line 2220
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2221
    .line 2222
    const-string v13, "JPEGInterchangeFormatLength"

    .line 2223
    .line 2224
    const/16 v15, 0x202

    .line 2225
    .line 2226
    invoke-direct {v5, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2227
    .line 2228
    .line 2229
    const/16 v13, 0x1b

    .line 2230
    .line 2231
    aput-object v5, v14, v13

    .line 2232
    .line 2233
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2234
    .line 2235
    const-string v13, "YCbCrCoefficients"

    .line 2236
    .line 2237
    const/16 v15, 0x211

    .line 2238
    .line 2239
    invoke-direct {v5, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2240
    .line 2241
    .line 2242
    const/16 v13, 0x1c

    .line 2243
    .line 2244
    aput-object v5, v14, v13

    .line 2245
    .line 2246
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2247
    .line 2248
    const-string v13, "YCbCrSubSampling"

    .line 2249
    .line 2250
    const/16 v15, 0x212

    .line 2251
    .line 2252
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2253
    .line 2254
    .line 2255
    const/16 v13, 0x1d

    .line 2256
    .line 2257
    aput-object v5, v14, v13

    .line 2258
    .line 2259
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2260
    .line 2261
    const-string v13, "YCbCrPositioning"

    .line 2262
    .line 2263
    const/16 v15, 0x213

    .line 2264
    .line 2265
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2266
    .line 2267
    .line 2268
    const/16 v13, 0x1e

    .line 2269
    .line 2270
    aput-object v5, v14, v13

    .line 2271
    .line 2272
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2273
    .line 2274
    const-string v13, "ReferenceBlackWhite"

    .line 2275
    .line 2276
    const/16 v15, 0x214

    .line 2277
    .line 2278
    invoke-direct {v5, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2279
    .line 2280
    .line 2281
    const/16 v13, 0x1f

    .line 2282
    .line 2283
    aput-object v5, v14, v13

    .line 2284
    .line 2285
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2286
    .line 2287
    const-string v13, "Copyright"

    .line 2288
    .line 2289
    const v15, 0x8298

    .line 2290
    .line 2291
    .line 2292
    invoke-direct {v5, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2293
    .line 2294
    .line 2295
    const/16 v13, 0x20

    .line 2296
    .line 2297
    aput-object v5, v14, v13

    .line 2298
    .line 2299
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2300
    .line 2301
    const-string v13, "ExifIFDPointer"

    .line 2302
    .line 2303
    const v15, 0x8769

    .line 2304
    .line 2305
    .line 2306
    invoke-direct {v5, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2307
    .line 2308
    .line 2309
    const/16 v13, 0x21

    .line 2310
    .line 2311
    aput-object v5, v14, v13

    .line 2312
    .line 2313
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2314
    .line 2315
    const-string v13, "GPSInfoIFDPointer"

    .line 2316
    .line 2317
    const v15, 0x8825

    .line 2318
    .line 2319
    .line 2320
    invoke-direct {v5, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2321
    .line 2322
    .line 2323
    const/16 v13, 0x22

    .line 2324
    .line 2325
    aput-object v5, v14, v13

    .line 2326
    .line 2327
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2328
    .line 2329
    const-string v13, "DNGVersion"

    .line 2330
    .line 2331
    const v15, 0xc612

    .line 2332
    .line 2333
    .line 2334
    invoke-direct {v5, v13, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2335
    .line 2336
    .line 2337
    const/16 v13, 0x23

    .line 2338
    .line 2339
    aput-object v5, v14, v13

    .line 2340
    .line 2341
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2342
    .line 2343
    const-string v18, "DefaultCropSize"

    .line 2344
    .line 2345
    const v19, 0xc620

    .line 2346
    .line 2347
    .line 2348
    const/16 v20, 0x3

    .line 2349
    .line 2350
    const/16 v21, 0x4

    .line 2351
    .line 2352
    const/16 v22, 0x0

    .line 2353
    .line 2354
    move-object/from16 v17, v5

    .line 2355
    .line 2356
    invoke-direct/range {v17 .. v22}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    .line 2357
    .line 2358
    .line 2359
    const/16 v13, 0x24

    .line 2360
    .line 2361
    aput-object v5, v14, v13

    .line 2362
    .line 2363
    sput-object v14, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 2364
    .line 2365
    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    .line 2366
    .line 2367
    const-string v13, "StripOffsets"

    .line 2368
    .line 2369
    const/16 v15, 0x111

    .line 2370
    .line 2371
    invoke-direct {v5, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2372
    .line 2373
    .line 2374
    sput-object v5, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    .line 2375
    .line 2376
    new-array v5, v0, [Landroid/media/ExifInterface$ExifTag;

    .line 2377
    .line 2378
    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    .line 2379
    .line 2380
    const-string v15, "ThumbnailImage"

    .line 2381
    .line 2382
    const/16 v2, 0x100

    .line 2383
    .line 2384
    const/4 v11, 0x7

    .line 2385
    invoke-direct {v13, v15, v2, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2386
    .line 2387
    .line 2388
    aput-object v13, v5, v8

    .line 2389
    .line 2390
    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    .line 2391
    .line 2392
    const-string v11, "CameraSettingsIFDPointer"

    .line 2393
    .line 2394
    const/16 v13, 0x2020

    .line 2395
    .line 2396
    invoke-direct {v2, v11, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2397
    .line 2398
    .line 2399
    aput-object v2, v5, v6

    .line 2400
    .line 2401
    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    .line 2402
    .line 2403
    const-string v11, "ImageProcessingIFDPointer"

    .line 2404
    .line 2405
    const/16 v13, 0x2040

    .line 2406
    .line 2407
    invoke-direct {v2, v11, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2408
    .line 2409
    .line 2410
    aput-object v2, v5, v10

    .line 2411
    .line 2412
    sput-object v5, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 2413
    .line 2414
    new-array v2, v10, [Landroid/media/ExifInterface$ExifTag;

    .line 2415
    .line 2416
    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    .line 2417
    .line 2418
    const-string v13, "PreviewImageStart"

    .line 2419
    .line 2420
    const/16 v15, 0x101

    .line 2421
    .line 2422
    invoke-direct {v11, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2423
    .line 2424
    .line 2425
    aput-object v11, v2, v8

    .line 2426
    .line 2427
    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    .line 2428
    .line 2429
    const-string v13, "PreviewImageLength"

    .line 2430
    .line 2431
    const/16 v15, 0x102

    .line 2432
    .line 2433
    invoke-direct {v11, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2434
    .line 2435
    .line 2436
    aput-object v11, v2, v6

    .line 2437
    .line 2438
    sput-object v2, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 2439
    .line 2440
    new-array v11, v6, [Landroid/media/ExifInterface$ExifTag;

    .line 2441
    .line 2442
    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    .line 2443
    .line 2444
    const-string v15, "AspectFrame"

    .line 2445
    .line 2446
    const/16 v1, 0x1113

    .line 2447
    .line 2448
    invoke-direct {v13, v15, v1, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2449
    .line 2450
    .line 2451
    aput-object v13, v11, v8

    .line 2452
    .line 2453
    sput-object v11, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 2454
    .line 2455
    new-array v1, v6, [Landroid/media/ExifInterface$ExifTag;

    .line 2456
    .line 2457
    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    .line 2458
    .line 2459
    const-string v15, "ColorSpace"

    .line 2460
    .line 2461
    const/16 v10, 0x37

    .line 2462
    .line 2463
    invoke-direct {v13, v15, v10, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2464
    .line 2465
    .line 2466
    aput-object v13, v1, v8

    .line 2467
    .line 2468
    sput-object v1, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 2469
    .line 2470
    const/16 v10, 0xa

    .line 2471
    .line 2472
    new-array v10, v10, [[Landroid/media/ExifInterface$ExifTag;

    .line 2473
    .line 2474
    aput-object v7, v10, v8

    .line 2475
    .line 2476
    aput-object v3, v10, v6

    .line 2477
    .line 2478
    const/4 v3, 0x2

    .line 2479
    aput-object v4, v10, v3

    .line 2480
    .line 2481
    aput-object v9, v10, v0

    .line 2482
    .line 2483
    const/4 v3, 0x4

    .line 2484
    aput-object v14, v10, v3

    .line 2485
    .line 2486
    const/4 v4, 0x5

    .line 2487
    aput-object v7, v10, v4

    .line 2488
    .line 2489
    const/4 v4, 0x6

    .line 2490
    aput-object v5, v10, v4

    .line 2491
    .line 2492
    const/4 v5, 0x7

    .line 2493
    aput-object v2, v10, v5

    .line 2494
    .line 2495
    const/16 v2, 0x8

    .line 2496
    .line 2497
    aput-object v11, v10, v2

    .line 2498
    .line 2499
    const/16 v2, 0x9

    .line 2500
    .line 2501
    aput-object v1, v10, v2

    .line 2502
    .line 2503
    sput-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 2504
    .line 2505
    new-array v1, v4, [Landroid/media/ExifInterface$ExifTag;

    .line 2506
    .line 2507
    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    .line 2508
    .line 2509
    const-string v4, "SubIFDPointer"

    .line 2510
    .line 2511
    const/16 v5, 0x14a

    .line 2512
    .line 2513
    invoke-direct {v2, v4, v5, v3, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2514
    .line 2515
    .line 2516
    aput-object v2, v1, v8

    .line 2517
    .line 2518
    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    .line 2519
    .line 2520
    const-string v4, "ExifIFDPointer"

    .line 2521
    .line 2522
    const v5, 0x8769

    .line 2523
    .line 2524
    .line 2525
    invoke-direct {v2, v4, v5, v3, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2526
    .line 2527
    .line 2528
    aput-object v2, v1, v6

    .line 2529
    .line 2530
    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    .line 2531
    .line 2532
    const-string v4, "GPSInfoIFDPointer"

    .line 2533
    .line 2534
    const v5, 0x8825

    .line 2535
    .line 2536
    .line 2537
    invoke-direct {v2, v4, v5, v3, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2538
    .line 2539
    .line 2540
    const/4 v4, 0x2

    .line 2541
    aput-object v2, v1, v4

    .line 2542
    .line 2543
    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    .line 2544
    .line 2545
    const-string v4, "InteroperabilityIFDPointer"

    .line 2546
    .line 2547
    const v5, 0xa005

    .line 2548
    .line 2549
    .line 2550
    invoke-direct {v2, v4, v5, v3, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2551
    .line 2552
    .line 2553
    aput-object v2, v1, v0

    .line 2554
    .line 2555
    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    .line 2556
    .line 2557
    const-string v4, "CameraSettingsIFDPointer"

    .line 2558
    .line 2559
    const/16 v5, 0x2020

    .line 2560
    .line 2561
    invoke-direct {v2, v4, v5, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2562
    .line 2563
    .line 2564
    aput-object v2, v1, v3

    .line 2565
    .line 2566
    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    .line 2567
    .line 2568
    const-string v4, "ImageProcessingIFDPointer"

    .line 2569
    .line 2570
    const/16 v5, 0x2040

    .line 2571
    .line 2572
    invoke-direct {v2, v4, v5, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2573
    .line 2574
    .line 2575
    const/4 v4, 0x5

    .line 2576
    aput-object v2, v1, v4

    .line 2577
    .line 2578
    sput-object v1, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 2579
    .line 2580
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    .line 2581
    .line 2582
    const-string v2, "JPEGInterchangeFormat"

    .line 2583
    .line 2584
    const/16 v4, 0x201

    .line 2585
    .line 2586
    invoke-direct {v1, v2, v4, v3, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2587
    .line 2588
    .line 2589
    sput-object v1, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 2590
    .line 2591
    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    .line 2592
    .line 2593
    const-string v2, "JPEGInterchangeFormatLength"

    .line 2594
    .line 2595
    const/16 v4, 0x202

    .line 2596
    .line 2597
    invoke-direct {v1, v2, v4, v3, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    .line 2598
    .line 2599
    .line 2600
    sput-object v1, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 2601
    .line 2602
    array-length v1, v10

    .line 2603
    new-array v1, v1, [Ljava/util/HashMap;

    .line 2604
    .line 2605
    sput-object v1, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 2606
    .line 2607
    array-length v1, v10

    .line 2608
    new-array v1, v1, [Ljava/util/HashMap;

    .line 2609
    .line 2610
    sput-object v1, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 2611
    .line 2612
    new-instance v1, Ljava/util/HashSet;

    .line 2613
    .line 2614
    const-string v2, "SubjectDistance"

    .line 2615
    .line 2616
    const-string v3, "GPSTimeStamp"

    .line 2617
    .line 2618
    const-string v4, "FNumber"

    .line 2619
    .line 2620
    const-string v5, "DigitalZoomRatio"

    .line 2621
    .line 2622
    const-string v7, "ExposureTime"

    .line 2623
    .line 2624
    filled-new-array {v4, v5, v7, v2, v3}, [Ljava/lang/String;

    .line 2625
    .line 2626
    .line 2627
    move-result-object v2

    .line 2628
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2629
    .line 2630
    .line 2631
    move-result-object v2

    .line 2632
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2633
    .line 2634
    .line 2635
    sput-object v1, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 2636
    .line 2637
    new-instance v1, Ljava/util/HashMap;

    .line 2638
    .line 2639
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2640
    .line 2641
    .line 2642
    sput-object v1, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 2643
    .line 2644
    const-string v1, "US-ASCII"

    .line 2645
    .line 2646
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2647
    .line 2648
    .line 2649
    move-result-object v1

    .line 2650
    sput-object v1, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 2651
    .line 2652
    const-string v2, "Exif\u0000\u0000"

    .line 2653
    .line 2654
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2655
    .line 2656
    .line 2657
    move-result-object v1

    .line 2658
    sput-object v1, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 2659
    .line 2660
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 2661
    .line 2662
    const-string/jumbo v2, "yyyy:MM:dd HH:mm:ss"

    .line 2663
    .line 2664
    .line 2665
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2666
    .line 2667
    .line 2668
    sput-object v1, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 2669
    .line 2670
    const-string v2, "UTC"

    .line 2671
    .line 2672
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v2

    .line 2676
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2677
    .line 2678
    .line 2679
    move v1, v8

    .line 2680
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 2681
    .line 2682
    array-length v3, v2

    .line 2683
    if-ge v1, v3, :cond_1

    .line 2684
    .line 2685
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 2686
    .line 2687
    new-instance v4, Ljava/util/HashMap;

    .line 2688
    .line 2689
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2690
    .line 2691
    .line 2692
    aput-object v4, v3, v1

    .line 2693
    .line 2694
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 2695
    .line 2696
    new-instance v4, Ljava/util/HashMap;

    .line 2697
    .line 2698
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2699
    .line 2700
    .line 2701
    aput-object v4, v3, v1

    .line 2702
    .line 2703
    aget-object v2, v2, v1

    .line 2704
    .line 2705
    array-length v3, v2

    .line 2706
    move v4, v8

    .line 2707
    :goto_1
    if-ge v4, v3, :cond_0

    .line 2708
    .line 2709
    aget-object v5, v2, v4

    .line 2710
    .line 2711
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 2712
    .line 2713
    aget-object v7, v7, v1

    .line 2714
    .line 2715
    iget v9, v5, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 2716
    .line 2717
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2718
    .line 2719
    .line 2720
    move-result-object v9

    .line 2721
    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2722
    .line 2723
    .line 2724
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 2725
    .line 2726
    aget-object v7, v7, v1

    .line 2727
    .line 2728
    iget-object v9, v5, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 2729
    .line 2730
    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2731
    .line 2732
    .line 2733
    add-int/lit8 v4, v4, 0x1

    .line 2734
    .line 2735
    goto :goto_1

    .line 2736
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2737
    .line 2738
    goto :goto_0

    .line 2739
    :cond_1
    sget-object v1, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 2740
    .line 2741
    sget-object v2, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 2742
    .line 2743
    aget-object v3, v2, v8

    .line 2744
    .line 2745
    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 2746
    .line 2747
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2748
    .line 2749
    .line 2750
    move-result-object v3

    .line 2751
    const/4 v4, 0x5

    .line 2752
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v5

    .line 2756
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2757
    .line 2758
    .line 2759
    aget-object v3, v2, v6

    .line 2760
    .line 2761
    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 2762
    .line 2763
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2764
    .line 2765
    .line 2766
    move-result-object v3

    .line 2767
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2768
    .line 2769
    .line 2770
    move-result-object v4

    .line 2771
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2772
    .line 2773
    .line 2774
    const/4 v3, 0x2

    .line 2775
    aget-object v4, v2, v3

    .line 2776
    .line 2777
    iget v4, v4, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 2778
    .line 2779
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2780
    .line 2781
    .line 2782
    move-result-object v4

    .line 2783
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2784
    .line 2785
    .line 2786
    move-result-object v3

    .line 2787
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2788
    .line 2789
    .line 2790
    aget-object v3, v2, v0

    .line 2791
    .line 2792
    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 2793
    .line 2794
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v3

    .line 2798
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2799
    .line 2800
    .line 2801
    move-result-object v0

    .line 2802
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2803
    .line 2804
    .line 2805
    const/4 v0, 0x4

    .line 2806
    aget-object v0, v2, v0

    .line 2807
    .line 2808
    iget v0, v0, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 2809
    .line 2810
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2811
    .line 2812
    .line 2813
    move-result-object v0

    .line 2814
    const/4 v3, 0x7

    .line 2815
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2816
    .line 2817
    .line 2818
    move-result-object v3

    .line 2819
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2820
    .line 2821
    .line 2822
    const/4 v0, 0x5

    .line 2823
    aget-object v0, v2, v0

    .line 2824
    .line 2825
    iget v0, v0, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 2826
    .line 2827
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2828
    .line 2829
    .line 2830
    move-result-object v0

    .line 2831
    const/16 v2, 0x8

    .line 2832
    .line 2833
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2834
    .line 2835
    .line 2836
    move-result-object v2

    .line 2837
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2838
    .line 2839
    .line 2840
    const-string v0, ".*[1-9].*"

    .line 2841
    .line 2842
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2843
    .line 2844
    .line 2845
    move-result-object v0

    .line 2846
    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 2847
    .line 2848
    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 2849
    .line 2850
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2851
    .line 2852
    .line 2853
    move-result-object v0

    .line 2854
    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 2855
    .line 2856
    return-void

    .line 2857
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 2858
    .line 2859
    .line 2860
    .line 2861
    .line 2862
    .line 2863
    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    .line 2864
    .line 2865
    .line 2866
    .line 2867
    .line 2868
    .line 2869
    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    .line 2870
    .line 2871
    .line 2872
    .line 2873
    .line 2874
    .line 2875
    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    .line 2876
    .line 2877
    .line 2878
    .line 2879
    .line 2880
    .line 2881
    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 2882
    .line 2883
    .line 2884
    .line 2885
    .line 2886
    .line 2887
    .line 2888
    nop

    .line 2889
    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 2890
    .line 2891
    .line 2892
    .line 2893
    .line 2894
    .line 2895
    .line 2896
    .line 2897
    .line 2898
    nop

    .line 2899
    :array_6
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    .line 2900
    .line 2901
    .line 2902
    .line 2903
    .line 2904
    .line 2905
    .line 2906
    .line 2907
    .line 2908
    .line 2909
    .line 2910
    .line 2911
    .line 2912
    .line 2913
    .line 2914
    .line 2915
    .line 2916
    .line 2917
    .line 2918
    .line 2919
    .line 2920
    .line 2921
    .line 2922
    .line 2923
    .line 2924
    .line 2925
    .line 2926
    .line 2927
    .line 2928
    .line 2929
    .line 2930
    .line 2931
    :array_7
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 2932
    .line 2933
    .line 2934
    .line 2935
    .line 2936
    .line 2937
    .line 2938
    .line 2939
    :array_8
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 16
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 18
    iput-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 21
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Landroid/app/backup/a;->p(Landroid/system/ErrnoException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 23
    :cond_0
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_0
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 25
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileDescriptor cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 31
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 33
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_0

    .line 34
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 35
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 36
    :cond_0
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 39
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 40
    :cond_1
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 41
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 43
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "inputStream cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 5
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 10
    :cond_0
    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 11
    :goto_0
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000()[I
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method public static synthetic access$100()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300()[B
    .locals 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 6

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "DateTime"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 19
    .line 20
    aget-object v3, v3, v1

    .line 21
    .line 22
    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v0, "ImageWidth"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 40
    .line 41
    aget-object v2, v2, v1

    .line 42
    .line 43
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    invoke-static {v3, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    const-string v0, "ImageLength"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 61
    .line 62
    aget-object v2, v2, v1

    .line 63
    .line 64
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 65
    .line 66
    invoke-static {v3, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_2
    const-string v0, "Orientation"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 82
    .line 83
    aget-object v2, v2, v1

    .line 84
    .line 85
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 86
    .line 87
    invoke-static {v1, v5}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_3
    const-string v0, "LightSource"

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    aget-object v1, v1, v2

    .line 106
    .line 107
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 108
    .line 109
    invoke-static {v3, v4, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void
.end method

.method private containsMatch([B[B)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    array-length v3, p2

    .line 5
    sub-int/2addr v2, v3

    .line 6
    if-ge v1, v2, :cond_3

    .line 7
    .line 8
    move v2, v0

    .line 9
    :goto_1
    array-length v3, p2

    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    add-int v3, v1, v2

    .line 13
    .line 14
    aget-byte v3, p1, v3

    .line 15
    .line 16
    aget-byte v4, p2, v2

    .line 17
    .line 18
    if-eq v3, v4, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    array-length v3, p2

    .line 22
    const/4 v4, 0x1

    .line 23
    sub-int/2addr v3, v4

    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    return v4

    .line 27
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return v0
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 10

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    :try_start_0
    const-string v1, ","

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v2, p0, v1

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    aget-object v3, v2, v1

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    const/4 v5, 0x1

    .line 27
    aget-object v2, v2, v5

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    div-double/2addr v3, v6

    .line 38
    aget-object v2, p0, v5

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    aget-object v6, v2, v1

    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    aget-object v2, v2, v5

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    div-double/2addr v6, v8

    .line 65
    const/4 v2, 0x2

    .line 66
    aget-object p0, p0, v2

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    aget-object v0, p0, v1

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    aget-object p0, p0, v5

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 89
    .line 90
    .line 91
    move-result-wide v8

    .line 92
    div-double/2addr v0, v8

    .line 93
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 94
    .line 95
    div-double/2addr v6, v8

    .line 96
    add-double/2addr v6, v3

    .line 97
    const-wide v2, 0x40ac200000000000L    # 3600.0

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    div-double/2addr v0, v2

    .line 103
    add-double/2addr v0, v6

    .line 104
    const-string p0, "S"

    .line 105
    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_1

    .line 111
    .line 112
    const-string p0, "W"

    .line 113
    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    if-eqz p0, :cond_0

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    double-to-float p0, v0

    .line 122
    return p0

    .line 123
    :cond_1
    :goto_0
    neg-double p0, v0

    .line 124
    double-to-float p0, p0

    .line 125
    return p0

    .line 126
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method private getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Landroid/media/ExifInterface$1;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Landroid/media/ExifInterface$1;-><init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    const/16 p1, 0x11

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string/jumbo v1, "yes"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_6

    .line 36
    .line 37
    const/16 p1, 0x12

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/16 v1, 0x13

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 53
    .line 54
    aget-object v3, v3, v2

    .line 55
    .line 56
    const-string v4, "ImageWidth"

    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 63
    .line 64
    invoke-static {p1, v5}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_1
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 74
    .line 75
    aget-object p1, p1, v2

    .line 76
    .line 77
    const-string v3, "ImageLength"

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 84
    .line 85
    invoke-static {v1, v4}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_2
    const/16 p1, 0x18

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    const/16 v1, 0x5a

    .line 105
    .line 106
    if-eq p1, v1, :cond_5

    .line 107
    .line 108
    const/16 v1, 0xb4

    .line 109
    .line 110
    if-eq p1, v1, :cond_4

    .line 111
    .line 112
    const/16 v1, 0x10e

    .line 113
    .line 114
    if-eq p1, v1, :cond_3

    .line 115
    .line 116
    const/4 p1, 0x1

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const/16 p1, 0x8

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    const/4 p1, 0x3

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    const/4 p1, 0x6

    .line 124
    :goto_1
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 125
    .line 126
    aget-object v1, v1, v2

    .line 127
    .line 128
    const-string v2, "Orientation"

    .line 129
    .line 130
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 131
    .line 132
    invoke-static {p1, v3}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :catchall_0
    move-exception p1

    .line 144
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 145
    .line 146
    .line 147
    throw p1
.end method

.method private getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 9

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4
    .line 5
    .line 6
    int-to-long v0, p2

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "Invalid marker: "

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-ne v0, v2, :cond_11

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    add-int/2addr p2, v3

    .line 21
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/16 v5, -0x28

    .line 26
    .line 27
    if-ne v4, v5, :cond_10

    .line 28
    .line 29
    add-int/2addr p2, v3

    .line 30
    :goto_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne v0, v2, :cond_f

    .line 35
    .line 36
    add-int/2addr p2, v3

    .line 37
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/2addr p2, v3

    .line 42
    const/16 v1, -0x27

    .line 43
    .line 44
    if-eq v0, v1, :cond_e

    .line 45
    .line 46
    const/16 v1, -0x26

    .line 47
    .line 48
    if-ne v0, v1, :cond_0

    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/lit8 v1, v1, -0x2

    .line 57
    .line 58
    add-int/lit8 p2, p2, 0x2

    .line 59
    .line 60
    const-string v4, "Invalid length"

    .line 61
    .line 62
    if-ltz v1, :cond_d

    .line 63
    .line 64
    const/16 v5, -0x1f

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    const-string v7, "Invalid exif"

    .line 68
    .line 69
    if-eq v0, v5, :cond_4

    .line 70
    .line 71
    const/4 v5, -0x2

    .line 72
    if-eq v0, v5, :cond_2

    .line 73
    .line 74
    packed-switch v0, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    packed-switch v0, :pswitch_data_1

    .line 78
    .line 79
    .line 80
    packed-switch v0, :pswitch_data_2

    .line 81
    .line 82
    .line 83
    packed-switch v0, :pswitch_data_3

    .line 84
    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-ne v0, v3, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 95
    .line 96
    aget-object v0, v0, p3

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    int-to-long v5, v5

    .line 103
    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 104
    .line 105
    invoke-static {v5, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const-string v6, "ImageLength"

    .line 110
    .line 111
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 115
    .line 116
    aget-object v0, v0, p3

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    int-to-long v5, v5

    .line 123
    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 124
    .line 125
    invoke-static {v5, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    const-string v6, "ImageWidth"

    .line 130
    .line 131
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    add-int/lit8 v1, v1, -0x5

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 138
    .line 139
    const-string p2, "Invalid SOFx"

    .line 140
    .line 141
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1

    .line 145
    :cond_2
    new-array v0, v1, [B

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-ne v5, v1, :cond_3

    .line 152
    .line 153
    const-string v1, "UserComment"

    .line 154
    .line 155
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    if-nez v5, :cond_7

    .line 160
    .line 161
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 162
    .line 163
    aget-object v5, v5, v3

    .line 164
    .line 165
    new-instance v7, Ljava/lang/String;

    .line 166
    .line 167
    sget-object v8, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 168
    .line 169
    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v7}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 181
    .line 182
    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_4
    const/4 v0, 0x6

    .line 187
    if-ge v1, v0, :cond_5

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_5
    new-array v5, v0, [B

    .line 191
    .line 192
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-ne v8, v0, :cond_c

    .line 197
    .line 198
    add-int/lit8 p2, p2, 0x6

    .line 199
    .line 200
    add-int/lit8 v1, v1, -0x6

    .line 201
    .line 202
    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 203
    .line 204
    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_6

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_6
    if-lez v1, :cond_b

    .line 212
    .line 213
    iput p2, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 214
    .line 215
    new-array v0, v1, [B

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-ne v5, v1, :cond_a

    .line 222
    .line 223
    add-int/2addr p2, v1

    .line 224
    invoke-direct {p0, v0, p3}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 225
    .line 226
    .line 227
    :cond_7
    :goto_1
    move v1, v6

    .line 228
    :goto_2
    if-ltz v1, :cond_9

    .line 229
    .line 230
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-ne v0, v1, :cond_8

    .line 235
    .line 236
    add-int/2addr p2, v1

    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 240
    .line 241
    const-string p2, "Invalid JPEG segment"

    .line 242
    .line 243
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p1

    .line 247
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 248
    .line 249
    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1

    .line 253
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 254
    .line 255
    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw p1

    .line 259
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 260
    .line 261
    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :cond_c
    new-instance p1, Ljava/io/IOException;

    .line 266
    .line 267
    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw p1

    .line 271
    :cond_d
    new-instance p1, Ljava/io/IOException;

    .line 272
    .line 273
    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw p1

    .line 277
    :cond_e
    :goto_3
    iget-object p2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 278
    .line 279
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :cond_f
    new-instance p1, Ljava/io/IOException;

    .line 284
    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string p3, "Invalid marker:"

    .line 288
    .line 289
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    and-int/lit16 p3, v0, 0xff

    .line 293
    .line 294
    invoke-static {p3, p2}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :cond_10
    new-instance p1, Ljava/io/IOException;

    .line 303
    .line 304
    new-instance p2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    and-int/lit16 p3, v0, 0xff

    .line 310
    .line 311
    invoke-static {p3, p2}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw p1

    .line 319
    :cond_11
    new-instance p1, Ljava/io/IOException;

    .line 320
    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    and-int/lit16 p3, v0, 0xff

    .line 327
    .line 328
    invoke-static {p3, p2}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw p1

    .line 336
    nop

    .line 337
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 1

    .line 1
    const/16 v0, 0x1388

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 4
    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/media/ExifInterface;->isJpegFormat([B)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    return p1

    .line 22
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRafFormat([B)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/16 p1, 0x9

    .line 29
    .line 30
    return p1

    .line 31
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isHeifFormat([B)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const/16 p1, 0xc

    .line 38
    .line 39
    return p1

    .line 40
    :cond_2
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isOrfFormat([B)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x7

    .line 47
    return p1

    .line 48
    :cond_3
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRw2Format([B)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    const/16 p1, 0xa

    .line 55
    .line 56
    return p1

    .line 57
    :cond_4
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method private getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object p1, p1, v0

    .line 8
    .line 9
    const-string v1, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    .line 20
    .line 21
    iget-object p1, p1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 32
    .line 33
    array-length v2, p1

    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 42
    .line 43
    .line 44
    sget-object v3, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 45
    .line 46
    array-length v4, v3

    .line 47
    new-array v4, v4, [B

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    const-wide/16 v2, 0x8

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    const-wide/16 v2, 0xc

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 76
    invoke-direct {p0, v1, p1}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 80
    .line 81
    const/4 v1, 0x7

    .line 82
    aget-object p1, p1, v1

    .line 83
    .line 84
    const-string v2, "PreviewImageStart"

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/media/ExifInterface$ExifAttribute;

    .line 91
    .line 92
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 93
    .line 94
    aget-object v1, v2, v1

    .line 95
    .line 96
    const-string v2, "PreviewImageLength"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 109
    .line 110
    const/4 v3, 0x5

    .line 111
    aget-object v2, v2, v3

    .line 112
    .line 113
    const-string v4, "JPEGInterchangeFormat"

    .line 114
    .line 115
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 119
    .line 120
    aget-object p1, p1, v3

    .line 121
    .line 122
    const-string v2, "JPEGInterchangeFormatLength"

    .line 123
    .line 124
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 128
    .line 129
    const/16 v1, 0x8

    .line 130
    .line 131
    aget-object p1, p1, v1

    .line 132
    .line 133
    const-string v1, "AspectFrame"

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroid/media/ExifInterface$ExifAttribute;

    .line 140
    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 144
    .line 145
    invoke-static {p1, v1}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, [I

    .line 150
    .line 151
    const/4 v1, 0x2

    .line 152
    aget v1, p1, v1

    .line 153
    .line 154
    const/4 v2, 0x0

    .line 155
    aget v3, p1, v2

    .line 156
    .line 157
    if-le v1, v3, :cond_4

    .line 158
    .line 159
    const/4 v4, 0x3

    .line 160
    aget v4, p1, v4

    .line 161
    .line 162
    aget p1, p1, v0

    .line 163
    .line 164
    if-le v4, p1, :cond_4

    .line 165
    .line 166
    sub-int/2addr v1, v3

    .line 167
    add-int/2addr v1, v0

    .line 168
    sub-int/2addr v4, p1

    .line 169
    add-int/2addr v4, v0

    .line 170
    if-ge v1, v4, :cond_3

    .line 171
    .line 172
    add-int/2addr v1, v4

    .line 173
    sub-int v4, v1, v4

    .line 174
    .line 175
    sub-int/2addr v1, v4

    .line 176
    :cond_3
    iget-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 177
    .line 178
    invoke-static {v1, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 183
    .line 184
    invoke-static {v4, v0}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 189
    .line 190
    aget-object v1, v1, v2

    .line 191
    .line 192
    const-string v3, "ImageWidth"

    .line 193
    .line 194
    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 198
    .line 199
    aget-object p1, p1, v2

    .line 200
    .line 201
    const-string v1, "ImageLength"

    .line 202
    .line 203
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    :cond_4
    return-void
.end method

.method private getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6

    .line 1
    const/16 v0, 0x54

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    new-array v2, v0, [B

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x5

    .line 37
    invoke-direct {p0, p1, v0, v2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 38
    .line 39
    .line 40
    int-to-long v0, v1

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    move v2, v1

    .line 55
    :goto_0
    if-ge v2, v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    sget-object v5, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    .line 66
    .line 67
    iget v5, v5, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 68
    .line 69
    if-ne v3, v5, :cond_0

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 80
    .line 81
    invoke-static {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 86
    .line 87
    invoke-static {p1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 92
    .line 93
    aget-object v2, v2, v1

    .line 94
    .line 95
    const-string v3, "ImageLength"

    .line 96
    .line 97
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 101
    .line 102
    aget-object v0, v0, v1

    .line 103
    .line 104
    const-string v1, "ImageWidth"

    .line 105
    .line 106
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 111
    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method private getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->validateImages(Ljava/io/InputStream;)V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    aget-object p1, p1, v0

    .line 36
    .line 37
    const-string v1, "MakerNote"

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/media/ExifInterface$ExifAttribute;

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    .line 48
    .line 49
    iget-object p1, p1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 50
    .line 51
    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 57
    .line 58
    .line 59
    const-wide/16 v2, 0x6

    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 62
    .line 63
    .line 64
    const/16 p1, 0x9

    .line 65
    .line 66
    invoke-direct {p0, v1, p1}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 70
    .line 71
    aget-object p1, v1, p1

    .line 72
    .line 73
    const-string v1, "ColorSpace"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/media/ExifInterface$ExifAttribute;

    .line 80
    .line 81
    if-eqz p1, :cond_0

    .line 82
    .line 83
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 84
    .line 85
    aget-object v0, v2, v0

    .line 86
    .line 87
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    const-string v2, "JpgFromRaw"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-direct {p0, p1, v0, v2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 26
    .line 27
    aget-object p1, p1, v1

    .line 28
    .line 29
    const-string v0, "ISO"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/media/ExifInterface$ExifAttribute;

    .line 36
    .line 37
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    aget-object v0, v0, v1

    .line 41
    .line 42
    const-string v2, "ISOSpeedRatings"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 55
    .line 56
    aget-object v0, v0, v1

    .line 57
    .line 58
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x2

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const/4 v6, -0x1

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    if-eqz v1, :cond_9

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    aget-object v0, p0, v2

    .line 26
    .line 27
    invoke-static {v0}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v1, v4, :cond_0

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    :goto_0
    array-length v1, p0

    .line 43
    if-ge v3, v1, :cond_8

    .line 44
    .line 45
    aget-object v1, p0, v3

    .line 46
    .line 47
    invoke-static {v1}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    if-eq v2, v4, :cond_2

    .line 56
    .line 57
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 58
    .line 59
    if-ne v2, v4, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v2, v6

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    check-cast v4, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    :goto_2
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v4, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eq v4, v6, :cond_4

    .line 79
    .line 80
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 83
    .line 84
    if-eq v4, v8, :cond_3

    .line 85
    .line 86
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 87
    .line 88
    if-ne v1, v8, :cond_4

    .line 89
    .line 90
    :cond_3
    check-cast v8, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    move v1, v6

    .line 98
    :goto_3
    if-ne v2, v6, :cond_5

    .line 99
    .line 100
    if-ne v1, v6, :cond_5

    .line 101
    .line 102
    new-instance p0, Landroid/util/Pair;

    .line 103
    .line 104
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object p0

    .line 108
    :cond_5
    if-ne v2, v6, :cond_6

    .line 109
    .line 110
    new-instance v0, Landroid/util/Pair;

    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    if-ne v1, v6, :cond_7

    .line 121
    .line 122
    new-instance v0, Landroid/util/Pair;

    .line 123
    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_8
    return-object v0

    .line 135
    :cond_9
    const-string v0, "/"

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    const-wide/16 v8, 0x0

    .line 142
    .line 143
    if-eqz v1, :cond_f

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    array-length v0, p0

    .line 150
    if-ne v0, v4, :cond_e

    .line 151
    .line 152
    :try_start_0
    aget-object v0, p0, v2

    .line 153
    .line 154
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    double-to-long v0, v0

    .line 159
    aget-object p0, p0, v3

    .line 160
    .line 161
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    double-to-long v2, v2

    .line 166
    cmp-long p0, v0, v8

    .line 167
    .line 168
    const/16 v4, 0xa

    .line 169
    .line 170
    if-ltz p0, :cond_d

    .line 171
    .line 172
    cmp-long p0, v2, v8

    .line 173
    .line 174
    if-gez p0, :cond_a

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_a
    const-wide/32 v8, 0x7fffffff

    .line 178
    .line 179
    .line 180
    cmp-long p0, v0, v8

    .line 181
    .line 182
    const/4 v0, 0x5

    .line 183
    if-gtz p0, :cond_c

    .line 184
    .line 185
    cmp-long p0, v2, v8

    .line 186
    .line 187
    if-lez p0, :cond_b

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_b
    new-instance p0, Landroid/util/Pair;

    .line 191
    .line 192
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return-object p0

    .line 204
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    .line 205
    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    return-object p0

    .line 214
    :cond_d
    :goto_6
    new-instance p0, Landroid/util/Pair;

    .line 215
    .line 216
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .line 222
    .line 223
    return-object p0

    .line 224
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    .line 225
    .line 226
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    return-object p0

    .line 230
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v0

    .line 234
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 239
    .line 240
    .line 241
    move-result-wide v1

    .line 242
    cmp-long v1, v1, v8

    .line 243
    .line 244
    const/4 v2, 0x4

    .line 245
    if-ltz v1, :cond_10

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 248
    .line 249
    .line 250
    move-result-wide v3

    .line 251
    const-wide/32 v10, 0xffff

    .line 252
    .line 253
    .line 254
    cmp-long v1, v3, v10

    .line 255
    .line 256
    if-gtz v1, :cond_10

    .line 257
    .line 258
    new-instance v0, Landroid/util/Pair;

    .line 259
    .line 260
    const/4 v1, 0x3

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    return-object v0

    .line 273
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 274
    .line 275
    .line 276
    move-result-wide v0

    .line 277
    cmp-long v0, v0, v8

    .line 278
    .line 279
    if-gez v0, :cond_11

    .line 280
    .line 281
    new-instance v0, Landroid/util/Pair;

    .line 282
    .line 283
    const/16 v1, 0x9

    .line 284
    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    return-object v0

    .line 293
    :cond_11
    new-instance v0, Landroid/util/Pair;

    .line 294
    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    .line 301
    .line 302
    return-object v0

    .line 303
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 304
    .line 305
    .line 306
    new-instance p0, Landroid/util/Pair;

    .line 307
    .line 308
    const/16 v0, 0xc

    .line 309
    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 315
    .line 316
    .line 317
    return-object p0

    .line 318
    :catch_2
    new-instance p0, Landroid/util/Pair;

    .line 319
    .line 320
    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    return-object p0
.end method

.method private handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroid/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sub-int/2addr v1, v0

    .line 38
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 43
    .line 44
    const/4 v2, 0x4

    .line 45
    if-eq v1, v2, :cond_1

    .line 46
    .line 47
    const/16 v2, 0x9

    .line 48
    .line 49
    if-eq v1, v2, :cond_1

    .line 50
    .line 51
    const/16 v2, 0xa

    .line 52
    .line 53
    if-ne v1, v2, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v2, 0x7

    .line 57
    if-ne v1, v2, :cond_2

    .line 58
    .line 59
    iget v1, p0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iget v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    .line 63
    .line 64
    :goto_1
    add-int/2addr v0, v1

    .line 65
    :cond_2
    if-lez v0, :cond_3

    .line 66
    .line 67
    if-lez p2, :cond_3

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 71
    .line 72
    iput v0, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 73
    .line 74
    iput p2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 75
    .line 76
    const/4 v1, 0x6

    .line 77
    iput v1, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 78
    .line 79
    iget-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    iget-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 84
    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    iget-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 88
    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    new-array p2, p2, [B

    .line 92
    .line 93
    int-to-long v0, v0

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 101
    .line 102
    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 11

    .line 1
    const-string v0, "StripOffsets"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 8
    .line 9
    const-string v1, "StripByteCounts"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroid/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, [J

    .line 28
    .line 29
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 30
    .line 31
    invoke-static {p2, v1}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, [J

    .line 36
    .line 37
    invoke-static {p2}, Landroid/animation/b;->q([J)Ljava/util/stream/LongStream;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/animation/b;->c(Ljava/util/stream/LongStream;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    long-to-int v1, v1

    .line 46
    new-array v2, v1, [B

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    move v4, v3

    .line 50
    move v5, v4

    .line 51
    move v6, v5

    .line 52
    :goto_0
    array-length v7, v0

    .line 53
    if-ge v4, v7, :cond_1

    .line 54
    .line 55
    aget-wide v7, v0, v4

    .line 56
    .line 57
    long-to-int v7, v7

    .line 58
    aget-wide v8, p2, v4

    .line 59
    .line 60
    long-to-int v8, v8

    .line 61
    sub-int/2addr v7, v5

    .line 62
    if-gez v7, :cond_0

    .line 63
    .line 64
    const-string v9, "ExifInterface"

    .line 65
    .line 66
    const-string v10, "Invalid strip offset value"

    .line 67
    .line 68
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_0
    int-to-long v9, v7

    .line 72
    invoke-virtual {p1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 73
    .line 74
    .line 75
    add-int/2addr v5, v7

    .line 76
    new-array v7, v8, [B

    .line 77
    .line 78
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    .line 79
    .line 80
    .line 81
    add-int/2addr v5, v8

    .line 82
    invoke-static {v7, v3, v2, v6, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 83
    .line 84
    .line 85
    add-int/2addr v6, v8

    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 91
    .line 92
    iput-object v2, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 93
    .line 94
    iput v1, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method private isHeifFormat([B)Z
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    .line 4
    .line 5
    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-long v3, v1

    .line 18
    const/4 v1, 0x4

    .line 19
    new-array v5, v1, [B

    .line 20
    .line 21
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    .line 22
    .line 23
    .line 24
    sget-object v6, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 25
    .line 26
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 27
    .line 28
    .line 29
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_0
    const-wide/16 v5, 0x1

    .line 37
    .line 38
    cmp-long v7, v3, v5

    .line 39
    .line 40
    const-wide/16 v8, 0x8

    .line 41
    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    :try_start_2
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    const-wide/16 v10, 0x10

    .line 49
    .line 50
    cmp-long v7, v3, v10

    .line 51
    .line 52
    if-gez v7, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 55
    .line 56
    .line 57
    return v0

    .line 58
    :cond_1
    move-wide v10, v8

    .line 59
    :cond_2
    :try_start_3
    array-length v7, p1

    .line 60
    int-to-long v12, v7

    .line 61
    cmp-long v7, v3, v12

    .line 62
    .line 63
    if-lez v7, :cond_3

    .line 64
    .line 65
    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    int-to-long v3, p1

    .line 67
    :cond_3
    sub-long/2addr v3, v10

    .line 68
    cmp-long p1, v3, v8

    .line 69
    .line 70
    if-gez p1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 73
    .line 74
    .line 75
    return v0

    .line 76
    :cond_4
    :try_start_4
    new-array p1, v1, [B

    .line 77
    .line 78
    const-wide/16 v7, 0x0

    .line 79
    .line 80
    move v9, v0

    .line 81
    move v10, v9

    .line 82
    :goto_0
    const-wide/16 v11, 0x4

    .line 83
    .line 84
    div-long v11, v3, v11

    .line 85
    .line 86
    cmp-long v11, v7, v11

    .line 87
    .line 88
    if-gez v11, :cond_a

    .line 89
    .line 90
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    .line 91
    .line 92
    .line 93
    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    if-eq v11, v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 97
    .line 98
    .line 99
    return v0

    .line 100
    :cond_5
    cmp-long v11, v7, v5

    .line 101
    .line 102
    if-nez v11, :cond_6

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    :try_start_5
    sget-object v11, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 106
    .line 107
    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    const/4 v12, 0x1

    .line 112
    if-eqz v11, :cond_7

    .line 113
    .line 114
    move v9, v12

    .line 115
    goto :goto_1

    .line 116
    :cond_7
    sget-object v11, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 117
    .line 118
    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 119
    .line 120
    .line 121
    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    if-eqz v11, :cond_8

    .line 123
    .line 124
    move v10, v12

    .line 125
    :cond_8
    :goto_1
    if-eqz v9, :cond_9

    .line 126
    .line 127
    if-eqz v10, :cond_9

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 130
    .line 131
    .line 132
    return v12

    .line 133
    :cond_9
    :goto_2
    add-long/2addr v7, v5

    .line 134
    goto :goto_0

    .line 135
    :cond_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    move-object v1, v2

    .line 141
    goto :goto_3

    .line 142
    :catch_0
    move-object v1, v2

    .line 143
    goto :goto_4

    .line 144
    :catchall_1
    move-exception p1

    .line 145
    :goto_3
    if-eqz v1, :cond_b

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 148
    .line 149
    .line 150
    :cond_b
    throw p1

    .line 151
    :catch_1
    :goto_4
    if-eqz v1, :cond_c

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 154
    .line 155
    .line 156
    :cond_c
    :goto_5
    return v0
.end method

.method private static isJpegFormat([B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    aget-byte v3, p0, v1

    .line 9
    .line 10
    aget-byte v2, v2, v1

    .line 11
    .line 12
    if-eq v3, v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method private isOrfFormat([B)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v0, 0x4f52

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x5352

    .line 24
    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method private isRafFormat([B)Z
    .locals 5

    .line 1
    const-string v0, "FUJIFILMCCD-RAW"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    array-length v3, v0

    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    aget-byte v3, p1, v2

    .line 13
    .line 14
    aget-byte v4, v0, v2

    .line 15
    .line 16
    if-eq v3, v4, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method private isRw2Format([B)Z
    .locals 1

    .line 1
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v0, 0x55

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3

    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 5

    .line 1
    const-string v0, "BitsPerSample"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [I

    .line 18
    .line 19
    sget-object v1, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    return v3

    .line 29
    :cond_0
    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 30
    .line 31
    const/4 v4, 0x3

    .line 32
    if-ne v2, v4, :cond_3

    .line 33
    .line 34
    const-string v2, "PhotometricInterpretation"

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/media/ExifInterface$ExifAttribute;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne p1, v3, :cond_1

    .line 51
    .line 52
    sget-object v2, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 53
    .line 54
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    :cond_1
    const/4 v2, 0x6

    .line 61
    if-ne p1, v2, :cond_3

    .line 62
    .line 63
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    :cond_2
    return v3

    .line 70
    :cond_3
    const/4 p1, 0x0

    .line 71
    return p1
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v1, 0x200

    .line 34
    .line 35
    if-gt v0, v1, :cond_0

    .line 36
    .line 37
    if-gt p1, v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    :try_start_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 9
    .line 10
    new-instance v3, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    aput-object v3, v2, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 21
    .line 22
    const/16 v2, 0x1388

    .line 23
    .line 24
    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 32
    .line 33
    new-instance p1, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    .line 34
    .line 35
    invoke-direct {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 39
    .line 40
    packed-switch v1, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_4
    invoke-direct {p0, p1, v0, v0}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_3

    .line 76
    :catch_0
    :try_start_1
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    :goto_2
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_3
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x2a

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Invalid start code: "

    .line 33
    .line 34
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p2}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    if-lt v0, v1, :cond_4

    .line 52
    .line 53
    if-ge v0, p2, :cond_4

    .line 54
    .line 55
    add-int/lit8 v0, v0, -0x8

    .line 56
    .line 57
    if-lez v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 67
    .line 68
    const-string p2, "Couldn\'t jump to first Ifd: "

    .line 69
    .line 70
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_3
    :goto_1
    return-void

    .line 79
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 80
    .line 81
    const-string p2, "Invalid first Ifd offset: "

    .line 82
    .line 83
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method

.method private printAttributes()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    const-string v1, "The size of tag group["

    .line 8
    .line 9
    const-string v2, "]: "

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 16
    .line 17
    aget-object v2, v2, v0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "ExifInterface"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 36
    .line 37
    aget-object v1, v1, v0

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 64
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v6, "tagName: "

    .line 68
    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, ", tagType: "

    .line 81
    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, ", tagValue: \'"

    .line 93
    .line 94
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v3, "\'"

    .line 107
    .line 108
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    return-void
.end method

.method private readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x4d4d

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Invalid byte order: "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 34
    .line 35
    return-object p1
.end method

.method private readExifSegment([BI)V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    array-length p1, p1

    .line 7
    invoke-direct {p0, v0, p1}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    add-int/lit8 v3, v3, 0x2

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-le v3, v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    mul-int/lit8 v5, v3, 0xc

    .line 29
    .line 30
    add-int/2addr v5, v4

    .line 31
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-le v5, v4, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    const/4 v4, 0x0

    .line 39
    :goto_0
    if-ge v4, v3, :cond_1a

    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    add-int/lit8 v8, v8, 0x4

    .line 58
    .line 59
    int-to-long v8, v8

    .line 60
    sget-object v10, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 61
    .line 62
    aget-object v10, v10, v2

    .line 63
    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    check-cast v10, Landroid/media/ExifInterface$ExifTag;

    .line 73
    .line 74
    const-string v11, "ExifInterface"

    .line 75
    .line 76
    if-nez v10, :cond_2

    .line 77
    .line 78
    const-string v12, "Skip the tag entry since tag number is not defined: "

    .line 79
    .line 80
    invoke-static {v12, v5, v11}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    move v15, v3

    .line 84
    move/from16 v16, v4

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_2
    if-lez v6, :cond_6

    .line 88
    .line 89
    sget-object v12, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 90
    .line 91
    array-length v13, v12

    .line 92
    if-lt v6, v13, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    int-to-long v13, v7

    .line 96
    aget v12, v12, v6

    .line 97
    .line 98
    move v15, v3

    .line 99
    move/from16 v16, v4

    .line 100
    .line 101
    int-to-long v3, v12

    .line 102
    mul-long/2addr v13, v3

    .line 103
    const-wide/16 v3, 0x0

    .line 104
    .line 105
    cmp-long v3, v13, v3

    .line 106
    .line 107
    if-ltz v3, :cond_5

    .line 108
    .line 109
    const-wide/32 v3, 0x7fffffff

    .line 110
    .line 111
    .line 112
    cmp-long v3, v13, v3

    .line 113
    .line 114
    if-lez v3, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    const/4 v3, 0x1

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    :goto_1
    const-string v3, "Skip the tag entry since the number of components is invalid: "

    .line 120
    .line 121
    invoke-static {v3, v7, v11}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 v3, 0x0

    .line 125
    goto :goto_4

    .line 126
    :cond_6
    :goto_2
    move v15, v3

    .line 127
    move/from16 v16, v4

    .line 128
    .line 129
    const-string v3, "Skip the tag entry since data format is invalid: "

    .line 130
    .line 131
    invoke-static {v3, v6, v11}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_3
    const/4 v3, 0x0

    .line 135
    const-wide/16 v13, 0x0

    .line 136
    .line 137
    :goto_4
    if-nez v3, :cond_7

    .line 138
    .line 139
    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 140
    .line 141
    .line 142
    move/from16 v17, v15

    .line 143
    .line 144
    goto/16 :goto_b

    .line 145
    .line 146
    :cond_7
    const-wide/16 v3, 0x4

    .line 147
    .line 148
    cmp-long v3, v13, v3

    .line 149
    .line 150
    const-string v4, "Compression"

    .line 151
    .line 152
    if-lez v3, :cond_d

    .line 153
    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    iget v12, v0, Landroid/media/ExifInterface;->mMimeType:I

    .line 159
    .line 160
    move/from16 v17, v15

    .line 161
    .line 162
    const/4 v15, 0x7

    .line 163
    if-ne v12, v15, :cond_a

    .line 164
    .line 165
    iget-object v12, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 166
    .line 167
    const-string v15, "MakerNote"

    .line 168
    .line 169
    if-ne v12, v15, :cond_8

    .line 170
    .line 171
    iput v3, v0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_8
    const/4 v15, 0x6

    .line 175
    if-ne v2, v15, :cond_9

    .line 176
    .line 177
    const-string v15, "ThumbnailImage"

    .line 178
    .line 179
    if-ne v12, v15, :cond_9

    .line 180
    .line 181
    iput v3, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 182
    .line 183
    iput v7, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    .line 184
    .line 185
    iget-object v12, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 186
    .line 187
    const/4 v15, 0x6

    .line 188
    invoke-static {v15, v12}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    iget v15, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 193
    .line 194
    move/from16 v18, v6

    .line 195
    .line 196
    move/from16 v19, v7

    .line 197
    .line 198
    int-to-long v6, v15

    .line 199
    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 200
    .line 201
    invoke-static {v6, v7, v15}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    iget v7, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    .line 206
    .line 207
    move-wide/from16 v20, v8

    .line 208
    .line 209
    int-to-long v7, v7

    .line 210
    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 211
    .line 212
    invoke-static {v7, v8, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 217
    .line 218
    const/4 v9, 0x4

    .line 219
    aget-object v8, v8, v9

    .line 220
    .line 221
    invoke-virtual {v8, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 225
    .line 226
    aget-object v8, v8, v9

    .line 227
    .line 228
    const-string v12, "JPEGInterchangeFormat"

    .line 229
    .line 230
    invoke-virtual {v8, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 234
    .line 235
    aget-object v6, v6, v9

    .line 236
    .line 237
    const-string v8, "JPEGInterchangeFormatLength"

    .line 238
    .line 239
    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_9
    :goto_5
    move/from16 v18, v6

    .line 244
    .line 245
    move/from16 v19, v7

    .line 246
    .line 247
    move-wide/from16 v20, v8

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_a
    move/from16 v18, v6

    .line 251
    .line 252
    move/from16 v19, v7

    .line 253
    .line 254
    move-wide/from16 v20, v8

    .line 255
    .line 256
    const/16 v6, 0xa

    .line 257
    .line 258
    if-ne v12, v6, :cond_b

    .line 259
    .line 260
    iget-object v6, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 261
    .line 262
    const-string v7, "JpgFromRaw"

    .line 263
    .line 264
    if-ne v6, v7, :cond_b

    .line 265
    .line 266
    iput v3, v0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    .line 267
    .line 268
    :cond_b
    :goto_6
    int-to-long v6, v3

    .line 269
    add-long v8, v6, v13

    .line 270
    .line 271
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    move-wide/from16 v22, v13

    .line 276
    .line 277
    int-to-long v12, v12

    .line 278
    cmp-long v8, v8, v12

    .line 279
    .line 280
    if-gtz v8, :cond_c

    .line 281
    .line 282
    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 283
    .line 284
    .line 285
    move-wide/from16 v6, v20

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_c
    const-string v4, "Skip the tag entry since data offset is invalid: "

    .line 289
    .line 290
    invoke-static {v4, v3, v11}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    move-wide/from16 v6, v20

    .line 294
    .line 295
    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_b

    .line 299
    .line 300
    :cond_d
    move/from16 v18, v6

    .line 301
    .line 302
    move/from16 v19, v7

    .line 303
    .line 304
    move-wide v6, v8

    .line 305
    move-wide/from16 v22, v13

    .line 306
    .line 307
    move/from16 v17, v15

    .line 308
    .line 309
    :goto_7
    sget-object v3, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 310
    .line 311
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    const/4 v5, 0x3

    .line 320
    if-eqz v3, :cond_13

    .line 321
    .line 322
    move/from16 v8, v18

    .line 323
    .line 324
    if-eq v8, v5, :cond_11

    .line 325
    .line 326
    const/4 v4, 0x4

    .line 327
    if-eq v8, v4, :cond_10

    .line 328
    .line 329
    const/16 v4, 0x8

    .line 330
    .line 331
    if-eq v8, v4, :cond_f

    .line 332
    .line 333
    const/16 v4, 0x9

    .line 334
    .line 335
    if-eq v8, v4, :cond_e

    .line 336
    .line 337
    const/16 v4, 0xd

    .line 338
    .line 339
    if-eq v8, v4, :cond_e

    .line 340
    .line 341
    const-wide/16 v4, -0x1

    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    goto :goto_8

    .line 349
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    goto :goto_8

    .line 354
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    .line 355
    .line 356
    .line 357
    move-result-wide v4

    .line 358
    goto :goto_9

    .line 359
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    :goto_8
    int-to-long v4, v4

    .line 364
    :goto_9
    const-wide/16 v8, 0x0

    .line 365
    .line 366
    cmp-long v8, v4, v8

    .line 367
    .line 368
    if-lez v8, :cond_12

    .line 369
    .line 370
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    int-to-long v8, v8

    .line 375
    cmp-long v8, v4, v8

    .line 376
    .line 377
    if-gez v8, :cond_12

    .line 378
    .line 379
    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 380
    .line 381
    .line 382
    check-cast v3, Ljava/lang/Integer;

    .line 383
    .line 384
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    invoke-direct {v0, v1, v3}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 389
    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string v8, "Skip jump into the IFD since its offset is invalid: "

    .line 395
    .line 396
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    :goto_a
    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 410
    .line 411
    .line 412
    goto :goto_b

    .line 413
    :cond_13
    move/from16 v8, v18

    .line 414
    .line 415
    move-wide/from16 v13, v22

    .line 416
    .line 417
    long-to-int v3, v13

    .line 418
    new-array v3, v3, [B

    .line 419
    .line 420
    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 421
    .line 422
    .line 423
    new-instance v9, Landroid/media/ExifInterface$ExifAttribute;

    .line 424
    .line 425
    const/4 v11, 0x0

    .line 426
    move/from16 v12, v19

    .line 427
    .line 428
    invoke-direct {v9, v8, v12, v3, v11}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[BLandroid/media/ExifInterface$1;)V

    .line 429
    .line 430
    .line 431
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 432
    .line 433
    aget-object v3, v3, v2

    .line 434
    .line 435
    iget-object v8, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    iget-object v3, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 441
    .line 442
    const-string v8, "DNGVersion"

    .line 443
    .line 444
    if-ne v3, v8, :cond_14

    .line 445
    .line 446
    iput v5, v0, Landroid/media/ExifInterface;->mMimeType:I

    .line 447
    .line 448
    :cond_14
    const-string v5, "Make"

    .line 449
    .line 450
    if-eq v3, v5, :cond_15

    .line 451
    .line 452
    const-string v5, "Model"

    .line 453
    .line 454
    if-ne v3, v5, :cond_16

    .line 455
    .line 456
    :cond_15
    iget-object v3, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 457
    .line 458
    invoke-virtual {v9, v3}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    const-string v5, "PENTAX"

    .line 463
    .line 464
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-nez v3, :cond_17

    .line 469
    .line 470
    :cond_16
    iget-object v3, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 471
    .line 472
    if-ne v3, v4, :cond_18

    .line 473
    .line 474
    iget-object v3, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 475
    .line 476
    invoke-virtual {v9, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    const v4, 0xffff

    .line 481
    .line 482
    .line 483
    if-ne v3, v4, :cond_18

    .line 484
    .line 485
    :cond_17
    const/16 v3, 0x8

    .line 486
    .line 487
    iput v3, v0, Landroid/media/ExifInterface;->mMimeType:I

    .line 488
    .line 489
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    int-to-long v3, v3

    .line 494
    cmp-long v3, v3, v6

    .line 495
    .line 496
    if-eqz v3, :cond_19

    .line 497
    .line 498
    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 499
    .line 500
    .line 501
    :cond_19
    :goto_b
    add-int/lit8 v4, v16, 0x1

    .line 502
    .line 503
    int-to-short v4, v4

    .line 504
    move/from16 v3, v17

    .line 505
    .line 506
    goto/16 :goto_0

    .line 507
    .line 508
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    const/4 v3, 0x4

    .line 513
    add-int/2addr v2, v3

    .line 514
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    if-gt v2, v4, :cond_1c

    .line 519
    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    const/16 v4, 0x8

    .line 525
    .line 526
    if-le v2, v4, :cond_1c

    .line 527
    .line 528
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->access$900(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    if-ge v2, v4, :cond_1c

    .line 533
    .line 534
    int-to-long v4, v2

    .line 535
    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 536
    .line 537
    .line 538
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 539
    .line 540
    aget-object v2, v2, v3

    .line 541
    .line 542
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    if-eqz v2, :cond_1b

    .line 547
    .line 548
    invoke-direct {v0, v1, v3}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 549
    .line 550
    .line 551
    goto :goto_c

    .line 552
    :cond_1b
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 553
    .line 554
    const/4 v3, 0x5

    .line 555
    aget-object v2, v2, v3

    .line 556
    .line 557
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 558
    .line 559
    .line 560
    move-result v2

    .line 561
    if-eqz v2, :cond_1c

    .line 562
    .line 563
    invoke-direct {v0, v1, v3}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 564
    .line 565
    .line 566
    :cond_1c
    :goto_c
    return-void
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p2

    .line 4
    .line 5
    const-string v1, "ImageLength"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 14
    .line 15
    aget-object v1, v1, p2

    .line 16
    .line 17
    const-string v2, "ImageWidth"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 30
    .line 31
    aget-object v0, v0, p2

    .line 32
    .line 33
    const-string v1, "JPEGInterchangeFormat"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-direct {p0, p1, v0, p2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    .line 7
    .line 8
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    invoke-direct {p1, p2, v1}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const-string v1, "Invalid marker"

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-ne p2, v2, :cond_b

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/16 v3, -0x28

    .line 30
    .line 31
    if-ne p2, v3, :cond_a

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 37
    .line 38
    .line 39
    const/16 p2, -0x1f

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x6

    .line 45
    invoke-direct {p0, p1, v3}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;I)I

    .line 46
    .line 47
    .line 48
    const/16 v4, 0x1000

    .line 49
    .line 50
    new-array v5, v4, [B

    .line 51
    .line 52
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-ne v6, v2, :cond_9

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const/16 v7, -0x27

    .line 63
    .line 64
    if-eq v6, v7, :cond_8

    .line 65
    .line 66
    const/16 v7, -0x26

    .line 67
    .line 68
    if-eq v6, v7, :cond_8

    .line 69
    .line 70
    const-string v7, "Invalid length"

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    if-eq v6, p2, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-virtual {p1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v6, v6, -0x2

    .line 89
    .line 90
    if-ltz v6, :cond_1

    .line 91
    .line 92
    :goto_1
    if-lez v6, :cond_0

    .line 93
    .line 94
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-virtual {v0, v5, v8, v7}, Ljava/io/DataInputStream;->read([BII)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-ltz v7, :cond_0

    .line 103
    .line 104
    invoke-virtual {p1, v5, v8, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 105
    .line 106
    .line 107
    sub-int/2addr v6, v7

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 110
    .line 111
    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    add-int/lit8 v9, v9, -0x2

    .line 120
    .line 121
    if-ltz v9, :cond_7

    .line 122
    .line 123
    new-array v10, v3, [B

    .line 124
    .line 125
    if-lt v9, v3, :cond_5

    .line 126
    .line 127
    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->read([B)I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-ne v11, v3, :cond_4

    .line 132
    .line 133
    sget-object v11, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 134
    .line 135
    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-eqz v11, :cond_5

    .line 140
    .line 141
    add-int/lit8 v9, v9, -0x6

    .line 142
    .line 143
    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-ne v6, v9, :cond_3

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 151
    .line 152
    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 157
    .line 158
    const-string p2, "Invalid exif"

    .line 159
    .line 160
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_5
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 168
    .line 169
    .line 170
    add-int/lit8 v6, v9, 0x2

    .line 171
    .line 172
    invoke-virtual {p1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 173
    .line 174
    .line 175
    if-lt v9, v3, :cond_6

    .line 176
    .line 177
    add-int/lit8 v9, v9, -0x6

    .line 178
    .line 179
    invoke-virtual {p1, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 180
    .line 181
    .line 182
    :cond_6
    :goto_2
    if-lez v9, :cond_0

    .line 183
    .line 184
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    invoke-virtual {v0, v5, v8, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-ltz v6, :cond_0

    .line 193
    .line 194
    invoke-virtual {p1, v5, v8, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 195
    .line 196
    .line 197
    sub-int/2addr v9, v6

    .line 198
    goto :goto_2

    .line 199
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 200
    .line 201
    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1

    .line 205
    :cond_8
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 209
    .line 210
    .line 211
    invoke-static {v0, p1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 216
    .line 217
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 222
    .line 223
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p1

    .line 227
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 228
    .line 229
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw p1
.end method

.method private setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    const-string v1, "Compression"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x7

    .line 31
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return-void
.end method

.method private swapBasedOnImageSize(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 12
    .line 13
    aget-object v0, v0, p2

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 23
    .line 24
    aget-object v0, v0, p1

    .line 25
    .line 26
    const-string v1, "ImageLength"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 33
    .line 34
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 35
    .line 36
    aget-object v2, v2, p1

    .line 37
    .line 38
    const-string v3, "ImageWidth"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 45
    .line 46
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 47
    .line 48
    aget-object v4, v4, p2

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 55
    .line 56
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 57
    .line 58
    aget-object v4, v4, p2

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-eqz v1, :cond_3

    .line 72
    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    invoke-virtual {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget-object v4, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ge v0, v1, :cond_3

    .line 101
    .line 102
    if-ge v2, v3, :cond_3

    .line 103
    .line 104
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 105
    .line 106
    aget-object v1, v0, p1

    .line 107
    .line 108
    aget-object v2, v0, p2

    .line 109
    .line 110
    aput-object v2, v0, p1

    .line 111
    .line 112
    aput-object v1, v0, p2

    .line 113
    .line 114
    :cond_3
    :goto_0
    return-void
.end method

.method private updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v0, v2, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 9
    .line 10
    aget-object v2, v2, v0

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 19
    .line 20
    aget-object v1, v1, v0

    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v1
.end method

.method private updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, v0, p2

    .line 4
    .line 5
    const-string v1, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 14
    .line 15
    aget-object v1, v1, p2

    .line 16
    .line 17
    const-string v2, "SensorTopBorder"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 24
    .line 25
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 26
    .line 27
    aget-object v2, v2, p2

    .line 28
    .line 29
    const-string v3, "SensorLeftBorder"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 36
    .line 37
    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 38
    .line 39
    aget-object v3, v3, p2

    .line 40
    .line 41
    const-string v4, "SensorBottomBorder"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 48
    .line 49
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 50
    .line 51
    aget-object v4, v4, p2

    .line 52
    .line 53
    const-string v5, "SensorRightBorder"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    .line 60
    .line 61
    const-string v5, "ImageLength"

    .line 62
    .line 63
    const-string v6, "ImageWidth"

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget p1, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    const/4 v2, 0x1

    .line 71
    const/4 v3, 0x0

    .line 72
    if-ne p1, v1, :cond_0

    .line 73
    .line 74
    iget-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 75
    .line 76
    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, [Landroid/media/ExifInterface$Rational;

    .line 81
    .line 82
    aget-object v0, p1, v3

    .line 83
    .line 84
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 85
    .line 86
    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    aget-object p1, p1, v2

    .line 91
    .line 92
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 93
    .line 94
    invoke-static {p1, v1}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 100
    .line 101
    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, [I

    .line 106
    .line 107
    aget v0, p1, v3

    .line 108
    .line 109
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 110
    .line 111
    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    aget p1, p1, v2

    .line 116
    .line 117
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 118
    .line 119
    invoke-static {p1, v1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 124
    .line 125
    aget-object v1, v1, p2

    .line 126
    .line 127
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 131
    .line 132
    aget-object p2, v0, p2

    .line 133
    .line 134
    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_1
    if-eqz v1, :cond_2

    .line 139
    .line 140
    if-eqz v2, :cond_2

    .line 141
    .line 142
    if-eqz v3, :cond_2

    .line 143
    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    iget-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 147
    .line 148
    invoke-virtual {v1, p1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iget-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 153
    .line 154
    invoke-virtual {v3, v0}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 159
    .line 160
    invoke-virtual {v4, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-le v0, p1, :cond_3

    .line 171
    .line 172
    if-le v1, v2, :cond_3

    .line 173
    .line 174
    sub-int/2addr v0, p1

    .line 175
    sub-int/2addr v1, v2

    .line 176
    iget-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 177
    .line 178
    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 183
    .line 184
    invoke-static {v1, v0}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 189
    .line 190
    aget-object v1, v1, p2

    .line 191
    .line 192
    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 196
    .line 197
    aget-object p1, p1, p2

    .line 198
    .line 199
    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/ExifInterface;->retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 204
    .line 205
    .line 206
    :cond_3
    :goto_1
    return-void
.end method

.method private validateImages(Ljava/io/InputStream;)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {p0, p1, v1}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aget-object v2, v2, v3

    .line 17
    .line 18
    const-string v4, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    .line 25
    .line 26
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 27
    .line 28
    aget-object v3, v4, v3

    .line 29
    .line 30
    const-string v4, "PixelYDimension"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 43
    .line 44
    aget-object v4, v4, p1

    .line 45
    .line 46
    const-string v5, "ImageWidth"

    .line 47
    .line 48
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 52
    .line 53
    aget-object p1, v2, p1

    .line 54
    .line 55
    const-string v2, "ImageLength"

    .line 56
    .line 57
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 61
    .line 62
    aget-object p1, p1, v1

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 71
    .line 72
    aget-object p1, p1, v0

    .line 73
    .line 74
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 81
    .line 82
    aget-object v2, p1, v0

    .line 83
    .line 84
    aput-object v2, p1, v1

    .line 85
    .line 86
    new-instance v2, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    aput-object v2, p1, v0

    .line 92
    .line 93
    :cond_1
    iget-object p1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 94
    .line 95
    aget-object p1, p1, v1

    .line 96
    .line 97
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_2

    .line 102
    .line 103
    const-string p1, "ExifInterface"

    .line 104
    .line 105
    const-string v0, "No image meets the size requirements of a thumbnail image."

    .line 106
    .line 107
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method

.method private writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;I)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    new-array v3, v3, [I

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    new-array v2, v2, [I

    .line 12
    .line 13
    sget-object v4, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 14
    .line 15
    array-length v5, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    move v7, v6

    .line 18
    :goto_0
    if-ge v7, v5, :cond_0

    .line 19
    .line 20
    aget-object v8, v4, v7

    .line 21
    .line 22
    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v0, v8}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v7, v7, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v4, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 31
    .line 32
    iget-object v4, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v0, v4}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v4, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 38
    .line 39
    iget-object v4, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v0, v4}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move v4, v6

    .line 45
    :goto_1
    sget-object v5, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 46
    .line 47
    array-length v5, v5

    .line 48
    if-ge v4, v5, :cond_3

    .line 49
    .line 50
    iget-object v5, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 51
    .line 52
    aget-object v5, v5, v4

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    array-length v7, v5

    .line 63
    move v8, v6

    .line 64
    :goto_2
    if-ge v8, v7, :cond_2

    .line 65
    .line 66
    aget-object v9, v5, v8

    .line 67
    .line 68
    check-cast v9, Ljava/util/Map$Entry;

    .line 69
    .line 70
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    if-nez v10, :cond_1

    .line 75
    .line 76
    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 77
    .line 78
    aget-object v10, v10, v4

    .line 79
    .line 80
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    aget-object v4, v4, v5

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    const-wide/16 v7, 0x0

    .line 103
    .line 104
    if-nez v4, :cond_4

    .line 105
    .line 106
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 107
    .line 108
    aget-object v4, v4, v6

    .line 109
    .line 110
    sget-object v9, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 111
    .line 112
    aget-object v9, v9, v5

    .line 113
    .line 114
    iget-object v9, v9, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 117
    .line 118
    invoke-static {v7, v8, v10}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 126
    .line 127
    const/4 v9, 0x2

    .line 128
    aget-object v4, v4, v9

    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_5

    .line 135
    .line 136
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 137
    .line 138
    aget-object v4, v4, v6

    .line 139
    .line 140
    sget-object v10, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 141
    .line 142
    aget-object v10, v10, v9

    .line 143
    .line 144
    iget-object v10, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 147
    .line 148
    invoke-static {v7, v8, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_5
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 156
    .line 157
    const/4 v10, 0x3

    .line 158
    aget-object v4, v4, v10

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-nez v4, :cond_6

    .line 165
    .line 166
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 167
    .line 168
    aget-object v4, v4, v5

    .line 169
    .line 170
    sget-object v11, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 171
    .line 172
    aget-object v11, v11, v10

    .line 173
    .line 174
    iget-object v11, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v12, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 177
    .line 178
    invoke-static {v7, v8, v12}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :cond_6
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 186
    .line 187
    const/4 v11, 0x4

    .line 188
    if-eqz v4, :cond_7

    .line 189
    .line 190
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 191
    .line 192
    aget-object v4, v4, v11

    .line 193
    .line 194
    sget-object v12, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 195
    .line 196
    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 199
    .line 200
    invoke-static {v7, v8, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 208
    .line 209
    aget-object v4, v4, v11

    .line 210
    .line 211
    sget-object v12, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 212
    .line 213
    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 214
    .line 215
    iget v13, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 216
    .line 217
    int-to-long v13, v13

    .line 218
    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 219
    .line 220
    invoke-static {v13, v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    :cond_7
    move v4, v6

    .line 228
    :goto_3
    sget-object v12, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 229
    .line 230
    array-length v12, v12

    .line 231
    if-ge v4, v12, :cond_a

    .line 232
    .line 233
    iget-object v12, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 234
    .line 235
    aget-object v12, v12, v4

    .line 236
    .line 237
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    move v13, v6

    .line 246
    :cond_8
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v14

    .line 250
    if-eqz v14, :cond_9

    .line 251
    .line 252
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v14

    .line 256
    check-cast v14, Ljava/util/Map$Entry;

    .line 257
    .line 258
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v14

    .line 262
    check-cast v14, Landroid/media/ExifInterface$ExifAttribute;

    .line 263
    .line 264
    invoke-virtual {v14}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    if-le v14, v11, :cond_8

    .line 269
    .line 270
    add-int/2addr v13, v14

    .line 271
    goto :goto_4

    .line 272
    :cond_9
    aget v12, v2, v4

    .line 273
    .line 274
    add-int/2addr v12, v13

    .line 275
    aput v12, v2, v4

    .line 276
    .line 277
    add-int/lit8 v4, v4, 0x1

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_a
    const/16 v4, 0x8

    .line 281
    .line 282
    move v13, v4

    .line 283
    move v12, v6

    .line 284
    :goto_5
    sget-object v14, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 285
    .line 286
    array-length v14, v14

    .line 287
    if-ge v12, v14, :cond_c

    .line 288
    .line 289
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 290
    .line 291
    aget-object v14, v14, v12

    .line 292
    .line 293
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    if-nez v14, :cond_b

    .line 298
    .line 299
    aput v13, v3, v12

    .line 300
    .line 301
    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 302
    .line 303
    aget-object v14, v14, v12

    .line 304
    .line 305
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    mul-int/lit8 v14, v14, 0xc

    .line 310
    .line 311
    add-int/2addr v14, v9

    .line 312
    add-int/2addr v14, v11

    .line 313
    aget v15, v2, v12

    .line 314
    .line 315
    add-int/2addr v14, v15

    .line 316
    add-int/2addr v13, v14

    .line 317
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_c
    iget-boolean v2, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 321
    .line 322
    if-eqz v2, :cond_d

    .line 323
    .line 324
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 325
    .line 326
    aget-object v2, v2, v11

    .line 327
    .line 328
    sget-object v12, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 329
    .line 330
    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 331
    .line 332
    int-to-long v14, v13

    .line 333
    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 334
    .line 335
    invoke-static {v14, v15, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-virtual {v2, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    add-int v2, p2, v13

    .line 343
    .line 344
    iput v2, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 345
    .line 346
    iget v2, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 347
    .line 348
    add-int/2addr v13, v2

    .line 349
    :cond_d
    add-int/2addr v13, v4

    .line 350
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 351
    .line 352
    aget-object v2, v2, v5

    .line 353
    .line 354
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-nez v2, :cond_e

    .line 359
    .line 360
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 361
    .line 362
    aget-object v2, v2, v6

    .line 363
    .line 364
    sget-object v4, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 365
    .line 366
    aget-object v4, v4, v5

    .line 367
    .line 368
    iget-object v4, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 369
    .line 370
    aget v7, v3, v5

    .line 371
    .line 372
    int-to-long v7, v7

    .line 373
    iget-object v12, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 374
    .line 375
    invoke-static {v7, v8, v12}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    :cond_e
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 383
    .line 384
    aget-object v2, v2, v9

    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-nez v2, :cond_f

    .line 391
    .line 392
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 393
    .line 394
    aget-object v2, v2, v6

    .line 395
    .line 396
    sget-object v4, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 397
    .line 398
    aget-object v4, v4, v9

    .line 399
    .line 400
    iget-object v4, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 401
    .line 402
    aget v7, v3, v9

    .line 403
    .line 404
    int-to-long v7, v7

    .line 405
    iget-object v12, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 406
    .line 407
    invoke-static {v7, v8, v12}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    :cond_f
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 415
    .line 416
    aget-object v2, v2, v10

    .line 417
    .line 418
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-nez v2, :cond_10

    .line 423
    .line 424
    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 425
    .line 426
    aget-object v2, v2, v5

    .line 427
    .line 428
    sget-object v4, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 429
    .line 430
    aget-object v4, v4, v10

    .line 431
    .line 432
    iget-object v4, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 433
    .line 434
    aget v5, v3, v10

    .line 435
    .line 436
    int-to-long v7, v5

    .line 437
    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 438
    .line 439
    invoke-static {v7, v8, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    :cond_10
    invoke-virtual {v1, v13}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 447
    .line 448
    .line 449
    sget-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 450
    .line 451
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 452
    .line 453
    .line 454
    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 455
    .line 456
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 457
    .line 458
    if-ne v2, v4, :cond_11

    .line 459
    .line 460
    const/16 v2, 0x4d4d

    .line 461
    .line 462
    goto :goto_6

    .line 463
    :cond_11
    const/16 v2, 0x4949

    .line 464
    .line 465
    :goto_6
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 466
    .line 467
    .line 468
    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 469
    .line 470
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 471
    .line 472
    .line 473
    const/16 v2, 0x2a

    .line 474
    .line 475
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 476
    .line 477
    .line 478
    const-wide/16 v4, 0x8

    .line 479
    .line 480
    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 481
    .line 482
    .line 483
    move v2, v6

    .line 484
    :goto_7
    sget-object v4, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 485
    .line 486
    array-length v4, v4

    .line 487
    if-ge v2, v4, :cond_19

    .line 488
    .line 489
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 490
    .line 491
    aget-object v4, v4, v2

    .line 492
    .line 493
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    if-nez v4, :cond_17

    .line 498
    .line 499
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 500
    .line 501
    aget-object v4, v4, v2

    .line 502
    .line 503
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 508
    .line 509
    .line 510
    aget v4, v3, v2

    .line 511
    .line 512
    add-int/2addr v4, v9

    .line 513
    iget-object v5, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 514
    .line 515
    aget-object v5, v5, v2

    .line 516
    .line 517
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    .line 518
    .line 519
    .line 520
    move-result v5

    .line 521
    mul-int/lit8 v5, v5, 0xc

    .line 522
    .line 523
    add-int/2addr v5, v4

    .line 524
    add-int/2addr v5, v11

    .line 525
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 526
    .line 527
    aget-object v4, v4, v2

    .line 528
    .line 529
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    :cond_12
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 538
    .line 539
    .line 540
    move-result v7

    .line 541
    if-eqz v7, :cond_14

    .line 542
    .line 543
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    check-cast v7, Ljava/util/Map$Entry;

    .line 548
    .line 549
    sget-object v8, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 550
    .line 551
    aget-object v8, v8, v2

    .line 552
    .line 553
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v10

    .line 557
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v8

    .line 561
    check-cast v8, Landroid/media/ExifInterface$ExifTag;

    .line 562
    .line 563
    iget v8, v8, Landroid/media/ExifInterface$ExifTag;->number:I

    .line 564
    .line 565
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v7

    .line 569
    check-cast v7, Landroid/media/ExifInterface$ExifAttribute;

    .line 570
    .line 571
    invoke-virtual {v7}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    .line 572
    .line 573
    .line 574
    move-result v10

    .line 575
    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 576
    .line 577
    .line 578
    iget v8, v7, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 579
    .line 580
    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 581
    .line 582
    .line 583
    iget v8, v7, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 584
    .line 585
    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 586
    .line 587
    .line 588
    if-le v10, v11, :cond_13

    .line 589
    .line 590
    int-to-long v7, v5

    .line 591
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 592
    .line 593
    .line 594
    add-int/2addr v5, v10

    .line 595
    goto :goto_8

    .line 596
    :cond_13
    iget-object v7, v7, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 597
    .line 598
    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 599
    .line 600
    .line 601
    if-ge v10, v11, :cond_12

    .line 602
    .line 603
    :goto_9
    if-ge v10, v11, :cond_12

    .line 604
    .line 605
    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 606
    .line 607
    .line 608
    add-int/lit8 v10, v10, 0x1

    .line 609
    .line 610
    goto :goto_9

    .line 611
    :cond_14
    if-nez v2, :cond_15

    .line 612
    .line 613
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 614
    .line 615
    aget-object v4, v4, v11

    .line 616
    .line 617
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 618
    .line 619
    .line 620
    move-result v4

    .line 621
    if-nez v4, :cond_15

    .line 622
    .line 623
    aget v4, v3, v11

    .line 624
    .line 625
    int-to-long v4, v4

    .line 626
    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 627
    .line 628
    .line 629
    const-wide/16 v4, 0x0

    .line 630
    .line 631
    goto :goto_a

    .line 632
    :cond_15
    const-wide/16 v4, 0x0

    .line 633
    .line 634
    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 635
    .line 636
    .line 637
    :goto_a
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 638
    .line 639
    aget-object v7, v7, v2

    .line 640
    .line 641
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 642
    .line 643
    .line 644
    move-result-object v7

    .line 645
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 646
    .line 647
    .line 648
    move-result-object v7

    .line 649
    :cond_16
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 650
    .line 651
    .line 652
    move-result v8

    .line 653
    if-eqz v8, :cond_18

    .line 654
    .line 655
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v8

    .line 659
    check-cast v8, Ljava/util/Map$Entry;

    .line 660
    .line 661
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v8

    .line 665
    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    .line 666
    .line 667
    iget-object v8, v8, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 668
    .line 669
    array-length v10, v8

    .line 670
    if-le v10, v11, :cond_16

    .line 671
    .line 672
    array-length v10, v8

    .line 673
    invoke-virtual {v1, v8, v6, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 674
    .line 675
    .line 676
    goto :goto_b

    .line 677
    :cond_17
    const-wide/16 v4, 0x0

    .line 678
    .line 679
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 680
    .line 681
    goto/16 :goto_7

    .line 682
    .line 683
    :cond_19
    iget-boolean v2, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 684
    .line 685
    if-eqz v2, :cond_1a

    .line 686
    .line 687
    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 692
    .line 693
    .line 694
    :cond_1a
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 695
    .line 696
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 697
    .line 698
    .line 699
    return v13
.end method


# virtual methods
.method public getAltitude(D)D
    .locals 6

    .line 1
    const-string v0, "GPSAltitude"

    .line 2
    .line 3
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-string v2, "GPSAltitudeRef"

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmpl-double v4, v0, v4

    .line 19
    .line 20
    if-ltz v4, :cond_1

    .line 21
    .line 22
    if-ltz v2, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    if-ne v2, p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v3, p1

    .line 29
    :goto_0
    int-to-double p1, v3

    .line 30
    mul-double/2addr v0, p1

    .line 31
    return-wide v0

    .line 32
    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    sget-object v2, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget p1, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    if-eq p1, v2, :cond_1

    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    if-eq p1, v2, :cond_1

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    iget-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, [Landroid/media/ExifInterface$Rational;

    .line 48
    .line 49
    array-length v0, p1

    .line 50
    const/4 v2, 0x3

    .line 51
    if-eq v0, v2, :cond_2

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    aget-object v2, p1, v1

    .line 58
    .line 59
    iget-wide v3, v2, Landroid/media/ExifInterface$Rational;->numerator:J

    .line 60
    .line 61
    long-to-float v3, v3

    .line 62
    iget-wide v4, v2, Landroid/media/ExifInterface$Rational;->denominator:J

    .line 63
    .line 64
    long-to-float v2, v4

    .line 65
    div-float/2addr v3, v2

    .line 66
    float-to-int v2, v3

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    aput-object v2, v0, v1

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    aget-object v2, p1, v1

    .line 75
    .line 76
    iget-wide v3, v2, Landroid/media/ExifInterface$Rational;->numerator:J

    .line 77
    .line 78
    long-to-float v3, v3

    .line 79
    iget-wide v4, v2, Landroid/media/ExifInterface$Rational;->denominator:J

    .line 80
    .line 81
    long-to-float v2, v4

    .line 82
    div-float/2addr v3, v2

    .line 83
    float-to-int v2, v3

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    aput-object v2, v0, v1

    .line 89
    .line 90
    const/4 v1, 0x2

    .line 91
    aget-object p1, p1, v1

    .line 92
    .line 93
    iget-wide v2, p1, Landroid/media/ExifInterface$Rational;->numerator:J

    .line 94
    .line 95
    long-to-float v2, v2

    .line 96
    iget-wide v3, p1, Landroid/media/ExifInterface$Rational;->denominator:J

    .line 97
    .line 98
    long-to-float p1, v3

    .line 99
    div-float/2addr v2, p1

    .line 100
    float-to-int p1, v2

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    aput-object p1, v0, v1

    .line 106
    .line 107
    const-string p1, "%02d:%02d:%02d"

    .line 108
    .line 109
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    return-object p1

    .line 114
    :cond_3
    :try_start_0
    iget-object p1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-object p1

    .line 125
    :catch_0
    :cond_4
    return-object v1
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-wide p2

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-wide p1

    .line 15
    :catch_0
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return p2

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return p1

    .line 15
    :catch_0
    return p2
.end method

.method public getDateTime()J
    .locals 9

    .line 1
    const-string v0, "DateTime"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    sget-object v3, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v3, Ljava/text/ParsePosition;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    sget-object v4, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    invoke-virtual {v4, v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    return-wide v1

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    const-string v0, "SubSecTime"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    :goto_0
    const-wide/16 v7, 0x3e8

    .line 56
    .line 57
    cmp-long v0, v5, v7

    .line 58
    .line 59
    if-lez v0, :cond_2

    .line 60
    .line 61
    const-wide/16 v7, 0xa

    .line 62
    .line 63
    div-long/2addr v5, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    add-long/2addr v3, v5

    .line 66
    :catch_0
    :cond_3
    return-wide v3

    .line 67
    :catch_1
    :cond_4
    :goto_1
    return-wide v1
.end method

.method public getGpsDateTime()J
    .locals 6

    .line 1
    const-string v0, "GPSDateStamp"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "GPSTimeStamp"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    sget-object v4, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x20

    .line 51
    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Ljava/text/ParsePosition;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    sget-object v4, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 69
    .line 70
    invoke-virtual {v4, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    return-wide v2

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-wide v0

    .line 82
    :catch_0
    :cond_2
    :goto_0
    return-wide v2
.end method

.method public getLatLong([F)Z
    .locals 5

    .line 1
    const-string v0, "GPSLatitude"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "GPSLatitudeRef"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "GPSLongitude"

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "GPSLongitudeRef"

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    :try_start_0
    invoke-static {v0, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    aput v0, p1, v4

    .line 39
    .line 40
    invoke-static {v2, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    aput v0, p1, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    return v1

    .line 48
    :catch_0
    :cond_0
    return v4
.end method

.method public getThumbnail()[B
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 16
    .line 17
    :cond_1
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 18
    .line 19
    const/4 v2, 0x6

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v0, v2, :cond_5

    .line 22
    .line 23
    const/4 v2, 0x7

    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/4 v2, 0x1

    .line 28
    if-ne v0, v2, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 31
    .line 32
    array-length v0, v0

    .line 33
    div-int/lit8 v0, v0, 0x3

    .line 34
    .line 35
    new-array v2, v0, [I

    .line 36
    .line 37
    move v4, v3

    .line 38
    :goto_0
    if-ge v4, v0, :cond_3

    .line 39
    .line 40
    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 41
    .line 42
    mul-int/lit8 v6, v4, 0x3

    .line 43
    .line 44
    aget-byte v7, v5, v6

    .line 45
    .line 46
    shl-int/lit8 v7, v7, 0x10

    .line 47
    .line 48
    add-int/2addr v7, v3

    .line 49
    add-int/lit8 v8, v6, 0x1

    .line 50
    .line 51
    aget-byte v8, v5, v8

    .line 52
    .line 53
    shl-int/lit8 v8, v8, 0x8

    .line 54
    .line 55
    add-int/2addr v7, v8

    .line 56
    add-int/lit8 v6, v6, 0x2

    .line 57
    .line 58
    aget-byte v5, v5, v6

    .line 59
    .line 60
    add-int/2addr v7, v5

    .line 61
    aput v7, v2, v4

    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 67
    .line 68
    const/4 v3, 0x4

    .line 69
    aget-object v0, v0, v3

    .line 70
    .line 71
    const-string v4, "ImageLength"

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    .line 78
    .line 79
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 80
    .line 81
    aget-object v3, v4, v3

    .line 82
    .line 83
    const-string v4, "ImageWidth"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 102
    .line 103
    invoke-virtual {v3, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 108
    .line 109
    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :cond_4
    return-object v1

    .line 115
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 116
    .line 117
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 118
    .line 119
    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 7

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->markSupported()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->reset()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string v3, "Cannot read thumbnail from inputstream without mark/reset support"

    .line 29
    .line 30
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :catch_0
    move-exception v3

    .line 38
    goto :goto_2

    .line 39
    :catch_1
    move-exception v3

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    new-instance v1, Ljava/io/FileInputStream;

    .line 46
    .line 47
    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    iget-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    invoke-static {v1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    .line 62
    .line 63
    const-wide/16 v4, 0x0

    .line 64
    .line 65
    invoke-static {v1, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 66
    .line 67
    .line 68
    new-instance v3, Ljava/io/FileInputStream;

    .line 69
    .line 70
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    move-object v1, v3

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    move-object v1, v2

    .line 76
    :goto_0
    if-eqz v1, :cond_8

    .line 77
    .line 78
    :try_start_3
    iget v3, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 79
    .line 80
    int-to-long v3, v3

    .line 81
    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    .line 87
    int-to-long v5, v5

    .line 88
    cmp-long v3, v3, v5

    .line 89
    .line 90
    const-string v4, "Corrupted image"

    .line 91
    .line 92
    if-nez v3, :cond_7

    .line 93
    .line 94
    :try_start_4
    iget v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 95
    .line 96
    new-array v3, v3, [B

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 103
    .line 104
    if-ne v5, v6, :cond_6

    .line 105
    .line 106
    iput-object v3, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    .line 108
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 109
    .line 110
    .line 111
    return-object v3

    .line 112
    :cond_6
    :try_start_5
    new-instance v3, Ljava/io/IOException;

    .line 113
    .line 114
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v3

    .line 118
    :cond_7
    new-instance v3, Ljava/io/IOException;

    .line 119
    .line 120
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v3

    .line 124
    :cond_8
    new-instance v3, Ljava/io/FileNotFoundException;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    .line 127
    .line 128
    .line 129
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto :goto_3

    .line 132
    :catch_2
    move-exception v3

    .line 133
    goto :goto_1

    .line 134
    :catch_3
    move-exception v3

    .line 135
    :goto_1
    move-object v1, v2

    .line 136
    :goto_2
    :try_start_6
    const-string v4, "Encountered exception while getting thumbnail"

    .line 137
    .line 138
    invoke-static {v0, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 142
    .line 143
    .line 144
    return-object v2

    .line 145
    :catchall_1
    move-exception v0

    .line 146
    move-object v2, v1

    .line 147
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 148
    .line 149
    .line 150
    throw v0
.end method

.method public getThumbnailRange()[J
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 11
    .line 12
    int-to-long v1, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    aput-wide v1, v0, v3

    .line 15
    .line 16
    iget v1, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    .line 17
    .line 18
    int-to-long v1, v1

    .line 19
    const/4 v3, 0x1

    .line 20
    aput-wide v1, v0, v3

    .line 21
    .line 22
    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isThumbnailCompressed()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    if-eq v0, v2, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x7

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    return v1

    .line 17
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method public saveAttributes()V
    .locals 8

    .line 1
    const-string v0, "Could\'nt rename to "

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-ne v1, v2, :cond_7

    .line 11
    .line 12
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    .line 13
    .line 14
    if-nez v1, :cond_6

    .line 15
    .line 16
    iget-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :try_start_0
    iget-object v2, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    new-instance v2, Ljava/io/File;

    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v6, ".tmp"

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v5, Ljava/io/File;

    .line 62
    .line 63
    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    move-object v0, v1

    .line 75
    move-object v5, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance v3, Ljava/io/IOException;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v3

    .line 99
    :cond_2
    iget-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    const-string/jumbo v0, "temp"

    .line 104
    .line 105
    .line 106
    const-string/jumbo v2, "jpg"

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iget-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 114
    .line 115
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    .line 116
    .line 117
    invoke-static {v0, v3, v4, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 118
    .line 119
    .line 120
    new-instance v0, Ljava/io/FileInputStream;

    .line 121
    .line 122
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 123
    .line 124
    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 125
    .line 126
    .line 127
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    .line 128
    .line 129
    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    .line 131
    .line 132
    :try_start_2
    invoke-static {v0, v5}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    .line 137
    move-object v7, v1

    .line 138
    move-object v1, v0

    .line 139
    move-object v0, v7

    .line 140
    goto/16 :goto_5

    .line 141
    .line 142
    :catch_0
    move-exception v1

    .line 143
    move-object v7, v1

    .line 144
    move-object v1, v0

    .line 145
    move-object v0, v7

    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :catchall_1
    move-exception v2

    .line 149
    move-object v5, v1

    .line 150
    move-object v1, v0

    .line 151
    move-object v0, v2

    .line 152
    goto/16 :goto_5

    .line 153
    .line 154
    :catch_1
    move-exception v2

    .line 155
    move-object v5, v1

    .line 156
    move-object v1, v0

    .line 157
    move-object v0, v2

    .line 158
    goto/16 :goto_4

    .line 159
    .line 160
    :cond_3
    move-object v0, v1

    .line 161
    move-object v2, v0

    .line 162
    move-object v5, v2

    .line 163
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 167
    .line 168
    .line 169
    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    .line 170
    .line 171
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 172
    .line 173
    .line 174
    :try_start_4
    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 175
    .line 176
    if-eqz v5, :cond_4

    .line 177
    .line 178
    new-instance v3, Ljava/io/FileOutputStream;

    .line 179
    .line 180
    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 181
    .line 182
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 187
    .line 188
    if-eqz v5, :cond_5

    .line 189
    .line 190
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    .line 191
    .line 192
    invoke-static {v5, v3, v4, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 193
    .line 194
    .line 195
    new-instance v3, Ljava/io/FileOutputStream;

    .line 196
    .line 197
    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 198
    .line 199
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_5
    move-object v3, v1

    .line 204
    :goto_1
    :try_start_5
    invoke-direct {p0, v0, v3}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 205
    .line 206
    .line 207
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 214
    .line 215
    .line 216
    iput-object v1, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 217
    .line 218
    return-void

    .line 219
    :catchall_2
    move-exception v1

    .line 220
    move-object v7, v1

    .line 221
    move-object v1, v0

    .line 222
    move-object v0, v7

    .line 223
    goto :goto_3

    .line 224
    :catch_2
    move-exception v1

    .line 225
    move-object v7, v1

    .line 226
    move-object v1, v0

    .line 227
    move-object v0, v7

    .line 228
    goto :goto_2

    .line 229
    :catchall_3
    move-exception v3

    .line 230
    move-object v7, v1

    .line 231
    move-object v1, v0

    .line 232
    move-object v0, v3

    .line 233
    move-object v3, v7

    .line 234
    goto :goto_3

    .line 235
    :catch_3
    move-exception v3

    .line 236
    move-object v7, v1

    .line 237
    move-object v1, v0

    .line 238
    move-object v0, v3

    .line 239
    move-object v3, v7

    .line 240
    goto :goto_2

    .line 241
    :catchall_4
    move-exception v3

    .line 242
    move-object v0, v3

    .line 243
    move-object v3, v1

    .line 244
    goto :goto_3

    .line 245
    :catch_4
    move-exception v3

    .line 246
    move-object v0, v3

    .line 247
    move-object v3, v1

    .line 248
    :goto_2
    :try_start_6
    invoke-static {v0}, Landroid/app/backup/a;->p(Landroid/system/ErrnoException;)Ljava/io/IOException;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 253
    :catchall_5
    move-exception v0

    .line 254
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 261
    .line 262
    .line 263
    throw v0

    .line 264
    :catchall_6
    move-exception v0

    .line 265
    move-object v5, v1

    .line 266
    goto :goto_5

    .line 267
    :catch_5
    move-exception v0

    .line 268
    move-object v5, v1

    .line 269
    :goto_4
    :try_start_7
    invoke-static {v0}, Landroid/app/backup/a;->p(Landroid/system/ErrnoException;)Ljava/io/IOException;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 274
    :catchall_7
    move-exception v0

    .line 275
    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 279
    .line 280
    .line 281
    throw v0

    .line 282
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 283
    .line 284
    const-string v1, "ExifInterface does not support saving attributes for the current input."

    .line 285
    .line 286
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 291
    .line 292
    const-string v1, "ExifInterface only supports saving attributes on JPEG formats."

    .line 293
    .line 294
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const-string v4, "ExifInterface"

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    sget-object v6, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-eqz v6, :cond_2

    .line 20
    .line 21
    const-string v6, "GPSTimeStamp"

    .line 22
    .line 23
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const-string v7, " : "

    .line 28
    .line 29
    const-string v8, "Invalid value for "

    .line 30
    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    sget-object v6, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 34
    .line 35
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-nez v9, :cond_0

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v7, "/1,"

    .line 84
    .line 85
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/4 v7, 0x3

    .line 103
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v6, "/1"

    .line 115
    .line 116
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 125
    .line 126
    .line 127
    move-result-wide v9

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-wide v11, 0x40c3880000000000L    # 10000.0

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    mul-double/2addr v9, v11

    .line 139
    double-to-long v9, v9

    .line 140
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v9, "/10000"

    .line 144
    .line 145
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 153
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .line 176
    move v7, v6

    .line 177
    :goto_1
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 178
    .line 179
    array-length v8, v8

    .line 180
    if-ge v7, v8, :cond_14

    .line 181
    .line 182
    const/4 v8, 0x4

    .line 183
    if-ne v7, v8, :cond_3

    .line 184
    .line 185
    iget-boolean v8, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 186
    .line 187
    if-nez v8, :cond_3

    .line 188
    .line 189
    goto/16 :goto_d

    .line 190
    .line 191
    :cond_3
    sget-object v8, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 192
    .line 193
    aget-object v8, v8, v7

    .line 194
    .line 195
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    if-eqz v8, :cond_13

    .line 200
    .line 201
    if-nez v2, :cond_4

    .line 202
    .line 203
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 204
    .line 205
    aget-object v8, v8, v7

    .line 206
    .line 207
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    goto/16 :goto_d

    .line 211
    .line 212
    :cond_4
    check-cast v8, Landroid/media/ExifInterface$ExifTag;

    .line 213
    .line 214
    invoke-static {v2}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 219
    .line 220
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v11, Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    if-eq v10, v11, :cond_c

    .line 229
    .line 230
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 231
    .line 232
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v11, Ljava/lang/Integer;

    .line 235
    .line 236
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    if-ne v10, v11, :cond_5

    .line 241
    .line 242
    goto/16 :goto_5

    .line 243
    .line 244
    :cond_5
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 245
    .line 246
    const/4 v11, -0x1

    .line 247
    if-eq v10, v11, :cond_7

    .line 248
    .line 249
    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v12, Ljava/lang/Integer;

    .line 252
    .line 253
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-eq v10, v12, :cond_6

    .line 258
    .line 259
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 260
    .line 261
    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v12, Ljava/lang/Integer;

    .line 264
    .line 265
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 266
    .line 267
    .line 268
    move-result v12

    .line 269
    if-ne v10, v12, :cond_7

    .line 270
    .line 271
    :cond_6
    iget v8, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 272
    .line 273
    goto/16 :goto_6

    .line 274
    .line 275
    :cond_7
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 276
    .line 277
    if-eq v10, v5, :cond_b

    .line 278
    .line 279
    const/4 v12, 0x7

    .line 280
    if-eq v10, v12, :cond_b

    .line 281
    .line 282
    if-ne v10, v3, :cond_8

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_8
    const-string v10, "Given tag ("

    .line 286
    .line 287
    const-string v12, ") value didn\'t match with one of expected formats: "

    .line 288
    .line 289
    invoke-static {v10, v1, v12}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    move-result-object v10

    .line 293
    sget-object v12, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 294
    .line 295
    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 296
    .line 297
    aget-object v13, v12, v13

    .line 298
    .line 299
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 303
    .line 304
    const-string v14, ""

    .line 305
    .line 306
    const-string v15, ", "

    .line 307
    .line 308
    if-ne v13, v11, :cond_9

    .line 309
    .line 310
    move-object v8, v14

    .line 311
    goto :goto_2

    .line 312
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget v8, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 318
    .line 319
    aget-object v8, v12, v8

    .line 320
    .line 321
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v8, " (guess: "

    .line 332
    .line 333
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v8, Ljava/lang/Integer;

    .line 339
    .line 340
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    aget-object v8, v12, v8

    .line 345
    .line 346
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v8, Ljava/lang/Integer;

    .line 352
    .line 353
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    if-ne v8, v11, :cond_a

    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v9, Ljava/lang/Integer;

    .line 368
    .line 369
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 370
    .line 371
    .line 372
    move-result v9

    .line 373
    aget-object v9, v12, v9

    .line 374
    .line 375
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v14

    .line 382
    :goto_3
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v8, ")"

    .line 386
    .line 387
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    goto/16 :goto_d

    .line 398
    .line 399
    :cond_b
    :goto_4
    move v8, v10

    .line 400
    goto :goto_6

    .line 401
    :cond_c
    :goto_5
    iget v8, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 402
    .line 403
    :goto_6
    const-string v9, "/"

    .line 404
    .line 405
    const-string v10, ","

    .line 406
    .line 407
    packed-switch v8, :pswitch_data_0

    .line 408
    .line 409
    .line 410
    :pswitch_0
    const-string v9, "Data format isn\'t one of expected formats: "

    .line 411
    .line 412
    invoke-static {v9, v8, v4}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_d

    .line 416
    .line 417
    :pswitch_1
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    array-length v9, v8

    .line 422
    new-array v9, v9, [D

    .line 423
    .line 424
    move v10, v6

    .line 425
    :goto_7
    array-length v11, v8

    .line 426
    if-ge v10, v11, :cond_d

    .line 427
    .line 428
    aget-object v11, v8, v10

    .line 429
    .line 430
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 431
    .line 432
    .line 433
    move-result-wide v11

    .line 434
    aput-wide v11, v9, v10

    .line 435
    .line 436
    add-int/lit8 v10, v10, 0x1

    .line 437
    .line 438
    goto :goto_7

    .line 439
    :cond_d
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 440
    .line 441
    aget-object v8, v8, v7

    .line 442
    .line 443
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 444
    .line 445
    invoke-static {v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    goto/16 :goto_d

    .line 453
    .line 454
    :pswitch_2
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    array-length v10, v8

    .line 459
    new-array v10, v10, [Landroid/media/ExifInterface$Rational;

    .line 460
    .line 461
    move v11, v6

    .line 462
    :goto_8
    array-length v12, v8

    .line 463
    if-ge v11, v12, :cond_e

    .line 464
    .line 465
    aget-object v12, v8, v11

    .line 466
    .line 467
    invoke-virtual {v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v12

    .line 471
    new-instance v19, Landroid/media/ExifInterface$Rational;

    .line 472
    .line 473
    aget-object v13, v12, v6

    .line 474
    .line 475
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 476
    .line 477
    .line 478
    move-result-wide v13

    .line 479
    double-to-long v14, v13

    .line 480
    aget-object v12, v12, v5

    .line 481
    .line 482
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 483
    .line 484
    .line 485
    move-result-wide v12

    .line 486
    double-to-long v12, v12

    .line 487
    const/16 v18, 0x0

    .line 488
    .line 489
    move-wide/from16 v16, v12

    .line 490
    .line 491
    move-object/from16 v13, v19

    .line 492
    .line 493
    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    .line 494
    .line 495
    .line 496
    aput-object v19, v10, v11

    .line 497
    .line 498
    add-int/lit8 v11, v11, 0x1

    .line 499
    .line 500
    goto :goto_8

    .line 501
    :cond_e
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 502
    .line 503
    aget-object v8, v8, v7

    .line 504
    .line 505
    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 506
    .line 507
    invoke-static {v10, v9}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 508
    .line 509
    .line 510
    move-result-object v9

    .line 511
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    goto/16 :goto_d

    .line 515
    .line 516
    :pswitch_3
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v8

    .line 520
    array-length v9, v8

    .line 521
    new-array v9, v9, [I

    .line 522
    .line 523
    move v10, v6

    .line 524
    :goto_9
    array-length v11, v8

    .line 525
    if-ge v10, v11, :cond_f

    .line 526
    .line 527
    aget-object v11, v8, v10

    .line 528
    .line 529
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    move-result v11

    .line 533
    aput v11, v9, v10

    .line 534
    .line 535
    add-int/lit8 v10, v10, 0x1

    .line 536
    .line 537
    goto :goto_9

    .line 538
    :cond_f
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 539
    .line 540
    aget-object v8, v8, v7

    .line 541
    .line 542
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 543
    .line 544
    invoke-static {v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    goto/16 :goto_d

    .line 552
    .line 553
    :pswitch_4
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v8

    .line 557
    array-length v10, v8

    .line 558
    new-array v10, v10, [Landroid/media/ExifInterface$Rational;

    .line 559
    .line 560
    move v11, v6

    .line 561
    :goto_a
    array-length v12, v8

    .line 562
    if-ge v11, v12, :cond_10

    .line 563
    .line 564
    aget-object v12, v8, v11

    .line 565
    .line 566
    invoke-virtual {v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v12

    .line 570
    new-instance v19, Landroid/media/ExifInterface$Rational;

    .line 571
    .line 572
    aget-object v13, v12, v6

    .line 573
    .line 574
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 575
    .line 576
    .line 577
    move-result-wide v13

    .line 578
    double-to-long v14, v13

    .line 579
    aget-object v12, v12, v5

    .line 580
    .line 581
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 582
    .line 583
    .line 584
    move-result-wide v12

    .line 585
    double-to-long v12, v12

    .line 586
    const/16 v18, 0x0

    .line 587
    .line 588
    move-wide/from16 v16, v12

    .line 589
    .line 590
    move-object/from16 v13, v19

    .line 591
    .line 592
    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    .line 593
    .line 594
    .line 595
    aput-object v19, v10, v11

    .line 596
    .line 597
    add-int/lit8 v11, v11, 0x1

    .line 598
    .line 599
    goto :goto_a

    .line 600
    :cond_10
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 601
    .line 602
    aget-object v8, v8, v7

    .line 603
    .line 604
    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 605
    .line 606
    invoke-static {v10, v9}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 607
    .line 608
    .line 609
    move-result-object v9

    .line 610
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    goto :goto_d

    .line 614
    :pswitch_5
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v8

    .line 618
    array-length v9, v8

    .line 619
    new-array v9, v9, [J

    .line 620
    .line 621
    move v10, v6

    .line 622
    :goto_b
    array-length v11, v8

    .line 623
    if-ge v10, v11, :cond_11

    .line 624
    .line 625
    aget-object v11, v8, v10

    .line 626
    .line 627
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 628
    .line 629
    .line 630
    move-result-wide v11

    .line 631
    aput-wide v11, v9, v10

    .line 632
    .line 633
    add-int/lit8 v10, v10, 0x1

    .line 634
    .line 635
    goto :goto_b

    .line 636
    :cond_11
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 637
    .line 638
    aget-object v8, v8, v7

    .line 639
    .line 640
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 641
    .line 642
    invoke-static {v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    goto :goto_d

    .line 650
    :pswitch_6
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v8

    .line 654
    array-length v9, v8

    .line 655
    new-array v9, v9, [I

    .line 656
    .line 657
    move v10, v6

    .line 658
    :goto_c
    array-length v11, v8

    .line 659
    if-ge v10, v11, :cond_12

    .line 660
    .line 661
    aget-object v11, v8, v10

    .line 662
    .line 663
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 664
    .line 665
    .line 666
    move-result v11

    .line 667
    aput v11, v9, v10

    .line 668
    .line 669
    add-int/lit8 v10, v10, 0x1

    .line 670
    .line 671
    goto :goto_c

    .line 672
    :cond_12
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 673
    .line 674
    aget-object v8, v8, v7

    .line 675
    .line 676
    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 677
    .line 678
    invoke-static {v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    .line 679
    .line 680
    .line 681
    move-result-object v9

    .line 682
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    goto :goto_d

    .line 686
    :pswitch_7
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 687
    .line 688
    aget-object v8, v8, v7

    .line 689
    .line 690
    invoke-static {v2}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    .line 691
    .line 692
    .line 693
    move-result-object v9

    .line 694
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    goto :goto_d

    .line 698
    :pswitch_8
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 699
    .line 700
    aget-object v8, v8, v7

    .line 701
    .line 702
    invoke-static {v2}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    .line 703
    .line 704
    .line 705
    move-result-object v9

    .line 706
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    :cond_13
    :goto_d
    add-int/lit8 v7, v7, 0x1

    .line 710
    .line 711
    goto/16 :goto_1

    .line 712
    .line 713
    :cond_14
    return-void

    .line 714
    nop

    .line 715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
