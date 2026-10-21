package com.google.android.projection.protocol;

import com.google.android.projection.common.UsedByNative;
import com.google.android.projection.proto.Protos;

/* JADX INFO: loaded from: classes3.dex */
public class MediaBrowser implements CarServiceProvider, MediaBrowserCallbacks {
    private static final boolean DBG = true;
    private static final String TAG = "AHU.MEDIA_BROWSER";
    private final MediaBrowserListener mListener;

    @UsedByNative
    private long mNativeMediaBrowser;

    public interface MediaBrowserListener {
        void onMediaListNode(MediaList mediaList, int i2, int i3, MediaSong[] mediaSongArr);

        void onMediaRootNode(String str, MediaSource[] mediaSourceArr);

        void onMediaSongNode(MediaSong mediaSong, byte[] bArr, int i2);

        void onMediaSourceNode(MediaSource mediaSource, int i2, int i3, MediaList[] mediaListArr);
    }

    public class MediaList {
        public byte[] albumArt;
        public String name;
        public String path;
        public int type;

        public MediaList() {
        }
    }

    public class MediaSong {
        public String album;
        public String artist;
        public String name;
        public String path;

        public MediaSong() {
        }
    }

    public class MediaSource {
        public byte[] albumArt;
        public String name;
        public String path;

        public MediaSource() {
        }
    }

    public MediaBrowser(MediaBrowserListener mediaBrowserListener) {
        this.mListener = mediaBrowserListener;
    }

    private native int nativeGetNode(String str, int i2, boolean z2);

    private native int nativeInit(int i2, long j2);

    private native int nativeReportAction(String str, int i2);

    private native void nativeShutdown();

    @Override // com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        return nativeInit(i2, j2) == 0;
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public void destroy() {
        nativeShutdown();
    }

    @Override // com.google.android.projection.protocol.NativeObject
    public long getNativeInstance() {
        return this.mNativeMediaBrowser;
    }

    public int getNode(String str, int i2, boolean z2) {
        return nativeGetNode(str, i2, z2);
    }

    public int input(String str, int i2) {
        return nativeReportAction(str, i2);
    }

    @Override // com.google.android.projection.protocol.MediaBrowserCallbacks
    public int listNodeCallback(String str, String str2, byte[] bArr, int i2, int i3, int i4, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4) {
        if (strArr == null || strArr2 == null || strArr3 == null || strArr4 == null || strArr.length != strArr2.length || strArr.length != strArr3.length || strArr.length != strArr4.length) {
            return Protos.MessageStatus.STATUS_INVALID_INPUT.getNumber();
        }
        if (this.mListener != null) {
            MediaSong[] mediaSongArr = new MediaSong[strArr.length];
            for (int i5 = 0; i5 < strArr.length; i5++) {
                MediaSong mediaSong = new MediaSong();
                mediaSongArr[i5] = mediaSong;
                mediaSong.path = strArr[i5];
                mediaSong.name = strArr2[i5];
                mediaSong.album = strArr4[i5];
                mediaSong.artist = strArr3[i5];
            }
            MediaList mediaList = new MediaList();
            mediaList.path = str;
            mediaList.name = str2;
            mediaList.albumArt = bArr;
            mediaList.type = i2;
            this.mListener.onMediaListNode(mediaList, i3, i4, mediaSongArr);
        }
        return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
    }

    @Override // com.google.android.projection.protocol.MediaBrowserCallbacks
    public int rootNodeCallback(String str, String[] strArr, String[] strArr2, byte[][] bArr) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length) {
            return Protos.MessageStatus.STATUS_INVALID_INPUT.getNumber();
        }
        if (this.mListener != null) {
            MediaSource[] mediaSourceArr = new MediaSource[strArr.length];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                MediaSource mediaSource = new MediaSource();
                mediaSourceArr[i2] = mediaSource;
                mediaSource.path = strArr[i2];
                mediaSource.name = strArr2[i2];
                if (bArr != null && i2 < bArr.length) {
                    mediaSource.albumArt = bArr[i2];
                }
            }
            this.mListener.onMediaRootNode(str, mediaSourceArr);
        }
        return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
    }

    @Override // com.google.android.projection.protocol.MediaBrowserCallbacks
    public int songNodeCallback(String str, String str2, String str3, String str4, byte[] bArr, int i2) {
        if (this.mListener != null) {
            MediaSong mediaSong = new MediaSong();
            mediaSong.path = str;
            mediaSong.name = str2;
            mediaSong.album = str3;
            mediaSong.artist = str4;
            this.mListener.onMediaSongNode(mediaSong, bArr, i2);
        }
        return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
    }

    @Override // com.google.android.projection.protocol.MediaBrowserCallbacks
    public int sourceNodeCallback(String str, String str2, byte[] bArr, int i2, int i3, String[] strArr, String[] strArr2, byte[][] bArr2, int[] iArr) {
        if (strArr == null || strArr2 == null || iArr == null || strArr.length != strArr2.length || strArr.length != iArr.length) {
            return Protos.MessageStatus.STATUS_INVALID_INPUT.getNumber();
        }
        if (this.mListener != null) {
            MediaList[] mediaListArr = new MediaList[strArr.length];
            for (int i4 = 0; i4 < strArr.length; i4++) {
                MediaList mediaList = new MediaList();
                mediaListArr[i4] = mediaList;
                mediaList.path = strArr[i4];
                mediaList.name = strArr2[i4];
                mediaList.type = iArr[i4];
                if (bArr2 != null && i4 < bArr2.length) {
                    mediaList.albumArt = bArr2[i4];
                }
            }
            MediaSource mediaSource = new MediaSource();
            mediaSource.name = str2;
            mediaSource.path = str;
            mediaSource.albumArt = bArr;
            this.mListener.onMediaSourceNode(mediaSource, i2, i3, mediaListArr);
        }
        return Protos.MessageStatus.STATUS_SUCCESS.getNumber();
    }
}
