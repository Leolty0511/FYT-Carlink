.class public Lk0/sk$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sk;


# direct methods
.method public constructor <init>(Lk0/sk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sk$d;->a:Lk0/sk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/sk$d;->a:Lk0/sk;

    iget v1, v0, Lk0/sk;->x:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/sk;->x:I

    .line 2
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    sget v0, Lu0/b;->o:I

    if-eq v0, v2, :cond_0

    const-string v0, "com.syu.fourcamera2"

    .line 3
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.lsec.fourcamera2.show"

    .line 4
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x1
        0x90
        0x61
    .end array-data
.end method
