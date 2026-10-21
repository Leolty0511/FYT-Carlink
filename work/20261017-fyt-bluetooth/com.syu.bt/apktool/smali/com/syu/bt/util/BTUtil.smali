.class public Lcom/syu/bt/util/BTUtil;
.super Ljava/lang/Object;
.source "BTUtil.java"


# static fields
.field public static final COLUMNS_PHONE_ONLY:[Ljava/lang/String;

.field private static lastClickTime:J

.field private static mInstance:Lcom/syu/bt/util/BTUtil;

.field static playId:I

.field static soundPool:Landroid/media/SoundPool;

.field private static typeFace_Bold:Landroid/graphics/Typeface;

.field private static typeFace_Light:Landroid/graphics/Typeface;

.field private static typeFace_Regular:Landroid/graphics/Typeface;

.field public static usb_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private File_Path:[Ljava/lang/String;

.field final TIME:J

.field private fileFlag:Ljava/lang/String;

.field public ii:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field public windowSize:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/syu/bt/util/BTUtil;->usb_list:Ljava/util/List;

    .line 664
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 665
    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 666
    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lookup"

    aput-object v2, v0, v1

    .line 664
    sput-object v0, Lcom/syu/bt/util/BTUtil;->COLUMNS_PHONE_ONLY:[Ljava/lang/String;

    .line 860
    const v0, -0xf4240

    sput v0, Lcom/syu/bt/util/BTUtil;->playId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "BT.bin"

    iput-object v0, p0, Lcom/syu/bt/util/BTUtil;->mFileName:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/util/BTUtil;->mFilePath:Ljava/lang/String;

    .line 79
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/mnt/sdcard/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/storage/USB1/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/storage/USB2/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 80
    const-string v2, "/storage/USB3/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/storage/USB4/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/storage/USB5/"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/storage/USB6/"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/storage/USB7/"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/storage/USB8/"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 81
    const-string v2, "/storage/USB9/"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/storage/USB10/"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/storage/USB11/"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/storage/USB12/"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/storage/USB13/"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/storage/USB3-1/"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 82
    const-string v2, "/storage/USB3-2/"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "/storage/USB3-3/"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "/storage/sd1/"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "/storage/sd2/"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/syu/bt/util/BTUtil;->File_Path:[Ljava/lang/String;

    .line 83
    const-string v0, "num"

    iput-object v0, p0, Lcom/syu/bt/util/BTUtil;->fileFlag:Ljava/lang/String;

    .line 84
    const-string v0, "TZY"

    iput-object v0, p0, Lcom/syu/bt/util/BTUtil;->ii:Ljava/lang/String;

    .line 193
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/syu/bt/util/BTUtil;->TIME:J

    .line 75
    return-void
.end method

.method public static autoBond(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 8
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "strPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setPin"

    .line 166
    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v6

    .line 165
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 168
    .local v0, "autoBondMethod":Ljava/lang/reflect/Method;
    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v2, v6

    .line 167
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 169
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createBond"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 174
    .local v0, "createBondMethod":Ljava/lang/reflect/Method;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 175
    .local v1, "returnValue":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static getBtTone(Landroid/content/Context;II)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I
    .param p2, "recycle"    # I

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 863
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "TZY_NEW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "TZY_BT_1920"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "TZY_OEM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 941
    :cond_1
    :goto_0
    return-void

    .line 866
    :cond_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    invoke-virtual {v8}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 869
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v9, "ringtype"

    invoke-virtual {v8, v9, v11}, Lcom/lsec/core/util/MySharePreference2;->getIntValue(Ljava/lang/String;I)I

    move-result v6

    .line 870
    .local v6, "type":I
    const/4 v8, 0x3

    if-eq v6, v8, :cond_1

    .line 874
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->releaseTone()V

    .line 875
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_4

    .line 876
    new-instance v3, Landroid/media/SoundPool$Builder;

    invoke-direct {v3}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 878
    .local v3, "builder":Landroid/media/SoundPool$Builder;
    invoke-virtual {v3, v10}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 880
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 882
    .local v2, "attrBuilder":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {v2, v10}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 884
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 885
    invoke-virtual {v3}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v8

    sput-object v8, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    .line 892
    .end local v2    # "attrBuilder":Landroid/media/AudioAttributes$Builder;
    .end local v3    # "builder":Landroid/media/SoundPool$Builder;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 893
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v0, 0x0

    .line 896
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-ne v6, v10, :cond_6

    .line 897
    if-ne p1, v11, :cond_5

    .line 898
    :try_start_0
    const-string v8, "ring_connect.mp3"

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 920
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    .line 923
    sget-object v8, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v8, v0, v10}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v7

    .line 924
    .local v7, "voiceId":I
    move v5, p2

    .line 925
    .local v5, "num":I
    sget-object v8, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    new-instance v9, Lcom/syu/bt/util/BTUtil$1;

    invoke-direct {v9, v7, v5}, Lcom/syu/bt/util/BTUtil$1;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    goto :goto_0

    .line 889
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "num":I
    .end local v7    # "voiceId":I
    :cond_4
    new-instance v8, Landroid/media/SoundPool;

    const/4 v9, 0x0

    invoke-direct {v8, v10, v10, v9}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v8, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    goto :goto_1

    .line 899
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    :cond_5
    if-ne p1, v12, :cond_3

    .line 900
    :try_start_1
    const-string v8, "ring_search.mp3"

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 901
    goto :goto_2

    .line 902
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ru"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 903
    const/4 p2, 0x0

    .line 904
    if-ne p1, v11, :cond_7

    .line 905
    const-string v8, "ru_connect_tone.wav"

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_2

    .line 906
    :cond_7
    if-ne p1, v12, :cond_3

    .line 907
    const-string v8, "ru_search_tone.wav"

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 908
    goto :goto_2

    .line 909
    :cond_8
    if-ne p1, v11, :cond_9

    .line 910
    const-string v8, "connect_tone.mp3"

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_2

    .line 912
    :cond_9
    const-string v8, "search_tone.mp3"

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    .line 915
    :catch_0
    move-exception v4

    .line 917
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getBtTone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resouce"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 944
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_BT_1920"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 992
    :cond_1
    :goto_0
    return-void

    .line 948
    :cond_2
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->releaseTone()V

    .line 949
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_3

    .line 950
    new-instance v3, Landroid/media/SoundPool$Builder;

    invoke-direct {v3}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 952
    .local v3, "builder":Landroid/media/SoundPool$Builder;
    invoke-virtual {v3, v8}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 954
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 956
    .local v2, "attrBuilder":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {v2, v8}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 958
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 959
    invoke-virtual {v3}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v6

    sput-object v6, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    .line 964
    .end local v2    # "attrBuilder":Landroid/media/AudioAttributes$Builder;
    .end local v3    # "builder":Landroid/media/SoundPool$Builder;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 965
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v0, 0x0

    .line 967
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 973
    :goto_2
    if-eqz v0, :cond_1

    .line 976
    sget-object v6, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v6, v0, v8}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v5

    .line 977
    .local v5, "voiceId":I
    sget-object v6, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    new-instance v7, Lcom/syu/bt/util/BTUtil$2;

    invoke-direct {v7, v5}, Lcom/syu/bt/util/BTUtil$2;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    goto :goto_0

    .line 961
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v5    # "voiceId":I
    :cond_3
    new-instance v6, Landroid/media/SoundPool;

    const/4 v7, 0x0

    invoke-direct {v6, v8, v8, v7}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v6, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    goto :goto_1

    .line 968
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v4

    .line 970
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1329
    if-nez p0, :cond_0

    .line 1330
    const/4 v0, 0x0

    .line 1358
    :goto_0
    return-object v0

    .line 1332
    :cond_0
    const/4 v2, 0x0

    .line 1333
    .local v2, "min":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1334
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1338
    :goto_1
    const/4 v4, 0x0

    .line 1339
    .local v4, "x":I
    const/4 v5, 0x0

    .line 1340
    .local v5, "y":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v6, v2, :cond_2

    .line 1341
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    neg-int v4, v6

    .line 1345
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v6, v2, :cond_3

    .line 1346
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    neg-int v5, v6

    .line 1350
    :goto_3
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1351
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1353
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1354
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1355
    .local v1, "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1356
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1357
    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    invoke-virtual {v1, p0, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1336
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1

    .line 1343
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v4, v2, v6

    goto :goto_2

    .line 1348
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v5, v2, v6

    goto :goto_3
.end method

.method public static getCircleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1362
    if-nez p0, :cond_0

    .line 1363
    const/4 v0, 0x0

    .line 1391
    :goto_0
    return-object v0

    .line 1365
    :cond_0
    const/4 v2, 0x0

    .line 1366
    .local v2, "min":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1367
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1371
    :goto_1
    const/4 v4, 0x0

    .line 1372
    .local v4, "x":I
    const/4 v5, 0x0

    .line 1373
    .local v5, "y":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v6, v2, :cond_2

    .line 1374
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    neg-int v4, v6

    .line 1378
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v6, v2, :cond_3

    .line 1379
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    neg-int v5, v6

    .line 1383
    :goto_3
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1384
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1386
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1387
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1388
    .local v1, "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1389
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1390
    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    invoke-virtual {v1, p0, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1369
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1

    .line 1376
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v4, v2, v6

    goto :goto_2

    .line 1381
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v5, v2, v6

    goto :goto_3
.end method

.method public static getDateTimeFromMillisecond(Ljava/lang/Long;)Ljava/lang/String;
    .locals 6
    .param p0, "millisecond"    # Ljava/lang/Long;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 540
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 541
    .local v2, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 542
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "dateStr":Ljava/lang/String;
    return-object v1
.end method

.method public static getDevice_Imei()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1035
    :try_start_0
    sget-object v4, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_0

    .line 1036
    sget-object v4, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    sput-object v4, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1039
    :cond_0
    sget-object v4, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_2

    .line 1040
    sget-object v4, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 1041
    .local v2, "imei1":Ljava/lang/String;
    sget-object v4, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    .line 1043
    .local v3, "imei2":Ljava/lang/String;
    sget-object v4, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "iccid1":Ljava/lang/String;
    sget-object v4, Lcom/syu/bt/App_Bt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, "iccid2":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 1055
    .end local v0    # "iccid1":Ljava/lang/String;
    .end local v1    # "iccid2":Ljava/lang/String;
    .end local v3    # "imei2":Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v0    # "iccid1":Ljava/lang/String;
    .restart local v1    # "iccid2":Ljava/lang/String;
    .restart local v3    # "imei2":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    .line 1049
    goto :goto_0

    .line 1052
    .end local v0    # "iccid1":Ljava/lang/String;
    .end local v1    # "iccid2":Ljava/lang/String;
    .end local v3    # "imei2":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1055
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getExternalStoragePath(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    const-string v9, "storage"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    .line 103
    .local v7, "storageManager":Landroid/os/storage/StorageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-class v9, Landroid/os/storage/StorageManager;

    const-string v10, "getVolumeList"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 106
    .local v1, "getVolumeListMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 107
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 108
    .local v3, "invokes":Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 110
    .local v4, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 127
    .end local v1    # "getVolumeListMethod":Ljava/lang/reflect/Method;
    .end local v2    # "i":I
    .end local v3    # "invokes":Ljava/lang/Object;
    .end local v4    # "length":I
    :goto_1
    return-object v5

    .line 111
    .restart local v1    # "getVolumeListMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "i":I
    .restart local v3    # "invokes":Ljava/lang/Object;
    .restart local v4    # "length":I
    :cond_0
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 112
    .local v8, "storageVolumeElement":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getPath"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    .local v6, "path":Ljava/lang/String;
    const-string v9, "/storage/emulated/0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "/storage"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 121
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "getVolumeListMethod":Ljava/lang/reflect/Method;
    .end local v2    # "i":I
    .end local v3    # "invokes":Ljava/lang/Object;
    .end local v4    # "length":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v8    # "storageVolumeElement":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/syu/bt/util/BTUtil;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/syu/bt/util/BTUtil;->mInstance:Lcom/syu/bt/util/BTUtil;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/syu/bt/util/BTUtil;

    invoke-direct {v0}, Lcom/syu/bt/util/BTUtil;-><init>()V

    sput-object v0, Lcom/syu/bt/util/BTUtil;->mInstance:Lcom/syu/bt/util/BTUtil;

    .line 93
    :cond_0
    sget-object v0, Lcom/syu/bt/util/BTUtil;->mInstance:Lcom/syu/bt/util/BTUtil;

    return-object v0
.end method

.method public static getTimeFromMillisecond(Ljava/lang/Long;)Ljava/lang/String;
    .locals 6
    .param p0, "millisecond"    # Ljava/lang/Long;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 534
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "timeStr":Ljava/lang/String;
    return-object v2
.end method

.method public static getTypeFace_Bold(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 821
    sget-object v0, Lcom/syu/bt/util/BTUtil;->typeFace_Bold:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 822
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/ysextbold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/syu/bt/util/BTUtil;->typeFace_Bold:Landroid/graphics/Typeface;

    .line 825
    :cond_0
    sget-object v0, Lcom/syu/bt/util/BTUtil;->typeFace_Bold:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getTypeFace_Light(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 810
    sget-object v0, Lcom/syu/bt/util/BTUtil;->typeFace_Light:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 811
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/ystextlight.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/syu/bt/util/BTUtil;->typeFace_Light:Landroid/graphics/Typeface;

    .line 814
    :cond_0
    sget-object v0, Lcom/syu/bt/util/BTUtil;->typeFace_Light:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 800
    sget-object v0, Lcom/syu/bt/util/BTUtil;->typeFace_Regular:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/ystextregular.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/syu/bt/util/BTUtil;->typeFace_Regular:Landroid/graphics/Typeface;

    .line 804
    :cond_0
    sget-object v0, Lcom/syu/bt/util/BTUtil;->typeFace_Regular:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getXfermodeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "dest"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 995
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v8

    .line 1029
    :goto_0
    return-object v0

    .line 998
    :cond_1
    const/4 v3, 0x0

    .line 999
    .local v3, "min":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 1000
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1004
    :goto_1
    const/4 v6, 0x0

    .line 1005
    .local v6, "x":I
    const/4 v7, 0x0

    .line 1006
    .local v7, "y":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-le v9, v3, :cond_3

    .line 1007
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v9, v3

    neg-int v6, v9

    .line 1011
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v9, v3, :cond_4

    .line 1012
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v3

    neg-int v7, v9

    .line 1016
    :goto_3
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1017
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1019
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1020
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1021
    .local v2, "height":I
    const/16 v9, 0x500

    const/16 v10, 0x320

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1022
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1023
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p0, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1025
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1026
    invoke-virtual {v1, p1, v12, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1002
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "width":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_1

    .line 1009
    .restart local v6    # "x":I
    .restart local v7    # "y":I
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v6, v3, v9

    goto :goto_2

    .line 1014
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v7, v3, v9

    goto :goto_3
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1059
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return v1

    .line 1062
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 1068
    const/4 v1, 0x1

    goto :goto_0

    .line 1063
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1062
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static outputCircleLittle(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "data"    # I

    .prologue
    const/4 v11, 0x0

    .line 1305
    if-nez p0, :cond_0

    .line 1306
    const/4 v3, 0x0

    .line 1325
    :goto_0
    return-object v3

    .line 1307
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1308
    .local v1, "i":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1309
    .local v2, "j":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1310
    .local v5, "localConfig":Landroid/graphics/Bitmap$Config;
    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1311
    .local v3, "localBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1312
    .local v4, "localCanvas":Landroid/graphics/Canvas;
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v11, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1313
    const v0, -0xbdbdbe

    .line 1314
    .local v0, "color":I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1315
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v7, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1316
    .local v7, "rect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1318
    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1321
    int-to-float v9, p1

    int-to-float v10, p1

    invoke-virtual {v4, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1322
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1323
    invoke-virtual {v4, p0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static pauseTone()V
    .locals 2

    .prologue
    .line 841
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_BT_1920"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_OEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    :cond_1
    :goto_0
    return-void

    .line 844
    :cond_2
    sget-object v0, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 845
    sget-object v0, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    sget v1, Lcom/syu/bt/util/BTUtil;->playId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    goto :goto_0
.end method

.method public static releaseTone()V
    .locals 2

    .prologue
    .line 830
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_BT_1920"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_OEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 837
    :cond_1
    :goto_0
    return-void

    .line 833
    :cond_2
    sget-object v0, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 834
    sget-object v0, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    sget v1, Lcom/syu/bt/util/BTUtil;->playId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 835
    sget-object v0, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    goto :goto_0
.end method

.method public static resumeTone()V
    .locals 2

    .prologue
    .line 851
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_BT_1920"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_OEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 857
    :cond_1
    :goto_0
    return-void

    .line 854
    :cond_2
    sget-object v0, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 855
    sget-object v0, Lcom/syu/bt/util/BTUtil;->soundPool:Landroid/media/SoundPool;

    sget v1, Lcom/syu/bt/util/BTUtil;->playId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0
.end method

.method public static writeLogToFile(Ljava/lang/String;)V
    .locals 12
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 1397
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/btLog"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1398
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1399
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1401
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/bt.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1402
    .local v6, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v2, "f":Ljava/io/File;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1423
    :goto_0
    return-void

    .line 1408
    :cond_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1409
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1412
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1413
    .local v5, "fos":Ljava/io/FileOutputStream;
    const-string v7, "utf-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 1414
    const-string v7, "\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 1416
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1417
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 1418
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 1419
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1420
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1421
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public IsConnectCarplay()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public chechTopActivity()Z
    .locals 8

    .prologue
    .line 1427
    sget-object v4, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1428
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1429
    .local v2, "runnings":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v3, 0x0

    .line 1430
    .local v3, "state":Z
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 1431
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1443
    :cond_1
    :goto_0
    return v3

    .line 1431
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1432
    .local v1, "running":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v5, "gdy666"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " chechTopActivity running.processName = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, "com.syu.fourcamera2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1434
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_3

    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    .line 1435
    :cond_3
    const/4 v3, 0x1

    .line 1436
    goto :goto_0

    .line 1437
    :cond_4
    const/4 v3, 0x0

    .line 1439
    goto :goto_0
.end method

.method public checkApkExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 497
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v1

    .line 501
    :cond_1
    :try_start_0
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 502
    const/16 v3, 0x2000

    .line 501
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    const/4 v1, 0x1

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public connect7731OBD([B)V
    .locals 9
    .param p1, "arg"    # [B

    .prologue
    .line 617
    :try_start_0
    sget-object v7, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v8, "bluetooth"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothManager;

    .line 618
    .local v6, "man":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 619
    .local v1, "adp":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0, v1}, Lcom/syu/bt/util/BTUtil;->removeBond(Landroid/bluetooth/BluetoothAdapter;)V

    .line 620
    const-string v4, ""

    .line 621
    .local v4, "formatAddr":Ljava/lang/String;
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "addr":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 623
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-lt v5, v7, :cond_1

    .line 633
    .end local v5    # "i":I
    :goto_1
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 635
    .local v2, "dev":Landroid/bluetooth/BluetoothDevice;
    if-eqz p1, :cond_0

    .line 636
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 639
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 643
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "adp":Landroid/bluetooth/BluetoothAdapter;
    .end local v2    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "formatAddr":Ljava/lang/String;
    .end local v6    # "man":Landroid/bluetooth/BluetoothManager;
    :goto_2
    return-void

    .line 624
    .restart local v0    # "addr":Ljava/lang/String;
    .restart local v1    # "adp":Landroid/bluetooth/BluetoothAdapter;
    .restart local v4    # "formatAddr":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "man":Landroid/bluetooth/BluetoothManager;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 625
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-lt v5, v7, :cond_2

    .line 623
    :goto_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 628
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_3

    .line 631
    .end local v5    # "i":I
    :cond_3
    move-object v4, v0

    goto :goto_1

    .line 640
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "adp":Landroid/bluetooth/BluetoothAdapter;
    .end local v4    # "formatAddr":Ljava/lang/String;
    .end local v6    # "man":Landroid/bluetooth/BluetoothManager;
    :catch_0
    move-exception v3

    .line 641
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 692
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v7, "oldFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_1

    .line 722
    .end local v7    # "oldFile":Ljava/io/File;
    :cond_0
    :goto_0
    return v8

    .line 697
    .restart local v7    # "oldFile":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/favmyinfo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 699
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 701
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 704
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 707
    :cond_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 708
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v6, v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 709
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 711
    .local v0, "buffer":[B
    :goto_1
    const/4 v9, -0x1

    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "byteRead":I
    if-ne v9, v1, :cond_4

    .line 714
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 715
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 716
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 718
    const/4 v8, 0x1

    goto :goto_0

    .line 712
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 719
    .end local v0    # "buffer":[B
    .end local v1    # "byteRead":I
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "oldFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 721
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 670
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    .line 671
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 672
    const-string v1, "strequent_phone_only"

    .line 673
    const-string v3, "true"

    .line 672
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 675
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/syu/bt/util/BTUtil;->COLUMNS_PHONE_ONLY:[Ljava/lang/String;

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v3, "gdy13"

    const-string v4, " 33 DEL_CONTACT_ALL   "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/mybtinfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public deleteFloderFileByData()V
    .locals 12

    .prologue
    .line 196
    const-string v5, "crash"

    .line 197
    .local v5, "floder":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 198
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 216
    :cond_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 203
    .local v4, "fileArray":[Ljava/io/File;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 204
    array-length v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v4, v6

    .line 205
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 204
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 210
    .local v0, "data":J
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v0, v8

    if-ltz v8, :cond_2

    .line 211
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/syu/bt/util/BTUtil;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 563
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 564
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 563
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1270
    const-string v4, "gdy66"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  getHeadIco  -"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/blink/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".JPEG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1272
    .local v2, "path":Ljava/lang/String;
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_0

    .line 1273
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1274
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/blink/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".JPEG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1279
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1280
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    move-object v0, v3

    .line 1287
    :cond_1
    :goto_1
    return-object v0

    .line 1276
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/blink/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v6, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".JPEG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1283
    .restart local v1    # "file":Ljava/io/File;
    :cond_3
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1284
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    move-object v0, v3

    .line 1287
    goto :goto_1
.end method

.method public getP2HeadIco(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "mac_id"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1290
    const-string v4, "gdy66"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  getHeadIco  -"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/blink/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".JPEG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1293
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v3

    .line 1301
    :cond_0
    :goto_0
    return-object v0

    .line 1297
    :cond_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1298
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v0, v3

    .line 1301
    goto :goto_0
.end method

.method public getSystemInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "flah"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 661
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSystemPro(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "flah"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManeger()[I
    .locals 5

    .prologue
    .line 741
    iget-object v3, p0, Lcom/syu/bt/util/BTUtil;->windowSize:[I

    if-nez v3, :cond_1

    .line 742
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 743
    .local v0, "array":[I
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 744
    .local v2, "w":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 745
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    if-eqz v2, :cond_0

    .line 746
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 747
    const/4 v3, 0x0

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v4, v0, v3

    .line 748
    const/4 v3, 0x1

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v4, v0, v3

    .line 750
    :cond_0
    iput-object v0, p0, Lcom/syu/bt/util/BTUtil;->windowSize:[I

    .line 753
    .end local v0    # "array":[I
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "w":Landroid/view/WindowManager;
    :cond_1
    iget-object v3, p0, Lcom/syu/bt/util/BTUtil;->windowSize:[I

    return-object v3
.end method

.method public getZHTDGridViewScroll_AODI_8541(ILcom/lsec/core/frame/app/MyActivity;Lcom/lsec/core/frame/ctrl/JPage;)Landroid/view/View;
    .locals 6
    .param p1, "direction"    # I
    .param p2, "myActivity"    # Lcom/lsec/core/frame/app/MyActivity;
    .param p3, "pageMenu"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/16 v5, 0x2744

    const/16 v4, 0x2715

    .line 1103
    const/4 v1, 0x0

    .line 1104
    .local v1, "vFocus":Landroid/view/View;
    const/4 v0, 0x0

    .line 1105
    .local v0, "doScroll":Z
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "zhtd_aodi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1106
    const/4 v0, 0x1

    .line 1108
    :cond_0
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1109
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v3, "ui1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "bba"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1110
    const/4 v0, 0x1

    .line 1113
    :cond_1
    if-eqz v0, :cond_2

    .line 1114
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is8541()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1115
    const/4 v2, 0x1

    if-ne v2, p1, :cond_5

    .line 1116
    if-eqz p3, :cond_2

    .line 1117
    iget-object v2, p2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v2

    const/16 v3, 0x271c

    if-ne v2, v3, :cond_3

    .line 1118
    invoke-virtual {p3, v5}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1132
    :cond_2
    :goto_0
    return-object v1

    .line 1119
    :cond_3
    iget-object v2, p2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1120
    const/16 v2, 0x274c

    invoke-virtual {p3, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1121
    :cond_4
    iget-object v2, p2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v2

    const/16 v3, 0x2718

    if-ne v2, v3, :cond_2

    .line 1122
    invoke-virtual {p3, v5}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1124
    goto :goto_0

    .line 1125
    :cond_5
    iget-object v2, p2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1126
    iget-object v2, p2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v3, 0x27fd

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getZHTDScroll(Landroid/view/View;ILcom/lsec/core/frame/app/MyActivity;Lcom/lsec/core/frame/ctrl/JPage;)Landroid/view/View;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "myActivity"    # Lcom/lsec/core/frame/app/MyActivity;
    .param p4, "pageMenu"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/16 v6, 0x27a5

    const/16 v5, 0x27a4

    const/16 v4, 0x27a3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1171
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZHTDConfig()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1172
    const/4 v0, 0x0

    .line 1266
    :cond_0
    :goto_0
    return-object v0

    .line 1174
    :cond_1
    const/4 v0, 0x0

    .line 1175
    .local v0, "vFocus":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1177
    :pswitch_1
    if-ne p2, v3, :cond_2

    .line 1178
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1179
    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_0

    .line 1180
    if-eqz p4, :cond_0

    .line 1181
    const/16 v1, 0x274d

    invoke-virtual {p4, v1}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1184
    goto :goto_0

    .line 1186
    :pswitch_2
    if-ne p2, v3, :cond_3

    .line 1187
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1188
    :cond_3
    if-ne p2, v2, :cond_0

    .line 1189
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27a2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1190
    goto :goto_0

    .line 1192
    :pswitch_3
    if-ne p2, v3, :cond_4

    .line 1193
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1194
    :cond_4
    if-ne p2, v2, :cond_0

    .line 1195
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1, v4}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1196
    goto :goto_0

    .line 1198
    :pswitch_4
    if-ne p2, v3, :cond_5

    .line 1199
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27a6

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1200
    :cond_5
    if-ne p2, v2, :cond_0

    .line 1201
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1, v5}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1202
    goto :goto_0

    .line 1204
    :pswitch_5
    if-ne p2, v3, :cond_6

    .line 1205
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27a7

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1206
    :cond_6
    if-ne p2, v2, :cond_0

    .line 1207
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1, v6}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1208
    goto :goto_0

    .line 1210
    :pswitch_6
    if-ne p2, v3, :cond_7

    .line 1211
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27a8

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1212
    :cond_7
    if-ne p2, v2, :cond_0

    .line 1213
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27a6

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1214
    goto/16 :goto_0

    .line 1216
    :pswitch_7
    if-ne p2, v3, :cond_8

    .line 1217
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27a9

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1218
    :cond_8
    if-ne p2, v2, :cond_0

    .line 1219
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27a7

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1220
    goto/16 :goto_0

    .line 1222
    :pswitch_8
    if-ne p2, v3, :cond_9

    .line 1223
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27aa

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1224
    :cond_9
    if-ne p2, v2, :cond_0

    .line 1225
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27a8

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1226
    goto/16 :goto_0

    .line 1228
    :pswitch_9
    if-ne p2, v3, :cond_a

    .line 1229
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27ab

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1230
    :cond_a
    if-ne p2, v2, :cond_0

    .line 1231
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27a9

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1232
    goto/16 :goto_0

    .line 1234
    :pswitch_a
    if-ne p2, v3, :cond_b

    .line 1235
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27ac

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1236
    :cond_b
    if-ne p2, v2, :cond_0

    .line 1237
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27aa

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1238
    goto/16 :goto_0

    .line 1240
    :pswitch_b
    if-ne p2, v3, :cond_c

    .line 1241
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27ad

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1242
    :cond_c
    if-ne p2, v2, :cond_0

    .line 1243
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27ab

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1244
    goto/16 :goto_0

    .line 1246
    :pswitch_c
    if-ne p2, v3, :cond_d

    .line 1247
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27c3

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1248
    :cond_d
    if-ne p2, v2, :cond_0

    .line 1249
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27ac

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1250
    goto/16 :goto_0

    .line 1252
    :pswitch_d
    if-ne p2, v3, :cond_e

    .line 1253
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27b3

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1254
    :cond_e
    if-ne p2, v2, :cond_0

    .line 1255
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27ad

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1256
    goto/16 :goto_0

    .line 1258
    :pswitch_e
    if-ne p2, v2, :cond_f

    .line 1259
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27c3

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1260
    goto/16 :goto_0

    :cond_f
    if-ne p2, v3, :cond_0

    .line 1261
    iget-object v1, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v2, 0x27ae

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1175
    :pswitch_data_0
    .packed-switch 0x27a2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public getZHTDScroll_AODI(Landroid/view/View;I)I
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v3, 0x1

    .line 1073
    const/4 v0, 0x0

    .line 1075
    .local v0, "doScroll":Z
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "zhtd_aodi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is8541()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1076
    const/4 v0, 0x1

    .line 1078
    :cond_0
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is8541()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1079
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v2, "ui1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "bba"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1080
    const/4 v0, 0x1

    .line 1083
    :cond_1
    if-eqz v0, :cond_2

    .line 1085
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1099
    :cond_2
    :goto_0
    return p2

    .line 1089
    :sswitch_0
    if-ne p2, v3, :cond_3

    const/16 p2, 0x21

    .line 1090
    :goto_1
    goto :goto_0

    .line 1089
    :cond_3
    const/16 p2, 0x82

    goto :goto_1

    .line 1092
    :sswitch_1
    if-ne p2, v3, :cond_2

    .line 1093
    const/16 p2, 0x21

    goto :goto_0

    .line 1085
    nop

    :sswitch_data_0
    .sparse-switch
        0x2745 -> :sswitch_0
        0x2746 -> :sswitch_0
        0x274c -> :sswitch_0
        0x274e -> :sswitch_1
    .end sparse-switch
.end method

.method public getZHTDScroll_AODI_8541(Landroid/view/View;ILcom/lsec/core/frame/app/MyActivity;Lcom/lsec/core/frame/ctrl/JPage;)Landroid/view/View;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "myActivity"    # Lcom/lsec/core/frame/app/MyActivity;
    .param p4, "pageMenu"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 1137
    const/4 v1, 0x0

    .line 1138
    .local v1, "vFocus":Landroid/view/View;
    const/4 v0, 0x0

    .line 1139
    .local v0, "doScroll":Z
    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "zhtd_aodi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1140
    const/4 v0, 0x1

    .line 1142
    :cond_0
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1143
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v3, "ui1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "bba"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1144
    const/4 v0, 0x1

    .line 1149
    :cond_1
    if-eqz v0, :cond_2

    .line 1150
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is8541()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "changecolor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1167
    :cond_2
    :goto_0
    return-object v1

    .line 1153
    :sswitch_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 1154
    if-eqz p4, :cond_2

    .line 1155
    const/16 v2, 0x2744

    invoke-virtual {p4, v2}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1157
    goto :goto_0

    .line 1159
    :sswitch_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 1160
    iget-object v2, p3, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v3, 0x27ff

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1151
    :sswitch_data_0
    .sparse-switch
        0x2744 -> :sswitch_1
        0x27ff -> :sswitch_0
    .end sparse-switch
.end method

.method public isExistFile()Z
    .locals 7

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "flag":Z
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-static {v3}, Lcom/syu/bt/util/BTUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/syu/bt/util/BTUtil;->usb_list:Ljava/util/List;

    .line 140
    sget-object v3, Lcom/syu/bt/util/BTUtil;->usb_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    :goto_0
    const-string v3, "file"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 isExistFile flag = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v0

    .line 140
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/syu/bt/util/BTUtil;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syu/bt/util/BTUtil;->mFilePath:Ljava/lang/String;

    .line 142
    const-string v4, "file"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 33 isExistFile mFilePath = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/syu/bt/util/BTUtil;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/syu/bt/util/BTUtil;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "fr":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 146
    goto :goto_0
.end method

.method public isFastSendCMD(I)Z
    .locals 8
    .param p1, "delay"    # I

    .prologue
    .line 521
    const/4 v2, 0x0

    .line 522
    .local v2, "flag":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 523
    .local v0, "curClickTime":J
    sget-wide v4, Lcom/syu/bt/util/BTUtil;->lastClickTime:J

    sub-long v4, v0, v4

    int-to-long v6, p1

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 524
    const/4 v2, 0x1

    .line 526
    :cond_0
    sput-wide v0, Lcom/syu/bt/util/BTUtil;->lastClickTime:J

    .line 527
    return v2
.end method

.method public isRightDevices()Z
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x1

    return v0
.end method

.method public killProgress()V
    .locals 6

    .prologue
    .line 570
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 573
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 574
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 579
    return-void

    .line 574
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 575
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v5, "com.syu.music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 576
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method public needSplice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 604
    sget-boolean v0, Lcom/syu/bt/App_Bt;->needSplice:Z

    if-eqz v0, :cond_0

    .line 605
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 612
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public readFavContactFromFile(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v1, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/mybtinfo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 314
    const/4 v5, 0x0

    .line 378
    :goto_0
    return-object v5

    .line 317
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 320
    const/4 v5, 0x0

    goto :goto_0

    .line 323
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 327
    .local v4, "is":Ljava/io/InputStream;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 328
    .local v12, "reader":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 330
    .local v13, "str":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    .line 373
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "str":Ljava/lang/String;
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/favmyinfo/info"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Lcom/syu/bt/util/BTUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 332
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "str":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v14, "first"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 333
    .local v8, "pos1":I
    const-string v14, "second"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 334
    .local v9, "pos2":I
    const-string v14, "third"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 335
    .local v10, "pos3":I
    const-string v14, "four"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 346
    .local v11, "pos4":I
    if-lez v8, :cond_2

    if-lez v9, :cond_2

    .line 347
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 349
    .local v6, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-lez v8, :cond_4

    .line 350
    const/16 v14, 0x281c

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    :cond_4
    if-lez v9, :cond_5

    .line 354
    const/16 v14, 0x281e

    add-int/lit8 v15, v8, 0x5

    invoke-virtual {v13, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    :cond_5
    if-lez v10, :cond_6

    .line 358
    const/16 v14, 0x281d

    add-int/lit8 v15, v9, 0x6

    invoke-virtual {v13, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    :cond_6
    if-lez v11, :cond_7

    .line 362
    const/16 v14, 0x2823

    add-int/lit8 v15, v10, 0x5

    invoke-virtual {v13, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    :goto_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 374
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "pos1":I
    .end local v9    # "pos2":I
    .end local v10    # "pos3":I
    .end local v11    # "pos4":I
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 366
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v8    # "pos1":I
    .restart local v9    # "pos2":I
    .restart local v10    # "pos3":I
    .restart local v11    # "pos4":I
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "str":Ljava/lang/String;
    :cond_7
    const/16 v14, 0x2823

    add-int/lit8 v15, v10, 0x5

    :try_start_2
    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public readFile(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 239
    const-string v11, "BOOK1"

    const-string v12, "------------------Start Read Contacts 00 readFile -----------------------  "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/mybtinfo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-object v4

    .line 244
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "path":Ljava/lang/String;
    const-string v11, "BOOK1"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "------------------Start Read Contacts 11 path-----------------------"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 251
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :try_start_0
    const-string v11, "BOOK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "------------------Start Read Contacts From File-----------------------"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 255
    .local v3, "is":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 256
    .local v9, "reader":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 257
    .local v10, "str":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    .line 265
    const-string v11, "BOOK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "------------------Read Contacts From File-----------------------"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 267
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 258
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "str":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v11, p0, Lcom/syu/bt/util/BTUtil;->fileFlag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 259
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/syu/bt/util/BTUtil;->fileFlag:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "name":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/syu/bt/util/BTUtil;->fileFlag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "numeber":Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/syu/bt/App_Bt;->getNewMapContact(Ljava/lang/String;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    .line 262
    .local v5, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public readHeadContactFromFile(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 430
    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/mybtinfo"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-object v4

    .line 435
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 436
    .local v6, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 441
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 444
    .local v3, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 445
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 447
    .local v8, "str":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 456
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 448
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "str":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v10, "first"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, "strSub":[Ljava/lang/String;
    if-eqz v9, :cond_2

    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 450
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 451
    .local v5, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v10, 0x281e

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v5, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    const/16 v10, 0x2818

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v5, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public removeBond(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 4
    .param p1, "adp"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 646
    if-eqz p1, :cond_0

    .line 647
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 648
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 652
    .end local v0    # "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    return-void

    .line 648
    .restart local v0    # "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 649
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    goto :goto_0
.end method

.method public replaceFormatTime(Ljava/lang/String;)J
    .locals 8
    .param p1, "ss"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 550
    .local v4, "time":J
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 551
    .local v0, "c":Ljava/util/Calendar;
    const-string v3, "/"

    const-string v6, ""

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "dst":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 553
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 558
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "dst":Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 554
    :catch_0
    move-exception v2

    .line 556
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFileName"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/syu/bt/util/BTUtil;->mFileName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/syu/bt/util/BTUtil;->mFilePath:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public writeFavContactToFile(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/mybtinfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 387
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 426
    :goto_0
    return-void

    .line 390
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 396
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 414
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 415
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 416
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 417
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/favmyinfo/info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/syu/bt/util/BTUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 396
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 397
    .local v5, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v7, 0x2818

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 398
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v7, 0x281c

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    const-string v7, "first"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v7, 0x281e

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 400
    const-string v9, "second"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v7, 0x281d

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 401
    const-string v9, "third"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v7, 0x2823

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 402
    const-string v9, "four"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v7, 0x2818

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "utf-8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 398
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 411
    :goto_3
    const-string v7, "\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 419
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 404
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_3
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v7, 0x281c

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    const-string v7, "first"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v7, 0x281e

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 406
    const-string v9, "second"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v7, 0x281d

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 407
    const-string v9, "third"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v7, 0x2823

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "utf-8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 404
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public writeFile(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v7, Lcom/syu/bt/App_Bt;->bSaveContactsToUrl:Z

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-nez v7, :cond_0

    .line 309
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/mybtinfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 285
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 288
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 291
    :cond_2
    :try_start_0
    const-string v7, "BOOK"

    const-string v8, "------------------Start  writeFile-----------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 293
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 299
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 300
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 301
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 302
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 303
    const-string v7, "BOOK"

    const-string v8, "------------------Save Contacts In File-----------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 294
    .local v5, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v7, 0x281c

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "num"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "utf-8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 295
    const/16 v7, 0x281e

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 296
    const-string v7, "\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public writeHeadContactToFile(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/mybtinfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 469
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 471
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 493
    :goto_0
    return-void

    .line 474
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 478
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 483
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 484
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 485
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 486
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 478
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 479
    .local v5, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v7, 0x281e

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "first"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v7, 0x2818

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "utf-8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 480
    const-string v7, "\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
