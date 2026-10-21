.class public Ln0/b0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/b0;


# direct methods
.method public constructor <init>(Ln0/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/b0$d;->a:Ln0/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ly0/f;->x0:[I

    const/16 v1, 0x11

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3
    sget-object v0, Ly0/f;->y0:[I

    const/16 v1, 0x14

    aput v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, 0x7

    .line 4
    aput v2, v0, v1

    :goto_0
    return-void
.end method
