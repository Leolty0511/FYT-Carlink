.class public Lk0/pt$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/pt;->o([BII)V
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
    .locals 4

    .line 1
    sget v0, Lk0/pt;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lu0/b;->J1:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    sget v3, Lk0/pt;->f:I

    if-ne v3, v1, :cond_1

    const-string v1, "com.syu.radio"

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 3
    :cond_1
    sget v1, Lk0/pt;->f:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const-string v1, "com.syu.video"

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    const/16 v1, 0x54

    .line 4
    invoke-static {v1, v2, v0}, Lk0/pt;->a(III)V

    return-void
.end method
