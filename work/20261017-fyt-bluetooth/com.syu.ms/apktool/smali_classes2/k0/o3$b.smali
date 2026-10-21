.class public Lk0/o3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/o3;


# direct methods
.method public constructor <init>(Lk0/o3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/o3$b;->a:Lk0/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget v0, Ly0/f;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, -0x7c

    const/16 v4, 0xe3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    sget v0, Ly0/f;->i:I

    if-ne v0, v7, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v6, [I

    aput v4, v0, v5

    aput v3, v0, v7

    aput v7, v0, v2

    .line 2
    sget v2, Ly0/f;->c:I

    mul-int/lit8 v2, v2, 0x27

    div-int/lit8 v2, v2, 0x24

    and-int/lit8 v2, v2, 0x7f

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v6, [I

    aput v4, v0, v5

    aput v3, v0, v7

    aput v7, v0, v2

    .line 3
    sget v2, Ly0/f;->c:I

    mul-int/lit8 v2, v2, 0x27

    div-int/lit8 v2, v2, 0x24

    or-int/lit16 v2, v2, 0x80

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method
