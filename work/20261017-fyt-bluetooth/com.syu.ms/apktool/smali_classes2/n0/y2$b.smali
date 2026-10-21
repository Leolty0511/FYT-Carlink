.class public Ln0/y2$b;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/y2;->L3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ln0/y2;


# direct methods
.method public constructor <init>(Ln0/y2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/y2$b;->e:Ln0/y2;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    const-string v0, "com.syu.rearcamera"

    invoke-static {p1, v0}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.syu.exdvr.ActivityLaunch"

    .line 3
    invoke-static {v0, p1}, Lo1/u;->H0(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lo1/u;->R0(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
