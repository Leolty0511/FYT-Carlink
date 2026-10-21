.class public Ln1/d;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x2

    .line 2
    invoke-static {p1, p1}, La/i;->d(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Ln1/d;->a:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method
