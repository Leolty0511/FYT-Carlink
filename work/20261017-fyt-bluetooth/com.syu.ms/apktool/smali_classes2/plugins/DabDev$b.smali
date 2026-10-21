.class public Lplugins/DabDev$b;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugins/DabDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lplugins/DabDev;


# direct methods
.method public constructor <init>(Lplugins/DabDev;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lplugins/DabDev$b;->e:Lplugins/DabDev;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 5

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.microntek.irkeyDown"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x57

    const/4 v3, 0x1

    const-string v4, "keyCode"

    if-eq p1, v2, :cond_2

    const/16 v2, 0x58

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lplugins/DabDev$b;->e:Lplugins/DabDev;

    iget p1, p1, Lplugins/DabDev;->a:I

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lplugins/DabDev$b;->e:Lplugins/DabDev;

    iget p1, p1, Lplugins/DabDev;->b:I

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return v1
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
