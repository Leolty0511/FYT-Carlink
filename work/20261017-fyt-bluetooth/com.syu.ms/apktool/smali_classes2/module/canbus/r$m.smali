.class public Lmodule/canbus/r$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/r;


# direct methods
.method public constructor <init>(Lmodule/canbus/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/r$m;->a:Lmodule/canbus/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmodule/canbus/r$m;->a:Lmodule/canbus/r;

    const/4 v1, 0x2

    iput v1, v0, Lmodule/canbus/r;->d:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput v2, v0, v3

    const/16 v2, 0x91

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x20

    aput v2, v0, v1

    .line 2
    sget v1, Ly0/f;->i:I

    const/4 v2, 0x5

    const/4 v4, 0x4

    const/16 v5, 0x30

    if-eq v1, v3, :cond_1

    sget v1, Ly0/f;->C0:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    div-int/lit8 v3, v1, 0xa

    add-int/2addr v3, v5

    aput v3, v0, v4

    .line 4
    rem-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    aput v1, v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    aput v5, v0, v4

    aput v5, v0, v2

    .line 5
    :goto_1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
