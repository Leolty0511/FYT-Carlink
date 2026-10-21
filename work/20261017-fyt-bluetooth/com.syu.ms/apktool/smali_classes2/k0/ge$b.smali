.class public Lk0/ge$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ge;


# direct methods
.method public constructor <init>(Lk0/ge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ge$b;->a:Lk0/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->f2:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.xp.ziyouguang.WCYuncheUINissanAirControlAct"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0x3e

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v3

    if-nez v0, :cond_2

    .line 4
    invoke-static {v4, v2}, Ll0/b0;->l0(II)V

    .line 5
    invoke-static {v4, v1}, Ll0/b0;->l0(II)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_2

    .line 7
    invoke-static {v4, v2}, Ll0/b0;->l0(II)V

    .line 8
    invoke-static {v4, v1}, Ll0/b0;->l0(II)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lk0/ge$b;->a:Lk0/ge;

    invoke-static {v0, v1}, Lk0/ge;->c3(Lk0/ge;I)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lk0/ge$b;->a:Lk0/ge;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lk0/ge;->c3(Lk0/ge;I)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lk0/ge$b;->a:Lk0/ge;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lk0/ge;->c3(Lk0/ge;I)V

    :goto_1
    return-void
.end method
