.class public Ln0/q2$h;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/q2;->M2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ln0/q2;


# direct methods
.method public constructor <init>(Ln0/q2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/q2$h;->e:Ln0/q2;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.teyes.bibi.ACTION_AUTO_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
