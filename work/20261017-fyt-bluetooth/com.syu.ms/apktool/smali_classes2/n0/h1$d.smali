.class public Ln0/h1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/h1;


# direct methods
.method public constructor <init>(Ln0/h1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/h1$d;->a:Ln0/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x7

    if-eq v0, v1, :cond_1

    if-eq v0, v7, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ly0/f;->x0:[I

    aput v8, v0, v6

    .line 3
    aput v3, v0, v5

    .line 4
    aput v4, v0, v2

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Ly0/f;->x0:[I

    const/16 v1, 0x8

    aput v1, v0, v6

    .line 6
    aput v4, v0, v5

    .line 7
    aput v1, v0, v3

    .line 8
    aput v8, v0, v8

    .line 9
    aput v8, v0, v2

    .line 10
    aput v8, v0, v7

    :goto_0
    return-void
.end method
