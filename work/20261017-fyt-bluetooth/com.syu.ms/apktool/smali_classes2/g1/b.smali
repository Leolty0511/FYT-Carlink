.class public Lg1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final b:Lg1/b;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg1/b;

    invoke-direct {v0}, Lg1/b;-><init>()V

    sput-object v0, Lg1/b;->b:Lg1/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xe

    .line 3
    invoke-static {v0}, Landroid/source/Util;->openDev(I)I

    move-result v0

    iput v0, p0, Lg1/b;->a:I

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "BackCarMonitor"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a()Lg1/b;
    .locals 1

    .line 1
    sget-object v0, Lg1/b;->b:Lg1/b;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :goto_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lg1/b;->a:I

    invoke-static {v0}, Landroid/source/Util;->isEnteredCarback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1}, Lu0/d;->C(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lu0/d;->C(I)V

    :cond_1
    :goto_1
    const-wide/16 v0, 0x64

    .line 5
    invoke-static {v0, v1}, La/i;->a0(J)V

    goto :goto_0
.end method
