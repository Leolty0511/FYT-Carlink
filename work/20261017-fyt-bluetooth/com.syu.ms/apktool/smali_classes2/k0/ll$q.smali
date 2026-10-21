.class public Lk0/ll$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ll;


# direct methods
.method public constructor <init>(Lk0/ll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ll$q;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ll$q;->a:Lk0/ll;

    iget-boolean v1, v0, Lk0/ll;->S:Z

    if-eqz v1, :cond_1

    .line 2
    iget v0, v0, Lk0/ll;->Q:I

    const/16 v1, 0xff

    const/16 v2, 0x40e

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lo1/x;->x([Lo1/x;II)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lo1/x;->x([Lo1/x;II)V

    :cond_1
    :goto_0
    return-void
.end method
