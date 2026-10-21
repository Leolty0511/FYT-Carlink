.class public Lj/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/i;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/i;


# direct methods
.method public constructor <init>(Lj/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/i$b;->a:Lj/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/i$b;->a:Lj/i;

    invoke-static {p1}, Lj/i;->e(Lj/i;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lj/i$b;->a:Lj/i;

    invoke-static {p1}, Lj/i;->f(Lj/i;)Landroid/media/MediaRouter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 3
    :cond_0
    iget-object p1, p0, Lj/i$b;->a:Lj/i;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
