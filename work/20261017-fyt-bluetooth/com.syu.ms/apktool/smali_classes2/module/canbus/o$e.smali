.class public Lmodule/canbus/o$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/o;


# direct methods
.method public constructor <init>(Lmodule/canbus/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/o$e;->a:Lmodule/canbus/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const/4 v1, 0x6

    new-array v2, v1, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x83

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v3, 0x2

    const/4 v6, 0x3

    aput v6, v2, v3

    aput v6, v2, v6

    .line 3
    iget v3, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    const/4 v6, 0x4

    aput v3, v2, v6

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/4 v3, 0x5

    aput v0, v2, v3

    invoke-static {v2}, Lz/k;->s([I)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/o$e;->a:Lmodule/canbus/o;

    iget v2, v0, Lmodule/canbus/o;->o:I

    if-lez v2, :cond_0

    sub-int/2addr v2, v5

    .line 5
    iput v2, v0, Lmodule/canbus/o;->o:I

    .line 6
    :cond_0
    iget v2, v0, Lmodule/canbus/o;->o:I

    if-ne v2, v5, :cond_1

    .line 7
    invoke-virtual {v0}, Lmodule/canbus/o;->A3()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 9
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    :cond_1
    return-void
.end method
