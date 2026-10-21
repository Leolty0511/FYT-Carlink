.class public Landroid/mtp/MtpEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpEvent$IllegalParameterAccess;
    }
.end annotation


# static fields
.field public static final EVENT_CANCEL_TRANSACTION:I = 0x4001

.field public static final EVENT_CAPTURE_COMPLETE:I = 0x400d

.field public static final EVENT_DEVICE_INFO_CHANGED:I = 0x4008

.field public static final EVENT_DEVICE_PROP_CHANGED:I = 0x4006

.field public static final EVENT_DEVICE_RESET:I = 0x400b

.field public static final EVENT_OBJECT_ADDED:I = 0x4002

.field public static final EVENT_OBJECT_INFO_CHANGED:I = 0x4007

.field public static final EVENT_OBJECT_PROP_CHANGED:I = 0xc801

.field public static final EVENT_OBJECT_PROP_DESC_CHANGED:I = 0xc802

.field public static final EVENT_OBJECT_REFERENCES_CHANGED:I = 0xc803

.field public static final EVENT_OBJECT_REMOVED:I = 0x4003

.field public static final EVENT_REQUEST_OBJECT_TRANSFER:I = 0x4009

.field public static final EVENT_STORAGE_INFO_CHANGED:I = 0x400c

.field public static final EVENT_STORE_ADDED:I = 0x4004

.field public static final EVENT_STORE_FULL:I = 0x400a

.field public static final EVENT_STORE_REMOVED:I = 0x4005

.field public static final EVENT_UNDEFINED:I = 0x4000

.field public static final EVENT_UNREPORTED_STATUS:I = 0x400e


# instance fields
.field private mEventCode:I

.field private mParameter1:I

.field private mParameter2:I

.field private mParameter3:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x4000

    .line 5
    .line 6
    iput v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getDevicePropCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 2
    .line 3
    const/16 v1, 0x4006

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    .line 11
    .line 12
    const-string v1, "devicePropCode"

    .line 13
    .line 14
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public getEventCode()I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    return v0
.end method

.method public getObjectFormatCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 2
    .line 3
    const v1, 0xc802

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    .line 12
    .line 13
    const-string/jumbo v1, "objectFormatCode"

    .line 14
    .line 15
    .line 16
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public getObjectHandle()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 2
    .line 3
    const/16 v1, 0x4002

    .line 4
    .line 5
    if-eq v0, v1, :cond_5

    .line 6
    .line 7
    const/16 v1, 0x4003

    .line 8
    .line 9
    if-eq v0, v1, :cond_4

    .line 10
    .line 11
    const/16 v1, 0x4007

    .line 12
    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/16 v1, 0x4009

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const v1, 0xc801

    .line 20
    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const v1, 0xc803

    .line 25
    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    .line 33
    .line 34
    const-string/jumbo v1, "objectHandle"

    .line 35
    .line 36
    .line 37
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 47
    .line 48
    return v0

    .line 49
    :cond_3
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 50
    .line 51
    return v0

    .line 52
    :cond_4
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 53
    .line 54
    return v0

    .line 55
    :cond_5
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 56
    .line 57
    return v0
.end method

.method public getObjectPropCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    .line 7
    .line 8
    const-string/jumbo v1, "objectPropCode"

    .line 9
    .line 10
    .line 11
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    throw v0

    .line 17
    :pswitch_0
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 18
    .line 19
    return v0

    .line 20
    :pswitch_1
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    .line 21
    .line 22
    return v0

    .line 23
    :pswitch_data_0
    .packed-switch 0xc801
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getParameter1()I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    return v0
.end method

.method public getParameter2()I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter2:I

    return v0
.end method

.method public getParameter3()I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter3:I

    return v0
.end method

.method public getStorageId()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 2
    .line 3
    const/16 v1, 0x4004

    .line 4
    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    const/16 v1, 0x4005

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0x400a

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x400c

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    .line 23
    .line 24
    const-string/jumbo v1, "storageID"

    .line 25
    .line 26
    .line 27
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 37
    .line 38
    return v0

    .line 39
    :cond_3
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 40
    .line 41
    return v0
.end method

.method public getTransactionId()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 2
    .line 3
    const/16 v1, 0x400d

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/mtp/MtpEvent;->mParameter1:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Landroid/mtp/MtpEvent$IllegalParameterAccess;

    .line 11
    .line 12
    const-string/jumbo v1, "transactionID"

    .line 13
    .line 14
    .line 15
    iget v2, p0, Landroid/mtp/MtpEvent;->mEventCode:I

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpEvent$IllegalParameterAccess;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method
