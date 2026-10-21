.class public Lu0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu0/a;


# direct methods
.method public constructor <init>(Lu0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu0/a$a;->a:Lu0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->m1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    new-array v2, v0, [I

    .line 2
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    .line 3
    sget-boolean v2, Ly0/f;->v:Z

    if-eqz v2, :cond_1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 4
    sget v2, Ly0/f;->t:I

    if-nez v2, :cond_0

    const/16 v2, 0xf5

    goto :goto_0

    :cond_0
    const/16 v2, 0xf6

    :goto_0
    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_1
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x1
        0xaa
        0x55
    .end array-data
.end method
