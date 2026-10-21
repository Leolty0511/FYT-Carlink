.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field static final AUDIO_PROPERTIES:[I

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private mDeviceType:I

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mUserContext:Landroid/content/Context;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "_id"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v1, "title_key"

    .line 10
    .line 11
    .line 12
    const-string v2, "_display_name"

    .line 13
    .line 14
    const-string v3, "_data"

    .line 15
    .line 16
    filled-new-array {v0, v3, v1, v2}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "format"

    .line 23
    .line 24
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sput-object v2, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    .line 29
    .line 30
    filled-new-array {v0, v3, v1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "_id"

    .line 37
    .line 38
    const-string/jumbo v2, "storage_id"

    .line 39
    .line 40
    .line 41
    const-string v3, "format"

    .line 42
    .line 43
    const-string/jumbo v4, "parent"

    .line 44
    .line 45
    .line 46
    const-string v5, "_data"

    .line 47
    .line 48
    const-string v6, "date_added"

    .line 49
    .line 50
    const-string v7, "date_modified"

    .line 51
    .line 52
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 57
    .line 58
    const-string/jumbo v0, "media_jni"

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/16 v0, 0xb

    .line 65
    .line 66
    new-array v0, v0, [I

    .line 67
    .line 68
    fill-array-data v0, :array_0

    .line 69
    .line 70
    .line 71
    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 72
    .line 73
    const/16 v0, 0x18

    .line 74
    .line 75
    new-array v0, v0, [I

    .line 76
    .line 77
    fill-array-data v0, :array_1

    .line 78
    .line 79
    .line 80
    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 81
    .line 82
    const/16 v0, 0xf

    .line 83
    .line 84
    new-array v0, v0, [I

    .line 85
    .line 86
    fill-array-data v0, :array_2

    .line 87
    .line 88
    .line 89
    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 90
    .line 91
    const/16 v0, 0xc

    .line 92
    .line 93
    new-array v0, v0, [I

    .line 94
    .line 95
    fill-array-data v0, :array_3

    .line 96
    .line 97
    .line 98
    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 99
    .line 100
    return-void

    .line 101
    :array_0
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_2
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_3
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc48
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 23
    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 37
    .line 38
    new-instance v0, Landroid/mtp/MtpDatabase$1;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    .line 45
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mUserContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string/jumbo v0, "media"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 70
    .line 71
    iput-object p3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p4, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 80
    .line 81
    new-instance p2, Landroid/media/MediaScanner;

    .line 82
    .line 83
    invoke-direct {p2, p1, p3}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 87
    .line 88
    iput-object p5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    if-eqz p5, :cond_2

    .line 92
    .line 93
    new-instance p3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p4, "("

    .line 96
    .line 97
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    array-length p4, p5

    .line 101
    move v0, p2

    .line 102
    :goto_0
    if-ge v0, p4, :cond_1

    .line 103
    .line 104
    const-string v1, "_data=? OR _data LIKE ?"

    .line 105
    .line 106
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    add-int/lit8 v1, p4, -0x1

    .line 110
    .line 111
    if-eq v0, v1, :cond_0

    .line 112
    .line 113
    const-string v1, " OR "

    .line 114
    .line 115
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    const-string v0, ")"

    .line 122
    .line 123
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    iput-object p3, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 131
    .line 132
    mul-int/lit8 p3, p4, 0x2

    .line 133
    .line 134
    new-array p3, p3, [Ljava/lang/String;

    .line 135
    .line 136
    iput-object p3, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 137
    .line 138
    move p3, p2

    .line 139
    move v0, p3

    .line 140
    :goto_1
    if-ge p3, p4, :cond_2

    .line 141
    .line 142
    aget-object v1, p5, p3

    .line 143
    .line 144
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 145
    .line 146
    add-int/lit8 v3, v0, 0x1

    .line 147
    .line 148
    aput-object v1, v2, v0

    .line 149
    .line 150
    add-int/lit8 v0, v3, 0x1

    .line 151
    .line 152
    const-string v4, "/%"

    .line 153
    .line 154
    invoke-static {v1, v4}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    aput-object v1, v2, v3

    .line 159
    .line 160
    add-int/lit8 p3, p3, 0x1

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    const-string/jumbo p1, "sys.usb.mtp.device_type"

    .line 167
    .line 168
    .line 169
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iput p1, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    .line 174
    .line 175
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 176
    .line 177
    const-string p2, "close"

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public static synthetic access$002(Landroid/mtp/MtpDatabase;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return p1
.end method

.method public static synthetic access$100(Landroid/mtp/MtpDatabase;)I
    .locals 0

    iget p0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p0
.end method

.method public static synthetic access$102(Landroid/mtp/MtpDatabase;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p1
.end method

.method public static synthetic access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object p0
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    const-string v0, "file already exists in beginSendObject: "

    .line 5
    .line 6
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->inStorageRoot(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const-string v4, "MtpDatabase"

    .line 11
    .line 12
    const/4 v5, -0x1

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const-string v0, "attempt to put file outside of storage area: "

    .line 16
    .line 17
    invoke-static {v0, v2, v4}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v5

    .line 21
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    return v5

    .line 28
    :cond_1
    const-string v3, "RemoteException in beginSendObject"

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    :try_start_0
    iget-object v8, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 35
    .line 36
    iget-object v9, v1, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 37
    .line 38
    sget-object v10, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 39
    .line 40
    const-string v11, "_data=?"

    .line 41
    .line 42
    new-array v12, v6, [Ljava/lang/String;

    .line 43
    .line 44
    const/4 v13, 0x0

    .line 45
    aput-object v2, v12, v13

    .line 46
    .line 47
    const/4 v13, 0x0

    .line 48
    const/4 v14, 0x0

    .line 49
    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-eqz v7, :cond_2

    .line 54
    .line 55
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-lez v8, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 69
    .line 70
    .line 71
    return v5

    .line 72
    :cond_2
    if-eqz v7, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_1
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    if-eqz v7, :cond_4

    .line 82
    .line 83
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_1
    if-eqz v7, :cond_3

    .line 88
    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 90
    .line 91
    .line 92
    :cond_3
    throw v0

    .line 93
    :cond_4
    :goto_2
    iput-boolean v6, v1, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 94
    .line 95
    new-instance v0, Landroid/content/ContentValues;

    .line 96
    .line 97
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v6, "_data"

    .line 101
    .line 102
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v2, "format"

    .line 106
    .line 107
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    .line 113
    .line 114
    const-string/jumbo v2, "parent"

    .line 115
    .line 116
    .line 117
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    .line 123
    .line 124
    const-string/jumbo v2, "storage_id"

    .line 125
    .line 126
    .line 127
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    .line 133
    .line 134
    const-string v2, "_size"

    .line 135
    .line 136
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    .line 142
    .line 143
    const-string v2, "date_modified"

    .line 144
    .line 145
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    .line 151
    .line 152
    :try_start_2
    iget-object v2, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 153
    .line 154
    iget-object v6, v1, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 155
    .line 156
    invoke-virtual {v2, v6, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/4 v2, 0x2

    .line 167
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    return v0

    .line 178
    :cond_5
    return v5

    .line 179
    :catch_1
    move-exception v0

    .line 180
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .line 182
    .line 183
    return v5
.end method

.method private computeFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    return-object p1
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, -0x1

    .line 5
    if-ne p1, v3, :cond_5

    .line 6
    .line 7
    if-nez p2, :cond_2

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    move-object p2, p1

    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    if-ne p3, v3, :cond_1

    .line 16
    .line 17
    move p3, v2

    .line 18
    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    aput-object p2, p1, v2

    .line 25
    .line 26
    const-string/jumbo p2, "parent=?"

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    if-nez p3, :cond_3

    .line 31
    .line 32
    new-array p1, v1, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    aput-object p2, p1, v2

    .line 39
    .line 40
    const-string p2, "format=?"

    .line 41
    .line 42
    :goto_0
    move-object v10, p2

    .line 43
    move-object p2, p1

    .line 44
    move-object p1, v10

    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_3
    if-ne p3, v3, :cond_4

    .line 48
    .line 49
    move p3, v2

    .line 50
    :cond_4
    new-array p1, v0, [Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    aput-object p2, p1, v2

    .line 57
    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    aput-object p2, p1, v1

    .line 63
    .line 64
    const-string p2, "format=? AND parent=?"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    if-nez p2, :cond_8

    .line 68
    .line 69
    if-nez p3, :cond_6

    .line 70
    .line 71
    new-array p2, v1, [Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    aput-object p1, p2, v2

    .line 78
    .line 79
    const-string/jumbo p1, "storage_id=?"

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_6
    if-ne p3, v3, :cond_7

    .line 84
    .line 85
    move p3, v2

    .line 86
    :cond_7
    new-array p2, v0, [Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    aput-object p1, p2, v2

    .line 93
    .line 94
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    aput-object p1, p2, v1

    .line 99
    .line 100
    const-string/jumbo p1, "storage_id=? AND parent=?"

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_8
    if-nez p3, :cond_9

    .line 105
    .line 106
    new-array p3, v0, [Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    aput-object p1, p3, v2

    .line 113
    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    aput-object p1, p3, v1

    .line 119
    .line 120
    const-string/jumbo p1, "storage_id=? AND format=?"

    .line 121
    .line 122
    .line 123
    move-object p2, p3

    .line 124
    goto :goto_1

    .line 125
    :cond_9
    if-ne p3, v3, :cond_a

    .line 126
    .line 127
    move p3, v2

    .line 128
    :cond_a
    const/4 v3, 0x3

    .line 129
    new-array v3, v3, [Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    aput-object p1, v3, v2

    .line 136
    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    aput-object p1, v3, v1

    .line 142
    .line 143
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    aput-object p1, v3, v0

    .line 148
    .line 149
    const-string/jumbo p1, "storage_id=? AND format=? AND parent=?"

    .line 150
    .line 151
    .line 152
    move-object p2, v3

    .line 153
    :goto_1
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 154
    .line 155
    if-eqz p3, :cond_e

    .line 156
    .line 157
    if-nez p1, :cond_b

    .line 158
    .line 159
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 160
    .line 161
    move-object v7, p2

    .line 162
    move-object v6, p3

    .line 163
    goto :goto_4

    .line 164
    :cond_b
    const-string p3, " AND "

    .line 165
    .line 166
    invoke-static {p1, p3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    array-length p3, p2

    .line 180
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 181
    .line 182
    array-length v0, v0

    .line 183
    add-int/2addr p3, v0

    .line 184
    new-array p3, p3, [Ljava/lang/String;

    .line 185
    .line 186
    move v0, v2

    .line 187
    :goto_2
    array-length v3, p2

    .line 188
    if-ge v0, v3, :cond_c

    .line 189
    .line 190
    aget-object v3, p2, v0

    .line 191
    .line 192
    aput-object v3, p3, v0

    .line 193
    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_c
    :goto_3
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 198
    .line 199
    array-length v3, p2

    .line 200
    if-ge v2, v3, :cond_d

    .line 201
    .line 202
    aget-object p2, p2, v2

    .line 203
    .line 204
    aput-object p2, p3, v0

    .line 205
    .line 206
    add-int/2addr v0, v1

    .line 207
    add-int/lit8 v2, v2, 0x1

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_d
    move-object v6, p1

    .line 211
    move-object v7, p3

    .line 212
    goto :goto_4

    .line 213
    :cond_e
    move-object v6, p1

    .line 214
    move-object v7, p2

    .line 215
    :goto_4
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 216
    .line 217
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 218
    .line 219
    sget-object v5, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 220
    .line 221
    const/4 v8, 0x0

    .line 222
    const/4 v9, 0x0

    .line 223
    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    return-object p1
.end method

.method private deleteFile(I)I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "MtpDatabase"

    .line 4
    .line 5
    const-string v0, "failed to unhide/rescan for "

    .line 6
    .line 7
    const-string v3, "/%"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iput-boolean v4, v1, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    :try_start_0
    iget-object v7, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 14
    .line 15
    iget-object v8, v1, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 16
    .line 17
    sget-object v9, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 18
    .line 19
    const-string v10, "_id=?"

    .line 20
    .line 21
    new-array v11, v4, [Ljava/lang/String;

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    const/4 v14, 0x0

    .line 28
    aput-object v12, v11, v14

    .line 29
    .line 30
    const/4 v12, 0x0

    .line 31
    const/4 v13, 0x0

    .line 32
    invoke-virtual/range {v7 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 33
    .line 34
    .line 35
    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    if-eqz v7, :cond_6

    .line 37
    .line 38
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-eqz v9, :cond_6

    .line 43
    .line 44
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    const/4 v10, 0x2

    .line 49
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    if-eqz v9, :cond_5

    .line 54
    .line 55
    if-nez v11, :cond_0

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_0
    invoke-direct {v1, v9}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v12
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-eqz v12, :cond_1

    .line 64
    .line 65
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 66
    .line 67
    .line 68
    const/16 v0, 0x200d

    .line 69
    .line 70
    return v0

    .line 71
    :cond_1
    const/16 v12, 0x3001

    .line 72
    .line 73
    const-string v13, "/"

    .line 74
    .line 75
    if-ne v11, v12, :cond_2

    .line 76
    .line 77
    :try_start_2
    iget-object v15, v1, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v15}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    iget-object v5, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 84
    .line 85
    const-string v8, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    .line 86
    .line 87
    const/4 v12, 0x3

    .line 88
    new-array v12, v12, [Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    aput-object v3, v12, v14

    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    add-int/2addr v3, v4

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    aput-object v3, v12, v4

    .line 106
    .line 107
    invoke-virtual {v9, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    aput-object v3, v12, v10

    .line 112
    .line 113
    invoke-virtual {v5, v15, v8, v12}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object v3, v1, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 117
    .line 118
    move/from16 v4, p1

    .line 119
    .line 120
    int-to-long v4, v4

    .line 121
    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget-object v4, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 126
    .line 127
    invoke-virtual {v4, v3, v6, v6}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-lez v3, :cond_4

    .line 132
    .line 133
    const/16 v3, 0x3001

    .line 134
    .line 135
    if-eq v11, v3, :cond_3

    .line 136
    .line 137
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 138
    .line 139
    invoke-virtual {v9, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    const-string v4, "/.nomedia"

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    if-eqz v3, :cond_3

    .line 150
    .line 151
    :try_start_3
    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v9, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    iget-object v4, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 160
    .line 161
    const-string/jumbo v5, "unhide"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :catch_0
    :try_start_4
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 176
    .line 177
    .line 178
    const/16 v0, 0x2001

    .line 179
    .line 180
    return v0

    .line 181
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 182
    .line 183
    .line 184
    const/16 v0, 0x2009

    .line 185
    .line 186
    return v0

    .line 187
    :cond_5
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 188
    .line 189
    .line 190
    const/16 v2, 0x2002

    .line 191
    .line 192
    return v2

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    move-object v6, v7

    .line 195
    goto :goto_3

    .line 196
    :catch_1
    move-exception v0

    .line 197
    move-object v6, v7

    .line 198
    goto :goto_2

    .line 199
    :cond_6
    if-eqz v7, :cond_7

    .line 200
    .line 201
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 202
    .line 203
    .line 204
    :cond_7
    const/16 v0, 0x2009

    .line 205
    .line 206
    return v0

    .line 207
    :catchall_1
    move-exception v0

    .line 208
    goto :goto_3

    .line 209
    :catch_2
    move-exception v0

    .line 210
    :goto_2
    :try_start_5
    const-string v3, "RemoteException in deleteFile"

    .line 211
    .line 212
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 213
    .line 214
    .line 215
    if-eqz v6, :cond_8

    .line 216
    .line 217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    .line 219
    .line 220
    :cond_8
    const/16 v2, 0x2002

    .line 221
    .line 222
    return v2

    .line 223
    :goto_3
    if-eqz v6, :cond_9

    .line 224
    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    .line 227
    .line 228
    :cond_9
    throw v0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 4

    .line 1
    if-eqz p4, :cond_3

    .line 2
    .line 3
    const p4, 0xba05

    .line 4
    .line 5
    .line 6
    if-ne p3, p4, :cond_2

    .line 7
    .line 8
    const/16 p4, 0x2f

    .line 9
    .line 10
    invoke-virtual {p1, p4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ltz p4, :cond_0

    .line 16
    .line 17
    add-int/2addr p4, v0

    .line 18
    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p4, p1

    .line 24
    :goto_0
    const-string v1, ".pla"

    .line 25
    .line 26
    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/lit8 v1, v1, -0x4

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 46
    .line 47
    .line 48
    const-string v0, "_data"

    .line 49
    .line 50
    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo p1, "name"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p1, "format"

    .line 60
    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide p3

    .line 72
    const-wide/16 v2, 0x3e8

    .line 73
    .line 74
    div-long/2addr p3, v2

    .line 75
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string p3, "date_modified"

    .line 80
    .line 81
    invoke-virtual {v1, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo p1, "media_scanner_new_object_id"

    .line 85
    .line 86
    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    .line 93
    .line 94
    :try_start_0
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 95
    .line 96
    sget-object p2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 97
    .line 98
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception p1

    .line 103
    const-string p2, "MtpDatabase"

    .line 104
    .line 105
    const-string p3, "RemoteException in endSendObject"

    .line 106
    .line 107
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    iget-object p4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 112
    .line 113
    invoke-virtual {p4, p1, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;II)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 4

    .line 1
    const/16 v0, 0x2001

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sparse-switch p1, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    const/16 p1, 0x200a

    .line 8
    .line 9
    return p1

    .line 10
    :sswitch_0
    iget p1, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    .line 11
    .line 12
    int-to-long v2, p1

    .line 13
    aput-wide v2, p2, v1

    .line 14
    .line 15
    return v0

    .line 16
    :sswitch_1
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, ""

    .line 23
    .line 24
    invoke-interface {p2, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/16 v2, 0xff

    .line 33
    .line 34
    if-le p2, v2, :cond_0

    .line 35
    .line 36
    move p2, v2

    .line 37
    :cond_0
    invoke-virtual {p1, v1, p2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 38
    .line 39
    .line 40
    aput-char v1, p3, p2

    .line 41
    .line 42
    return v0

    .line 43
    :sswitch_2
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string/jumbo p2, "window"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/view/WindowManager;

    .line 53
    .line 54
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/Display;->getMaximumSizeDimension()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {p1}, Landroid/view/Display;->getMaximumSizeDimension()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string/jumbo p2, "x"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {p1, v1, p2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    aput-char v1, p3, p1

    .line 107
    .line 108
    return v0

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_2
        0xd401 -> :sswitch_1
        0xd402 -> :sswitch_1
        0xd407 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception p1

    .line 25
    :try_start_1
    const-string p2, "MtpDatabase"

    .line 26
    .line 27
    const-string p3, "RemoteException in getNumObjects"

    .line 28
    .line 29
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    const/4 p1, -0x1

    .line 36
    return p1

    .line 37
    :goto_2
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 40
    .line 41
    .line 42
    :cond_2
    throw p1
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 11

    .line 1
    const/16 v0, 0x2001

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1, v2, v3, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    aput-char v2, p2, p1

    .line 23
    .line 24
    const-wide/16 p1, 0x0

    .line 25
    .line 26
    aput-wide p1, p3, v2

    .line 27
    .line 28
    const-wide/16 p1, 0x3001

    .line 29
    .line 30
    aput-wide p1, p3, v1

    .line 31
    .line 32
    return v0

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 35
    .line 36
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 37
    .line 38
    sget-object v6, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 39
    .line 40
    const-string v7, "_id=?"

    .line 41
    .line 42
    new-array v8, v1, [Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    aput-object p1, v8, v2

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {p1, v2, v4, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    aput-char v2, p2, v4

    .line 80
    .line 81
    new-instance p2, Ljava/io/File;

    .line 82
    .line 83
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 87
    .line 88
    .line 89
    move-result-wide p1

    .line 90
    aput-wide p1, p3, v2

    .line 91
    .line 92
    const/4 p1, 0x2

    .line 93
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 94
    .line 95
    .line 96
    move-result-wide p1

    .line 97
    aput-wide p1, p3, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 100
    .line 101
    .line 102
    return v0

    .line 103
    :cond_1
    if-eqz v3, :cond_2

    .line 104
    .line 105
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    :cond_2
    const/16 p1, 0x2009

    .line 109
    .line 110
    return p1

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception p1

    .line 114
    :try_start_1
    const-string p2, "MtpDatabase"

    .line 115
    .line 116
    const-string p3, "RemoteException in getObjectFilePath"

    .line 117
    .line 118
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    if-eqz v3, :cond_3

    .line 122
    .line 123
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 124
    .line 125
    .line 126
    :cond_3
    const/16 p1, 0x2002

    .line 127
    .line 128
    return p1

    .line 129
    :goto_0
    if-eqz v3, :cond_4

    .line 130
    .line 131
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 132
    .line 133
    .line 134
    :cond_4
    throw p1
.end method

.method private getObjectFormat(I)I
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 6
    .line 7
    sget-object v4, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v5, "_id=?"

    .line 10
    .line 11
    const/4 v9, 0x1

    .line 12
    new-array v6, v9, [Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v7, 0x0

    .line 19
    aput-object p1, v6, v7

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 40
    .line 41
    .line 42
    return p1

    .line 43
    :cond_0
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 46
    .line 47
    .line 48
    :cond_1
    return v0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    :try_start_1
    const-string v2, "MtpDatabase"

    .line 53
    .line 54
    const-string v3, "RemoteException in getObjectFilePath"

    .line 55
    .line 56
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 62
    .line 63
    .line 64
    :cond_2
    return v0

    .line 65
    :goto_0
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    :cond_3
    throw p1
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 6
    .line 7
    sget-object v4, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v5, "_id=?"

    .line 10
    .line 11
    const/4 v9, 0x1

    .line 12
    new-array v6, v9, [Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    aput-object p1, v6, v0

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    aput p1, p2, v0

    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aput v2, p2, v9

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    aput v2, p2, p1

    .line 53
    .line 54
    const/4 p1, 0x4

    .line 55
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/16 p2, 0x2f

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-ltz p2, :cond_0

    .line 66
    .line 67
    add-int/2addr p2, v9

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move p2, v0

    .line 70
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    sub-int v3, v2, p2

    .line 75
    .line 76
    const/16 v4, 0xff

    .line 77
    .line 78
    if-le v3, v4, :cond_1

    .line 79
    .line 80
    add-int/lit16 v2, p2, 0xff

    .line 81
    .line 82
    :cond_1
    invoke-virtual {p1, p2, v2, p3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 83
    .line 84
    .line 85
    sub-int/2addr v2, p2

    .line 86
    aput-char v0, p3, v2

    .line 87
    .line 88
    const/4 p1, 0x5

    .line 89
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 90
    .line 91
    .line 92
    move-result-wide p1

    .line 93
    aput-wide p1, p4, v0

    .line 94
    .line 95
    const/4 p1, 0x6

    .line 96
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide p1

    .line 100
    aput-wide p1, p4, v9

    .line 101
    .line 102
    aget-wide v2, p4, v0

    .line 103
    .line 104
    const-wide/16 v4, 0x0

    .line 105
    .line 106
    cmp-long p3, v2, v4

    .line 107
    .line 108
    if-nez p3, :cond_2

    .line 109
    .line 110
    aput-wide p1, p4, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 113
    .line 114
    .line 115
    return v9

    .line 116
    :cond_3
    if-eqz v1, :cond_4

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    goto :goto_2

    .line 121
    :catch_0
    move-exception p1

    .line 122
    :try_start_1
    const-string p2, "MtpDatabase"

    .line 123
    .line 124
    const-string p3, "RemoteException in getObjectInfo"

    .line 125
    .line 126
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    .line 133
    .line 134
    :cond_4
    return v0

    .line 135
    :goto_2
    if-eqz v1, :cond_5

    .line 136
    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 138
    .line 139
    .line 140
    :cond_5
    throw p1
.end method

.method private getObjectList(III)[I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-lez p2, :cond_3

    .line 19
    .line 20
    new-array p3, p2, [I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v2, p2, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    aput v3, p3, v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 39
    .line 40
    .line 41
    return-object p3

    .line 42
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :catch_0
    move-exception p2

    .line 47
    goto :goto_2

    .line 48
    :catchall_0
    move-exception p2

    .line 49
    goto :goto_4

    .line 50
    :catch_1
    move-exception p2

    .line 51
    move-object p1, v0

    .line 52
    :goto_2
    :try_start_2
    const-string p3, "MtpDatabase"

    .line 53
    .line 54
    const-string v1, "RemoteException in getObjectList"

    .line 55
    .line 56
    invoke-static {p3, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    :goto_3
    return-object v0

    .line 63
    :catchall_1
    move-exception p2

    .line 64
    move-object v0, p1

    .line 65
    :goto_4
    if-eqz v0, :cond_5

    .line 66
    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    :cond_5
    throw p2
.end method

.method private getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_0

    .line 3
    .line 4
    new-instance p1, Landroid/mtp/MtpPropertyList;

    .line 5
    .line 6
    const p2, 0xa807

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0, p2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 p4, -0x1

    .line 14
    if-ne p3, p4, :cond_2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    if-eq p1, p4, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->getObjectFormat(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    :cond_1
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Landroid/mtp/MtpPropertyGroup;

    .line 37
    .line 38
    if-nez p3, :cond_4

    .line 39
    .line 40
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    new-instance p4, Landroid/mtp/MtpPropertyGroup;

    .line 45
    .line 46
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 47
    .line 48
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {p4, p0, v0, v1, p3}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    .line 51
    .line 52
    .line 53
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p4, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    check-cast p4, Landroid/mtp/MtpPropertyGroup;

    .line 74
    .line 75
    if-nez p4, :cond_3

    .line 76
    .line 77
    const/4 p4, 0x1

    .line 78
    new-array p4, p4, [I

    .line 79
    .line 80
    aput p3, p4, v0

    .line 81
    .line 82
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .line 83
    .line 84
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 85
    .line 86
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v0, p0, v1, v2, p4}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    .line 89
    .line 90
    .line 91
    iget-object p4, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p4, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-object p3, v0

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    :goto_0
    move-object p3, p4

    .line 103
    :cond_4
    :goto_1
    invoke-virtual {p3, p1, p2, p5}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method

.method private getObjectReferences(I)[I
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v4

    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 10
    .line 11
    sget-object v5, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object p1

    .line 29
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lez v1, :cond_3

    .line 34
    .line 35
    new-array v2, v1, [I

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    move v4, v3

    .line 39
    :goto_0
    if-ge v4, v1, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    aput v5, v2, v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :catch_0
    move-exception v1

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    move-object v10, v0

    .line 61
    move-object v0, p1

    .line 62
    move-object p1, v10

    .line 63
    goto :goto_2

    .line 64
    :catch_1
    move-exception v1

    .line 65
    move-object v0, p1

    .line 66
    :goto_1
    :try_start_2
    const-string v2, "MtpDatabase"

    .line 67
    .line 68
    const-string v3, "RemoteException in getObjectList"

    .line 69
    .line 70
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-object p1

    .line 79
    :catchall_1
    move-exception p1

    .line 80
    :goto_2
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    .line 84
    .line 85
    :cond_5
    throw p1
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    return-object v0

    .line 8
    nop

    .line 9
    :array_0
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
        0xd407
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1

    .line 1
    const/16 v0, 0x3008

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x3009

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x300b

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x3801

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x3804

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x3807

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x380b

    .line 26
    .line 27
    if-eq p1, v0, :cond_0

    .line 28
    .line 29
    const v0, 0xb981

    .line 30
    .line 31
    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    const v0, 0xb984

    .line 35
    .line 36
    .line 37
    if-eq p1, v0, :cond_1

    .line 38
    .line 39
    const/16 v0, 0x3811

    .line 40
    .line 41
    if-eq p1, v0, :cond_0

    .line 42
    .line 43
    const/16 v0, 0x3812

    .line 44
    .line 45
    if-eq p1, v0, :cond_0

    .line 46
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    sget-object p1, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_0
    sget-object p1, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_1
    sget-object p1, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_2
    :pswitch_0
    sget-object p1, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 60
    .line 61
    return-object p1

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0xb901
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x3811
        0x3812
    .end array-data
.end method

.method private inStorageRoot(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move v3, v0

    .line 16
    :goto_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 17
    .line 18
    array-length v5, v4

    .line 19
    if-ge v0, v5, :cond_3

    .line 20
    .line 21
    if-nez v3, :cond_3

    .line 22
    .line 23
    aget-object v4, v4, v0

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ge v5, v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/16 v6, 0x2f

    .line 36
    .line 37
    if-ne v5, v6, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    move v3, v1

    .line 46
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    return v3
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 11

    .line 1
    const-string v0, "device-properties"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_7

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :try_start_1
    const-string/jumbo v4, "properties"

    .line 28
    .line 29
    .line 30
    const-string v3, "_id"

    .line 31
    .line 32
    const-string v5, "code"

    .line 33
    .line 34
    const-string/jumbo v6, "value"

    .line 35
    .line 36
    .line 37
    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v3, v1

    .line 47
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 54
    .line 55
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const/4 v5, 0x2

    .line 71
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception v3

    .line 84
    goto :goto_3

    .line 85
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 86
    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 88
    .line 89
    .line 90
    :cond_2
    if-eqz v1, :cond_4

    .line 91
    .line 92
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    move-object v1, v2

    .line 98
    goto :goto_5

    .line 99
    :catch_1
    move-exception v3

    .line 100
    move-object v1, v2

    .line 101
    :goto_3
    :try_start_2
    const-string v4, "MtpDatabase"

    .line 102
    .line 103
    const-string v5, "failed to migrate device properties"

    .line 104
    .line 105
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    .line 107
    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 111
    .line 112
    .line 113
    :cond_3
    if-eqz v1, :cond_4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    :goto_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    :goto_5
    if-eqz v2, :cond_5

    .line 122
    .line 123
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 124
    .line 125
    .line 126
    :cond_5
    if-eqz v1, :cond_6

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 129
    .line 130
    .line 131
    :cond_6
    throw p1

    .line 132
    :cond_7
    :goto_6
    return-void
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

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
    move v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v0, v3, :cond_2

    .line 12
    .line 13
    aget-object v2, v2, v0

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return v1
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v3, "renameFile: handle="

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move/from16 v3, p1

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v4, ", newName="

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v4, "MtpDatabase"

    .line 31
    .line 32
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    new-array v12, v2, [Ljava/lang/String;

    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v13, 0x0

    .line 43
    aput-object v3, v12, v13

    .line 44
    .line 45
    const/16 v3, 0x2002

    .line 46
    .line 47
    const/4 v14, 0x0

    .line 48
    :try_start_0
    iget-object v5, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 49
    .line 50
    iget-object v6, v1, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 51
    .line 52
    sget-object v7, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 53
    .line 54
    const-string v8, "_id=?"

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    move-object v9, v12

    .line 59
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 60
    .line 61
    .line 62
    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_0

    .line 70
    .line 71
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const/4 v7, 0x2

    .line 76
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    const/4 v8, 0x3

    .line 81
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    move-object v14, v5

    .line 88
    goto/16 :goto_4

    .line 89
    .line 90
    :catch_0
    move-exception v0

    .line 91
    move-object v14, v5

    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_0
    move-object v6, v14

    .line 95
    move-object v7, v6

    .line 96
    move-object v8, v7

    .line 97
    :goto_0
    if-eqz v5, :cond_1

    .line 98
    .line 99
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 100
    .line 101
    .line 102
    :cond_1
    if-nez v6, :cond_2

    .line 103
    .line 104
    const/16 v0, 0x2009

    .line 105
    .line 106
    return v0

    .line 107
    :cond_2
    invoke-direct {v1, v6}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_3

    .line 112
    .line 113
    const/16 v0, 0x200d

    .line 114
    .line 115
    return v0

    .line 116
    :cond_3
    new-instance v5, Ljava/io/File;

    .line 117
    .line 118
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/16 v9, 0x2f

    .line 122
    .line 123
    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(I)I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-gt v9, v2, :cond_4

    .line 128
    .line 129
    return v3

    .line 130
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    add-int/2addr v9, v2

    .line 136
    invoke-virtual {v6, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    new-instance v9, Ljava/io/File;

    .line 151
    .line 152
    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    const-string v11, " to "

    .line 160
    .line 161
    if-nez v10, :cond_5

    .line 162
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string/jumbo v5, "renaming "

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, " failed"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    return v3

    .line 193
    :cond_5
    new-instance v10, Landroid/content/ContentValues;

    .line 194
    .line 195
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v15, "_data"

    .line 199
    .line 200
    invoke-virtual {v10, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    if-eqz v15, :cond_8

    .line 208
    .line 209
    invoke-direct {v1, v0}, Landroid/mtp/MtpDatabase;->computeFileTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    const-string/jumbo v13, "title"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    if-eqz v8, :cond_6

    .line 220
    .line 221
    const-string v8, "_display_name"

    .line 222
    .line 223
    invoke-virtual {v10, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_6
    if-eqz v7, :cond_7

    .line 227
    .line 228
    const-string/jumbo v7, "title_key"

    .line 229
    .line 230
    .line 231
    invoke-static {v15}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {v10, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_7
    if-eqz v0, :cond_8

    .line 239
    .line 240
    const-string v7, ".pla"

    .line 241
    .line 242
    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_8

    .line 247
    .line 248
    const-string/jumbo v0, "name"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_8
    :try_start_2
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 255
    .line 256
    iget-object v7, v1, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 257
    .line 258
    const-string v8, "_id=?"

    .line 259
    .line 260
    invoke-virtual {v0, v7, v10, v8, v12}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 264
    goto :goto_1

    .line 265
    :catch_1
    move-exception v0

    .line 266
    const-string v7, "RemoteException in mMediaProvider.update"

    .line 267
    .line 268
    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .line 270
    .line 271
    const/4 v13, 0x0

    .line 272
    :goto_1
    if-nez v13, :cond_9

    .line 273
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v7, "Unable to update path for "

    .line 277
    .line 278
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 298
    .line 299
    .line 300
    return v3

    .line 301
    :cond_9
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    const-string v3, "failed to unhide/rescan for "

    .line 306
    .line 307
    const-string/jumbo v6, "unhide"

    .line 308
    .line 309
    .line 310
    if-eqz v0, :cond_a

    .line 311
    .line 312
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    const-string v5, "."

    .line 317
    .line 318
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_b

    .line 323
    .line 324
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_b

    .line 329
    .line 330
    :try_start_3
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 331
    .line 332
    invoke-virtual {v0, v6, v2, v14}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 333
    .line 334
    .line 335
    goto :goto_2

    .line 336
    :catch_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    goto :goto_2

    .line 344
    :cond_a
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 349
    .line 350
    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    const-string v8, ".nomedia"

    .line 355
    .line 356
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_b

    .line 361
    .line 362
    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-nez v0, :cond_b

    .line 371
    .line 372
    :try_start_4
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 373
    .line 374
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-virtual {v0, v6, v5, v14}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 379
    .line 380
    .line 381
    goto :goto_2

    .line 382
    :catch_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    :cond_b
    :goto_2
    const/16 v0, 0x2001

    .line 390
    .line 391
    return v0

    .line 392
    :catchall_1
    move-exception v0

    .line 393
    goto :goto_4

    .line 394
    :catch_4
    move-exception v0

    .line 395
    :goto_3
    :try_start_5
    const-string v2, "RemoteException in getObjectFilePath"

    .line 396
    .line 397
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 398
    .line 399
    .line 400
    if-eqz v14, :cond_c

    .line 401
    .line 402
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 403
    .line 404
    .line 405
    :cond_c
    return v3

    .line 406
    :goto_4
    if-eqz v14, :cond_d

    .line 407
    .line 408
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 409
    .line 410
    .line 411
    :cond_d
    throw v0
.end method

.method private sessionEnded()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mUserContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v2, "android.provider.action.MTP_SESSION_END"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private sessionStarted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x200a

    .line 5
    .line 6
    return p1

    .line 7
    :pswitch_0
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p2, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/16 p1, 0x2001

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 p1, 0x2002

    .line 30
    .line 31
    :goto_0
    return p1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 0

    const p3, 0xdc07

    if-eq p2, p3, :cond_0

    const p1, 0xa80a

    return p1

    :cond_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setObjectReferences(I[I)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 5
    .line 6
    int-to-long v1, p1

    .line 7
    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v0, p2

    .line 12
    new-array v1, v0, [Landroid/content/ContentValues;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v0, :cond_0

    .line 16
    .line 17
    new-instance v3, Landroid/content/ContentValues;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 20
    .line 21
    .line 22
    aget v4, p2, v2

    .line 23
    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string v5, "_id"

    .line 29
    .line 30
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :try_start_0
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 39
    .line 40
    invoke-virtual {p2, p1, v1}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 41
    .line 42
    .line 43
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-lez p1, :cond_1

    .line 45
    .line 46
    const/16 p1, 0x2001

    .line 47
    .line 48
    return p1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    const-string p2, "MtpDatabase"

    .line 51
    .line 52
    const-string v0, "RemoteException in setObjectReferences"

    .line 53
    .line 54
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    const/16 p1, 0x2002

    .line 58
    .line 59
    return p1
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/MediaScanner;->close()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    new-instance v1, Landroid/content/IntentFilter;

    .line 17
    .line 18
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
