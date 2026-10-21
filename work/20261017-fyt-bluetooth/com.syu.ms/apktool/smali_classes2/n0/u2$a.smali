.class public Ln0/u2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/u2;


# direct methods
.method public constructor <init>(Ln0/u2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/u2$a;->a:Ln0/u2;

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

    const/16 v1, 0x12

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3
    sget-object v1, Ly0/f;->y0:[I

    const/16 v3, 0x14

    aput v3, v1, v2

    const/4 v1, 0x3

    const/4 v2, 0x6

    .line 4
    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v3, 0x4

    .line 5
    aput v3, v0, v1

    .line 6
    aput v3, v0, v2

    :goto_0
    return-void
.end method
