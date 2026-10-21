.class public Landroid/app/usage/NetworkStats$Bucket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStats$Bucket$Roaming;,
        Landroid/app/usage/NetworkStats$Bucket$Metered;,
        Landroid/app/usage/NetworkStats$Bucket$State;
    }
.end annotation


# static fields
.field public static final METERED_ALL:I = -0x1

.field public static final METERED_NO:I = 0x1

.field public static final METERED_YES:I = 0x2

.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x1

.field public static final ROAMING_YES:I = 0x2

.field public static final STATE_ALL:I = -0x1

.field public static final STATE_DEFAULT:I = 0x1

.field public static final STATE_FOREGROUND:I = 0x2

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5


# instance fields
.field private mBeginTimeStamp:J

.field private mEndTimeStamp:J

.field private mMetered:I

.field private mRoaming:I

.field private mRxBytes:J

.field private mRxPackets:J

.field private mState:I

.field private mTag:I

.field private mTxBytes:J

.field private mTxPackets:J

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    return p1
.end method

.method public static synthetic access$100(I)I
    .locals 0

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertUid(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1002(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    return-wide p1
.end method

.method public static synthetic access$1102(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    return-wide p1
.end method

.method public static synthetic access$1202(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    return-wide p1
.end method

.method public static synthetic access$1302(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    return-wide p1
.end method

.method public static synthetic access$1402(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    return-wide p1
.end method

.method public static synthetic access$1502(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    return-wide p1
.end method

.method public static synthetic access$202(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTag:I

    return p1
.end method

.method public static synthetic access$300(I)I
    .locals 0

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertTag(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$402(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    return p1
.end method

.method public static synthetic access$500(I)I
    .locals 0

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertState(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$602(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mMetered:I

    return p1
.end method

.method public static synthetic access$700(I)I
    .locals 0

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertMetered(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$802(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I

    return p1
.end method

.method public static synthetic access$900(I)I
    .locals 0

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertRoaming(I)I

    move-result p0

    return p0
.end method

.method private static convertMetered(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method private static convertRoaming(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method private static convertState(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method private static convertTag(I)I
    .locals 0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static convertUid(I)I
    .locals 1

    const/4 v0, -0x5

    if-eq p0, v0, :cond_0

    const/4 v0, -0x4

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public getEndTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    return-wide v0
.end method

.method public getMetered()I
    .locals 1

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mMetered:I

    return v0
.end method

.method public getRoaming()I
    .locals 1

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I

    return v0
.end method

.method public getRxBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    return-wide v0
.end method

.method public getRxPackets()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    return-wide v0
.end method

.method public getStartTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTag:I

    return v0
.end method

.method public getTxBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    return-wide v0
.end method

.method public getTxPackets()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    return v0
.end method
