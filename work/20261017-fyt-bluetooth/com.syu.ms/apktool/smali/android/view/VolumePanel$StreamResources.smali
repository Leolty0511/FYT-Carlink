.class final enum Landroid/view/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/view/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MasterStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MediaStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum RingerStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Landroid/view/VolumePanel$StreamResources;


# instance fields
.field public descRes:I

.field public iconMuteRes:I

.field public iconRes:I

.field public show:Z

.field public streamType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v8, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v2, 0x0

    const/4 v3, 0x6

    const v4, 0x104042a

    const v5, 0x108029f

    const v6, 0x108029f

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v8, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    .line 2
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v10, "RingerStream"

    const/4 v11, 0x1

    const/4 v12, 0x2

    const v13, 0x104042b

    const v14, 0x10802a7

    const v15, 0x10802a9

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    .line 3
    new-instance v1, Landroid/view/VolumePanel$StreamResources;

    const-string v18, "VoiceStream"

    const/16 v19, 0x2

    const/16 v20, 0x0

    const v21, 0x104042c

    const v22, 0x10802a5

    const v23, 0x10802a5

    const/16 v24, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v1, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    .line 4
    new-instance v2, Landroid/view/VolumePanel$StreamResources;

    const-string v10, "AlarmStream"

    const/4 v11, 0x3

    const/4 v12, 0x4

    const v13, 0x1040427

    const v14, 0x108029d

    const v15, 0x108029e

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    .line 5
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v18, "MediaStream"

    const/16 v19, 0x4

    const/16 v20, 0x3

    const v21, 0x104042d

    const v22, 0x10802ad

    const v23, 0x10802af

    const/16 v24, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    .line 6
    new-instance v4, Landroid/view/VolumePanel$StreamResources;

    const-string v10, "NotificationStream"

    const/4 v11, 0x5

    const/4 v12, 0x5

    const v13, 0x104042e

    const v14, 0x10802a1

    const v15, 0x10802a3

    const/16 v16, 0x1

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v4, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    .line 7
    new-instance v5, Landroid/view/VolumePanel$StreamResources;

    const-string v18, "MasterStream"

    const/16 v19, 0x6

    const/16 v20, -0x64

    const/16 v24, 0x0

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v5, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    .line 8
    new-instance v6, Landroid/view/VolumePanel$StreamResources;

    const-string v10, "RemoteStream"

    const/4 v11, 0x7

    const/16 v12, -0xc8

    const v13, 0x104042d

    const v14, 0x108032d

    const v15, 0x1080321

    const/16 v16, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v6, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    const/16 v7, 0x8

    new-array v7, v7, [Landroid/view/VolumePanel$StreamResources;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    const/4 v0, 0x7

    aput-object v6, v7, v0

    .line 9
    sput-object v7, Landroid/view/VolumePanel$StreamResources;->$VALUES:[Landroid/view/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 3
    iput p4, p0, Landroid/view/VolumePanel$StreamResources;->descRes:I

    .line 4
    iput p5, p0, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    .line 5
    iput p6, p0, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 6
    iput-boolean p7, p0, Landroid/view/VolumePanel$StreamResources;->show:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/VolumePanel$StreamResources;
    .locals 1

    .line 1
    const-class v0, Landroid/view/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/view/VolumePanel$StreamResources;

    return-object p0
.end method

.method public static values()[Landroid/view/VolumePanel$StreamResources;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/VolumePanel$StreamResources;->$VALUES:[Landroid/view/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Landroid/view/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/VolumePanel$StreamResources;

    return-object v0
.end method
