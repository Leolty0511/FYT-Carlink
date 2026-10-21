.class abstract Landroid/widget/RemoteViews$RuntimeAction;
.super Landroid/widget/RemoteViews$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RuntimeAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/RemoteViews$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/widget/RemoteViews$RuntimeAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActionName()Ljava/lang/String;
    .locals 1

    const-string v0, "RuntimeAction"

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
