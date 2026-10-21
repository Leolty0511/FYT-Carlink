.class public Ln0/g0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/g0;


# direct methods
.method public constructor <init>(Ln0/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/g0$b;->a:Ln0/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ly0/f;->x0:[I

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput v3, v0, v2

    const/16 v2, 0x8

    .line 3
    aput v2, v0, v1

    const/4 v1, 0x2

    .line 4
    aput v2, v0, v1

    const/4 v1, 0x3

    .line 5
    aput v2, v0, v1

    const/4 v1, 0x4

    .line 6
    aput v2, v0, v1

    const/4 v1, 0x5

    .line 7
    aput v2, v0, v1

    const/4 v1, 0x6

    .line 8
    aput v2, v0, v1

    const/4 v1, 0x7

    .line 9
    aput v2, v0, v1

    .line 10
    aput v2, v0, v2

    const/16 v1, 0x9

    .line 11
    aput v2, v0, v1

    .line 12
    aput v2, v0, v3

    const/16 v1, 0xb

    .line 13
    aput v2, v0, v1

    :goto_0
    return-void
.end method
