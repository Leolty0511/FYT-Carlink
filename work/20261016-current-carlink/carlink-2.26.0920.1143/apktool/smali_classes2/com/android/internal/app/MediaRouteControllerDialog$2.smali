.class Lcom/android/internal/app/MediaRouteControllerDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mStopTrackingTouch:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$2$1;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog$2;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->mStopTrackingTouch:Ljava/lang/Runnable;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$100(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$300(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$500(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->mStopTrackingTouch:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {p1, v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$302(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$500(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->mStopTrackingTouch:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
