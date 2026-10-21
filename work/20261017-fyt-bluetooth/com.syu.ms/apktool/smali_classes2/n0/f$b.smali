.class public Ln0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/f;


# direct methods
.method public constructor <init>(Ln0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/f$b;->a:Ln0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v7, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ly0/f;->x0:[I

    aput v6, v0, v7

    const/4 v8, 0x7

    .line 3
    aput v2, v0, v8

    .line 4
    aput v7, v0, v1

    .line 5
    aput v4, v0, v3

    .line 6
    aput v1, v0, v6

    .line 7
    aput v8, v0, v5

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Ly0/f;->x0:[I

    aput v4, v0, v5

    .line 9
    aput v3, v0, v7

    const/4 v1, 0x4

    .line 10
    aput v2, v0, v1

    .line 11
    aput v1, v0, v6

    :goto_0
    return-void
.end method
