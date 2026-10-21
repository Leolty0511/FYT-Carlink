.class public Lo0/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo0/b;->I(Ljava/lang/String;)V
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
    .locals 5

    .line 1
    sget-object v0, Lo0/e;->i0:[B

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lo0/e;->g0:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    const/4 v3, 0x1

    const/16 v4, 0xd5

    aput v4, v1, v3

    const/4 v3, 0x2

    .line 3
    array-length v4, v0

    shr-int/lit8 v4, v4, 0x18

    aput v4, v1, v3

    array-length v3, v0

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    const/4 v2, 0x4

    array-length v3, v0

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    const/4 v2, 0x5

    array-length v0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v2

    invoke-static {v1}, Lz/k;->o([I)V

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
