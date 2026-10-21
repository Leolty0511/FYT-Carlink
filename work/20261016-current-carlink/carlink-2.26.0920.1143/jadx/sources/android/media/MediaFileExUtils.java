package android.media;

import android.mtp.MtpConstants;

/* JADX INFO: loaded from: classes.dex */
public class MediaFileExUtils {
    public static final int FILE_TYPE_AMC = 206;
    public static final int FILE_TYPE_AUDIO_3G2 = 406;
    public static final int FILE_TYPE_AUDIO_3GP = 405;
    public static final int FILE_TYPE_AUDIO_BP3 = 401;
    public static final int FILE_TYPE_AUDIO_M4B = 404;
    public static final int FILE_TYPE_AUDIO_M4R = 403;
    public static final int FILE_TYPE_AUDIO_MP4 = 402;
    public static final int FILE_TYPE_AUDIO_OGA = 407;
    public static final int FILE_TYPE_DIVX = 204;
    public static final int FILE_TYPE_F4V = 203;
    public static final int FILE_TYPE_FLV = 202;
    public static final int FILE_TYPE_K3G = 205;
    public static final int FILE_TYPE_MMID = 14;
    public static final int FILE_TYPE_OPUS = 400;
    public static final int FILE_TYPE_VOB = 207;
    public static final int FILE_TYPE_XMID = 15;
    protected static final int SPRD_FIRST_AUDIO_FILE_TYPE2 = 400;
    protected static final int SPRD_FIRST_MIDI_FILE_TYPE = 14;
    protected static final int SPRD_FIRST_VIDEO_FILE_TYPE2 = 202;
    protected static final int SPRD_LAST_AUDIO_FILE_TYPE2 = 407;
    protected static final int SPRD_LAST_MIDI_FILE_TYPE = 15;
    protected static final int SPRD_LAST_VIDEO_FILE_TYPE2 = 207;

    public static void addFileType() {
        MediaFile.addFileType("MP3", 1, "audio/x-mp3");
        MediaFile.addFileType("MP3", 1, "audio/mpeg3");
        MediaFile.addFileType("MP3", 1, "audio/mp3");
        MediaFile.addFileType("MP3", 1, "audio/mpg3");
        MediaFile.addFileType("M4R", 403, "audio/mp4");
        MediaFile.addFileType("M4B", 404, "audio/mp4");
        MediaFile.addFileType("3GP", 405, MediaFormat.MIMETYPE_AUDIO_AMR_NB);
        MediaFile.addFileType("3G2", 406, "audio/3gpp2");
        MediaFile.addFileType("OPUS", 400, MediaFormat.MIMETYPE_AUDIO_OPUS);
        MediaFile.addFileType("OGA", 407, "audio/ogg");
        MediaFile.addFileType("MMID", 14, "audio/mid");
        MediaFile.addFileType("XMID", 15, "audio/x-midi");
        MediaFile.addFileType("IMY", 13, "audio/imy");
        MediaFile.addFileType("BP3", 401, "audio/bp3");
        MediaFile.addFileType("3G2", 24, "video/3g2");
        MediaFile.addFileType("FLV", 202, "video/flv");
        MediaFile.addFileType("F4V", 203, "video/mp4");
        MediaFile.addFileType("DIVX", 204, "video/avi");
        MediaFile.addFileType("AMC", 206, "video/amc");
        MediaFile.addFileType("K3G", 205, "video/k3g");
        MediaFile.addFileType("VOB", 207, "video/mp2p");
        MediaFile.addFileType("JPE", 31, "image/jpeg", MtpConstants.FORMAT_EXIF_JPEG, false);
        MediaFile.addFileType("DRMBMP", 34, "image/bmp");
        MediaFile.addFileType("WAV", 3, "audio/wav", 12296, false);
        MediaFile.addFileType("AAC", 8, "audio/x-aac", MtpConstants.FORMAT_AAC, false);
        MediaFile.addFileType("AVI", 29, "video/x-msvideo");
    }
}
