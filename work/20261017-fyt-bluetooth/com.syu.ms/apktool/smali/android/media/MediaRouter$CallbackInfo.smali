.class Landroid/media/MediaRouter$CallbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackInfo"
.end annotation


# instance fields
.field public final cb:Landroid/media/MediaRouter$Callback;

.field public flags:I

.field public final router:Landroid/media/MediaRouter;

.field public type:I


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$Callback;IILandroid/media/MediaRouter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    .line 3
    iput p2, p0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 4
    iput p3, p0, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    .line 5
    iput-object p4, p0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    return-void
.end method


# virtual methods
.method public filterRouteEvent(I)Z
    .locals 1

    .line 2
    iget v0, p0, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 0

    .line 1
    iget p1, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    move-result p1

    return p1
.end method
