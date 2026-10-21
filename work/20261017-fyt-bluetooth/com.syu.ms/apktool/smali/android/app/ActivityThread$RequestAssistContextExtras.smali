.class final Landroid/app/ActivityThread$RequestAssistContextExtras;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestAssistContextExtras"
.end annotation


# instance fields
.field public activityToken:Landroid/os/IBinder;

.field public requestToken:Landroid/os/IBinder;

.field public requestType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
