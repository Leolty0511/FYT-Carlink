.class Landroid/media/MediaCodec$PersistentSurface;
.super Landroid/view/Surface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentSurface"
.end annotation


# instance fields
.field private mPersistentObject:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/Surface;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/media/MediaCodec;->access$800(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
