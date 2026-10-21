.class public Lk0/j7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j7;


# direct methods
.method public constructor <init>(Lk0/j7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j7$b;->a:Lk0/j7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "com.syu.fourcamera2"

    .line 1
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.lsec.fourcamera2.show"

    .line 2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    :cond_0
    sget v0, Lk0/nt;->a:I

    const v1, 0x200e3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const v1, 0x600e3

    if-eq v0, v1, :cond_2

    const v1, 0x800e3

    if-eq v0, v1, :cond_2

    const v1, 0x900e3

    if-eq v0, v1, :cond_2

    const v1, 0x500e3

    if-eq v0, v1, :cond_2

    const v1, 0xa00e3

    if-eq v0, v1, :cond_2

    const v1, 0xb00e3

    if-eq v0, v1, :cond_2

    const v1, 0xe00e3

    if-eq v0, v1, :cond_2

    const v1, 0xf00e3

    if-eq v0, v1, :cond_2

    const v1, 0x1000e3

    if-eq v0, v1, :cond_2

    const v1, 0x1100e3

    if-eq v0, v1, :cond_2

    const v1, 0x1200e3

    if-eq v0, v1, :cond_2

    const v1, 0x1400e3

    if-eq v0, v1, :cond_2

    const v1, 0x1600e3

    if-eq v0, v1, :cond_2

    const v1, 0x1b00e3

    if-eq v0, v1, :cond_2

    const v1, 0x1700e3

    if-eq v0, v1, :cond_2

    const v1, 0x1800e3

    if-eq v0, v1, :cond_2

    const v1, 0x1900e3

    if-eq v0, v1, :cond_2

    const v1, 0x1a00e3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_3
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x29
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x1
        0x30
    .end array-data
.end method
