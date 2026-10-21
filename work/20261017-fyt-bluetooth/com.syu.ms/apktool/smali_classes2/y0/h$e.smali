.class public Ly0/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Ly0/h;->a()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Ly0/h;->b(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 3
    :cond_0
    invoke-static {}, Ly0/h;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-static {}, Ly0/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Ly0/h;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
