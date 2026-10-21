.class Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpaqueDataContainer"
.end annotation


# instance fields
.field private final appIntent:Ljava/lang/String;

.field private final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->appIntent:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->version:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000(Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;)I
    .locals 0

    iget p0, p0, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->version:I

    return p0
.end method

.method public static synthetic access$100(Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->appIntent:Ljava/lang/String;

    return-object p0
.end method
