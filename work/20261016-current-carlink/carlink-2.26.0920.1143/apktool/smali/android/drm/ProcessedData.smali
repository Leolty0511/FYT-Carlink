.class public Landroid/drm/ProcessedData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private final mData:[B

.field private mSubscriptionId:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Landroid/drm/ProcessedData;->mData:[B

    .line 4
    iput-object p2, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroid/drm/ProcessedData;->mData:[B

    .line 7
    iput-object p2, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Landroid/drm/ProcessedData;->mData:[B

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    return-object v0
.end method
