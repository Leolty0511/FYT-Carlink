.class public Lc/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/g;


# direct methods
.method public constructor <init>(Lc/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/g$a;->a:Lc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/g$a;->a:Lc/g;

    iget-object v0, v0, Lc/g;->b:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3
    iget-object v0, p0, Lc/g$a;->a:Lc/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lc/g;->b:Landroid/widget/Toast;

    .line 4
    :cond_0
    iget-object v0, p0, Lc/g$a;->a:Lc/g;

    iget-object v1, v0, Lc/g;->b:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, v0, Lc/g;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lc/g;->b:Landroid/widget/Toast;

    .line 6
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lc/g$a;->a:Lc/g;

    iget-object v1, v1, Lc/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, p0, Lc/g$a;->a:Lc/g;

    const-string v2, "#88D6D6D6"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-virtual {v1, v3, v2, v4, v5}, Lc/g;->c(IIIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x14

    const/16 v2, 0xa

    .line 8
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 9
    iget-object v1, p0, Lc/g$a;->a:Lc/g;

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lc/g$a;->a:Lc/g;

    iget-object v3, v3, Lc/g;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lc/g;->c:Landroid/widget/TextView;

    .line 10
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 11
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    iget-object v2, p0, Lc/g$a;->a:Lc/g;

    iget-object v2, v2, Lc/g;->c:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object v2, p0, Lc/g$a;->a:Lc/g;

    iget-object v2, v2, Lc/g;->c:Landroid/widget/TextView;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 14
    iget-object v2, p0, Lc/g$a;->a:Lc/g;

    iget-object v3, v2, Lc/g;->c:Landroid/widget/TextView;

    iget-object v2, v2, Lc/g;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, p0, Lc/g$a;->a:Lc/g;

    iget-object v2, v2, Lc/g;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v1, p0, Lc/g$a;->a:Lc/g;

    iget-object v1, v1, Lc/g;->b:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lc/g$a;->a:Lc/g;

    iget-object v0, v0, Lc/g;->b:Landroid/widget/Toast;

    const/16 v1, 0x51

    const/4 v2, 0x0

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 18
    :cond_1
    :try_start_0
    iget-object v0, p0, Lc/g$a;->a:Lc/g;

    iget-object v0, v0, Lc/g;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 19
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    sget-object v1, Lc/g;->i:Lc/g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    sget-object v1, Lc/g;->i:Lc/g;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
