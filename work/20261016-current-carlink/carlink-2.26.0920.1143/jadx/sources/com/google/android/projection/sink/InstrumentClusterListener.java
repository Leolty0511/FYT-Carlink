package com.google.android.projection.sink;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.MediaBrowser;
import com.google.android.projection.protocol.MediaPlaybackStatus;
import com.google.android.projection.protocol.NavigationStatus;
import com.google.android.projection.protocol.PhoneStatus;

/* JADX INFO: loaded from: classes3.dex */
public class InstrumentClusterListener implements NavigationStatus.NavigationStatusListener, MediaPlaybackStatus.MediaPlaybackStatusListener, MediaBrowser.MediaBrowserListener, PhoneStatus.PhoneStatusListener {
    public static final String MEDIA_ALBUM = "Media Album";
    public static final String MEDIA_ALBUM_ART = "Media Album Art";
    public static final String MEDIA_ARTIST = "Media Artist";
    public static final String MEDIA_BROWSER_LIST_STRING = "Media Browser List String";
    public static final String MEDIA_BROWSER_ROOT_STRING = "Media Browser Root String";
    public static final String MEDIA_BROWSER_SONG_STRING = "Media Browser Song String";
    public static final String MEDIA_BROWSER_SOURCE_STRING = "Media Browser Source String";
    public static final String MEDIA_DURATION = "Media Duration";
    public static final String MEDIA_PLAY_BACK = "Media Back";
    public static final String MEDIA_STATE = "Media State";
    public static final String MEDIA_STATUS_STRING = "Media Status String";
    public static final String MEDIA_TITLE = "Media Title";
    public static final String NAVIGATION_BITMAP = "Navigation Bitmap";
    public static final String NAVIGATION_STRING = "Navigation String";
    public static final String PHONE_STATUS_PHOTO = "Phone Status Photo";
    public static final String PHONE_STATUS_STRING = "Phone Status String";
    private static final String TAG = "AHU.NAVIGATION";
    public static final int UPDATE_IC_MEDIA_BROWSER = 4;
    public static final int UPDATE_IC_MEDIA_STATUS = 3;
    public static final int UPDATE_IC_NAVIGATION = 2;
    public static final int UPDATE_IC_PHONE_STATUS = 5;
    public static final int UPDATE_VTOGGLE_TEXT = 1;
    private String mAlbum;
    private byte[] mAlbumArt;
    private String mArtist;
    private int mDistanceMeters;
    private int mDurationSeconds;
    private Protos.NavigationNextTurnEvent.NextTurnEnum mEvent;
    private byte[] mImage;
    private final Handler mNativePanelUpdateHandler;
    private int mPlaybackSeconds;
    private String mPlaylist;
    private int mRatings;
    private boolean mRepeat;
    private boolean mRepeatOne;
    private String mRoad;
    private boolean mShuffle;
    private String mSong;
    private String mSource;
    private int mState;
    private Protos.NavigationStatus.NavigationStatusEnum mStatus;
    private int mTimeSeconds;
    private int mTurnAngle;
    private int mTurnNumber;
    private Protos.NavigationNextTurnEvent.TurnSide mTurnSide;

    public InstrumentClusterListener() {
        this.mNativePanelUpdateHandler = new Handler(Looper.getMainLooper());
    }

    private void updateMedia() {
        Bundle bundle = new Bundle();
        StringBuilder sb = new StringBuilder();
        sb.append("State: " + this.mState + "\n");
        sb.append("Source: " + this.mSource + "\n");
        sb.append("Song: " + this.mSong + "\n");
        sb.append("Album: " + this.mAlbum + "\n");
        sb.append("Artist: " + this.mArtist + "\n");
        sb.append("Playlist: " + this.mPlaylist + "\n");
        sb.append("Duration: " + this.mDurationSeconds + "\n");
        sb.append("Playback: " + this.mPlaybackSeconds + "\n");
        sb.append("Ratings: " + this.mRatings + "\n");
        sb.append("Shuffle: " + this.mShuffle + "\n");
        sb.append("Repeat: " + this.mRepeat + "\n");
        sb.append("Repeat One: " + this.mRepeatOne + "\n");
        bundle.putInt(MEDIA_STATE, this.mState);
        String str = this.mSong;
        if (str == null) {
            str = "";
        }
        bundle.putString(MEDIA_TITLE, str);
        String str2 = this.mArtist;
        if (str2 == null) {
            str2 = "";
        }
        bundle.putString(MEDIA_ARTIST, str2);
        String str3 = this.mAlbum;
        bundle.putString(MEDIA_ALBUM, str3 != null ? str3 : "");
        bundle.putInt(MEDIA_DURATION, this.mDurationSeconds);
        bundle.putInt(MEDIA_PLAY_BACK, this.mPlaybackSeconds);
        bundle.putString(MEDIA_STATUS_STRING, sb.toString());
        byte[] bArr = this.mAlbumArt;
        if (bArr != null) {
            bundle.putByteArray(MEDIA_ALBUM_ART, bArr);
        }
        Message message = new Message();
        message.setData(bundle);
        message.what = 3;
        this.mNativePanelUpdateHandler.sendMessage(message);
    }

