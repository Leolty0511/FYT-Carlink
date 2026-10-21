.class public Lk0/vg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vg;


# direct methods
.method public constructor <init>(Lk0/vg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vg$b;->a:Lk0/vg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/vg$b;->a:Lk0/vg;

    iget-byte v1, v0, Lk0/vg;->i:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/vg;->i:B

    if-lez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x62

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lk0/vg$b;->a:Lk0/vg;

    invoke-static {v0}, Lk0/vg;->a3(Lk0/vg;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
