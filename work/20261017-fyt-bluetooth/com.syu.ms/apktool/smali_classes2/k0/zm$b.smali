.class public Lk0/zm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/zm;


# direct methods
.method public constructor <init>(Lk0/zm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/zm$b;->a:Lk0/zm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v2, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    new-array v2, v2, [I

    const/16 v7, 0xe3

    aput v7, v2, v6

    const/16 v7, 0x88

    aput v7, v2, v1

    aput v4, v2, v4

    aput v6, v2, v3

    aput v0, v2, v5

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
