.class public Ln0/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/i;


# direct methods
.method public constructor <init>(Ln0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/i$c;->a:Ln0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ly0/f;->x0:[I

    const/4 v2, 0x3

    const/4 v3, 0x6

    aput v3, v0, v2

    const/4 v4, 0x5

    const/4 v5, 0x4

    .line 3
    aput v5, v0, v4

    const/4 v6, 0x0

    const/4 v7, 0x7

    .line 4
    aput v7, v0, v6

    .line 5
    sget-object v8, Ly0/f;->y0:[I

    const/16 v9, 0xf

    aput v9, v8, v6

    const/16 v8, 0x8

    .line 6
    aput v6, v0, v8

    .line 7
    aput v8, v0, v2

    .line 8
    aput v6, v0, v5

    .line 9
    aput v4, v0, v7

    const/16 v2, 0x9

    .line 10
    aput v2, v0, v3

    const/4 v2, 0x2

    const/16 v3, 0xa

    .line 11
    aput v3, v0, v2

    .line 12
    aput v6, v0, v1

    :goto_0
    return-void
.end method
