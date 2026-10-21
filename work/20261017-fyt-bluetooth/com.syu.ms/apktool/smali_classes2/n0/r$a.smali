.class public Ln0/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/r;


# direct methods
.method public constructor <init>(Ln0/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/r$a;->a:Ln0/r;

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

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xa

    .line 3
    aput v2, v0, v1

    .line 4
    sget v0, Lk0/nt;->a:I

    const/16 v1, 0x17b

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    const/16 v1, 0x10

    .line 5
    invoke-static {v0, v1}, Ly0/h;->g0(II)V

    :cond_1
    :goto_0
    return-void
.end method
