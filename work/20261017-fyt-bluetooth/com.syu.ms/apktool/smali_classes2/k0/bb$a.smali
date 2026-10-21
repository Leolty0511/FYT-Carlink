.class public Lk0/bb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bb;


# direct methods
.method public constructor <init>(Lk0/bb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bb$a;->a:Lk0/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    invoke-static {}, Lo1/i;->o()Lo1/i;

    move-result-object v1

    iget-boolean v1, v1, Lo1/i;->b:Z

    if-eqz v1, :cond_0

    .line 4
    iget v1, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v1, v1

    .line 5
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/16 v3, 0x89

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    const/4 v5, 0x3

    aput v5, v2, v3

    aput v4, v2, v5

    const/4 v3, 0x4

    .line 6
    invoke-static {v1}, Ll0/c0;->L1(I)I

    move-result v1

    aput v1, v2, v3

    const/4 v1, 0x5

    invoke-static {v0}, Ll0/c0;->L1(I)I

    move-result v0

    aput v0, v2, v1

    invoke-static {v2}, Lz/k;->s([I)V

    :cond_0
    return-void
.end method
