.class public Ly0/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly0/c;


# direct methods
.method public constructor <init>(Ly0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/c$i;->a:Ly0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Ly0/c;->r()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->j4:I

    if-nez v0, :cond_0

    const/16 v0, 0x29

    const/16 v1, 0xff

    .line 2
    invoke-static {v0, v1}, Ly0/c;->x(II)V

    const/16 v0, 0x28

    .line 3
    invoke-static {v0, v1}, Ly0/c;->x(II)V

    const/16 v0, 0x2b

    .line 4
    iget-object v1, p0, Ly0/c$i;->a:Ly0/c;

    iget-object v1, v1, Ly0/c;->a:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-static {v0, v1}, Ly0/c;->x(II)V

    const/16 v0, 0x2a

    .line 5
    iget-object v1, p0, Ly0/c$i;->a:Ly0/c;

    iget-object v1, v1, Ly0/c;->a:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Ly0/c;->x(II)V

    :cond_0
    return-void
.end method