    private void updateNavigationViews() {
        StringBuilder sb = new StringBuilder();
        if (this.mStatus != null) {
            sb.append("Status: ");
            Protos.NavigationStatus.NavigationStatusEnum navigationStatusEnum = this.mStatus;
            if (navigationStatusEnum == Protos.NavigationStatus.NavigationStatusEnum.ACTIVE) {
                sb.append("Active");
            } else if (navigationStatusEnum == Protos.NavigationStatus.NavigationStatusEnum.UNAVAILABLE) {
                sb.append("Unavailable");
            } else if (navigationStatusEnum == Protos.NavigationStatus.NavigationStatusEnum.INACTIVE) {
                sb.append("Inactive");
            }
            sb.append("\n");
        }
        if (this.mStatus == Protos.NavigationStatus.NavigationStatusEnum.ACTIVE) {
            if (this.mRoad != null) {
                sb.append("Road: " + this.mRoad + "\n");
            }
            if (this.mTurnSide != null) {
                sb.append("Turn: ");
                Protos.NavigationNextTurnEvent.TurnSide turnSide = this.mTurnSide;
                if (turnSide == Protos.NavigationNextTurnEvent.TurnSide.LEFT) {
                    sb.append("Left");
                } else if (turnSide == Protos.NavigationNextTurnEvent.TurnSide.RIGHT) {
                    sb.append("Right");
                } else if (turnSide == Protos.NavigationNextTurnEvent.TurnSide.UNSPECIFIED) {
                    sb.append("Unspecified");
                }
                sb.append("\n");
            }
            if (this.mEvent != null) {
                sb.append("Event: ");
                Protos.NavigationNextTurnEvent.NextTurnEnum nextTurnEnum = this.mEvent;
                if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.DEPART) {
                    sb.append("Depart");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.DESTINATION) {
                    sb.append("Destination");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.FERRY_BOAT) {
                    sb.append("Ferry boat");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.FERRY_TRAIN) {
                    sb.append("Ferry train");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.FORK) {
                    sb.append("Fork");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.MERGE) {
                    sb.append("Merge");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.NAME_CHANGE) {
                    sb.append("Name change");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.OFF_RAMP) {
                    sb.append("Off ramp");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.ON_RAMP) {
                    sb.append("On ramp");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.ROUNDABOUT_ENTER) {
                    sb.append("Roundabout enter");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.ROUNDABOUT_ENTER_AND_EXIT) {
                    sb.append("Roundabout enter and exit");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.ROUNDABOUT_EXIT) {
                    sb.append("Roundabout exit");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.SHARP_TURN) {
                    sb.append("Sharp turn");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.SLIGHT_TURN) {
                    sb.append("Slight turn");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.STRAIGHT) {
                    sb.append("Straight");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.TURN) {
                    sb.append("Turn");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.U_TURN) {
                    sb.append("U-Turn");
                } else if (nextTurnEnum == Protos.NavigationNextTurnEvent.NextTurnEnum.UNKNOWN) {
                    sb.append("Unknown");
                }
                sb.append("\n");
            }
            if (this.mEvent == Protos.NavigationNextTurnEvent.NextTurnEnum.ROUNDABOUT_ENTER_AND_EXIT) {
                sb.append("Turn Angle: " + this.mTurnAngle + "\n");
                sb.append("Turn Number: " + this.mTurnNumber + "\n");
            }
            sb.append("Distance: " + this.mDistanceMeters + "m\n");
            sb.append("Time: " + this.mTimeSeconds + "s\n");
        }
        Bundle bundle = new Bundle();
        bundle.putString(NAVIGATION_STRING, sb.toString());
        bundle.putByteArray(NAVIGATION_BITMAP, this.mImage);
        Message message = new Message();
        message.setData(bundle);
        message.what = 2;
        this.mNativePanelUpdateHandler.sendMessage(message);
    }

    @Override // com.google.android.projection.protocol.MediaBrowser.MediaBrowserListener
    public void onMediaListNode(MediaBrowser.MediaList mediaList, int i2, int i3, MediaBrowser.MediaSong[] mediaSongArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("List Node: " + mediaList.path + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + mediaList.name + "\n");
        Bundle bundle = new Bundle();
        bundle.putString(MEDIA_BROWSER_LIST_STRING, sb.toString());
        Message message = new Message();
        message.setData(bundle);
        message.what = 4;
        this.mNativePanelUpdateHandler.sendMessage(message);
    }

    @Override // com.google.android.projection.protocol.MediaPlaybackStatus.MediaPlaybackStatusListener
    public void onMediaMetadata(String str, String str2, String str3, byte[] bArr, String str4, int i2, int i3) {
        this.mSong = str;
        this.mAlbum = str2;
        this.mArtist = str3;
        this.mAlbumArt = bArr;
        this.mPlaylist = str4;
        this.mDurationSeconds = i2;
        this.mRatings = i3;
        updateMedia();
    }

    @Override // com.google.android.projection.protocol.MediaBrowser.MediaBrowserListener
    public void onMediaRootNode(String str, MediaBrowser.MediaSource[] mediaSourceArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("Root Node: " + str + "\n");
        for (MediaBrowser.MediaSource mediaSource : mediaSourceArr) {
            sb.append(mediaSource.name + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + mediaSource.path + "\n");
        }
        Bundle bundle = new Bundle();
        bundle.putString(MEDIA_BROWSER_ROOT_STRING, sb.toString());
        Message message = new Message();
        message.setData(bundle);
        message.what = 4;
        this.mNativePanelUpdateHandler.sendMessage(message);
    }

    @Override // com.google.android.projection.protocol.MediaBrowser.MediaBrowserListener
    public void onMediaSongNode(MediaBrowser.MediaSong mediaSong, byte[] bArr, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("Song Node: " + mediaSong.path + "\n");
        sb.append(mediaSong.name + " - " + mediaSong.artist + " - " + mediaSong.album);
        Bundle bundle = new Bundle();
        bundle.putString(MEDIA_BROWSER_SONG_STRING, sb.toString());
        Message message = new Message();
        message.setData(bundle);
        message.what = 4;
        this.mNativePanelUpdateHandler.sendMessage(message);
    }

    @Override // com.google.android.projection.protocol.MediaBrowser.MediaBrowserListener
    public void onMediaSourceNode(MediaBrowser.MediaSource mediaSource, int i2, int i3, MediaBrowser.MediaList[] mediaListArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("Source Node: " + mediaSource.path + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + mediaSource.name + "\n");
        Bundle bundle = new Bundle();
        bundle.putString(MEDIA_BROWSER_SOURCE_STRING, sb.toString());
        Message message = new Message();
        message.setData(bundle);
        message.what = 4;
        this.mNativePanelUpdateHandler.sendMessage(message);
    }

    @Override // com.google.android.projection.protocol.MediaPlaybackStatus.MediaPlaybackStatusListener
    public void onMediaStatus(int i2, String str, int i3, boolean z2, boolean z3, boolean z4) {
        this.mState = i2;
        this.mSource = str;
        this.mPlaybackSeconds = i3;
        this.mShuffle = z2;
        this.mRepeat = z3;
        this.mRepeatOne = z4;
        updateMedia();
    }

    @Override // com.google.android.projection.protocol.NavigationStatus.NavigationStatusListener
    public void onNavigationCurrentPosition(Protos.NavigationCurrentPosition navigationCurrentPosition) {
        Log.i("AHU.NAVIGATION", "Not supported operations.");
    }

    @Override // com.google.android.projection.protocol.NavigationStatus.NavigationStatusListener
    public void onNavigationState(Protos.NavigationState navigationState) {
        Log.i("AHU.NAVIGATION", "Not supported operations.");
    }

    @Override // com.google.android.projection.protocol.NavigationStatus.NavigationStatusListener
    public void onNextTurn(String str, int i2, int i3, byte[] bArr, int i4, int i5) {
        this.mRoad = str;
        this.mTurnSide = Protos.NavigationNextTurnEvent.TurnSide.valueOf(i2);
        this.mEvent = Protos.NavigationNextTurnEvent.NextTurnEnum.valueOf(i3);
        this.mTurnAngle = i4;
        this.mTurnNumber = i5;
        this.mImage = bArr;
        updateNavigationViews();
    }

    public void onNextTurnDistance(int i2, int i3, float f2, int i4) {
    }

    @Override // com.google.android.projection.protocol.PhoneStatus.PhoneStatusListener
    public void onPhoneStatus(Protos.PhoneStatus.Call[] callArr, int i2) {
        StringBuilder sb = new StringBuilder();
        for (Protos.PhoneStatus.Call call : callArr) {
            if (call.hasCallerNumber()) {
                sb.append(call.getCallerNumber() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            }
            if (call.hasCallerId()) {
                sb.append(call.getCallerId() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            }
            if (call.hasCallerNumberType()) {
                sb.append(call.getCallerNumberType());
            }
        }
        Bundle bundle = new Bundle();
        bundle.putString(PHONE_STATUS_STRING, sb.toString());
        if (callArr.length > 0 && callArr[0].hasCallerThumbnail()) {
            bundle.putByteArray(PHONE_STATUS_PHOTO, callArr[0].getCallerThumbnail().toByteArray());
        }
        Message message = new Message();
        message.setData(bundle);
        message.what = 5;
        this.mNativePanelUpdateHandler.sendMessage(message);
    }

    @Override // com.google.android.projection.protocol.NavigationStatus.NavigationStatusListener
    public void onStatus(int i2) {
        this.mStatus = Protos.NavigationStatus.NavigationStatusEnum.valueOf(i2);
        updateNavigationViews();
    }

    @Override // com.google.android.projection.protocol.NavigationStatus.NavigationStatusListener
    public void onNextTurnDistance(int i2, int i3, int i4, int i5) {
        onNextTurnDistance(i2, i3, i4 * 0.001f, i5);
        this.mDistanceMeters = i2;
        this.mTimeSeconds = i3;
        updateNavigationViews();
    }

    public InstrumentClusterListener(Handler handler) {
        this.mNativePanelUpdateHandler = handler;
    }
}
