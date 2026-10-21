.class public Lmodule/canbus/y$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/y;


# direct methods
.method public constructor <init>(Lmodule/canbus/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/y$d;->a:Lmodule/canbus/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "com.syu.fourcamera2"

    .line 2
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.lsec.fourcamera2.show"

    .line 3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x26
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x4
        0x26
        0x0
        0x0
        0x0
    .end array-data
.end method
