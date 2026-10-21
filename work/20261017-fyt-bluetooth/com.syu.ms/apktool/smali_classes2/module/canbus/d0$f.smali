.class public Lmodule/canbus/d0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/d0;


# direct methods
.method public constructor <init>(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/d0$f;->a:Lmodule/canbus/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmodule/canbus/d0$f;->a:Lmodule/canbus/d0;

    iget-byte v1, v0, Lmodule/canbus/d0;->S:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/d0;->S:B

    const/4 v3, 0x5

    if-lez v1, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v4, 0xe3

    aput v4, v0, v1

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v4, Lu0/b;->a0:I

    aput v4, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xb

    const/high16 v3, 0x10000000

    const-string v4, "android.intent.category.DEFAULT"

    const-string v5, "com.syu.canbus"

    if-ne v0, v1, :cond_0

    .line 6
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.xp.ziyouguang.PAToyotaXMRadioAct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 12
    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0xda

    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 15
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {v0}, Lmodule/canbus/d0;->N3(Lmodule/canbus/d0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lmodule/canbus/d0$f;->a:Lmodule/canbus/d0;

    iput-byte v3, v0, Lmodule/canbus/d0;->S:B

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x32
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x70
        0x2
        0x30
        0x0
    .end array-data
.end method
