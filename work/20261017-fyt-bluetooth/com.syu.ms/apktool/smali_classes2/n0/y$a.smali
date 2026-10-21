.class public Ln0/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/y;


# direct methods
.method public constructor <init>(Ln0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/y$a;->a:Ln0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    const/16 v2, 0xd

    const/16 v3, 0xc

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ly0/d;->b:[I

    const/4 v1, 0x3

    aput v1, v0, v3

    .line 3
    aput v1, v0, v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 5
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 6
    :cond_2
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x7

    aget v4, v0, v1

    aput v4, v0, v3

    .line 7
    aget v1, v0, v1

    aput v1, v0, v2

    :cond_3
    :goto_0
    return-void
.end method
