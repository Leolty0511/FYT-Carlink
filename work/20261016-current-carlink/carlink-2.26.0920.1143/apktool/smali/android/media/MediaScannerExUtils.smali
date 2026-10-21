.class public Landroid/media/MediaScannerExUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMULATE_EXTERNAL_PATH:Ljava/lang/String; = "/storage/sdcard0"

.field private static final TAG:Ljava/lang/String; = "MediaScannerExUtils"


# instance fields
.field private mMediaScanner:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 5
    .line 6
    return-void
.end method

.method private static computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/io/File;

    .line 13
    .line 14
    const-string v0, "/"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "bucket_id"

    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "bucket_display_name"

    .line 45
    .line 46
    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static getOldPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/storage/sdcard0"

    return-object v0
.end method

.method public static getSetting(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/media/MediaScannerExUtils;->isMultiSimEnabledEx()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_0
    return-object p0
.end method

.method private static getStorageId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-class v0, Landroid/os/storage/StorageManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getStorageId()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    const-string p0, "Missing volume for "

    .line 26
    .line 27
    const-string v0, "; assuming invalid"

    .line 28
    .line 29
    const-string v1, "MediaScannerExUtils"

    .line 30
    .line 31
    invoke-static {p0, p1, v0, v1}, Landroid/app/m;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public static isMultiSimEnabledEx()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.radio.multisim.config"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "dsds"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const-string v1, "dsda"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string/jumbo v1, "tsts"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    :goto_1
    return v0
.end method

.method public static saveUriToSettingsDB(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 0

    .line 1
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static updateNewPathValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/media/MediaScannerExUtils;->getOldPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/EnvironmentEx;->getExternalStoragePath()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Landroid/media/MediaScannerExUtils;->getOldPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "_data"

    .line 30
    .line 31
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1}, Landroid/media/MediaScannerExUtils;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p2}, Landroid/media/MediaScannerExUtils;->getStorageId(Landroid/content/Context;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const-string/jumbo p2, "storage_id"

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public isNeedScanRingtone(Landroid/media/MediaScanner$FileEntry;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 4
    .line 5
    iget v3, v2, Landroid/media/MediaScanner;->mPhoneCount:I

    .line 6
    .line 7
    if-ge v1, v3, :cond_1

    .line 8
    .line 9
    iget-object v3, v2, Landroid/media/MediaScanner;->mDefaultRingtoneSet:[Z

    .line 10
    .line 11
    aget-boolean v3, v3, v1

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget-object v3, v2, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 16
    .line 17
    iget-object v4, p1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, v2, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:[Ljava/lang/String;

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    invoke-virtual {v3, v4, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v0
.end method

.method public setDefaultRingtoneFileNamesEx()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 2
    .line 3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, v0, Landroid/media/MediaScanner;->mPhoneCount:I

    .line 12
    .line 13
    iget-object v0, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 14
    .line 15
    iget v1, v0, Landroid/media/MediaScanner;->mPhoneCount:I

    .line 16
    .line 17
    new-array v2, v1, [Z

    .line 18
    .line 19
    iput-object v2, v0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:[Z

    .line 20
    .line 21
    new-array v2, v1, [Ljava/lang/String;

    .line 22
    .line 23
    iput-object v2, v0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:[Ljava/lang/String;

    .line 24
    .line 25
    new-array v2, v1, [Z

    .line 26
    .line 27
    iput-object v2, v0, Landroid/media/MediaScanner;->mDefaultMessageSet:[Z

    .line 28
    .line 29
    new-array v1, v1, [Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, v0, Landroid/media/MediaScanner;->mDefaultMessageFilename:[Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    move v1, v0

    .line 35
    :goto_0
    iget-object v2, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 36
    .line 37
    iget v3, v2, Landroid/media/MediaScanner;->mPhoneCount:I

    .line 38
    .line 39
    const-string v4, ""

    .line 40
    .line 41
    if-ge v1, v3, :cond_0

    .line 42
    .line 43
    iget-object v3, v2, Landroid/media/MediaScanner;->mDefaultRingtoneSet:[Z

    .line 44
    .line 45
    aput-boolean v0, v3, v1

    .line 46
    .line 47
    iget-object v3, v2, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:[Ljava/lang/String;

    .line 48
    .line 49
    aput-object v4, v3, v1

    .line 50
    .line 51
    iget-object v3, v2, Landroid/media/MediaScanner;->mDefaultMessageSet:[Z

    .line 52
    .line 53
    aput-boolean v0, v3, v1

    .line 54
    .line 55
    iget-object v2, v2, Landroid/media/MediaScanner;->mDefaultMessageFilename:[Ljava/lang/String;

    .line 56
    .line 57
    aput-object v4, v2, v1

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    :goto_1
    iget-object v1, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 63
    .line 64
    iget v2, v1, Landroid/media/MediaScanner;->mPhoneCount:I

    .line 65
    .line 66
    if-ge v0, v2, :cond_3

    .line 67
    .line 68
    iget-object v1, v1, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:[Ljava/lang/String;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string/jumbo v3, "ro.config."

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v5, "ringtone"

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v0}, Landroid/media/MediaScannerExUtils;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    aput-object v2, v1, v0

    .line 97
    .line 98
    iget-object v1, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 99
    .line 100
    iget-object v1, v1, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:[Ljava/lang/String;

    .line 101
    .line 102
    aget-object v1, v1, v0

    .line 103
    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    iget-object v1, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 111
    .line 112
    iget-object v1, v1, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:[Ljava/lang/String;

    .line 113
    .line 114
    const-string/jumbo v2, "ro.config.ringtone"

    .line 115
    .line 116
    .line 117
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    aput-object v2, v1, v0

    .line 122
    .line 123
    :cond_1
    iget-object v1, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 124
    .line 125
    iget-object v1, v1, Landroid/media/MediaScanner;->mDefaultMessageFilename:[Ljava/lang/String;

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v3, "default_message"

    .line 133
    .line 134
    invoke-static {v3, v0}, Landroid/media/MediaScannerExUtils;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    aput-object v2, v1, v0

    .line 150
    .line 151
    iget-object v1, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 152
    .line 153
    iget-object v1, v1, Landroid/media/MediaScanner;->mDefaultMessageFilename:[Ljava/lang/String;

    .line 154
    .line 155
    aget-object v1, v1, v0

    .line 156
    .line 157
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_2

    .line 162
    .line 163
    iget-object v1, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 164
    .line 165
    iget-object v1, v1, Landroid/media/MediaScanner;->mDefaultMessageFilename:[Ljava/lang/String;

    .line 166
    .line 167
    const-string/jumbo v2, "ro.config.default_message"

    .line 168
    .line 169
    .line 170
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    aput-object v2, v1, v0

    .line 175
    .line 176
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_3
    return-void
.end method

.method public setRingtoneIfNotSetForMultiSim(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;JI)V
    .locals 3

    .line 1
    invoke-static {p2, p6}, Landroid/media/MediaScannerExUtils;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p3, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-static {p1, p2, v2, p6}, Landroid/media/RingtoneManagerEx;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo p2, "ringtoneName = "

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, ", uri = "

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p2, ",rowId = "

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string p2, "MediaScannerExUtils"

    .line 79
    .line 80
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object p1, p0, Landroid/media/MediaScannerExUtils;->mMediaScanner:Landroid/media/MediaScanner;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 p2, 0x1

    .line 90
    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method
