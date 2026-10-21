.class Landroid/media/MediaCodecInfo$Feature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field public mDefault:Z

.field public mName:Ljava/lang/String;

.field public mValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    .line 7
    .line 8
    iput-boolean p3, p0, Landroid/media/MediaCodecInfo$Feature;->mDefault:Z

    .line 9
    .line 10
    return-void
.end method
