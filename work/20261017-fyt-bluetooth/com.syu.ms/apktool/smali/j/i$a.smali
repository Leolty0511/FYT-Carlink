.class public Lj/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/i;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final synthetic b:Lj/i;


# direct methods
.method public constructor <init>(Lj/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/i$a;->b:Lj/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lj/i$a$a;

    invoke-direct {p1, p0}, Lj/i$a$a;-><init>(Lj/i$a;)V

    iput-object p1, p0, Lj/i$a;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lj/i$a;->b:Lj/i;

    invoke-static {p1}, Lj/i;->e(Lj/i;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj/i$a;->b:Lj/i;

    invoke-static {p1}, Lj/i;->a(Lj/i;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lj/i$a;->b:Lj/i;

    invoke-static {p1}, Lj/i;->d(Lj/i;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lj/i$a;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lj/i$a;->b:Lj/i;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj/i;->b(Lj/i;Z)Z

    :goto_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lj/i$a;->b:Lj/i;

    invoke-static {p1}, Lj/i;->d(Lj/i;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lj/i$a;->a:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
