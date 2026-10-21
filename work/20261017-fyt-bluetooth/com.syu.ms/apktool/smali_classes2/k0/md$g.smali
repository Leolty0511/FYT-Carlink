.class public Lk0/md$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/md;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/md;


# direct methods
.method public constructor <init>(Lk0/md;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/md$g;->a:Lk0/md;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1
    sget-wide v0, Lu0/b;->b2:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v4, v0, v2

    rem-double/2addr v4, v2

    double-to-int v4, v4

    const-wide v5, 0x40b7700000000000L    # 6000.0

    mul-double v7, v0, v5

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    rem-double/2addr v7, v9

    double-to-int v7, v7

    const-wide v11, 0x41224f8000000000L    # 600000.0

    mul-double/2addr v0, v11

    rem-double/2addr v0, v9

    double-to-int v0, v0

    .line 2
    sget-wide v13, Lu0/b;->c2:D

    mul-double v15, v13, v2

    rem-double v1, v15, v2

    double-to-int v1, v1

    mul-double/2addr v5, v13

    rem-double/2addr v5, v9

    double-to-int v2, v5

    mul-double/2addr v13, v11

    rem-double/2addr v13, v9

    double-to-int v3, v13

    const/16 v5, 0xf

    new-array v5, v5, [I

    const/16 v6, 0xe3

    const/4 v8, 0x0

    aput v6, v5, v8

    const/4 v6, 0x1

    const/16 v9, 0xd

    aput v9, v5, v6

    const/4 v6, 0x2

    const/16 v10, -0x6f

    aput v10, v5, v6

    const/4 v6, 0x3

    aput v8, v5, v6

    .line 3
    sget-wide v10, Lu0/b;->b2:D

    double-to-int v6, v10

    const/4 v10, 0x4

    aput v6, v5, v10

    const/4 v6, 0x5

    aput v4, v5, v6

    const/4 v4, 0x6

    aput v7, v5, v4

    const/4 v4, 0x7

    aput v0, v5, v4

    const/16 v0, 0x8

    aput v8, v5, v0

    sget-wide v6, Lu0/b;->c2:D

    double-to-int v0, v6

    const/16 v4, 0x9

    aput v0, v5, v4

    const/16 v0, 0xa

    aput v1, v5, v0

    const/16 v0, 0xb

    aput v2, v5, v0

    const/16 v0, 0xc

    aput v3, v5, v0

    aput v8, v5, v9

    const/16 v0, 0xe

    aput v8, v5, v0

    invoke-static {v5}, Lz/k;->s([I)V

    return-void
.end method
