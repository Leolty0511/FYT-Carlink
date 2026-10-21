.class public Ln0/e0$a;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/e0;->x3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ln0/e0;


# direct methods
.method public constructor <init>(Ln0/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/e0$a;->e:Ln0/e0;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object p1

    invoke-virtual {p1}, Lh1/a;->e()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 2
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/e;->b()Lc/e;

    move-result-object p1

    const/16 v1, 0x240

    invoke-virtual {p1, v1}, Lc/e;->c(I)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    const-string v1, "vn.com.cogamichi.app"

    invoke-static {p1, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {v1}, Lo1/u;->J0(Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    const-string v1, "com.linkgo.linkgoai"

    invoke-static {p1, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {v1}, Lo1/u;->J0(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
