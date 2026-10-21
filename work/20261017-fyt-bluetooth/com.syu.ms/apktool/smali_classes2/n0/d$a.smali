.class public Ln0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/d;


# direct methods
.method public constructor <init>(Ln0/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/d$a;->a:Ln0/d;

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
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 3
    sget-object v0, Ly0/f;->x0:[I

    const/16 v2, 0xc

    aput v2, v0, v3

    const/4 v2, 0x5

    .line 4
    aput v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, 0x3

    .line 5
    aput v2, v0, v1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Ly0/f;->x0:[I

    const/16 v1, 0x8

    aput v1, v0, v3

    :goto_0
    return-void
.end method
