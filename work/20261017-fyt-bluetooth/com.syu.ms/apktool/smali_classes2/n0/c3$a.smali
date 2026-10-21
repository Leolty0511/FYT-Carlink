.class public Ln0/c3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/c3;->x3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/c3;


# direct methods
.method public constructor <init>(Ln0/c3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c3$a;->a:Ln0/c3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "vn.gotech.voice"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lo1/u;->J0(Ljava/lang/String;)I

    return v2

    .line 3
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "ai.zalo.kiki.car"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1}, Lo1/u;->J0(Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
