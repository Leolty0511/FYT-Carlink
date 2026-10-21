.class public Lk0/w4$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/w4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/w4;


# direct methods
.method public constructor <init>(Lk0/w4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/w4$m;->a:Lk0/w4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/w4$m;->a:Lk0/w4;

    iget v0, v0, Lk0/w4;->F:I

    if-gtz v0, :cond_3

    .line 2
    sget v0, Lk0/nt;->a:I

    const v1, 0xa00a0

    if-eq v0, v1, :cond_1

    const v1, 0x3a00a0

    if-eq v0, v1, :cond_1

    const v1, 0x2c00a0

    if-eq v0, v1, :cond_1

    const v1, 0x2d00a0

    if-eq v0, v1, :cond_1

    const v1, 0x2e00a0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.golf7.Golf7FunctionalDrivingInfo1Acti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lo1/u;->k()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.golf7.Golf7FunctionalHundongInfo1Acti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lo1/u;->k()V

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Lk0/w4$m;->a:Lk0/w4;

    invoke-static {v0}, Lk0/w4;->c3(Lk0/w4;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    :cond_3
    iget-object v0, p0, Lk0/w4$m;->a:Lk0/w4;

    iget v1, v0, Lk0/w4;->F:I

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 9
    iput v1, v0, Lk0/w4;->F:I

    :cond_4
    return-void
.end method
