.class public Lk0/rn$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rn;


# direct methods
.method public constructor <init>(Lk0/rn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rn$q;->a:Lk0/rn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eq v0, v6, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v6

    .line 2
    :goto_0
    sget v7, Lh0/c;->P:I

    div-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x6

    new-array v8, v8, [I

    const/16 v9, 0xe3

    aput v9, v8, v5

    const/16 v5, 0xc5

    aput v5, v8, v2

    aput v6, v8, v1

    aput v0, v8, v6

    .line 3
    rem-int/lit16 v0, v7, 0xe10

    div-int/lit8 v0, v0, 0x3c

    aput v0, v8, v4

    rem-int/lit8 v7, v7, 0x3c

    aput v7, v8, v3

    invoke-static {v8}, Lz/k;->s([I)V

    return-void
.end method
